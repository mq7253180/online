basepath="/quincy/github"
cd ${basepath}/ducati2
git reset --hard
git pull
rm -f ${basepath}/ducati2/springboot/target/ducati-springboot-2.1.4.RELEASE.conf
rm -f ${basepath}/ducati2/service/src/main/resources/application-sensitiveness.properties
cp /quincy/github/sensitive/application-sensitiveness.properties ${basepath}/ducati2/service/src/main/resources/application-sensitiveness.properties
mvn clean compile package install -Ppro2 -Dmaven.test.skip=true --settings /quincy/maven/settings.xml 
cp ${basepath}/ducati-springboot2-2.1.4.RELEASE.conf ${basepath}/ducati2/springboot/target/ducati-springboot-2.1.4.RELEASE.conf
