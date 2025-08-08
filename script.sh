#!/bin/bash
set -e  # stop if any error

echo "📄 Creating index.html..."
echo "<h1>Hello from Jenkins at $(date)</h1>" > index.html

echo "📦 Starting Apache container..."
docker run -d --name mysite -p 8082:80 -v $(pwd)/index.html:/usr/local/apache2/htdocs/index.html httpd:latest

echo "✅ Website running at http://localhost:8082"
