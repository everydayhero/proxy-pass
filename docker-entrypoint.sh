#!/bin/sh
set -ex

for tmpl in /etc/nginx/conf.d/*.tmpl; do
  envsubst '$TARGET' < "$tmpl" > "$(dirname $tmpl)/$(basename $tmpl .tmpl).conf"
done

exec "$@"
