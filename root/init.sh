mkdir -p /logs/nginx
mkdir /logs/redis
mkdir /logs/mysql
mkdir /logs/ducati
ln -s /quincy/programs/git-bin/bin/git /usr/local/bin/git
ln -s /quincy/maven/apache-maven/bin/mvn /usr/local/bin/mvn
ln -s /quincy/nginx/sbin/nginx /usr/local/sbin/nginx
groupadd admin
useradd -r -m -d /usr/admin -g admin admin
cp /quincy/github/online/root/* /root
cp /quincy/github/online/usr/admin /usr/admin
chown -R admin:admin /quincy/github/configuration
chown -R admin:admin /quincy/github/springcloud
chown -R admin:admin /quincy/github/ducati
chown -R admin:admin /logs/ducati
nginx
redis-server /quincy/redis/conf/redis.conf
groupadd mysql
useradd -r -m -d /usr/mysql -g mysql -s /bin/false mysql
chown -R mysql:mysql /logs/mysql
cd /quincy/mysql/libaio-src
make install
ln -sf /usr/lib/libaio.so.1.0.2 /usr/lib64/libaio.so
ln -sf /usr/lib/libaio.so.1.0.2 /usr/lib64/libaio.so.1
nohup /quincy/mysql/mysql/bin/mysqld --defaults-file=/quincy/mysql/my-master.cnf --user=mysql 2>&1 &
nohup java -jar /quincy/github/springcloud/target/quincy-springcloud-0.0.1-SNAPSHOT.jar > spcl.log 2>&1 &
#/quincy/env/rabbitmq/rabbitmq_server-3.8.1/sbin/rabbitmq-server -detached
#/quincy/env/zookeeper/bin1/bin/zkServer.sh start
#/quincy/env/zookeeper/bin2/bin/zkServer.sh start
#/quincy/env/zookeeper/bin3/bin/zkServer.sh start
#/quincy/env/haproxy/haproxy-bin/sbin/haproxy -f /quincy/env/haproxy/quincy.cfg
#/quincy/env/keepalived/keepalived-bin/sbin/keepalived -f /quincy/env/keepalived/keepalived.conf
