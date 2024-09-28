pids=`ps -ef|grep redis|grep -v grep|awk '{print $2}'`
for pid in $pids
do
        kill -9 $pid
done
rm -f /quincy/redis/storage/*
redis-server /quincy/redis/conf/redis.conf
redis-server /quincy/redis/conf/redis-slave1.conf
redis-server /quincy/redis/conf/redis-slave2.conf
redis-sentinel /quincy/redis/conf/sentinel1.conf
redis-sentinel /quincy/redis/conf/sentinel2.conf
redis-sentinel /quincy/redis/conf/sentinel3.conf
