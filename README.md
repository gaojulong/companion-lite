## companion-Lite

### 基本功能

- [x] mavlink转发
- [ ] 自动查找设备
- [ ] mavlink-camera-manager



### CSI摄像头分支

- [ ] CSI摄像头移植

### 注意

- 需要给所有tools和scripts脚本增加可运行权限



### 项目介绍

params：脚本参数

scripts：脚本文件

tools：工具文件

.companion.rc 自启脚本



### 安装说明

运行setup.sh脚本后重启







~~~tex
**配置固定IP**
vi /etc/dhcpcd.conf

interface eth0
static ip_address=192.168.2.2/24
static routers=192.168.2.1
~~~

### mavlink-camera-manager 说明

- [参考连接](https://github.com/mavlink/mavlink-camera-manager?tab=readme-ov-file#how-to-build-it)

~~~shell
# 安装依赖
sudo apt update -y && \
sudo apt install -y --no-install-recommends \
   libgstreamer1.0-0 \
   libgstreamer-plugins-base1.0-0 \
   libgstreamer-plugins-bad1.0-0 \
   libgstrtspserver-1.0-0 \
   gstreamer1.0-x \
   gstreamer1.0-nice
#根据系统要求下载，并添加权限
wget https://github.com/mavlink/mavlink-camera-manager/releases/download/t3.15.1/mavlink-camera-manager-armv7 
# 启动 
mavlink-camera-manager --mavlink=tcpout:0.0.0.0:14000 --verbose
# 可以http://localhost:6020查看信息
~~~

说明：待测试
