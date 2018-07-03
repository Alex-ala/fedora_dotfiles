sudo yum install ansible
ansible-playbook -i localhost.yml --connection=local playbook.yml --skip-tags patch
