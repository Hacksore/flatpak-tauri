#!/bin/sh

echo "If we need to do anything custom..."
file /app/bin/test-wrapped
ldd /app/bin/test-wrapped

ls -hal /app/bin
ls -hal /app

exec /app/bin/test-wrapped "$@"