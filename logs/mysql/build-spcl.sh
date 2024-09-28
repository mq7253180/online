rm -rf /quincy/github/springcloud/target
cd /quincy/github/springcloud
git pull
mvn clean compile package install -Ppro -Dmaven.test.skip=true --settings /quincy/maven/settings.xml 
