#!/bin/bash -e

IPADDR=`echo $(/sbin/ifconfig > /home/bitfurry/cron_jobs/email_local_ip_address/ifconfig.txt && cat /home/bitfurry/cron_jobs/email_local_ip_address/ifconfig.txt | awk '/192.168.0./ {print "Home local ip" $2}')`
echo $IPADDR

mutt -s "$IPADDR" -a /home/bitfurry/cron_jobs/email_local_ip_address/ifconfig.txt -- sahil.kharb@go-jek.com < /home/bitfurry/cron_jobs/email_local_ip_address/regards.txt
