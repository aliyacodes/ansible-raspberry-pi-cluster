# ansible-raspberry-pi-cluster  

![rpi](https://github.com/aliyacodes/ansible-raspberry-pi-cluster/blob/main/pics/rpicluster.jpg)  

### Based on https://github.com/aliyacodes/raspberry-pi-homelab  
<br>

Will clean up files later.  Building slowly, one file at a time, with original Ansible content included for now.  
<br>
 
Assume all files and folders live in */etc/ansible* on local machine.  
<br>

From now on, running all tests from local machine, rather than from master node.  

<br>

## Sources:  

Helpful Ansible examples:  
https://github.com/ansible/ansible-examples  
https://github.com/do-community/ansible-playbooks

Best source so far explaining how to write Ansible playbooks:  
https://www.digitalocean.com/community/tutorials/configuration-management-101-writing-ansible-playbooks  
*More sources in notes.sh  

<br>

## TODO:

- [ ] Change hardcoded ansible_user and ansible_password to defaults in hosts for fresh install (ubuntu, ubuntu)
- [ ] Remove hardcoded ansible_user and ansible_password in hosts
- [ ] Redistribute files in "playbooks" to create a proper directory structure, according to Ansible's "best practice"
- [ ] Make sure /etc/ansible is created 
- [ ] Add Kubernetes and Docker!!
- [ ] Figure out naming conventions for plays
- [ ] Condense code with variables and loops


___


:sassy_woman: [Markdown Guide](https://www.markdownguide.org/basic-syntax/)  
