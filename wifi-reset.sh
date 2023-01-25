#!/bin/bash

echo

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. sudo ./wifi-reset.sh"
    exit 1
fi

echo "ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev" >/etc/wpa_supplicant/wpa_supplicant.conf
echo "update_config=1" >>/etc/wpa_supplicant/wpa_supplicant.conf
echo "DONE"
