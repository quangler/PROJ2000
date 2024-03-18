# Resource Tracker

## Notes
- Guide: https://hendgrow.com/2020/09/25/how-to-install-rt-5-robust-high-volume-ticketing-system-ubuntu-20-04-with-mariadb-and-apache2/
- Documentation: https://docs.bestpractical.com/rt/5.0.5/README.html
- OS: Ubuntu 22 Server
- Server credentials> user: `mattadmin` Pass: `P@ssw0rd`
- MariaDB credentials> User: `rt_user` Pass: `Majteq5`
    - secured using `sudo mysql_secure_installation`
- RT credentials> User: `Root` Pass: `Majteq5`
  - `Matt`:`Quinn`:`Jamie`:`Aidan`:`Taqi`::`P@ssw0rd`
 
### Outgoing Mail Relay:
**smtp2go.com**
Credentials: mtelford@team5.ca::hidden
Postfix:
Email: RT@team5.ca
	- Exchange: SendAs : {all users}
Path: /etc/postfix

### Incoming Mail:
**WSGetMail App**
Schedule: Every 10 Mins
Path: /usr/local/bin
```
{
"client_id": "392133ee-b276-48c4-b080-a44b1cc9fa7b",
"tenant_id": "bd4b36c7-583b-4665-94ed-03e40cbcad87",
"secret": "hidden",
"global_access": 1,
"username": "RT@team5.ca",
"folder": "Inbox",
"stripcr": 1,
"command": "/opt/rt5/bin/rt-mailgate",
"command_args": "--url=http://tickets.team5.ca/ --queue=General --action=comment",
"command_timeout": 30,
"action_on_fetched": "mark_as_read"
}
```
### Trouble Shooting

- Installed Perl and MariaDB per guide 
- Dependency script would fail
  - Solution: 
    ```
        sudo cpan, force install <package> # one by one
    ```
- Login page was bugged because of this? https://forum.bestpractical.com/t/rt-5-0-4-upgrade-cant-log-in-now-login-page-just-refreshesh/38114
  - Solution: `sudo nano /opt/rt5/etc/RT_Config.pm`
    - Set($WebSecureCookies, 0);
  - Revert if we get it a Trusted Certificate 

- How to remove the “Possible cross-site request forgery” RT message when creating tickets or making changes via the WUI etc. 
  - Solution:
      ```
      sudo 

      Set( $WebDomain, 'your-servers-ip' );

      # Restart Apache

      sudo systemctl restart apache2
      ```
