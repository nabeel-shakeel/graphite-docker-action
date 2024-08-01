# Graphite Container Action

A GitHub action for spins up [Graphite Container](https://hub.docker.com/r/graphiteapp/graphite-statsd).

Graphite & Statsd can be complex to setup. This action will have you running & collecting stats in just a few minutes.
- All Graphite related processes are run as daemons & monitored with runit.
- Includes additional services such as logrotate, nginx, optional Redis for TagDB and optional collectd instance.
- Put your custom services under /etc/service directory in Dockerfile and they'll be automatically run by runit. 

Here's an example of using the Action in workflows:

#### WorkFlow #1

Run a workflow on push event occur on master branch
```
name: Spin Graphite Container

on:
  push:
    branches:
      - master

jobs:
    run-container:
        name: Running Container
        runs-on: ubuntu-latest
        steps:
            - name: Run Action
              uses: nabeel-shakeel/graphite-docker-action@master
            
            - name: Docker ps Output
              run: docker ps
```

#### WorkFlow #2

You can run a workflow when a check suite has been rerequested or completed
```
 name: Spin Graphite Container

 on:
   check_suite:
    types: [rerequested, completed]

 jobs:
     run-container:
         name: Running Container
         runs-on: ubuntu-latest
         steps:
             - name: Run Action
               uses: nabeel-shakeel/graphite-docker-action@master

             - name: Docker ps Output
               run: docker ps

```
