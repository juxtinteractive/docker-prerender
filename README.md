docker-prerender
================

Dockerfile to build the prerender container image.
Forked from [cerisier/docker-prerender](https://github.com/cerisier/docker-prerender).


Deploying to [dokku(-alt)](https://github.com/dokku-alt/dokku-alt)
==================

Check out this project, add an origin, and push!

```
git remote add dokku dokku@dokku:project-name
git push dokku master
```

### Adding a cache

To add a cache, using redis, connect a redis database to the project.

`dokku redis:create project-name`

This should set `REDIS_URL` environment variable on the project which will
be used automatically.

To change the page cache time, set the `PAGE_TTL` variable to the number
of seconds you'd like the page to live in cache.
