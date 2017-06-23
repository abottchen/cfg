#!/bin/bash
printf "%s (%d%%)\n" $(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I |grep " SSID" |egrep -o "\S+$") $(bc -l <<< "$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep "agrCtlRSSI:" |egrep -o "[-0-9]+$") + 100")
