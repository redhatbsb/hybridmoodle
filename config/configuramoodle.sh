#!/bin/bash
apt-get -y update
apt-get -y install git
git clone -b MOODLE_36_STABLE git://git.moodle.org/moodle.git 
cd moodle && mv * /var/www/html/
mkdir /moodledata
chmod -R 777 /etc/cron.d/
chmod -R 777 /var/run/

