#!/bin/bash

curl -s https://nodeping.com/content/txt/pinghosts.txt \
  | egrep '([1-2]?[0-9]{0,2}\.){3,3}[1-2]?[0-9]{0,2}' \
  | awk --field-searator=" " '{print $2}' | awk '
BEGIN { ORS = ""; print " { \"nodeping_probe_ips\": \""}
{ if (NR == 1) { print $1"/32" } else { print ","$1"/32" } }
END { print "\" }" }'
