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
