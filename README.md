# v2ray CentOS7 搭建带伪装VPN

#### 介绍
根据网上教程实际操作测试通过的版本，经过了少量的修复

#### 安装教程
1. 配置域名解析
    进入域名的dns解析后台，将域名记录指向服务器IP
    Host        RECORD       VALUE                TTL
    www         A            xxx.xxx.xxx.xxx      600
    @           A            xxx.xxx.xxx.xxx      600

2. 下载config.json到/etc/v2ray目录下
3. 创建/var/log/v2ray目录
4. 下载centos_install_v2ray2.sh并执行

#############################################################
#         CentOS 7/8 v2ray 带伪装一键安装脚本                 #
# 作者: 网络跳越(hijk)                                      #
# 网址: https://hijk.art                                    #
# 论坛: https://hijk.club                                   #
# TG群: https://t.me/hijkclub                               #
# Youtube频道: https://youtube.com/channel/UCYTB--VsObzepVJtc9yvUxQ #
#############################################################


 本脚本为带伪装的一键脚本，运行之前请确认如下条件已经具备：
  1. 一个伪装域名
  2. 伪装域名DNS解析指向当前服务器ip（YOUR_IP）
  3. 如果/root目录下有 v2ray.pem 和 v2ray.key 证书密钥文件，无需理会条件2

 确认满足按y，按其他退出脚本：y

 请输入伪装域名：YOURDOMAIN.com
 伪装域名(host)：YOURDOMAIN.com


 请输入伪装路径，以/开头：/resources
 伪装路径：/resources

 请输入Nginx端口[100-65535的一个数字，默认443]：
 Nginx端口：443

 请选择伪装站类型:
   1) 静态网站(位于/usr/share/nginx/html)
   2) 小说站(随机选择)
   3) 美女站(https://imeizi.me)
   4) VPS优惠博客(https://vpsgongyi.com)
   5) 自定义反代站点(需以http或者https开头)
  请选择伪装网站类型[默认:美女站]

 伪装网站：https://imeizi.me

  是否允许搜索引擎爬取网站？[默认：不允许]
    y)允许，会有更多ip请求网站，但会消耗一些流量，vps流量充足情况下推荐使用
    n)不允许，爬虫不会访问网站，访问ip比较单一，但能节省vps流量
  请选择：[y/n]y

 允许搜索引擎：y

 是否安装BBR（安装请按y，不安装请输n，默认安装）:
 安装BBR：y


执行成功应出现：
 v2ray运行状态：正在运行
 v2ray配置文件：/etc/v2ray/config.json
 nginx运行状态：正在运行
 nginx配置文件：/etc/nginx/conf.d/YOURDOMAIN.com.conf

 v2ray配置信息：
   IP(address):  YOUR_IP
   端口(port)：443
   id(uuid)：YOUR_UUID
   额外id(alterid)： 0
   加密方式(security)： none
   传输协议(network)： ws
   伪装类型(type)：none
   伪装域名/主机名(host)：YOURDOMAIN.com
   路径(path)：/resources
   底层安全传输(tls)：TLS

 vmess链接: vmess://eyAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
