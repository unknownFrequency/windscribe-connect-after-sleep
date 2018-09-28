# windscribe-connect-after-sleep

On Arch linux edit file /etc/pam.d/system-login and add
    
    auth       optional   pam_exec.so /path/to/windscribe_connect.sh
    
Finaly make script executable

    chmod +x /usr/local/bin/windscribe_connect.sh
