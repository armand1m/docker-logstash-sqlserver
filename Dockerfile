FROM docker.elastic.co/logstash/logstash:6.4.2

RUN logstash-plugin install logstash-filter-jdbc_streaming
RUN logstash-plugin install logstash-filter-aggregate
RUN logstash-plugin install logstash-input-jdbc
RUN logstash-plugin install logstash-filter-translate

COPY ./jars /logstash/jars
