#!/bin/bash
echo "This bash script helps to install ftp server"
sleep 5
sudo apt update
sudo apt install ufw
sudo apt install vsftpd
#watching ports and allow ssh
sudo ufw applist
sudo ufw app list
sudo ufw allow ssh
echo "Open necessary ports to ftp"
sleep 5
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 1048:1084/tcp
sudo ufw allow 20:21/tcp
sudo ufw status
echo "Now the config is opening, write: pasv_min_port=1048, pasv_max_port=1084"
echo "pasv_address=ipv4 server, local_root=/home/newuser - ftp folder"
echo "To exit nano editor push F2 Y Enter"
sleep 15
sudo nano /etc/vsftpd.conf
sudo service vsftpd restart
sudo /etc/init.d/vsftpd restart
echo "Write password to user newuser"
sleep 1
sudo adduser newuser
echo "Write in config again:"
echo "chroot_local_user=YES и allow_writeable_chroot=YES"
sleep 9
sudo nano /etc/vsftpd.conf
#restarting vsftpd
sudo service vsftpd restart
sudo systemctl enable vsftpd
echo "vsftpd installing was finished well or not so good))"
