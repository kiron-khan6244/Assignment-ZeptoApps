// windown reload
function reloadFn(){
    window.location.reload();
}

// All Products
function allProducts(){
    var html = '';
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        var data = JSON.parse(this.responseText);
        if (data.success) {
            for (let i = 0; i < data.success.length; i++) {
                if (i<10) {
                    html += '<div class="col-md-3 col-sm-6">'+
                        '<div class="card mt-2">'+
                            '<img class="card-img-top" src="http://127.0.0.1:8000/images/products/'+data.success[i].image+'" alt="product image">'+
                            '<div class="card-body">'+
                                '<h5 class="card-title"><a href="product_details.html?'+data.success[i].id+'" class="site-link" target="_blank">'+data.success[i].name+'</a></h5>'+
                                '<p class="card-text">Price: '+data.success[i].price+' Tk</p>'+
                            '</div>'+
                        '</div>'+
                    '</div>';
                }
            }
        }
        document.getElementById('products').innerHTML = html;
    }
    xhttp.open("GET", "http://127.0.0.1:8000/api/allProducts",true);
    xhttp.send();
}

// All Products with Buttons
function allProductsWithButtons(){
    var html = '';
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        var data = JSON.parse(this.responseText);
        if (data.success) {
            for (let i = 0; i < data.success.length; i++) {
                html += '<div class="col-md-3 col-sm-6">'+
                    '<div class="card mt-2">'+
                        '<img class="card-img-top" src="http://127.0.0.1:8000/images/products/'+data.success[i].image+'" alt="product image">'+
                        '<div class="card-body">'+
                            '<h5 class="card-title"><a href="product_details.html?'+data.success[i].id+'" class="site-link" target="_blank">'+data.success[i].name+'</a></h5>'+
                            '<p class="card-text">Price: '+data.success[i].price+' Tk</p>'+
                            '<button type="button" class="btn btn-primary btn-sm editBtn" onclick="editProducts('+data.success[i].id+')" style="display:none;"><i class="fa fa-pencil-square" aria-hidden="true"></i> Edit</button>'+
                            '<button type="button" class="btn btn-danger btn-sm float-right deleteBtn" onclick="deleteProducts('+data.success[i].id+')"style="display:none;"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>'+
                        '</div>'+
                    '</div>'+
                '</div>';
            }
        }
        document.getElementById('products').innerHTML = html;
    }
    xhttp.open("GET","http://127.0.0.1:8000/api/allProducts",true);
    xhttp.send();
}

// search Products
function serchProducts(e){
    if (e.which ==13 || e==1) {
        let searchValue = document.getElementById('searchValue').value;
        var html = '';
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            var data = JSON.parse(this.responseText);
            if (data.success) {
                for (let i = 0; i < data.success.length; i++) {
                    if (i<10) {
                        html += '<div class="col-md-3 col-sm-6">'+
                            '<div class="card mt-2">'+
                                '<img class="card-img-top" src="http://127.0.0.1:8000/images/products/'+data.success[i].image+'" alt="product image">'+
                                '<div class="card-body">'+
                                    '<h5 class="card-title"><a href="product_details.html?'+data.success[i].id+'" class="site-link" target="_blank">'+data.success[i].name+'</a></h5>'+
                                    '<p class="card-text">Price: '+data.success[i].price+' Tk</p>'+
                                '</div>'+
                            '</div>'+
                        '</div>';
                    }
                }
            }
            document.getElementById('products').innerHTML = html;
        }
        xhttp.open("GET", "http://127.0.0.1:8000/api/allProducts?search="+searchValue,true);
        xhttp.send();
    }
}

// search Products
function serchProductsWithButtons(e){
    if (e.which ==13 || e==1) {
        let searchValue = document.getElementById('searchValue').value;
        var html = '';
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            var data = JSON.parse(this.responseText);
            if (data.success) {
                for (let i = 0; i < data.success.length; i++) {
                    html += '<div class="col-md-3 col-sm-6">'+
                        '<div class="card mt-2">'+
                            '<img class="card-img-top" src="http://127.0.0.1:8000/images/products/'+data.success[i].image+'" alt="product image">'+
                            '<div class="card-body">'+
                                '<h5 class="card-title"><a href="product_details.html?'+data.success[i].id+'" class="site-link" target="_blank">'+data.success[i].name+'</a></h5>'+
                                '<p class="card-text">Price: '+data.success[i].price+' Tk</p>'+
                                '<button type="button" class="btn btn-primary btn-sm editBtn" onclick="editProducts('+data.success[i].id+')" style="display:none;"><i class="fa fa-pencil-square" aria-hidden="true"></i> Edit</button>'+
                                '<button type="button" class="btn btn-danger btn-sm float-right deleteBtn" onclick="deleteProducts('+data.success[i].id+')" style="display:none;"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>'+
                            '</div>'+
                        '</div>'+
                    '</div>';
                }
            }
            document.getElementById('products').innerHTML = html;
        }
        xhttp.open("GET", "http://127.0.0.1:8000/api/allProducts?search="+searchValue,true);
        xhttp.send();
    }
}

