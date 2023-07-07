#!/bin/bash

# Error handling function
handle_error() {
    echo "Error: $1"
    exit 1
}

# Add Nginx user and group
add_nginx_user() {
    groupadd nginx || handle_error "Failed to create Nginx group."
    useradd -g nginx nginx || handle_error "Failed to create Nginx user."
}

add_nginx_user
