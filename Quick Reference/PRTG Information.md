# PRTG Information
Info regarding the PRTG Network Monitor setup

## Credentials

### Users
- **Username:** first name all lowercase (example: taqi)
- **Password:** defualt is P@ssw0rd (pls change)

### Remote Monitoring
- **SNMP (Fortigate)**
  - version 3 (for traffic stuff)
    - User Name: PRTG
    - Password: M@jteqM0n1t0r
    - Authentication Algorithm: SHA1
    - Encryption Algorithm: AES
  - syslog for log stuff (snmpv3 traps not supported in PRTG)
- **SNMP (Cisco)**
  - version 3
  - commands:
    - >(config)# ip access-list standard MGMT 
    - >(config)# permit 10.100.50.0 0.0.0.255
    - >(config)# snmp-server group PRTG-RO v3 priv access loggers
    - >(config)# snmp-server user PRTG prtg-ro v3 auth sha M@jteqM0n1t0r priv aes 128 M@jteqM0n1t0r access loggers
    - >(config)#
    - >(config)#
    - >(config)#

- **WMI Logs**
  - **windows username**: PRTG
  - **password:** M@jteqM0n1t0r
- **SFlow**
  - fortigate