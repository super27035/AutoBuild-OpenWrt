#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i '/uci commit luci/i\uci set luci.main.mediaurlbase="/luci-static/argon"' openwrt/package/lean/default-settings/files/zzz-default-settings
#sed -i 's/zh_cn/auto/g' openwrt/package/lean/default-settings/files/zzz-default-settings
