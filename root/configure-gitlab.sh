rm -f /etc/gitlab/gitlab.rb
cp /root/gitlab.rb /etc/gitlab/
gitlab-ctl reconfigure
