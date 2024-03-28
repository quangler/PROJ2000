`crontab -e` - used for setting automatic commands - in this case used for pulling the backups into the file share.
`0 0 * * 1 /home/quinnadmin/dobackups.sh` - this calls a bash script every Monday at 12:00am for copying and renaming the backups to the fileserver.

```dobackups.sh
#!/bin/bash

#copying files from backup folder to PROJStore
cp -R /home/quinnadmin/Backups\ Better/* /mnt/NextCloud/users/PROJStore/Backups/VEEAMBackups/

#pulling date and time
currentdate="$(date +'%Y%m%d%H%M%S')"

#renaming the folder to make unique backups
mv /mnt/NextCloud/users/PROJStore/Backups/VEEAMBackups/SyncThing\ Copy\ Job/ /mnt/NextCloud/users/PROJStore/Backups/VEEAMBackups/SyncThing\ Copy\ Job$currentdate
```

This makes a copy of `/Backups\ Better/*` into `/mnt/NextCloud/users/PROJStore/Backups/VEEAMBackups/` which can be viewed from `https://files.team5.ca`.
The command runs every Monday at 12:00am.