## ----------------------------------------------------------------------------------
## Qubes script to backup a VMs to a attached external hard disk
## 
## ** this part of the script is executed in VM but it is called by dom0
##    after setting up the required environment
##
## ** 2020, Gabriele LUCULLI
## ----------------------------------------------------------------------------------
#!/bin/bash

## parameters
VM_NAME=vault
FOLDER=/run/media/user/totino

## create folder
sudo mkdir -p $FOLDER

## mount backup disk
sudo mount  /dev/xvdi1 $FOLDER -o uid=1000,gid=1000,utf8,dmask=027,fmask=137

## execute backup
echo [$(date)] Starting backup $VM_NAME VM
grsync -e Backup-$VM_NAME 
echo [$(date)] Ended backup $VM_NAME VM

## detach backup disk
sudo umount  /dev/xvdi1

## stop VM
sudo shutdown -P now
