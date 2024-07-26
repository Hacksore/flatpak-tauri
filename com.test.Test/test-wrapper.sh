#!/bin/sh

file /app/bin/test-wrapped

echo "Starting the test app..."
exec /app/bin/test-wrapped "$@"