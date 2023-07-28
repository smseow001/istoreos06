#!/bin/bash
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

# Xiaorouji Passwall
sed -i 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;packages' feeds.conf.default
sed -i 'src-git passwall1 https://github.com/xiaorouji/openwrt-passwall;luci' feeds.conf.default
sed -i 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2;main' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' feeds.conf.default
sed -i '$a src-git packges https://github.com/Myoko/openwrt-packages.git' feeds.conf.default
git clone https://github.com/thinktip/luci-theme-neobird package/luci-theme-neobird
git clone https://github.com/kiddin9/luci-app-dnsfilter package/luci-app-dnsfilter

# Add a feed source
#sed -i '$a src-git vssr https://github.com/jerrykuku/luci-app-vssr.git' feeds.conf.default
#sed -i '$a src-git maxminddb https://github.com/jerrykuku/lua-maxminddb.git' feeds.conf.default

# AdGuard home
#sed -i '$a src-git diy https://github.com/rufengsuixing/luci-app-adguardhome.git' feeds.conf.default

# kenzok8 packages
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/diy/luci-app-vssr  #vssr出国软件
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/diy/lua-maxminddb  #git lua-maxminddb 依赖
