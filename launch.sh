#!/bin/sh

docker run --detach --restart always -p 5432:5432 -v $(pwd)/data:/var/lib/postgresql/data -e POSTGRES_INITDB_ARGS="--locale=ru_RU.UTF8" -e POSTGRES_HOST_AUTH_METHOD=trust marinad/postgres

