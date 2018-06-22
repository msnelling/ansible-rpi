#!/bin/bash

INVENTORY=fresh_rpi_hosts.yml
SITE=fresh_rpi_site.yml
CONNECT_USER=pi
VAULT_PASSWORD_FILE=.vault_pass

echo "Initialising a new Raspberry Pi..."

ansible-playbook --inventory="$INVENTORY" --ask-pass --user="$CONNECT_USER" --vault-password-file="$VAULT_PASSWORD_FILE" "$SITE" "$@"
