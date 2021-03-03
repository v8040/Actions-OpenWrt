#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# echo '修改 默认IP'
sed -i "s/192.168.1.1/10.10.10.1/g" package/base-files/files/bin/config_generate
# echo '修改 主机名'
sed -i "s/OpenWrt/N1/g" package/base-files/files/bin/config_generate

# echo '替换系统文件'
curl -fsSL https://raw.githubusercontent.com/gd0772/diy/main/public/zzz-default-settings > ./package/lean/default-settings/files/zzz-default-settings
#curl -fsSL https://raw.githubusercontent.com/gd0772/diy/main/N1/index.htm > ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

# echo '修改插件名称'
sed -i 's/TTYD 终端/网页终端/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/ShadowSocksR Plus+/SSR Plus+/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
sed -i 's/PassWall/Pass Wall/g' package/diy/passwall/luci-app-passwall/po/zh-cn/passwall.po
sed -i 's/广告屏蔽大师 Plus+/广告屏蔽/g' package/lean/luci-app-adbyby-plus/po/zh-cn/adbyby.po
sed -i 's/京东签到服务/京东签到/g' package/diy/luci-app-jd-dailybonus/luasrc/controller/jd-dailybonus.lua
sed -i 's/KMS 服务器/KMS 激活/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/msgstr "UPnP"/msgstr "UPnP设置"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po
sed -i 's/Frp 内网穿透/Frp 客户端/g' package/lean/luci-app-frpc/po/zh-cn/frp.po
sed -i 's/Frps/Frp 服务端/g' package/lean/luci-app-frps/luasrc/controller/frps.lua
sed -i 's/Nps 内网穿透/NPS 客户端/g' package/lean/luci-app-nps/po/zh-cn/nps.po
sed -i 's/解锁网易云灰色歌曲/音乐解锁/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
sed -i 's/Docker CE 容器/Docker容器/g' package/lean/luci-app-docker/po/zh-cn/docker.po
sed -i 's/UU游戏加速器/UU加速器/g' package/lean/luci-app-uugamebooster/po/zh-cn/uuplugin.po
sed -i 's/网络存储/存储/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/挂载 SMB 网络共享/挂载共享/g' package/lean/luci-app-cifs-mount/po/zh-cn/cifs.po
sed -i 's/Rclone/网盘挂载/g' package/lean/luci-app-rclone/luasrc/controller/rclone.lua
sed -i 's/BaiduPCS Web/百毒网盘/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
sed -i 's/IPSec VPN 服务器/IPSec 服务/g' package/lean/luci-app-ipsec-vpnd/po/zh-cn/ipsec.po
sed -i 's/V2ray 服务器/V2ray 服务/g' package/lean/luci-app-v2ray-server/po/zh-cn/v2ray_server.po
sed -i 's/SoftEther VPN 服务器/SoftEther/g' package/lean/luci-app-softethervpn/po/zh-cn/softethervpn.po
sed -i 's/"OpenVPN 服务器"/"OpenVPN"/g' package/lean/luci-app-openvpn-server/po/zh-cn/openvpn-server.po
sed -i 's/firstchild(), "VPN"/firstchild(), "GFW"/g' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua
sed -i 's/firstchild(), "VPN"/firstchild(), "GFW"/g' package/lean/luci-app-ipsec-vpnd/luasrc/controller/ipsec-server.lua
sed -i 's/firstchild(), "VPN"/firstchild(), "GFW"/g' package/lean/luci-app-softethervpn/luasrc/controller/softethervpn.lua
sed -i 's/firstchild(), "VPN"/firstchild(), "GFW"/g' package/lean/luci-app-openvpn-server/luasrc/controller/openvpn-server.lua
sed -i 's/Turbo ACC 网络加速/网络加速/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/MWAN3 分流助手/分流助手/g' package/lean/luci-app-mwan3helper/po/zh-cn/mwan3helper.po
sed -i 's/带宽监控/统计/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/实时流量监测/流量监测/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
sed -i 's/invalid/# invalid/g' package/lean/samba4/files/smb.conf.template

