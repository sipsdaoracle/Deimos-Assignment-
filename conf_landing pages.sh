#!/bin/bash

# Variables
VM1_HTML_FILE="/var/www/vm1/index.html"
VM2_HTML_FILE="/var/www/vm2/index.html"

# Create landing page for VM1
cat << EOF > "$VM1_HTML_FILE"
<!DOCTYPE html>
<html>
<head>
    <title>Virtual Machine 1</title>
</head>
<body>
    <h1>Welcome to Virtual Machine 1</h1>
    <p>This is the landing page for Virtual Machine 1.</p>
</body>
</html>
EOF

# Create landing page for VM2
cat << EOF > "$VM2_HTML_FILE"
<!DOCTYPE html>
<html>
<head>
    <title>Virtual Machine 2</title>
</head>
<body>
    <h1>Welcome to Virtual Machine 2</h1>
    <p>This is the landing page for Virtual Machine 2.</p>
</body>
</html>
EOF

echo "Landing pages created successfully."
