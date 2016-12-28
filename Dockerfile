FROM openjdk:7
COPY jmx_prometheus_httpserver/target/jmx_prometheus_httpserver-0.8-SNAPSHOT-jar-with-dependencies.jar /opt
COPY sample_config.yml /opt
COPY entrypoint.sh /opt
WORKDIR /opt
CMD ["/opt/entrypoint.sh"]

