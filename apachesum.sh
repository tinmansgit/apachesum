#!/usr/bin/bash 
# for FreeBSD change path to /usr/local/bin/bash

# ApacheSum - summarize apache log file

LOG_FILE="$1"

echo " "
echo "Apache Log Summary Report - Year Domain.com"
echo " "

echo "MULTIMEDIA"
mp3sum=`cat $LOG_FILE | grep -a .mp3 | wc -l`
echo "MP3 Download Count " $mp3sum
echo " "

mp3list=`awk '{ print $7 }' $LOG_FILE | grep -a .mp3 | sort -n | uniq -c | sort -nr`
echo "$mp3list"
echo " "

mp4sum=`cat $LOG_FILE | grep -a .mp4 | wc -l`
echo "MP4 Download Count " $mp4sum
echo " "

mp4list=`awk '{ print $7 }' $LOG_FILE | grep -a .mp4 | sort -n | uniq -c | sort -nr`
echo "$mp4list"
echo " "

mpegsum=`cat $LOG_FILE | grep -a .mpeg | wc -l`
echo "MPEG Download Count " $mpegsum
echo " "

mpeglist=`awk '{ print $7 }' $LOG_FILE | grep -a .mpeg | sort -n | uniq -c | sort -nr`
echo "$mpeglist"
echo " "


echo "TOTAL MONTHLY VISITS"
jansum=`awk '{print $1,$4}' $LOG_FILE | grep Jan | cut -d" " -f1 | wc -l`
echo "January		" $jansum

febsum=`awk '{print $1,$4}' $LOG_FILE | grep Feb | cut -d" " -f1 | wc -l`
echo "February	" $febsum

marsum=`awk '{print $1,$4}' $LOG_FILE | grep Mar | cut -d" " -f1 | wc -l`
echo "March		" $marsum

aprsum=`awk '{print $1,$4}' $LOG_FILE | grep Apr | cut -d" " -f1 | wc -l`
echo "April		" $aprsum

maysum=`awk '{print $1,$4}' $LOG_FILE | grep May | cut -d" " -f1 | wc -l`
echo "May		" $maysum

junsum=`awk '{print $1,$4}' $LOG_FILE | grep Jun | cut -d" " -f1 | wc -l`
echo "June		" $junsum

julsum=`awk '{print $1,$4}' $LOG_FILE | grep Jul | cut -d" " -f1 | wc -l`
echo "July		" $julsum

augsum=`awk '{print $1,$4}' $LOG_FILE | grep Aug | cut -d" " -f1 | wc -l`
echo "August		" $augsum

sepsum=`awk '{print $1,$4}' $LOG_FILE | grep Sep | cut -d" " -f1 | wc -l`
echo "September	" $sepsum

octsum=`awk '{print $1,$4}' $LOG_FILE | grep Oct | cut -d" " -f1 | wc -l`
echo "October		" $octsum

novsum=`awk '{print $1,$4}' $LOG_FILE | grep Nov | cut -d" " -f1 | wc -l`
echo "November	" $novsum

decsum=`awk '{print $1,$4}' $LOG_FILE | grep Dec | cut -d" " -f1 | wc -l`
echo "December	" $decsum
echo " "


echo "UNIQUE MONTHLY VISITS"
jansum=`awk '{print $1,$4}' $LOG_FILE | grep Jan | cut -d" " -f1 | uniq -c | wc -l`
echo "January		" $jansum

febsum=`awk '{print $1,$4}' $LOG_FILE | grep Feb | cut -d" " -f1 | uniq -c | wc -l`
echo "February	" $febsum

marsum=`awk '{print $1,$4}' $LOG_FILE | grep Mar | cut -d" " -f1 | uniq -c | wc -l`
echo "March		" $marsum

aprsum=`awk '{print $1,$4}' $LOG_FILE | grep Apr | cut -d" " -f1 | uniq -c | wc -l`
echo "April		" $aprsum

maysum=`awk '{print $1,$4}' $LOG_FILE | grep May | cut -d" " -f1 | uniq -c | wc -l`
echo "May		" $maysum

junsum=`awk '{print $1,$4}' $LOG_FILE | grep Jun | cut -d" " -f1 | uniq -c | wc -l`
echo "June		" $junsum

julsum=`awk '{print $1,$4}' $LOG_FILE | grep Jul | cut -d" " -f1 | uniq -c | wc -l`
echo "July		" $julsum

augsum=`awk '{print $1,$4}' $LOG_FILE | grep Aug | cut -d" " -f1 | uniq -c | wc -l`
echo "August		" $augsum

sepsum=`awk '{print $1,$4}' $LOG_FILE | grep Sep | cut -d" " -f1 | uniq -c | wc -l`
echo "September	" $sepsum

octsum=`awk '{print $1,$4}' $LOG_FILE | grep Oct | cut -d" " -f1 | uniq -c | wc -l`
echo "October		" $octsum

novsum=`awk '{print $1,$4}' $LOG_FILE | grep Nov | cut -d" " -f1 | uniq -c | wc -l`
echo "November	" $novsum

decsum=`awk '{print $1,$4}' $LOG_FILE | grep Dec | cut -d" " -f1 | uniq -c | wc -l`
echo "December	" $decsum
echo " "
