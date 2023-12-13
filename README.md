# Install-Lamp-in-Ubuntu-2004
This is a quick bash file to install lamp to Ubuntu OS

Steps:
1) `git clone https://github.com/knowhalim/install_lamp_ubuntu2004.git`
2) `cd install_lamp_ubuntu2004`
3) `chmod +x setup.sh`
4) `sudo ./setup.sh`

To Install Git:
1) apt install git
2) git config --global user.name "Your Name"
3) git config --global user.email "your_email@example.com"
4) git clone <url>

NOTE:
You need to run `mysql_secure_installation` after the installation.
If you encounter issue, it might be MariaDB server and client failed to install. If so, just run the following command:

`sudo apt install -y mariadb-server mariadb-client`

`mysql_secure_installation`

# Start and enable MariaDB
`sudo systemctl start mariadb`

`sudo systemctl enable mariadb`
