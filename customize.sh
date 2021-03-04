#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
# 替换文件中的所有匹配项
# sed -i 's/原字符串/替换字符串/g' filename
# 在openwrt/package/base-files/files/bin/config_generate下可以修改IPV6设置
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
#2. Modify default hosename
sed -i 's/OpenWrt/SUPERrouter/g' openwrt/package/base-files/files/bin/config_generate
#3. Modify default login password,needs to disable this funtion @ package/lean/default-settings/files/zzz-default-settings
#sed -i 's/root::0:0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/g' /etc/shadow
#root:$1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7::: #superlyn
#root:$1$UF4foXSz$b8bNHSHxA3Ql99IPeTFNi1:18690:0:99999:7::: #super
sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7:::/g' openwrt/package/base-files/files/etc/shadow
