#!/bin/sh
sshpass -p "$SFTP_PASSWORD" sftp -o StrictHostKeyChecking=no "$SFTP_USERNAME"@$SFTP_SERVER:uploads/radarr/radarr-latest.zip radarr-latest.zip
unzip -o "radarr-latest.zip" -d "extracted_backup"
cp extracted_backup/radarr.db ../config/
cp extracted_backup/config.xml ../config/