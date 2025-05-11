set -e

echo "🔧 Updating package index..."
sudo apt update

echo "📦 Installing Ansible..."
sudo apt install -y ansible

echo "✅ Ansible installed!"
ansible --version