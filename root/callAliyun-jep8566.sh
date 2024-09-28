cd /quincy/github/sdk/sdk/target/classes
#java -Djava.ext.dirs=/quincy/env/lib com.quincy.sdk.helper.AliyunDNTXTUpdate /quincy/github/sensitive/application-sensitiveness.properties DescribeDomainRecords jep8566.com
echo $CERTBOT_VALIDATION
result=`java --class-path=.:/quincy/env/lib/* com.quincy.sdk.helper.AliyunDNTXTUpdate /quincy/github/sensitive/application-sensitiveness.properties UpdateDomainRecord jep8566.com 21621927701140480 $CERTBOT_VALIDATION`
sleep 5s
