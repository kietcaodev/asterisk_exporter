sudo yum install python34u -y 
sudo yum -y install python34-pip -y 
sudo yum install python34-setuptools -y
sudo yum install -y openssl11 openssl11-devel
sudo easy_install-3.4 pip
python3.4 -m pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host=files.pythonhosted.org prometheus
git clone https://github.com/kietcaodev/asterisk_exporter.git
cd /tmp/asterisk_recording_exporter
cp kamailio_recording_exporter /usr/local/bin/kamailio_recording_exporter
chmod 755 /usr/local/bin/kamailio_recording_exporter
cat << FLAG > /etc/systemd/system/kamailio_recording_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/local/bin/kamailio_recording_exporter
[Install]
WantedBy=multi-user.target
FLAG
sudo systemctl daemon-reload 
sudo systemctl restart kamailio_recording_exporter
sudo systemctl enable kamailio_recording_exporter
sudo systemctl status kamailio_recording_exporter
