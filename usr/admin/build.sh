path="/quincy/jlcedu"
cd ${path}/src
git reset --hard
git pull origin master
mvn clean compile package -Ppro --settings /quincy/maven/settings.xml
pid=`ps -ef|grep java|grep "${path}/tomcat"|grep -v grep|awk '{print $2}'`
if [ ! -z $pid ]; then
  kill -9 $pid
fi
rm -rf ${path}/webapps/*
cp ${path}/src/jlcedu-portal/target/jlcedu-portal.war ${path}/webapps
${path}/tomcat/bin/startup.sh
