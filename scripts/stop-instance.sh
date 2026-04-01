#!/bin/bash
echo "===== $(date) ====="
export PATH=/home/opc/bin:/usr/local/bin:/usr/bin:/bin
INSTANCE_FILE="/home/opc/oci-auto-start-stop-compute/scripts/instance-list.txt"

echo "Stopping instances..."

while read -r INSTANCE_ID
do
  if [ -n "$INSTANCE_ID" ]; then
    echo "Stopping $INSTANCE_ID"
    /home/opc/bin/oci compute instance action \
      --instance-id "$INSTANCE_ID" \
      --action STOP
  fi
done < "$INSTANCE_FILE"

echo "All stop requests sent."
