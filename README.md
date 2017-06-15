# pharmacy-db

[![Build Status](https://travis-ci.org/nhsuk/pharmacy-db.svg?branch=master)](https://travis-ci.org/nhsuk/pharmacy-db)

The repo is a Dockerised container consisting of a set of pharmacy data loaded into a MongoDB 3.4 instance.
It is available on Docker hub at [nhsuk/pharmacy-db](https://hub.docker.com/r/nhsuk/pharmacy-db/)
The (Pharmacy Data ETL)[https://github.com/nhsuk/pharmacy-data-etl] provides the data file that is imported in this image.

The container has the following properties:
* DB - services
* Collection - pharmacies
* Port - 27017

## Run it locally

* The `docker-compose` file can be used via `docker-compose up --build` to run the container. Doing this will expose the Mongo instance on its default port of `27017`.
* RoboMongo is a good free GUI client for viewing MongoDB db's.

## Docker images

Everytime a build (done via Travis) is triggered an image will be built and pushed to Docker hub.
The last merged of the repo into `master` with have the tag `latest`. All PRs are built and tagged as `pr-<#>`.

## Architecture Decision Records

This repo uses
[Architecture Decision Records](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)
to record architectural decisions for this project.
They are stored in [doc/architecture/decisions](doc/architecture/decisions).