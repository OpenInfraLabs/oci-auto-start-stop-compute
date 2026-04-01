#!/bin/bash
echo "===== $(date) ====="

export PATH=/home/opc/bin:/usr/local/bin:/usr/bin:/bin
INSTANCE_FILE="/home/opc/oci-auto-start-stop-compute/scripts/instance-list.txt"

echo "Starting instances..."

while read -r INSTANCE_ID
do
  if [ -n "$INSTANCE_ID" ]; then
    echo "Starting $INSTANCE_ID"

    /home/opc/bin/oci compute instance action \
      --instance-id "$INSTANCE_ID" \
      --action START
  fi
done < "$INSTANCE_FILE"

echo "All start requests sent."
