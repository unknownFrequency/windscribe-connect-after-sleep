# windscribe-connect-after-sleep

On Arch linux create file /etc/systemd/system/root-resume.service

    [Unit]
    Description=Local system resume actions
    After=suspend.target

    [Service]
    Type=simple
    ExecStart=/usr/local/bin/windscribe_connect.sh

    [Install]
    WantedBy=suspend.target

Finaly run

    systemctl enable root-resume 
    chmod +x /usr/local/windscribe_connect.sh
