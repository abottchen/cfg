#!/bin/bash
printf "%.2f MB/s\n" $(bc -l <<< "scale=2;$(curl --silent -o /dev/null http://google.com -w '%{speed_download}')/1024")
