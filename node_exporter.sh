cd /tmp
curl -LO https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar -xvf node_exporter-1.3.1.linux-amd64.tar.gz
sudo mv node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin/
sudo useradd -rs /bin/false node_exporter
/usr/local/bin/node_exporter --version
cat << FLAG > /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter
[Install]
WantedBy=multi-user.target
FLAG
cat /etc/systemd/system/node_exporter.service
sudo systemctl daemon-reload 
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
sudo systemctl status node_exporter
