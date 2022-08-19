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
echo "[skiffshare]" | sudo tee -a $conf_file_samba
echo "comment = skiff share folder" | sudo tee -a $conf_file_samba
echo "path = /srv/samba/share" | sudo tee -a $conf_file_samba
echo "browsable = yes" | sudo tee -a $conf_file_samba
echo "writable = yes" | sudo tee -a $conf_file_samba
echo "create mask = 0644" | sudo tee -a $conf_file_samba
echo "directory mask = 0755" | sudo tee -a $conf_file_samba
echo "guest ok = yes" | sudo tee -a $conf_file_samba
echo "read only = yes" | sudo tee -a $conf_file_samba


#restart services
sudo service smbd restart
sudo service nmbd restart
