FROM logstash

RUN logstash-plugin install logstash-filter-aggregate
RUN logstash-plugin install logstash-input-jdbc

COPY ./jars /logstash/jars
