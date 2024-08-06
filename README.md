# OpenTelemetry Collector 

> An easily configurable OTel collector container image

The Docker container built here extends the [OTel contrib build](https://hub.docker.com/r/otel/opentelemetry-collector-contrib) by providing an environment variable with which to pass in a **base64-encoded config file**: `OTEL_CONFIG_BASE64`.
