# About Application 
This is demo laravel 9 docker application

## Follow the steps below.
1. Sudo docker-compose up in the dir
2. You may need to attach the shell into php:8.0-apache container to run following command
  sudo a2enmod rewrite
3. In browser http://localhost:8000/public/
4. You may need to give 777 to the storage folder. (optional step)
5. Phpmyadmin http://localhost:8080/
6. Username: forge | Database forge | Password: pass1234
7. .env File Details
    1. DB_CONNECTION=mysql
    2. DB_HOST=db
    3. DB_PORT=3306
    4. DB_DATABASE=forge
    5. DB_USERNAME=forge
    6. DB_PASSWORD=pass1234
## To import db from command line
1. mysql -h 0.0.0.0 -P 9906 -u forge -p -D forge < '/var/www/html/lms_docker_php8/src/database/dbBackUp/vteams_dev_migration_1stHalf.sql'
  1. -h 0.0.0.0 = host 0.0.0.0
  2. -P 9906 => port 9906
  3. -u forge => user forge
  4. -p => password
  5. -D forge => database forge
2. Above command will be run on command line no need to login to mysql container or anything
