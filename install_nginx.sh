#!/bin/bash

# Error handling function
handle_error() {
    echo "Error: $1"
    exit 1
}

# Install Nginx from source code
install_nginx() {
    apt-get update || handle_error "Failed to update package repositories."
    apt-get install -y build-essential || handle_error "Failed to install build-essential."

    wget "http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz" || handle_error "Failed to download Nginx source code."
    tar -zxvf "nginx-$NGINX_VERSION.tar.gz" || handle_error "Failed to extract Nginx source code."
    cd "nginx-$NGINX_VERSION" || handle_error "Failed to navigate to Nginx source directory."
    
    ./configure || handle_error "Failed to configure Nginx."
    make || handle_error "Failed to build Nginx."
    make install || handle_error "Failed to install Nginx."
}

install_nginx
