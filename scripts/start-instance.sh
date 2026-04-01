#!/bin/bash

INSTANCE_FILE="instance-list.txt"

echo "Starting instances..."

while read -r INSTANCE_ID
do
  if [ -n "$INSTANCE_ID" ]; then
    echo "Starting $INSTANCE_ID"

    oci compute instance action \
      --instance-id "$INSTANCE_ID" \
      --action START
  fi
done < "$INSTANCE_FILE"

echo "All start requests sent."
