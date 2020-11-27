# Scripts for automatic backup in Qubes 3.2
Two scripts are required to setup an automatic backup of folders in Qubes: a first script which is saved in the VM where the folders are and a second script which is save in dom0.

The purpose of the first script is to actually execute the backup on an external HD: I did this by using grsync which is called with a configuration file where source-destination are specified, others solutions are possible of course. The purpose 
of the dom0 scripts is simply to start the VM where the folders are and then to execute the first script.
