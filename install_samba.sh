#!/bin/bash
#install samba-server and configure him
sudo apt update
sudo apt install -y samba samba-client
#make the copy conf-file
path_to_share=/srv/samba/share
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf_sample
sudo mkdir $path_to_share
sudo chown nobody:nogroup $path_to_share
sudo chmod -R 0755 $path_to_share

#fill the conf file
conf_file_samba=/etc/samba/smb.conf
sudo echo "[skiffshare]" >> $conf_file_samba
sudo echo "comment = skiff share folder" >> $conf_file_samba
sudo echo "path = /srv/samba/share" >> $conf_file_samba
sudo echo "browsable = yes" >> $conf_file_samba
sudo echo "writable = yes" >> $conf_file_samba
sudo echo "create mask = 0644" >> $conf_file_samba
sudo echo "directory mask = 0755" >> $conf_file_samba
sudo echo "guest ok = yes" >> $conf_file_samba


#restart services
sudo service smbd restart
sudo service nmbd restart
