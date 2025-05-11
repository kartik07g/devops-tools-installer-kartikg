set -e

echo "📦 Downloading Prometheus..."
cd /tmp
curl -LO https://github.com/prometheus/prometheus/releases/download/v2.51.2/prometheus-2.51.2.linux-amd64.tar.gz
tar xvf prometheus-*.tar.gz

echo "🚚 Moving binaries to /usr/local/bin..."
cd prometheus-*
sudo cp prometheus promtool /usr/local/bin/

echo "📁 Setting up Prometheus directories..."
sudo mkdir -p /etc/prometheus /var/lib/prometheus
sudo cp -r consoles console_libraries prometheus.yml /etc/prometheus/

echo "🛠️ Creating Prometheus service..."
sudo tee /etc/systemd/system/prometheus.service > /dev/null <<EOF
[Unit]
Description=Prometheus
After=network.target

[Service]
User=nobody
ExecStart=/usr/local/bin/prometheus \
--config.file=/etc/prometheus/prometheus.yml \
--storage.tsdb.path=/var/lib/prometheus/ \
--web.console.templates=/etc/prometheus/consoles \
--web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target
EOF

echo "🚀 Starting Prometheus..."
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus

echo "✅ Prometheus installed and running on http://Ip-address:9090"

