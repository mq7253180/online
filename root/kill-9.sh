pids=`ps -ef|grep $1|grep -v grep|awk '{print $2}'`
for pid in $pids
do
	echo $pid
        kill -9 $pid
        pkill -15 $pid
done
