# run_ansible.sh
#!/bin/bash

# Step 1: Build Docker images
# echo "Building Docker images..."
# docker build -f Dockerfile_fedora -t my_fedora_image .

# Step 2: Run Docker containers
echo "Running Docker containers..."
docker run -d --name fedora_host my_fedora_image sleep infinity

# Step 3: Wait for containers to be ready
sleep 5

# Step 4: Run Ansible playbook
echo "Running Ansible playbook..."
ansible-playbook -i inventory/fedora.yml site.yml --vault-password-file ./vault_auth.txt

# Step 5: Stop Docker containers
echo "Stopping Docker containers..."
docker stop fedora_host

# Step 6: Remove Docker containers
echo "Removing Docker containers..."
docker rm fedora_host

echo "Done."
