#!/bin/bash

echo "Auditing file permissions on sensitive files..."

SENSITIVE_FILES=("/etc/passwd" "/etc/shadow" "/etc/ssh/sshd_config")

for FILE in "${SENSITIVE_FILES[@]}"; do
    if [ -f "$FILE" ]; then
        echo "Permissions for $FILE: $(ls -l "$FILE")"
    else
        echo "$FILE not found!"
    fi
done
