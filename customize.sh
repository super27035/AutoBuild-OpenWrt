#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
# 替换文件中的所有匹配项
# sed -i 's/原字符串/替换字符串/g' filename
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2 password
sed -i 's/root::0:0:99999:7:::/root:$1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7:::/g' openwrt/package/base-files/files/etc/shadow

#3. Modify default hosename
sed -i 's/OpenWrt/SUPERouter/g' openwrt/package/base-files/files/bin/config_generate

#4. Change the default language back to auto
sed -i 's/zh_cn/auto/g' openwrt/package/lean/default-settings/files/zzz-default-settings

cp -rf ./PATCH/R2S/files ./openwrt
