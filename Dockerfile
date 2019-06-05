FROM nginx:alpine

# Change this otherwise it will recurse
ENV TARGET=http://127.0.0.1 \
    RESOLVER=127.0.0.1 \
    MAX_BODY_SIZE=1m

RUN rm /etc/nginx/nginx.conf
COPY nginx.tmpl /etc/nginx/
COPY conf.d /etc/nginx/conf.d
COPY docker-entrypoint.sh /

EXPOSE 80 443

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD []
