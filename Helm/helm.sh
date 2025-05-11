set -e

echo "📦 Downloading Helm install script..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

echo "✅ Helm installed!"
helm version