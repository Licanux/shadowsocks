# shadowsocks 服务搭建指南

- 编写目的

  为了方便快捷地搭建可靠的科学上网途径，本人参考[`烂泥：aws搭建shadowsocks服务器`](http://blog.51cto.com/ilanni/1682881) 与[`在 CentOS 7 下安装配置 shadowsocks - 早起搬砖`](http://morning.work/page/2015-12/install-shadowsocks-on-centos-7.html)并结合一些自身ubuntu的使用经验，写出了适用于ubuntu(理论上debian系的都可以)的一键脚本。希望能够帮到大家。


- 文件说明

  安装脚本为`ubuntu_shadowsocks_install.sh` 卸载脚本为`ubuntu_shadowsocks_uninstall.sh `


- 使用步骤

  1. 切换至超级用户(sudo执行未尝试过)

  2. 将脚本通过sftp/xftp/lrzsz等工具上传至服务端

  3. 为脚本加上可执行权限

     ```shell
     chmod u+x ubuntu_shadowsocks_install.sh ubuntu_shadowsocks_uninstall.sh
     ```

  4. 安装与卸载

     - 安装

       ```shell
       ./ubuntu_shadowsocks_install.sh
       ```

       过程中询问直接`Enter`即可

     - 卸载

       ```shell
       ./ubuntu_shadowsocks_uninstall.sh
       ```

       过程中询问直接`Enter`即可