// Expires date
function setExpiresDate(){
    const d = new Date();
    d.setDate(d.getDate() + 7);
    let year = d.getFullYear();
    let month = '';
    let day = '';
    if (d.getMonth()>9) {
        month = d.getMonth()+1;
    }else{
        month = '0'+(d.getMonth()+1);
    }
    if (d.getDate()>9) {
        day = d.getDate();
    }else{
        day = '0'+d.getDate();
    }

    return year+"-"+month+"-"+day;
}

// Register User
function registerUser(e){
    if (e.which ==13 || e==1) {
        var name = $('#register_name').val();
        var email = $('#register_email').val();
        var pass = $('#register_Password').val();
        var pass_confirm = $('#register_Password_confirmation').val();
        if (name && email && pass && pass_confirm && pass==pass_confirm) {
            var form_data = new FormData();
            form_data.append('name', name);
            form_data.append('email', email);
            form_data.append('password', pass);
            form_data.append('password_confirmation', pass_confirm);
            
            fetch('http://127.0.0.1:8000/api/register/', {
                method: "POST", 
                body: form_data
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    localStorage.setItem('jwtoken', token);
                    localStorage.setItem('expires_date', setExpiresDate());
                } else {
                    alert("internet error or invalid data")
                }
            });   
            setTimeout(reloadFn, 1000);
        }else{
            if (!name) {
                alert("Please Enter the Name");
                $('#register_name').focus();
                return false;
            }
            if (!email) {
                alert("Please Enter the Email");
                $('#register_email').focus();
                return false;
            }
            if (!pass) {
                alert("Please Enter the Password");
                $('#register_Password').focus();
                return false;
            }
            if (!pass_confirm) {
                alert("Please Confirm the Password");
                $('#register_Password_confirmation').focus();
                return false;
            }
            if (pass != pass_confirm) {
                alert("Password & Confirm Password must be same");
                $('#register_Password_confirmation').focus();
                return false;
            }
        }
    }
}

// Login User
function loginUser(e){
    if (e.which ==13 || e==1) {
        let token;
        var email = $('#login_email').val();
        var pass = $('#login_Password').val();
        if (email && pass) {
            var form_data = new FormData();
            form_data.append('email', email);
            form_data.append('password', pass);
            
            fetch('http://127.0.0.1:8000/api/login/', {
                method: "POST", 
                body: form_data
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    token = data.success.token;
                    localStorage.setItem('jwtoken', token);
                    localStorage.setItem('expires_date', setExpiresDate());
                } else {
                    alert("internet error or invalid data")
                }
            });   
            setTimeout(reloadFn, 1000);
        }else{
            if (!email) {
                alert("Please Enter the Email");
                $('#login_email').focus();
                return false;
            }
            if (!pass) {
                alert("Please Enter the Password");
                $('#login_Password').focus();
                return false;
            }
        }
    }
}

function logoutFuntion(){
    fetch('http://127.0.0.1:8000/api/logout/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            }
        })
        .then(res => {
            return res.json()
        })
        .then(data => {
            if (data.success) {
                localStorage.removeItem('jwtoken');
                localStorage.removeItem('expires_date');
            } else {
                alert("internet error or invalid data")
            }
        });
        setTimeout(reloadFn, 1000);
}

function getDetails(){
    let token = localStorage.getItem('jwtoken');
    let expires_date = localStorage.getItem('expires_date');
    const otherDate = new Date(expires_date);
    const todayDate = new Date();
    if (
        otherDate.getDate() === todayDate.getDate() &&
        otherDate.getMonth() === todayDate.getMonth() &&
        otherDate.getYear() === todayDate.getYear()
    ) {
        localStorage.removeItem('jwtoken');
        localStorage.removeItem('expires_date');
        $('#logiin_menu').show();
        $('#signin_menu').show();
        $('#account_menu').hide();
        $('.editBtn').hide();
        $('.deleteBtn').hide();
        $('#createBtn').hide();
    } else {
        if (token) {
            fetch('http://127.0.0.1:8000/api/userDetails', {
            method: "GET", 
            headers: {
                'Authorization':'Bearer '+token
            }
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    $('#logiin_menu').hide();
                    $('#signin_menu').hide();
                    $('#account_menu').show();
                    $('#account_name').html(data.success.name);
                    $('#account_email').html(data.success.email);
                    if (data.success.role==0) {
                        $('.editBtn').show();
                        $('.deleteBtn').show();
                        $('#createBtn').show();
                    }
                } else {
                    alert("internet error or invalid data")
                }
            });
        }else{
            $('#logiin_menu').show();
            $('#signin_menu').show();
            $('#account_menu').hide();
            $('.editBtn').hide();
            $('.deleteBtn').hide();
            $('#createBtn').hide();
        }
    }
    
}

