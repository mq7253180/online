mount /dev/vdb1 /quincy
/quincy/env/nginx/nginx-bin/sbin/nginx
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/redis-bin/redis.conf
nohup /quincy/mysql/mysql/bin/mysqld --defaults-file=/quincy/mysql/my-master.cnf --user=mysql 2>&1 &
