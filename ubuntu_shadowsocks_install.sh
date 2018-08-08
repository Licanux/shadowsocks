# @file ubuntu_shadowsocks_install.sh
# @brief ubuntu ss 安装脚本
# @author welch, ok0pwc@hotmail.com
# @version v1.0.0
# @date 2018-08-08
#!/bin/bash
apt install shadowsocks

echo -e \
"{\n\
\t\"server\":\"0.0.0.0\",\n\
\t\"server_port\":8388,\n\
\t\"local_address\":\"127.0.0.1\",\n\
\t\"local_port\":1080,\n\
\t\"password\":\"asto!@#123456\",\n\
\t\"timeout\":300,\n\
\t\"method\":\"aes-256-cfb\",\n\
\t\"fast_open\":false,\n\
\t\"workers\": 1\n\
}" > /etc/shadowsocks/config.json

echo -e \
"[Unit]\n\
Description=Shadowsocks\n\
\n\
[Service]\n\
TimeoutStartSec=0\n\
ExecStart=/usr/bin/ssserver -c /etc/shadowsocks/config.json\n\
\n\
[Install]\n\
WantedBy=multi-user.target" > /etc/systemd/system/shadowsocks.service

systemctl enable shadowsocks.service
systemctl start shadowsocks.service
systemctl status shadowsocks.service
systemctl restart shadowsocks.service