//product details
function productdetails(value){
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        var data = JSON.parse(this.responseText);
        if (data.success) {
            document.getElementById('product_details_image').setAttribute("src", "http://127.0.0.1:8000/images/products/"+data.success.image);
            document.getElementById('product_details_name').innerHTML = data.success.name;
            document.getElementById('product_details_price').innerHTML = data.success.price;
        }
    }
    xhttp.open("GET", "http://127.0.0.1:8000/api/productDetails/"+value,false);
    xhttp.send();
}

// create product
function createProduct(){
    var title = $('#createProduct_name').val();
    var price = $('#createProduct_price').val();
    var image = $('#createProduct_image').val();
    let token = localStorage.getItem('jwtoken');
    if (token) {
        if (title && price && image) {
            var form_data = new FormData();
            form_data.append('name', title);
            form_data.append('price', price);
            form_data.append('image', createProduct_image.files[0]);
            fetch('http://127.0.0.1:8000/api/products', {
                method: "POST", 
                headers: {
                    'Authorization':'Bearer '+token
                },
                body: form_data
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    alert(data.success);
                } else {
                    alert("internet error or invalid data")
                }
            });   
            setTimeout(reloadFn, 1000);
        }else{
            if (!title) {
                alert("Please Enter the Name");
                $('#createProduct_name').focus();
                return false;
            }
            if (!price) {
                alert("Please Enter the Price");
                $('#createProduct_price').focus();
                return false;
            }
            if (!image) {
                alert("Please Select an Image");
                $('#createProduct_image').focus();
                return false;
            }
        }
    }
}

// Edit product
function editProducts(id){
    let token = localStorage.getItem('jwtoken');
    if (token) {
        fetch('http://127.0.0.1:8000/api/products/'+id, {
            method: "GET", 
            headers: {
                'Authorization':'Bearer '+token
            }
        })
        .then(res => res.json())
        .then(data => {
            if (data.success) {
                document.getElementById('editProduct_image_show').setAttribute("src", "http://127.0.0.1:8000/images/products/"+data.success.image);
                document.getElementById('editProduct_name').value = data.success.name;
                document.getElementById('editProduct_price').value = data.success.price;
                document.getElementById('editProduct_id').value = id;
            } else {
                alert("internet error or invalid data")
            }
        });
        $('#editProductModal').modal('show');
    }
}

// Update product
function updateProduct(){
    var title = $('#editProduct_name').val();
    var price = $('#editProduct_price').val();
    var image = $('#editProduct_image').val();
    var id = $('#editProduct_id').val();
    let token = localStorage.getItem('jwtoken');
    if (token) {
        if (title && price) {
            var form_data = new FormData();
            form_data.append('name', title);
            form_data.append('price', price);
            if (image) {
                form_data.append('image', editProduct_image.files[0]);
            }
            
            fetch('http://127.0.0.1:8000/api/updateProduct/'+id, {
                method: "POST", 
                headers: {
                    'Authorization':'Bearer '+token
                },
                body: form_data
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    alert(data.success);
                } else {
                    alert("internet error or invalid data")
                }
            });   
            setTimeout(reloadFn, 1000);
        }else{
            if (!title) {
                alert("Please Enter the Name");
                $('#createProduct_name').focus();
                return false;
            }
            if (!price) {
                alert("Please Enter the Price");
                $('#createProduct_price').focus();
                return false;
            }
        }
    }
}

// Delete Product
function deleteProducts(id){
    let token = localStorage.getItem('jwtoken');
    if (token) {
        if (confirm("Are you sure want to delete??")) {
            fetch('http://127.0.0.1:8000/api/products/'+id, {
                method: 'DELETE',
                headers: {
                    'Authorization':'Bearer '+token
                }
            })
            .then(res => {
                return res.json()
            })
            .then(data => {
                if (data.success) {
                    alert(data.success);
                } else {
                    alert("internet error or invalid data")
                }
            });
            setTimeout(reloadFn, 1000);
        }else{
            return false;
        }
    }
}