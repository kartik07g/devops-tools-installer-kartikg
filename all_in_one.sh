TOOLS=("Docker" "Docker Compose" "Jenkins" "Ansible" "Helm" "Prometheus" "Grafana" "Quit")

function show_menu() {
echo ""
echo "📦 DevOps Tools Installer"
echo "=========================="
for i in "${!TOOLS[@]}"; do
echo "$((i+1)). ${TOOLS[$i]}"
done
}

while true; do
show_menu
echo -n "Enter the number of the tool you want to install: "
read -r choice

case $choice in
1)
echo "🔧 Installing Docker..."
bash Docker/docker.sh
;;
2)
echo "🔧 Installing Docker Compose..."
bash Docker-compose/docker-compose.sh
;;
3)
echo "🔧 Installing Jenkins..."
bash Jenkins/jenkins.sh
;;
4)
echo "🔧 Installing Ansible..."
bash Ansible/ansible.sh
;;
5)
echo "🔧 Installing Helm..."
bash Helm/helm.sh
;;
6)
echo "🔧 Installing Prometheus..."
bash Promethus/prometheus.sh
;;
7)
echo "🔧 Installing Grafana..."
bash Grafana/grafana.sh
;;
8)
echo "👋 Exiting..."
exit 0
;;
*)
echo "❌ Invalid choice. Please try again."
;;
esac

echo -e "\n✅ Done. Press Enter to return to menu."
read -r
done