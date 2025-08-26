#!/bin/bash
set -e  # stop if any error

echo "📄 Creating index.html..."
echo "<h1>Hello from Jenkins at $(date)</h1>" > index.html

echo "📦 Starting Apache container..."
docker run -d --name mysite1 -p 8081:80 -v $(pwd)/index.html:/usr/local/apache2/htdocs/index.html httpd:latest

echo "✅ Website running at http://192.168.1.124:8081"

echo " updated"
echo " latest version"
echo " this is upgraded today"
