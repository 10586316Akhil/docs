#!/bin/sh

# Scrapes a URL in order to find broken links. Used on our generated docs to find broken links. 
# below -e parameter is used to add regex exclusions.
# You need GoLang and Muffet in order to run this script

URL=${1:-127.0.0.1:8000}

muffet -e .*/edit/.* -e .*/f2895a6e-ca7c-0010-82c7-eda71af511fa.html -e .*exploit-db\.com -e .*corp[/:].* -e .*:8033/.* -e .*/apps.* -e .*/bugs.* -e .*maven\.apache\.org.* -e .*docs\.oracle\.com.* -e .*wala\.sourceforge\.net.* -t 20 http://$URL