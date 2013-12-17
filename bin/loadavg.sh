#!/bin/sh
uptime | sed 's/.*: //;s/,//g'
