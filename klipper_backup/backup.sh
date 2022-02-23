!/bin/bash
rsync -a -e 'ssh -p <port_ssh_du_nas>' --rsync-path=/usr/bin/rsync /home/pi/klipper_config <user_nas>@<ip_nas>:/path_sur_le_nas