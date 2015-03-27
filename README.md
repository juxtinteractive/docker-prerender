docker-prerender
================

Dockerfile to build the prerender container image.
Forked from [cerisier/docker-prerender](https://github.com/cerisier/docker-prerender).


Deploying to [dokku(-alt)](https://github.com/dokku-alt/dokku-alt)
==================

Check out this project and add an origin

`git remote add dokku dokku@dokku:project-name`

Create a redis database

`dokku redis:create project-name`

This should set `REDIS_URL` environment variable on the project.
