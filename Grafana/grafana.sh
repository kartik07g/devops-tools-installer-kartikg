set -e

echo "🔧 Installing dependencies..."
sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget

echo "📦 Adding Grafana APT repository..."
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

echo "🔄 Updating packages and installing Grafana..."
sudo apt-get update
sudo apt-get install -y grafana

echo "🚀 Starting Grafana service..."
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

echo "✅ Grafana installed and running on http://Ip-address:3000"