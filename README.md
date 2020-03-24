# Tips

## Raw setup

```bash
cat ~/.ssh/id_rsa.pub | ssh root@proxmox.technbolts.org 'cat >> ~/.ssh/authorized_keys'
```

## Vault

```bash
$ echo "Super mot de passe secret!" >> ~/.vault/test-pass-ansible.txt
$ ansible-vault encrypt_string password123 --vault-password-file ~/.vault/test-pass-ansible.txt
```

```
```

References

* https://docs.ansible.com/ansible/latest/cli/ansible-vault.html#ansible-vault-encrypt-string
* https://docs.ansible.com/ansible/latest/user_guide/playbooks_vault.html#single-encrypted-variable


## Windows :cry:

[Autoriser l'exécution de scripts](https://openclassrooms.com/fr/courses/3664366-creez-votre-premier-script-avec-powershell#/id/r-3772536)

In PowerShell console (as admin. user)

```
PS> Set-ExecutionPolicy Unrestricted
PS> cd projects/platform
PS> start-ansible.ps1
```

ssh workaround (see [Warning unprotected private key](https://www.howtogeek.com/168119/fixing-warning-unprotected-private-key-file-on-linux/) and [Windows Docker - unix file permissions using a volume](https://github.com/docker/for-win/issues/2042))

* ssh keys folder is mounted as `.ssh.ref`
* keys are copied (see `ssh-keys.sh` in `.ssh`) and chmod-ified


```
ansible-playbook -i inventory/infra-alo/proxmox playbooks/root_protect.yml -u root -vvv
```

```
ansible-playbook -i inventory/infra-alo/proxmox playbooks/proxmox_setup.yml -u arnauld -vvv
```

```
ansible-playbook -i inventory/infra-alo/proxmox playbooks/proxmox_create_template.yml -u arnauld -vvv
```

```
ansible-playbook -i inventory/infra-alo/proxmox playbooks/proxmox_create_vm.yml -u arnauld --vault-password-file ~/.vault/proxmox-vault-key.txt  -vvv
```
