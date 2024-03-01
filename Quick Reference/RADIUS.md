# RADIUS

## Configuration

### Server Specification 
Server: HQ-RD-01
Role: NFS
VLAN: 10
RAM: 8 GB

### Cisco Clients

Shared key: majteq
## AD Authentication

| **Organizational Unit** | **AD Security Group** | **User accounts members**                                                                         | **Group Purpose**                            |
| :---------------------: | --------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------- |
|        IT Admins        | Network-RW-Admins     | TeamAdmin Accounts:<br>- AidanAdmin<br>- JamieAdmin<br>- MattAdmin<br>- TaqiAdmin<br>- QuinnAdmin | Read-Write (privilege 15) on Network devices |
|           IT            | Network-RO-Admins     | TeamUser Accounts:<br>- ACadieux<br>- JLewis<br>- MTelford<br>- QParent<br>- TZaidi               | Read-Only (privilege 7) on Network devices   |
|        IT Admins        | Firewall-RW-Admins    | TeamAdmin Accounts:<br>- AidanAdmin<br>- JamieAdmin<br>- MattAdmin<br>- TaqiAdmin<br>- QuinnAdmin | Read-Write access on Firewall                |
|           IT            | Firewall-RO-Admins    | TeamUser Accounts:<br>- ACadieux<br>- JLewis<br>- MTelford<br>- QParent<br>- TZaidi               | Read-Only access on Firewall                 |



