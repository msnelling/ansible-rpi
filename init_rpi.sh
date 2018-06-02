#!/bin/bash

INVENTORY=fresh_rpi.yml
SITE=site.yml
VAULT_PASSWORD_FILE=.vault_pass

echo "Initialising a new Raspberry Pi..."

ansible-playbook --inventory="$INVENTORY" --ask-pass --vault-password-file="$VAULT_PASSWORD_FILE" "$SITE"