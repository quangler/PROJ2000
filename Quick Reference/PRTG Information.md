# PRTG Information
Info regarding the PRTG Network Monitor setup

## Credentials

### Users and Login
- **Username:** first name all lowercase (example: taqi)
- **Password:** defualt is P@ssw0rd (pls change)

### Remote Monitoring Configurations
- **SNMP (Fortigate)**
  - version 3 (for traffic stuff)
    - User Name: PRTG
    - Password and Key: M@jteqM0n1t0r
    - Authentication Algorithm: SHA1
    - Encryption Algorithm: AES
  - syslog for log stuff (snmpv3 traps not supported in PRTG)
- **SFlow (Fortigate)**
  - configuration avaliable from the command line only
  - commands:
    - set the IP for the monitoring server
    - >| # config system sflow
    - >| # set collector-ip 10.100.50.50
    - >| # set collector-port 6343
    - configure the interfaces for sflow
    - >| # config system interface
    - >| # edit [name]
    - >| # set sflow-sampler enable
    - >| # set sample-rate 2000
    - >| # set sample-direction both
    - >| # set polling-interval 5
- 
- **SNMP (Cisco)**
  - version 3
  - commands:
```
!
ip access-list standard MGMT 
 permit 10.100.50.0 0.0.0.255
!
snmp-server group PRTG-RO v3 priv access MGMT
snmp-server host 10.100.50.50 version 3 priv PRTG
snmp-server user PRTG PRTG-RO v3 auth sha M@jteqM0n1t0r priv aes 128 M@jteqM0n1t0r access MGMT
!
```

- **WMI Logs**
  - **windows username**: PRTG
  - **password:** M@jteqM0n1t0r
- **SFlow**
  - fortigate