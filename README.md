# Google_Nginx-proxy
一键安装nginx并配置，直接使用ip或使用绑定的域名，就可以访问谷歌。
### 注意！您的服务器必须能访问谷歌！

一键安装nginx并配置，直接使用ip或使用绑定的域名，就可以访问谷歌。

注意！您的服务器必须能访问谷歌！

这是我从我的github搬来的,这是适用于离中国较近的vps的节点(例如香港,中国,日本,新加坡等地区)

只支持Ubuntu,Debian和Centos

如果离中国近,请去git@osc链接https://git.oschina.net/hank9999/Google_Nginx-proxy

请先安装wget和sudo否则无法安装~(一般发行版都有) Ubuntu和Debian安装命令apt-get install wget sudo -y

Centos安装命令yum install wget sudo -y

cd /root && wget -c http://git.hankmc.top:88/hank9999/Google_Nginx-proxy/raw/master/install.sh && sudo sh install.sh

然后会根据您的系统自动安装.

installation is complete表示安装完成

脚本编写参考https://liyuans.com/archives/arukas-build-google-mirror.html
