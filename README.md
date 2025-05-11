## DevOps Tools Installer
A community-maintained collection of bash scripts to simplify the installation of popular DevOps tools (like Docker, Jenkins, Ansible, Terraform, Kubernetes, etc.) on Linux environments.

### 🛠️ Features
- Easy and automated installation of DevOps tools
- Modular scripts — each tool has its own installer
- Lightweight, readable, and customizable
- Supports most Linux distributions (Ubuntu, CentOS, etc.)

#### 📦 Tools Included
- AWS CLI
- Jenkins
- Ansible
- Terraform
- Kubernetes (kubectl, minikube)
- Maven
- Trivy
- SonarQube
- (And more coming soon!)

### master Bash script that presents a menu for installing DevOps tools interactively. This script calls each individual installation script (like ansible.sh, helm.sh, etc.) from the directory.
```all_in_one.sh``` — Master script to install DevOps tools

✅ How to Use:
- Place this script in the install/ directory alongside the other install_*.sh files.
- Make it executable
- chmod +x all_in_one.sh
- Run it: ./all_in_one.sh

  
### 🤝 Contributing
#### We welcome all contributions! You can: 
- Submit new installation scripts
- Improve existing scripts
- Add documentation
