#!/bin/sh

if [ $# -lt 1 ]; then
	echo "Usage: deplistlicense.sh [INSTALLED PACKAGE NAME]"
	exit -1
fi

echo "License report of all dependency packages for $1"
echo "====================================================================="

sudo dnf repoquery --requires --resolve $1 | \
while read -r dependency; do
	dependency=`echo $dependency | sed -e 's/0\://1' | sed -e 's/1\://1'`
	package=`echo $dependency | sed 's/-\([0-9]\).*//'`
	licenseurl=`wget -q -O - "https://rpmfind.net/linux/rpm2html/search.php?query=${package}&submit=Search+...&system=&arch=" | grep -Po "href\K.+?(?=${dependency}.html)" | tail -1 | sed -e "s/='//1"`
	licenseurl=${licenseurl##*a href\=\'}
	licenseurl="https://rpmfind.net${licenseurl}${dependency}.html"
	license=`wget -q -O - "${licenseurl}" | sed ':a;N;$!ba;s/\n/ /g' | grep -Po "(?<=\<h3\>License\<\/h3\> \<pre\>).*?(?=\<\/pre\>)"`
	echo "Package : $package"
	echo "Detail  : $dependency" 
	echo "License : $license"
	echo "-------------------------------------------------------------------"

done 
