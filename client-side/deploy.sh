#!/usr/bin/env bash

echo What is your login?
read varname

ssh $varname@213.159.215.200 "/var/deploy/deploy.o poliv.uz"