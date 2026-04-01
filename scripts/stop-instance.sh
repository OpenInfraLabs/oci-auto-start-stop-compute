#!/bin/bash

INSTANCE_FILE="instance-list.txt"

echo "Stopping instances..."

while read -r INSTANCE_ID
do
  if [ -n "$INSTANCE_ID" ]; then
    echo "Stopping $INSTANCE_ID"

    oci compute instance action \
      --instance-id "$INSTANCE_ID" \
      --action STOP
  fi
done < "$INSTANCE_FILE"

echo "All stop requests sent."
