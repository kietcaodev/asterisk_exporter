sudo yum install python34u -y 
sudo yum -y install python34-pip -y 
sudo yum install python34-setuptools -y
sudo yum install -y openssl11 openssl11-devel
sudo easy_install-3.4 pip
pip3 install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host=files.pythonhosted.org prometheus
git clone https://github.com/kietcaodev/asterisk_exporter.git
cd /tmp/asterisk_recording_exporter
cp recording_mode_phone_exporter /usr/local/bin/recording_mode_phone_exporter
chmod 755 /usr/local/bin/recording_mode_phone_exporter
cat << FLAG > /etc/systemd/system/recording_mode_phone_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/local/bin/recording_mode_phone_exporter
[Install]
WantedBy=multi-user.target
FLAG
sudo systemctl daemon-reload 
sudo systemctl restart recording_mode_phone_exporter
sudo systemctl enable recording_mode_phone_exporter
sudo systemctl status recording_mode_phone_exporter
