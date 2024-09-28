pids=`ps -ef|grep redis|grep -v grep|awk '{print $2}'`
for pid in $pids
do
        kill -9 $pid
done
rm -f /quincy/env/redis/storage/*
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis.conf
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis-slave1.conf
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis-slave2.conf
/quincy/env/redis/redis-bin/src/redis-sentinel /quincy/env/redis/cfg/sentinel1.conf
/quincy/env/redis/redis-bin/src/redis-sentinel /quincy/env/redis/cfg/sentinel2.conf
/quincy/env/redis/redis-bin/src/redis-sentinel /quincy/env/redis/cfg/sentinel3.conf
