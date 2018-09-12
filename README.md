# windscribe-connect-after-sleep

On Arch linux create file /etc/systemd/system/root-suspend.service

    [Unit]
    Description=Local system suspend actions
    Before=sleep.target

    [Service]
    Type=simple
    ExecStart=-/usr/bin/local/windscribe_connect.sh

    [Install]
    WantedBy=sleep.target

Finaly run

    systemctl enable root-suspend 
    chmod +x /usr/local/windscribe_connect.sh
