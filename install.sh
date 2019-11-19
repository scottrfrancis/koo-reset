#!/bin/bash
echo "Installing koo-reset service to /opt/koo-reset."
mkdir -p /opt/koo-reset
cp -f koo-reset.sh /opt/koo-reset/koo-reset.sh
echo "Installing systemd service to run at boot."
cp -f koo-reset.service /lib/systemd/system/koo-reset.service
echo "Enabling systemd service."
systemctl enable koo-reset.service > /dev/null
