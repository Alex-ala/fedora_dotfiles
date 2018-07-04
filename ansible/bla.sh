sudo yum install epel-release ansible
ansible-playbook -i localhost.yml --connection=local playbook.yml --skip-tags patch
