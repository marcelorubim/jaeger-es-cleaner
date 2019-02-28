FROM python:3.7.2-stretch
RUN pip install elasticsearch-curator
COPY config.yml .
COPY delete_indices.yml .
ENV NUMBER_OF_DAYS=30
ENV ES_HOST=127.0.0.1
ENV ES_PORT=9200
ENTRYPOINT [ "curator","--config","config.yml","delete_indices.yml" ]
 