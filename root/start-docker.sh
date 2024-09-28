/quincy/docker/docker/dockerd --selinux-enabled=false --config-file=/quincy/docker/daemon.json -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock -D >> /quincy/tmp/logs/dockerd.log 2>&1 &
