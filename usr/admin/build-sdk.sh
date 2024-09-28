basepath="/quincy/github"
cd ${basepath}/sdk
git reset --hard
git pull
rm -f ${basepath}/sdk/pom.xml
cp ${basepath}/pom-sdk.xml ${basepath}/sdk/pom.xml
mvn clean compile package install deploy -Dmaven.test.skip=true --settings /quincy/maven/settings.xml 
