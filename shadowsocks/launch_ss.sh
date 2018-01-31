#！/bin/bash
#shadow.sh
sslocal -c /etc/shadowsocks.json

# then add the following to /etc/rc.local, done!
# sleep 3
# sudo nohup bash /home/leo/workspace/dotfiles/shadowsocks/launch_ss.sh>/tmp/proxy.log &
# exit 0
