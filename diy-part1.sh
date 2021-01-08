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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# Replace original argon theme
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
#git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy
#git clone https://github.com/Aslin-Ameng/luci-theme-Night.git package/lean/luci-theme-Night #小鸡
#git clone https://github.com/aboutboy/luci-theme-butongwifi.git package/lean/luci-theme-butongwifi #不同生活共享WiFi
git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-purple #紫色
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-infinityfreedom #深蓝透明
git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/lean/luci-theme-Light #蓝色lede
#git clone https://github.com/rosywrt/luci-theme-purple.git package/lean/luci-theme-purple #紫色英文
#git clone https://github.com/toss-a/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial #蓝色open
