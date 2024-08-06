FROM otel/opentelemetry-collector-contrib:0.106.1 AS otel

FROM alpine:latest

WORKDIR /

COPY --from=otel /otelcol-contrib /otelcol-contrib
COPY start.sh /start.sh

EXPOSE 4317 55680 55679

ENTRYPOINT ["/start.sh"]
CMD ["/otelcol-contrib", "--config", "/etc/otel/config.yaml"]
