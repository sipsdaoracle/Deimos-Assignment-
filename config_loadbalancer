#!/bin/bash

# Variables
VM1_DOMAIN="vm1.example.com"
VM2_DOMAIN="vm2.example.com"

# Error handling function
handle_error() {
    echo "Error: $1"
    exit 1
}

# Configure load balancing between virtual machines
configure_load_balancing() {
    # Configure Nginx for Virtual Machine 1
    if ! cat << EOF > /usr/local/nginx/conf/vm1.conf
server {
    listen 80;
    server_name $VM1_DOMAIN;

    location / {
        root /var/www/vm1;
        index index.html;
    }
}
EOF
    then
        handle_error "Failed to configure Nginx for Virtual Machine 1."
    fi

    # Configure Nginx for Virtual Machine 2
    if ! cat << EOF > /usr/local/nginx/conf/vm2.conf
server {
    listen 80;
    server_name $VM2_DOMAIN;

    location / {
        root /var/www/vm2;
        index index.html;
    }
}
EOF
    then
        handle_error "Failed to configure Nginx for Virtual Machine 2."
    fi
}

configure_load_balancing
