`crontab -e`
`0 0 * * 1 cp -R ~/Backups\ Better/* /mnt/NextCloud/users/PROJStore/Backups/VEEAMBackups/`
This makes a copy of `/Backups\ Better/*` into `/mnt/NextCloud/users/PROJStore/Backups/VEEAMBackups/` which can be viewed from `https://files.team5.ca`.
The command runs every Monday at 12:00am.