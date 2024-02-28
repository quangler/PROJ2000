# L3 Switch Config - MAJTeQ
## Project Name: UltraSol Energy Solutions Merger
**Assigned Members:** Quinn Parent, Matt Telford
**Date Last Modified:** Feb 28, 2024  
**Version:** 1.00  

---
This is a temporary file for the time being, I will continue to update it as I continue working on it.
L3-Switch-Config
```
hostname MP-L3SW-01 !!FILL IN HERE
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
banner motd @ Welcome to the MP-L3SW-01, lets make the MAJTeQ happen! @
!
banner login @ WARNING: Unauthorized access prohibited! @
!
!SSH Section
!
crypto key generate rsa modulus 1024
ip ssh version 2
!
ip access-list standard ForSSH
 permit 10.110.50.0 0.0.0.255 ! CHANGE THIS FOR EACH SITE
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
 ip address 10.110.50.3 255.255.255.0 !PLACEHOLDER CHANGE IP
! ip helper-address 10.100.10.25 !PLACEHOLDER CHANGE IP
 no shut
!
vlan 10
 name Servers
vlan 12
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
vlan 400
 name CCTV
vlan 666
 name BLACKHOLE
vlan 999
 name NATIVE
!
int range g0/1-24
 shut
!
interface GigabitEthernet0/1
 description MP-L3SW-01 / G0/1 to  MP-L3SW-02 / G0/1 - LAGG
 switchport trunk native vlan 999
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/2
 description MP-L3SW-01 / G0/2 to  MP-L3SW-02 / G0/2 - LAGG
 switchport trunk native vlan 999
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/3
 description MP-L3SW-01 / G0/3 to MP-FW-01 / Int3 - VLANs
 switchport trunk native vlan 999
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/4
 description MP-L3SW-01 / G0/4 to MP-FW-02 / Int3 - VLANs
 switchport trunk native vlan 999
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/5
 description MP-L3SW-01 / G0/5 to MP-FW-01 / Int5 - Management
 switchport trunk allowed vlan 50
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/6
 shutdown
!
interface GigabitEthernet0/7
 description MP-L3SW-01 / G0/7 to  MP-L2SW-01 / G0/2 - L2 Access
 switchport trunk native vlan 999
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/8
 description MP-L3SW-01 / G0/8 to  MP-L2SW-02 / G0/1 - L2 Access
 switchport trunk native vlan 999
 switchport mode trunk
 no shut
!
interface GigabitEthernet0/9
 shutdown
!
interface GigabitEthernet0/10
 description MP-L3SW-01 / G0/10-12 to Admin Workstations / VMNet 2 IT Access
 switchport access vlan 80
 switchport mode access
 no shut
!
interface GigabitEthernet0/11
 description MP-L3SW-01 / G0/10-12 to Admin Workstations / VMNet 2 IT Access
 switchport access vlan 80
 switchport mode access
 no shut
!
interface GigabitEthernet0/12
 description MP-L3SW-01 / G0/10-12 to Admin Workstations / VMNet 2 IT Access
 switchport access vlan 80
 switchport mode access
 no shut
!
interface GigabitEthernet0/13
 description MP-L3SW-01 / G0/13-15 to Admin Workstations / VMNet 1 NetworkManagement
 switchport access vlan 50
 switchport mode access
 no shut
!
interface GigabitEthernet0/14
 description MP-L3SW-01 / G0/13-15 to Admin Workstations / VMNet 1 NetworkManagement
 switchport access vlan 50
 switchport mode access
 no shut
!
interface GigabitEthernet0/15
 description MP-L3SW-01 / G0/13-15 to Admin Workstations / VMNet 1 NetworkManagement
 switchport access vlan 50
 switchport mode access
 no shut
!

```

