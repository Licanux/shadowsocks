# @file ubuntu_shadowsocks_uninstall.sh
# @brief ubuntu ss 卸载脚本
# @author welch, ok0pwc@hotmail.com
# @version v1.0.0
# @date 2018-08-08
#!/bin/bash
systemctl stop shadowsocks.service
systemctl disable shadowsocks.service
rm /etc/systemd/system/shadowsocks.service

apt purge shadowsocks
apt autoremove
apt autoclean

