# Container image that runs graphite
FROM graphiteapp/graphite-statsd:latest

# Install curl
RUN apk --no-cache add curl

# copy entrypoint.sh from host to container
COPY entrypoint.sh /entrypoint.sh

# Execute when the docker container starts up (`entrypoint.sh`)
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
