#!/bin/bash
if [ "$1" == "" ]
then 
	echo "Usage: $0 IP"
	exit
fi
res=$(curl http://ip-api.com/json/$1 -s)
# echo $res
status=$(echo $res | jq '.status' -r)
# echo $status
if [ $status == "success" ]
then
	city=$(echo $res | jq '.city' -r)
        echo "city: $city"
        region=$(echo $res | jq '.regionName' -r)
        echo "region: $region"
        country=$(echo $res | jq '.country' -r)
        echo "country: $country"
        timezone=$(echo $res | jq '.timezone' -r)
        echo "timezone: $timezone"
        zipcode=$(echo $res | jq '.zip' -r)
        echo "zipcode: $zipcode"
        lat=$(echo $res | jq '.lat' -r)
        echo "lattitude: $lat"
        lon=$(echo $res | jq '.lon' -r)
        echo "longitude: $lon"
        isp=$(echo $res | jq '.isp' -r)
        echo "inernet service provider: $isp"
fi
