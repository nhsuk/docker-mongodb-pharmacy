# **DEPRECATED** - no longer actively maintained

---

# Pharmacy DB

[![GitHub Release](https://img.shields.io/github/release/nhsuk/pharmacy-db.svg)](https://github.com/nhsuk/pharmacy-db/releases/latest/)
[![Build Status](https://travis-ci.org/nhsuk/pharmacy-db.svg?branch=master)](https://travis-ci.org/nhsuk/pharmacy-db)

> The repo is a Dockerised container consisting of a set of pharmacy data
> loaded into a MongoDB 3.4 instance. It is available on Docker hub at
> [nhsuk/pharmacy-db](https://hub.docker.com/r/nhsuk/pharmacy-db/)

The container has the following properties:
* DB - services
* Collection - pharmacies
* Port - 27017

## Running locally

* Check out [scripts](/scripts) directory for information on starting the
  application
* RoboMongo is a good, free GUI for working with MongoDB

## Docker images

Every time a build (via Travis) is triggered an image will be built and
pushed to Docker hub. The last merged commit of the repo into `master` will
have the tag `latest`. All PRs are built and tagged as `pr-<#>`.
