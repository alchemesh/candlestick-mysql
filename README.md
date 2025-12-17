# Candlestick Pattern - MYSQL
The MySQL database for the Candlestick Pattern application.

There are 3 tables in the Stock_Events database
* tickers
* events
* day 

Data about the specific event is stored and retrieved from the database by the Java API, which can be found in the [JAVA API] (https://github.com/alchemesh/candlestick-java-api) repo.


## How to use ##

Deploy the image using Docker, Kubernetes, or any other container orchestration service using the docker io image: sabatiel180/candlestick-mysql-db-app

### Environment variables ###

The docker images needs a single environment variable to function
- MY_ROOT_PASSWORD

### Docker ###

#### Docker Build ####
The manual approach can be used by downloading the repository your local machine. Navigate to the folder and run:

docker build -t [your_image_name] .

#### Docker Run ####
Run the image using the environment variable for the root user password.     ***Note: The image will not work without a password***

docker run -itd --env=MYSQL_ROOT_PASSWORD=[your_sql_password] -p 3306:3306 --name [your_container_name] [your_image_name]

Where:
* your_sql_password = (Root user password. This can be whatever you want it to be)
* -p 3306 = Open port for MYSQL for other applications
* your_container_name = (The name you want to issue to the running container)
* your_image_name = (The name you used if you built the image manually. Use sabatiel180/candlestick-mysql-db-app for easier deployment)


### Kubernetes ###
The Kubernetes files in this repo can be used as a template for deployment.

#### Deployment ####
The deployment.yaml file will deploy the mysql database as a replica set with a name and app labels as candlestick-mysql-app-deploy and candlestick-mysql-app respectfully. 

#### Service ####
The MYSQL replicaset is deployed as a LoadBalancer service. This can potentially allow for horizontal scaling for the database to balance the load should it ever be necessary. The service name, candlestick-mysql-service, is used by Java API for communication between pods. 
