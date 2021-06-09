#!/bin/bash


# super helpful ansible reference, finally
https://codingbee.net/ansible/ansible-a-hello-world-playbook

# ansible_python_interpreter fix
https://www.toptechskills.com/ansible-tutorials-courses/how-to-fix-usr-bin-python-not-found-error-tutorial/
# In /etc/ansible/hosts under [pis:vars],
# add: ansible_python_interpreter=/usr/bin/python3

# sftp transfer mechanism failed  fix
https://github.com/ansible/ansible/issues/22127
# In /etc/ssh/sshd_config, changed:
# Subsystem sftp /usr/libexec/openssh/sftp-server
# to:
# Subsystem sftp internal-sftp
# systemctl restart sshd

# Figure out Apache firewall settings, firewalld equivalent

# Lineinfile docs
https://docs.ansible.com/ansible/2.5/modules/lineinfile_module.html#examples

# Reboot source
https://github.com/mbruzek/ansible-reboot-wait
https://github.com/ansible/ansible/issues/14413
https://gist.github.com/infernix/a968f23c4f4e1d6723e4
https://stackoverflow.com/questions/23877781/how-to-wait-for-server-restart-using-ansible



# not tested or formatted
# cobine with other scripts.  fix indentations.
---
- name: Reboot the system. 
  shell: sleep 2 && shutdown -r now 
  async: 1 
  poll: 0 
  ignore_errors: true 

- name: Reconnect and resume. 
  local_action: 
    wait_for args:
    host: dom_pi 
    port: 22 
    state: started 
    delay: 10 
    timeout: 30




###### macbook prep
https://www.cyberciti.biz/faq/how-to-install-ansible-on-apple-macos-x-using-command-line/

https://superuser.com/questions/975319/can-t-find-the-config-file-in-etc-ansible-on-mac-os-x

https://vgkits.org/blog/pip3-macos-howto/

# changed python 2.7 path to python 3.9.  big mess fixed.
export PATH="/Users/aliyaasken/Library/Python/3.8/bin:$PATH"
3.8 or 3.9?

# sshpas
https://stackoverflow.com/questions/32255660/how-to-install-sshpass-on-mac


https://github.com/geerlingguy/mac-dev-playbook


# reboot
https://mike632t.wordpress.com/2018/07/28/reboot-hosts-using-ansible/

https://www.jeffgeerling.com/blog/2018/reboot-and-wait-reboot-complete-ansible-playbook



# become yes or become true?  i think yes

https://docs.ansible.com/ansible/latest/user_guide/become.html


ansible-galaxy collection install community.kubernetes

# ANSIBLE KUBERNETES CODE + FORMAT
https://ugurakgul.medium.com/bootstrapping-a-kubernetes-cluster-with-ansible-2d1a1155fcb9


# starting to add roles, tasks, etc...in proper directories
# following ansible-examples best practices
https://github.com/ansible/ansible-examples/blob/master/lamp_simple/site.yml

###

https://github.com/raspbernetes/k8s-cluster-installation

# Starting from SCRATCH
https://raspbernetes.github.io/docs/installation/#flash-sd-cards




https://shantanoo-desai.github.io/posts/technology/edge_cluster_provisioning_ansible/

ansible pis --become -m shell -a \
"sed -i '$ s/$/ cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1 swapaccount=1/' /boot/firmware/cmdline.txt"


# shit tutorial.  only helpful to a noob like me after weeks of research.
# everything that is wrong with documentation and resourcess for "beginners"
https://www.guru99.com/ansible-tutorial.html


https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html


Question:
    Are files in /playbooks actually "plays" or "playbooks"?
    No comprendo.  Figure this out.


# https://travis-ci.com/

# https://bitbucket.org/

# https://github.com/kairen/kube-ansible


#####################################################################
### Digital Ocean Ansible stuff ###

https://github.com/do-community/ansible-playbooks

https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-docker-on-ubuntu-18-04

https://www.digitalocean.com/community/tutorials/configuration-management-101-writing-ansible-playbooks

https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04

https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-automate-initial-server-setup-on-ubuntu-18-04

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-20-04

https://www.digitalocean.com/community/cheatsheets/how-to-use-ansible-cheat-sheet-guide

### Digital Ocean Kubernetes stuff ###
#####################################################################
https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-18-04


########################
Figuring out how to structure tasks

# Ansible lint, vscode extension setup
https://github.com/ansible-community/vscode-ansible/blob/master/doc/topics/integrate_ansible-lint_in_venv/linux.md
https://github.com/ansible-community/vscode-ansible/blob/master/doc/topics/integrate_ansible-lint_in_venv/mac.md
https://github.com/ansible-community/vscode-ansible/blob/master/doc/topics/integrate_ansible-lint_in_venv/README.md

# mac + ubuntu
ln -s ~/venv/system/bin/ansible-lint ~/.local/ansible-lint
ln -s ~/venv/system/bin/ansible ~/.local/ansible
ln -s ~/venv/system/bin/ansible-playbook ~/.local/ansible-playbook


https://www.tutorialspoint.com/ansible/ansible_roles.htm

https://medium.com/edureka/ansible-roles-78d48578aca1#:~:text=No%2C%20using%20a%20single%20playbook,role%20will%20perform%20one%20task.

$ sudo ansible-galaxy init <role-name>

^^^^^^

# Fix error --> Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings
https://www.digitalocean.com/community/questions/i-started-getting-an-error-message-when-i-log-in-failed-to-connect-to-ubuntu-com-meta-release-lts

# Update
https://www.cyberciti.biz/faq/ansible-apt-update-all-packages-on-ubuntu-debian-linux/

# Reboot:
https://earlruby.org/2019/07/rebooting-a-host-with-ansible/


# Figure out encrypted password and creating user:
https://computingforgeeks.com/generate-linux-user-encrypted-password-for-ansible/

##### ANSIBLE VARIABLES + FACTS #####
https://www.tecmint.com/ansible-variables-and-facts/
https://www.tecmint.com/configure-ansible-managed-nodes-and-run-ad-hoc-commands/

https://computingforgeeks.com/how-to-automate-simple-repetitive-tasks-using-ansible/


# Role help
https://github.com/agross/ansible-raspi/tree/master/roles

# Headless flash, maybe
https://jamesachambers.com/raspberry-pi-4-usb-boot-config-guide-for-ssd-flash-drives/


# ansible.builtin.copy
https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html#examples

https://www.middlewareinventory.com/blog/how-to-copy-files-between-remote-servers-ansible-fetch-sync/


