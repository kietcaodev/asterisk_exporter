sudo yum install python34u -y 
sudo yum -y install python34-pip -y 
sudo yum install python34-setuptools -y
sudo easy_install-3.4 pip
pip3 install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host=files.pythonhosted.org prometheus
git clone https://github.com/kietcaodev/asterisk_exporter.git
cd asterisk_exporter
cp asterisk_exporter /usr/local/bin/asterisk_exporter
chmod 755 /usr/local/bin/asterisk_exporter
cat << FLAG > /etc/systemd/system/asterisk_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/local/bin/asterisk_exporter
[Install]
WantedBy=multi-user.target
FLAG
sudo systemctl daemon-reload 
sudo systemctl restart asterisk_exporter
sudo systemctl enable asterisk_exporter
sudo systemctl status asterisk_exporter
