#!/bin/sh
/app/download-config.sh # Download latest radarr config backup and extract it
exec /init              # Start radarr as the main process