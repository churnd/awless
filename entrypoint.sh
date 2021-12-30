#!/bin/bash
_setup() {
    cat <<EOT >> /etc/resolv.conf
    nameserver 1.1.1.1
EOT
}
exec "${@}"
