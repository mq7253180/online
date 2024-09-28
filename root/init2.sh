mount /dev/vdb1 /quincy
mkdir -p /logs/nginx
ln -s /quincy/env/git-bin/bin/git /usr/local/bin/git
ln -s /quincy/maven/apache-maven/bin/mvn /usr/local/bin/mvn
ln -s /quincy/nginx/sbin/nginx /usr/local/bin/nginx
redis-server /quincy/redis/conf/redis.conf
groupadd mysql
useradd -r -m -d /usr/mysql -g mysql -s /bin/false mysql
mkdir -p /logs/mysql
chown -R mysql:mysql /logs/mysql
#rpm -ivh /quincy/mysql/libaio-0.3.109-13.el7.x86_64.rpm
cd /quincy/mysql/libaio-src
make install
ln -sf /usr/lib/libaio.so.1.0.2 /usr/lib64/libaio.so
ln -sf /usr/lib/libaio.so.1.0.2 /usr/lib64/libaio.so.1
nohup /quincy/mysql/mysql/bin/mysqld --defaults-file=/quincy/mysql/my-master.cnf --user=mysql 2>&1 &
nohup java -jar /quincy/github/springcloud/target/quincy-springcloud-0.0.1-SNAPSHOT.jar > spcl.log 2>&1 &
