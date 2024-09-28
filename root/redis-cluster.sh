pids=`ps -ef|grep redis|grep -v grep|awk '{print $2}'`
for pid in $pids
do
        kill -9 $pid
done
rm -f /quincy/env/redis/storage/*
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis-cluster1.conf
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis-cluster2.conf
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis-cluster3.conf
/quincy/env/redis/redis-bin/src/redis-trib.rb create 47.93.89.0:6379 47.93.89.0:6389 47.93.89.0:6399
