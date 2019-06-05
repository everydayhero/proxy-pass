#!/bin/sh
set -e

if [ -n "$1" ]; then
  TARGET="$1"
fi

for tmpl in /etc/nginx/nginx.tmpl /etc/nginx/conf.d/*.tmpl; do
  envsubst '$RESOLVER,$TARGET,$MAX_BODY_SIZE' < "$tmpl" > "$(dirname $tmpl)/$(basename $tmpl .tmpl).conf"
done

nginx -g 'daemon off;'
