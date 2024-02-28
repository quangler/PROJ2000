# L3 Switch Config - MAJTeQ
## Project Name: UltraSol Energy Solutions Merger
**Assigned Members:** Quinn Parent, Matt Telford
**Date Last Modified:** Feb 7, 2024  
**Version:** 1.02  

---
This is a temporary file for the time being, I will continue to update it as I continue working on it.
```L3-Switch-Config
hostname HQ-L3SW-01 !!FILL IN HERE
!
enable secret majteq
username admin password majteq !! this will be changed later with RADIUS
service password-encryption
spanning-tree mode rapid-pvst
spanning-tree extend system-id
spanning-tree vlan 10,12,20,30,40,50,60,70,80,90,100,110,120,130,140,150,400,666,999 root primary
!
ip domain-name team5.ca
!
line console 0
 logging synchronous
!
!
banner motd @ Welcome to the HQ-L3SW-01, lets make the MAJTeQ happen! @
!
banner login @ WARNING: Unauthorized access prohibited! @
!
!SSH Section
!
crypto key generate rsa modulus 1024
ip ssh version 2
!
ip access-list standard ForSSH
 permit 10.100.50.0 0.0.0.255 ! CHANGE THIS FOR EACH SITE
!
line vty 0 15
 login local
 transport input ssh
 access-class ForSSH in
!
interface vlan 1
 no ip address
 shutdown
!
!VLANS NEED TO UPDATE NAMES AND NUMBERS
!THAT MEANS THIS IS ALL TEMPORARY
!
no ip routing
!
!
!vlan 50
! name Management
int vlan 50
 ip address 10.100.50.3 255.255.255.0 !PLACEHOLDER CHANGE IP
! ip helper-address 10.100.10.25 !PLACEHOLDER CHANGE IP
 no shut
!
vlan 10
 name Servers
vlan 15
 name ServerManagement
vlan 20
 name CORP-WIFI
vlan 30
 name GUEST-WIFI
vlan 40
 name VoIP
vlan 50
 name NetworkManagement
vlan 60
 name Accounting
vlan 70
 name Engineering
vlan 80
 name IT
vlan 90
 name Logistics
vlan 100
 name ManagementTeam
vlan 110
 name MANUSecure
vlan 120
 name Operations
vlan 130
 name QA
vlan 140
 name Sales
vlan 150
 name Students
vlan 200
 name Routing
vlan 400
 name CCTV
vlan 666
 name BLACKHOLE
vlan 999
 name NATIVE
!
int range f0/1-24
 shut
int range g0/1-24
 shut
int range g1/0/1-24
 shut
int range g1/1/1-24
 shut
!
int g1/0/3
 description HQ-L3SW-01 / G1/0/1 to HQ-FW-01 / Int1 - Routing
 switchport mode trunk
 switchport trunk encapsulation dot1q
 switchport trunk native vlan 200
 no shut
!
int g1/0/4
 description HQ-L3SW-01 / G1/0/2 to HQ-FW-02 / Int1 - Routing
 switchport mode trunk
 switchport trunk  encapsulation dot1q
 switchport trunk native vlan 200
 no shut
!
