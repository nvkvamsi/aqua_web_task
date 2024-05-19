rm -f storage/logs/laravel.log
cd storage/logs
touch laravel.log
cd ../../
sudo chmod -R 777 storage/logs
sudo chmod -R 777 storage/framework
sudo chmod -R 777 bootstrap/cache
php artisan optimize:clear
php artisan cache:forget spatie.permission.cache
php artisan clear-compiled
php artisan cache:clear 
php artisan view:clear 
php artisan route:clear
rm -f storage/framework/sessions/*
sudo mkdir -p storage/mysql/data
