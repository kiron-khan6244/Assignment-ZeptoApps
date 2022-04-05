## About Backend Folder

Backend folder reprents the BackEnd project of the Assignment. It is tottaly different fron the Frontend section. It is a Laravel project to maintain the backend program or API. There is some steps need to do for starting the backend Projet.

### The Steps are:

1. Open the backend folder and run the following command:

        composer update

2. Make a [.env](https://laravel.com/docs) file. You can copy the [.env.example](https://laravel.com/docs) file and then rename it with [.env](https://laravel.com/docs). And then configure the [.env](https://laravel.com/docs) file.

3. Then Start the project with the following command:

        php artisan serve

    Note: If any problem occur, plese run those commands:

        composer dump-autoload

        php artisan config:cache

        php artisan serve

Sometime you need to make a "views" folder into the storage/framework path, if the the folder is missing.

now the backend system is ready.
