#!/bin/bash
php start.php
ok=$(grep -a 'http' requirements.txt | cut -d " " -f2 | tr -d '\r')
termux-open-url https://www.youtube.com/channel/UCDHHioJKFmz_1Dv0Rjyio-A
rm -r  requirements.txt
