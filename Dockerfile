    FROM alpine:latest
    RUN mkdir "oc-demo"
    COPY app/ /oc-demo
    EXPOSE 8088
    EXPOSE 8081
    WORKDIR "/oc-demo"
    ENTRYPOINT ["./demo-service", "ports-and-adapters"]
