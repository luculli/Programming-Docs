## ----------------------------------------------------------------------------------
## Qubes script to backup a VMs to a attached external hard disk
## 
## ** the script is executed in dom0
## ** it assumes an already configured rsync in VM
## ** it assumes the script backup-vault.sh in VM will execute the backup
## ----------------------------------------------------------------------------------
#!/bin/bash

## parameters
VM_NAME=vault
EXT_HD=dom0:sdb

## start VM
qvm-start --skip-if-running $VM_NAME

## attach and mount backup disk
qvm-block -a $VM_NAME $EXT_HD

## execute local script for backup
qvm-run -p -u user $VM_NAME "bash ~/Documents/scripts/backup-$VM_NAME.sh"

