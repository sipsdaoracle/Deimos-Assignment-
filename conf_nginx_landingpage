#!/bin/bash

# Variables
VM1_DOMAIN="vm1.example.com"
VM2_DOMAIN="vm2.example.com"

# Error handling function
handle_error() {
    echo "Error: $1"
    exit 1
}

# Configure Nginx to serve both virtual machines' landing pages
configure_nginx() {
    sed -i 's
