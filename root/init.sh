mount /dev/vdb1 /quincy
/quincy/env/nginx/nginx-bin/sbin/nginx
#/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis.conf
/quincy/env/rabbitmq/rabbitmq_server-3.8.1/sbin/rabbitmq-server -detached
/quincy/env/zookeeper/bin1/bin/zkServer.sh start
/quincy/env/zookeeper/bin2/bin/zkServer.sh start
/quincy/env/zookeeper/bin3/bin/zkServer.sh start
/quincy/env/haproxy/haproxy-bin/sbin/haproxy -f /quincy/env/haproxy/quincy.cfg
/quincy/env/keepalived/keepalived-bin/sbin/keepalived -f /quincy/env/keepalived/keepalived.conf
nohup /quincy/mysql/mysql/bin/mysqld --defaults-file=/quincy/mysql/my-master.cnf --user=mysql 2>&1 &
