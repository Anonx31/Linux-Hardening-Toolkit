#!/bin/bash

LOG_FILE="/var/log/auth.log"
KEYWORD="Failed password"

echo "Monitoring $LOG_FILE for $KEYWORD..."

tail -F "$LOG_FILE" | while read LINE; do
    if echo "$LINE" | grep -q "$KEYWORD"; then
        echo "ALERT: Suspicious login attempt detected!"
        # Add email or notification logic here
    fi
done
