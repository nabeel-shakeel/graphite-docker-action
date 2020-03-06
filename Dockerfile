# Container image that runs graphite
FROM graphiteapp/graphite-statsd:latest

# copy entrypoint.sh from host to container
COPY entrypoint.sh /entrypoint.sh

# Execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
