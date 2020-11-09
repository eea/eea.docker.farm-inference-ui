#!/bin/sh

if [ ! -z "$REACT_APP_API" ]; then
  files=$(egrep -lir "http://127.0.0.1:5000" /var/www/localhost/demo-ui/)
  for file in $files; do
    sed -i "s|http://127.0.0.1:5000|$REACT_APP_API|g" $file
  done
fi

exec "$@"
