FROM nginx:alpine

# Change this otherwise it will recurse
ENV TARGET=http://127.0.0.1
ENV RESOLVER=127.0.0.1

RUN rm /etc/nginx/nginx.conf
COPY nginx.tmpl /etc/nginx/
COPY conf.d /etc/nginx/conf.d
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD []
