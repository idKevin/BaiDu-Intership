filename=$1
header=$2
table=$3

mysql -h$MONITOR_HOST -P$MONITOR_PORT -u$MONITOR_USER -p$MONITOR_PASS -s -e "
LOAD DATA LOCAL INFILE '$filename'
INTO TABLE $table
FIELDS TERMINATED BY '\t' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n'
($header);"