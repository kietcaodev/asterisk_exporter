# asterisk_exporter
####Install for asterisk####

cd /tmp

git clone https://github.com/kietcaodev/asterisk_exporter.git

cd asterisk_exporter

chmod 755 install.sh

sh install.sh

####Install for kamailio####

cd /tmp

git clone https://github.com/kietcaodev/asterisk_exporter.git

cd asterisk_exporter

chmod 755 install_kama.sh

sh install_kama.sh

####Install for VP recording ####

cd /tmp

git clone https://github.com/kietcaodev/asterisk_exporter.git

cd asterisk_exporter

chmod 755 install_monitor_recording.sh

sh install_monitor_recording.sh

####Install for Webrtc recording ####

cd /tmp

git clone https://github.com/kietcaodev/asterisk_exporter.git

cd asterisk_exporter

chmod 755 install_webrtc_recording_monitor.sh

sh install_webrtc_recording_monitor.sh

###Fix error when install prometheus fail###

pip3.4  install prometheus

python3.4 -m pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host=files.pythonhosted.org prometheus
