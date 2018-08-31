Pinball Stats
====

## Getting started instructions:

```
# Start postgres db:
$ docker run -p 5432:5432 -p 3000:3000 -d --name postgres -e POSTGRES_USER=root postgres:9.6
# Start ruby container with access to postgres, mounting in the repo as /workspace
$ docker run --rm -it --network container:postgres -v $PWD:/workspace -w /workspace ruby:2.3 bash
root@e8dae48565ac:/workspace# bundle install
root@e8dae48565ac:/workspace# RAILSENV=development rake db:create db:migrate
root@e8dae48565ac:/workspace# RAILSENV=development rails s
```
