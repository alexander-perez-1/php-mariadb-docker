# Simple PHP, MariaDB Dev Environment
This docker-compose.yml has 3 services. It contains a custom PHP image, a default MariaDB image and a PHPMyAdmin image for viewing and interacting with the database. 

The PHP image can be built using the included Dockerfile. 

The compose file relies on an '.env' file where the database credentials are stored. Be sure to create that file with your specified credentials. 

You can edit the volumes for the PHP service and mount your own project folder. 

