<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth','admin'])->except('productDetails','allProducts');
    }

    public $successStatus = 200;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'image' =>['nullable', 'image', 'mimes:jpeg,JPEG,png,PNG,jpg,JPG,gif,GIF'],
            'price' => ['required', 'numeric'],
        ]);
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);
        }
        $input = $request->all();
        // Update the uploaded Image
        $fileName = 'default.png';
        if($request->image){
            $extension=$request->image->getClientOriginalExtension();
            $fileName=rand(10,999).'_'.time().'.'.$extension;
            $request->image->move(public_path('/images/products/'),$fileName);
        }
        $input['image'] = $fileName;
        Product::create($input);

        return response()->json(['success' => 'Product Stored Successfully'], $this->successStatus);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $info = Product::find($id);
        if (!$info) {
            return response()->json(['error'=>'Invalid Information'], 401);
        }
        return response()->json(['success' => $info], $this->successStatus);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'price' => ['required', 'numeric'],
            'image' =>['nullable', 'image', 'mimes:jpeg,JPEG,png,PNG,jpg,JPG,gif,GIF'],
        ]);
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);
        }
        $info = Product::find($id);
        // Update the uploaded Image
        $fileName = $info->image;
        if($request->image){
            $extension=$request->image->getClientOriginalExtension();
            $fileName=rand(10,999).'_'.time().'.'.$extension;
            $request->image->move(public_path('/images/products/'),$fileName);
        }
        $info->update([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $fileName,
        ]);

        return response()->json(['success' => 'Product details Updated Successfully'], $this->successStatus);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $info = Product::find($id);
        if (!$info) {
            return response()->json(['error'=>'Invalid Information'], 401);
        }
        $fileName = $info->image;
        if ($fileName && $fileName!='default.png') {
            if(file_exists(public_path('/images/products/'.$fileName))){
                unlink(public_path('/images/products/'.$fileName)); // Removing Image from the path
            }
        }
        $info->delete();

        return response()->json(['success' => 'Product Deleted Successfully'], $this->successStatus);
    }

    public function productDetails($id)
    {
        $info = Product::find($id);
        if (!$info) {
            return response()->json(['error'=>'Invalid Information'], 401);
        }
        return response()->json(['success' => $info], $this->successStatus);
    }

    public function allProducts()
    {
        $query = Product::selectRaw('id,name,image,price')->orderBy('id','desc');
        if (isset($_GET['search']) && $_GET['search']) {
            $query->where('name', 'LIKE', "%{$_GET['search']}%");
        }
        $info = $query->get();
        return response()->json(['success' => $info], $this->successStatus);
    }

    public function updateProduct(Request $request,$id){
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'image' =>['nullable', 'image', 'mimes:jpeg,JPEG,png,PNG,jpg,JPG,gif,GIF'],
            'price' => ['required', 'numeric'],
        ]);
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);
        }
        $info = Product::find($id);
        // Update the uploaded Image
        $fileName = $info->image;
        if($request->image){
            if ($fileName && $fileName!='default.png') {
                if(file_exists(public_path('/images/products/'.$fileName))){
                    unlink(public_path('/images/products/'.$fileName)); // Removing Image from the path
                }
            }
            $extension=$request->image->getClientOriginalExtension();
            $fileName=rand(10,999).'_'.time().'.'.$extension;
            $request->image->move(public_path('/images/products/'),$fileName);
        }
        $info->update([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $fileName,
        ]);

        return response()->json(['success' => 'Product details Updated Successfully'], $this->successStatus);
    }
}
