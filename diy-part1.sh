#!/bin/bash
#=================================================
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# Description: Build OpenWrt using GitHub Actions

# echo '添加 SSR Plus+'
git clone https://github.com/Mattraks/helloworld.git ./package/diy/ssrplus
# echo '添加 小猫咪'
git clone https://github.com/vernesong/OpenClash.git ./package/diy/OpenClash
# echo '添加 Passwall'
git clone https://github.com/xiaorouji/openwrt-passwall.git ./package/diy/passwall
# echo '添加 HelloWorld'
svn co https://github.com/jerrykuku/luci-app-vssr/trunk/ package/diy/luci-app-vssr
# echo '添加 京东签到'
svn co https://github.com/jerrykuku/luci-app-jd-dailybonus/trunk/ package/diy/luci-app-jd-dailybonus
# echo '添加 SmartDNS'
git clone https://github.com/pymumu/luci-app-smartdns.git -b lede ./package/diy/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git ./feeds/packages/net/smartdns
# echo '微信推送'
git clone https://github.com/tty228/luci-app-serverchan.git ./package/diy/luci-app-serverchan
# echo '汉化实时监控'
svn co https://github.com/gd0772/diy/trunk/public/luci-app-netdata ./package/lean/luci-app-netdata
svn co https://github.com/gd0772/diy/trunk/public/netdata ./feeds/packages/admin/netdata
# echo '替换USB打印'
svn co https://github.com/gd0772/diy/trunk/public/luci-app-usb-printer ./package/lean/luci-app-usb-printer
# echo '添加 KPR去广告'
git clone https://github.com/project-lede/luci-app-godproxy.git ./package/diy/luci-app-godproxy
# echo '添加 KPR去广告规则数据'
svn co https://github.com/gd0772/diy/trunk/public/rules ./package/diy/luci-app-godproxy/root/usr/share/koolproxy/data/rules
