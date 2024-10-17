cd $1 
git pull
mvn clean compile package install -Ppro -Dmaven.test.skip=true --settings /quincy/maven/settings.xml 
