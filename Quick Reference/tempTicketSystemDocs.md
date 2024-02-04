# Resource Tracker

## Notes
- Guide: https://hendgrow.com/2020/09/25/how-to-install-rt-5-robust-high-volume-ticketing-system-ubuntu-20-04-with-mariadb-and-apache2/
- Documentation: https://docs.bestpractical.com/rt/5.0.5/README.html
- OS: Ubuntu 22 Server
- Server credentials> user: mattadmin Pass: P@ssw0rd
- MariaDB credentials> User: rt_user Pass: Majteq5
    - secured using sudo mysql_secure_installation
- RT credentials> User: Root Pass: Majteq5
  - Matt:Quinn:Jamie:Aidan:Taqi::P@ssw0rd
 

### TroubleShot

- Installed Perl and MariaDB per guide 
- Dependency script would fail
  - Solution: 
    ```
        sudo cpan, force install <package> # one by one
    ```
- Login page was bugged because of this? https://forum.bestpractical.com/t/rt-5-0-4-upgrade-cant-log-in-now-login-page-just-refreshesh/38114
  - Solution: sudo nano /opt/rt5/etc/RT_Config.pm
    - Set($WebSecureCookies, 0);
  - Revert if we get it a Trusted Certificate 

- How to remove the “Possible cross-site request forgery” RT message when creating tickets or making changes via the WUI etc. 
  - Solution:
      ```
      sudo vi /opt/rt5/etc/RT_SiteConfig.pm 

      Set( $WebDomain, 'your-servers-ip' );

      Restart Apache

      sudo systemctl restart apache2
      ```
  - **Remove this once we get actual IP** !!!!!!!!