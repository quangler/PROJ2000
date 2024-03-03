# RADIUS

## Configuration

### Server Specification 
Server: HQ-RD-01
Role: NFS
VLAN: 10
RAM: 8 GB

### Cisco Clients

Shared key: majteq


#### Layer 2

```
!
aaa new-model
aaa group server radius NPS
 server 10.100.10.5
!
aaa authentication login VTY_Authen group NPS local
aaa authorization exec VTY_Author group NPS local
aaa accounting exec default start-stop group NPS
aaa session-id common
!
radius-server host 10.100.10.5 key majteq
!
privilege exec level 7 show running-config view full
!
line vty 0 15
 authorization exec VTY_Author
 login authentication VTY_Authen
 transport input ssh
!

```
#### Layer 3
```
!
aaa group server radius NPS
  server name HQ-RD-01
!
radius server HQ-RD-01
 address ipv4 10.100.10.5 auth-port 1645 acct-port 1646
 key 7 majteq
!
ip radius source-interface Vlan 50
!
```
## AD Authentication

| **Organizational Unit** | **AD Security Group** | **User accounts members**                                                                         | **Group Purpose**                            |
| :---------------------: | --------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------- |
|        IT Admins        | Network-RW-Admins     | TeamAdmin Accounts:<br>- AidanAdmin<br>- JamieAdmin<br>- MattAdmin<br>- TaqiAdmin<br>- QuinnAdmin | Read-Write (privilege 15) on Network devices |
|           IT            | Network-RO-Admins     | TeamUser Accounts:<br>- ACadieux<br>- JLewis<br>- MTelford<br>- QParent<br>- TZaidi               | Read-Only (privilege 7) on Network devices   |
|        IT Admins        | Firewall-RW-Admins    | TeamAdmin Accounts:<br>- AidanAdmin<br>- JamieAdmin<br>- MattAdmin<br>- TaqiAdmin<br>- QuinnAdmin | Read-Write access on Firewall                |
|           IT            | Firewall-RO-Admins    | TeamUser Accounts:<br>- ACadieux<br>- JLewis<br>- MTelford<br>- QParent<br>- TZaidi               | Read-Only access on Firewall                 |



