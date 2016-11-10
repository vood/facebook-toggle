#!/bin/bash


isoff=`grep "toggle off facebook" /etc/hosts`

if [ "$1" == "on" -a "$isoff" != "" ]; 
then
	sudo sed -i.back "s/^.*toggle off facebook$//" /etc/hosts 
	echo "Facebook is on"
fi

if [ "$1" == "off" -a "$isoff" == "" ]; 
then
	sudo sh -c 'echo "127.0.0.1    facebook.com www.facebook.com m.facebook.com  # toggle off facebook" >> /etc/hosts'
        echo "Facebook is off"
fi

cat /etc/hosts
