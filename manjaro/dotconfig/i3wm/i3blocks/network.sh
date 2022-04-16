#!/usr/bin/bash
#
# Get IP and check if under VPN
# Javier Sagra 2022
#

vpn=$(ip link | grep tun | awk '{print $2}')

if [ ${vpn} ]
then
    vpn_warning="<span background=\"#91E78B\" color=\"#ffffff\"><b>VPN</b></span> "
fi;

host=$(hostname -i | awk '{ print "IP:" $1 }')

echo "${vpn_warning}${host}"

