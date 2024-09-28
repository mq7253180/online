pids=`ps -ef|grep redis|grep -v grep|awk '{print $2}'`
for pid in $pids
do
        kill -9 $pid
done
rm -f /quincy/redis/storage/*
redis-server /quincy/redis/conf/redis-cluster1.conf
redis-server /quincy/redis/conf/redis-cluster2.conf
redis-server /quincy/redis/conf/redis-cluster3.conf
/quincy/redis/redis/src/redis-trib.rb create 47.93.89.0:6379 47.93.89.0:6389 47.93.89.0:6399
