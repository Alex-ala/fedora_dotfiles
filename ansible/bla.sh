sudo dnf install ansible python2-dnf
ansible-playbook -i localhost.yml --connection=local playbook.yml --skip-tags patch
