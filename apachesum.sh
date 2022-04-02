#!/usr/bin/bash .... for FreeBSD change path to /usr/local/bin/bash

# ApacheSum - summarize apache log file for unique visits per month

LOG_FILE="$1"

echo " "
echo "Title - Year Domain.com"
echo " "
jansum=`awk '{print $1,$4}' $LOG_FILE | grep Jan | cut -d" " -f1 | uniq -c | wc -l`
echo "January		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Feb | cut -d" " -f1 | uniq -c | wc -l`
echo "February	" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Mar | cut -d" " -f1 | uniq -c | wc -l`
echo "March		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Apr | cut -d" " -f1 | uniq -c | wc -l`
echo "April		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep May | cut -d" " -f1 | uniq -c | wc -l`
echo "May		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Jun | cut -d" " -f1 | uniq -c | wc -l`
echo "June		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Jul | cut -d" " -f1 | uniq -c | wc -l`
echo "July		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Aug | cut -d" " -f1 | uniq -c | wc -l`
echo "August		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Sep | cut -d" " -f1 | uniq -c | wc -l`
echo "September	" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Oct | cut -d" " -f1 | uniq -c | wc -l`
echo "October		" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Nov | cut -d" " -f1 | uniq -c | wc -l`
echo "November	" $jansum

jansum=`awk '{print $1,$4}' $LOG_FILE | grep Dec | cut -d" " -f1 | uniq -c | wc -l`
echo "December	" $jansum

echo " "

