basepath="/quincy/github"
cd ${basepath}/springcloud
git reset --hard
git pull
rm -f ${basepath}/springcloud/target/quincy-springcloud-0.0.1-SNAPSHOT.conf
mvn clean compile package install -Ppro -Dmaven.test.skip=true --settings /quincy/maven/settings.xml
cp ${basepath}/springcloud.conf ${basepath}/springcloud/target/quincy-springcloud-0.0.1-SNAPSHOT.conf 
