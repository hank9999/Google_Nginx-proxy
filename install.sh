#!/bin/bash
clear
isUbuntu=`cat /etc/issue|grep Ubuntu`
if [ "$isUbuntu" != "" ];then
echo "+------------------------------------------------------------------------+"
echo "|                           Google_Nginx-proxy                           |"
echo "+------------------------------------------------------------------------+"
echo "|                install "Google_Nginx-proxy" on Linux                   |"
echo "+------------------------------------------------------------------------+"
echo "|                     my blog is https://hankmc.top                      |"
echo "+------------------------------------------------------------------------+"
echo "|                     This is https://hankmc.top/42/                     |"
echo "+------------------------------------------------------------------------+"
apt-get update
apt-get install build-essential git gcc g++ make -y
cd /root
wget "http://nginx.org/download/nginx-1.11.13.tar.gz"
wget "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.40.tar.gz"
wget "https://www.openssl.org/source/openssl-1.1.0e.tar.gz"
wget "http://zlib.net/zlib-1.2.11.tar.gz"
git clone https://github.com/cuber/ngx_http_google_filter_module
git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module
tar xzvf nginx-1.11.13.tar.gz
tar xzvf pcre-8.40.tar.gz
tar xzvf openssl-1.1.0e.tar.gz
tar xzvf zlib-1.2.11.tar.gz
cd nginx-1.11.13
./configure \
  --prefix=/opt/nginx-1.11.13 \
  --with-pcre=../pcre-8.40 \
  --with-openssl=../openssl-1.1.0e \
  --with-zlib=../zlib-1.2.11 \
  --with-http_ssl_module \
  --add-module=../ngx_http_google_filter_module \
  --add-module=../ngx_http_substitutions_filter_module
make && make install
cd /root
wget "https://raw.githubusercontent.com/hank9999/Google_Nginx-proxy/master/nginx.conf"
rm -rf /opt/nginx-1.11.13/conf/nginx.conf
cp /root/nginx.conf /opt/nginx-1.11.13/conf/nginx.conf
rm -rf nginx-1.11.13.tar.gz pcre-8.40.tar.gz openssl-1.1.0e.tar.gz zlib-1.2.11.tar.gz
rm -rf /root/nginx-1.11.13 /root/pcre-8.40 /root/openssl-1.1.0e /root/zlib-1.2.11
rm -rf /root/nginx.conf
/opt/nginx-1.11.13/sbin/nginx

echo "installation is complete"
	exit;
fi

isDebian=`cat /etc/issue|grep Debian`
if [ "$isDebian" != "" ];then
echo "+------------------------------------------------------------------------+"
echo "|                           Google_Nginx-proxy                           |"
echo "+------------------------------------------------------------------------+"
echo "|                install "Google_Nginx-proxy" on Linux                   |"
echo "+------------------------------------------------------------------------+"
echo "|                     my blog is https://hankmc.top                      |"
echo "+------------------------------------------------------------------------+"
echo "|                     This is https://hankmc.top/42/                     |"
echo "+------------------------------------------------------------------------+"
apt-get update
apt-get install build-essential git gcc g++ make -y
cd /root
wget "http://nginx.org/download/nginx-1.11.13.tar.gz"
wget "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.40.tar.gz"
wget "https://www.openssl.org/source/openssl-1.1.0e.tar.gz"
wget "http://zlib.net/zlib-1.2.11.tar.gz"
git clone https://github.com/cuber/ngx_http_google_filter_module
git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module
tar xzvf nginx-1.11.13.tar.gz
tar xzvf pcre-8.40.tar.gz
tar xzvf openssl-1.1.0e.tar.gz
tar xzvf zlib-1.2.11.tar.gz
cd nginx-1.11.13
./configure \
  --prefix=/opt/nginx-1.11.13 \
  --with-pcre=../pcre-8.40 \
  --with-openssl=../openssl-1.1.0e \
  --with-zlib=../zlib-1.2.11 \
  --with-http_ssl_module \
  --add-module=../ngx_http_google_filter_module \
  --add-module=../ngx_http_substitutions_filter_module
make && make install
cd /root
wget "hhttps://raw.githubusercontent.com/hank9999/Google_Nginx-proxy/master/nginx.conf"
rm -rf /opt/nginx-1.11.13/conf/nginx.conf
cp /root/nginx.conf /opt/nginx-1.11.13/conf/nginx.conf
rm -rf nginx-1.11.13.tar.gz pcre-8.40.tar.gz openssl-1.1.0e.tar.gz zlib-1.2.11.tar.gz
rm -rf /root/nginx-1.11.13 /root/pcre-8.40 /root/openssl-1.1.0e /root/zlib-1.2.11
rm -rf /root/nginx.conf
/opt/nginx-1.11.13/sbin/nginx

echo "installation is complete"
	exit;
fi
isCentos=`cat /etc/redhat-release|grep CentOS`
if [ "$isCentos" != "" ];then
echo "+------------------------------------------------------------------------+"
echo "|                           Google_Nginx-proxy                           |"
echo "+------------------------------------------------------------------------+"
echo "|                install "Google_Nginx-proxy" on Linux                   |"
echo "+------------------------------------------------------------------------+"
echo "|                     my blog is https://hankmc.top                      |"
echo "+------------------------------------------------------------------------+"
echo "|                     This is https://hankmc.top/42/                     |"
echo "+------------------------------------------------------------------------+"
yum install -y gcc gcc-c++ perl make git
cd /root
wget "http://nginx.org/download/nginx-1.11.13.tar.gz"
wget "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.40.tar.gz"
wget "https://www.openssl.org/source/openssl-1.1.0e.tar.gz"
wget "http://zlib.net/zlib-1.2.11.tar.gz"
git clone https://github.com/cuber/ngx_http_google_filter_module
git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module
tar xzvf nginx-1.11.13.tar.gz
tar xzvf pcre-8.40.tar.gz
tar xzvf openssl-1.1.0e.tar.gz
tar xzvf zlib-1.2.11.tar.gz
cd nginx-1.11.13
./configure \
  --prefix=/opt/nginx-1.11.13 \
  --with-pcre=/root/pcre-8.40 \
  --with-openssl=/root/openssl-1.1.0e \
  --with-zlib=/root/zlib-1.2.11 \
  --with-http_ssl_module \
  --add-module=/root/ngx_http_google_filter_module \
  --add-module=/root/ngx_http_substitutions_filter_module
make && make install
cd /root
wget https://raw.githubusercontent.com/hank9999/Google_Nginx-proxy/master/nginx.conf
rm -rf /opt/nginx-1.11.13/conf/nginx.conf
cp /root/nginx.conf /opt/nginx-1.11.13/conf/nginx.conf
rm -rf nginx-1.11.13.tar.gz pcre-8.40.tar.gz openssl-1.1.0e.tar.gz zlib-1.2.11.tar.gz
rm -rf /root/nginx-1.11.13 /root/pcre-8.40 /root/openssl-1.1.0e /root/zlib-1.2.11
rm -rf /root/nginx.conf
/opt/nginx-1.11.13/sbin/nginx

echo "installation is complete"
	exit;
fi
echo "Sorry,Your OS have not been tested!"
