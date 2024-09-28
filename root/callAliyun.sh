cd /quincy/github/sdk/sdk/target/classes
#java -Djava.ext.dirs=/quincy/env/lib com.quincy.sdk.helper.AliyunDNTXTUpdate /quincy/github/sensitive/application-sensitiveness.properties DescribeDomainRecords maqiangcgq.com
echo $CERTBOT_VALIDATION
result=`java --class-path=.:/quincy/env/lib/* com.quincy.sdk.helper.AliyunDNTXTUpdate /quincy/github/sensitive/application-sensitiveness.properties UpdateDomainRecord maqiangcgq.com 18500165375454208 $CERTBOT_VALIDATION`
sleep 5s
