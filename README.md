# docker-mongodb-pharmacy

[![Build Status](https://travis-ci.org/nhsuk/docker-mongodb-pharmacy.svg?branch=master)](https://travis-ci.org/nhsuk/docker-mongodb-pharmacy)

This is a repo for our docker MongoDB images + data

# Development

* From within the directory run `docker-compose up --build` to run the image (you will need to have installed Docker for your OS).
* RoboMongo is a good free GUI client for viewing MongoDB db's.
* Connect to the MongoDB instance from a MongoDB client on `localhost:27017`.
* This will give you a DB with the following info:
    * Name of the database in the Mongo image: services                
    * Name of collection in the Mongo image: pharmacies              
    * Name of MongoDB host: mongo                   
    * The port used by MongoDB: 27017                  


# Deployment workflow

We are currently using a manual process to update the MongoDB image to be used by the api `https://github.com/nhsuk/nearby-services-api/`
Here are the steps to follow:

* Get a new `pharmacy-data.json` file from the ETL process and replace the one in the `data` directory
* The bellow assumes we have an `nhsuk/mongodb-pharmacy` container on Dockerhub and there are images there already
* Get a `Date.now()` timestamp from the console, let's say `1486569627860`
* Run `docker build -t nhsuk/mongodb-pharmacy:1486569627860 .`
* Run `docker push nhsuk/mongodb-pharmacy:1486569627860` to push to Dockerhub
* Use the new image in the api
