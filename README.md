# ftp-server
Vsftpd installer on ubuntu/debian
## Description 
Script install vsftpd and ufw, open ports 20-21 and 1048:1084/tcp, add new user, this users' home folder is local root for ftp
## Using
Download the script 
```bash
git clone https://github.com/rus121/ftp-server.git
```
Open the folder
```bash
cd ftp-server
```
Right permission for the file
```bash
chmod +x ftp.sh
```
Execute script
```bash
sudo ./ftp.sh
```

