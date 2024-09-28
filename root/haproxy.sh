pids=`ps -ef|grep haproxy|grep -v grep|awk '{print $2}'`
for pid in $pids
do
        kill -9 $pid
done
/quincy/env/haproxy/haproxy-bin/sbin/haproxy -f /quincy/env/haproxy/quincy.cfg