# echo '移动 网络共享 到 存储菜单'
sed -i 's/\"services\"/\"nas\"/g' package/lean/luci-app-samba4/luasrc/controller/samba4.lua
# echo '移动 分流助手 到 网络菜单'
sed -i 's/\"services\"/\"network\"/g' package/lean/luci-app-mwan3helper/luasrc/controller/mwan3helper.lua
curl -fsSL https://raw.githubusercontent.com/gd0772/diy/main/public/mwan3helper_status.htm > ./package/lean/luci-app-mwan3helper/luasrc/view/mwan3helper/mwan3helper_status.htm

# echo '调整 SSRP 到 GFW 菜单'
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/advanced.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/client.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/client-config.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/control.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/log.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/server.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/server-config.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/servers.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/status.lua
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/certupload.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/check.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/checkport.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/ping.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/refresh.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/reset.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/server_list.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/socket.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/ssrurl.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/status.htm
sed -i 's/services/vpn/g' package/diy/ssrplus/luci-app-ssr-plus/luasrc/view/shadowsocksr/subscribe.htm
# echo '调整 PassWall 到 GFW 菜单'
sed -i 's/services/vpn/g' package/diy/passwall/luci-app-passwall/luasrc/controller/passwall.lua
sed -i 's/services/vpn/g' package/diy/passwall/luci-app-passwall/luasrc/model/cbi/passwall/api/api.lua
# echo '调整 HelloWorld 到 GFW 菜单'
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/controller/vssr.lua
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/model/cbi/vssr/client-config.lua
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/model/cbi/vssr/server.lua
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/model/cbi/vssr/server-config.lua
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/model/cbi/vssr/servers.lua
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/model/cbi/vssr/subscribe-config.lua
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/view/vssr/refresh.htm
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/view/vssr/ssrurl.htm
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/view/vssr/status_top.htm
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/view/vssr/tblsection.htm
sed -i 's/services/vpn/g' package/diy/luci-app-vssr/luasrc/view/vssr/update_subscribe.htm
# echo '调整 OpenClash 到 GFW 菜单'
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/controller/openclash.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/client.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/config.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/config-subscribe.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/config-subscribe-edit.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/game-rules-manage.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/groups-config.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/other-rules-edit.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/proxy-provider-config.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/proxy-provider-file-manage.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/rule-providers-config.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/rule-providers-file-manage.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/rule-providers-manage.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/rule-providers-settings.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/servers.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/servers-config.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/model/cbi/openclash/settings.lua
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/view/openclash/download_rule.htm
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/view/openclash/log.htm
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/view/openclash/server_list.htm
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/view/openclash/status.htm
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/view/openclash/switch_mode.htm
sed -i 's/services/vpn/g' package/diy/OpenClash/luci-app-openclash/luasrc/view/openclash/update.htm
# echo '调整 V2ray服务器 到 GFW 菜单'
sed -i 's/services/vpn/g' package/lean/luci-app-v2ray-server/luasrc/controller/v2ray_server.lua
sed -i 's/services/vpn/g' package/lean/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/index.lua
sed -i 's/services/vpn/g' package/lean/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/user.lua
sed -i 's/services/vpn/g' package/lean/luci-app-v2ray-server/luasrc/view/v2ray_server/log.htm
sed -i 's/services/vpn/g' package/lean/luci-app-v2ray-server/luasrc/view/v2ray_server/users_list_status.htm
sed -i 's/services/vpn/g' package/lean/luci-app-v2ray-server/luasrc/view/v2ray_server/v2ray.htm

# echo '添加自定义防火墙说明'
curl -fsSL https://raw.githubusercontent.com/gd0772/diy/main/public/firewall.user > ./package/network/config/firewall/files/firewall.user

# echo '版本号更新'
sed -i "s/R21.2.1/R21.2.1 $(TZ=UTC-8 date "+%Y.%m.%d") Compilde by xw" package/lean/default-settings/files/zzz-default-settings

# echo '更换内核'
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
