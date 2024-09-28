basepath="/quincy/github"
cd ${basepath}/ducati1
git reset --hard
git pull
rm -f ${basepath}/ducati1/springboot/target/ducati-springboot-2.1.4.RELEASE.conf
rm -f ${basepath}/ducati1/service/src/main/resources/application-sensitiveness.properties
cp /quincy/github/sensitive/application-sensitiveness.properties ${basepath}/ducati1/service/src/main/resources/application-sensitiveness.properties
mvn clean compile package install -Ppro1 -Dmaven.test.skip=true --settings /quincy/maven/settings.xml 
cp ${basepath}/ducati-springboot1-2.1.4.RELEASE.conf ${basepath}/ducati1/springboot/target/ducati-springboot-2.1.4.RELEASE.conf
