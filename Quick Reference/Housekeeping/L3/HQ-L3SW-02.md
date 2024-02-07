# L3 Switch Config - MAJTeQ
## Project Name: UltraSol Energy Solutions Merger
**Assigned Members:** Quinn Parent, Matt Telford
**Date Last Modified:** Feb 7, 2024  
**Version:** 1.01  

---
This is a temporary file for the time being, I will continue to update it as I continue working on it.
```L3-Switch-Config
hostname HQ-L3SW-02 !!FILL IN HERE
!
enable secret majteq
username admin password majteq !! this will be changed later with RADIUS
service password-encryption
spanning-tree mode rapid-pvst
!
ip domain-name team5.ca
!
line console 0
 logging synchronous
!
!SSH Section
!
crypto key generate rsa modulus 1024
ip ssh version 2
!
ip access-list standard ForSSH
 permit 10.100.40.0 255.255.255.0 ! CHANGE THIS FOR EACH SITE
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
ip routing
!
!
!vlan 40
! name Management
int vlan 40
 ip address 10.100.40.1 255.255.255.0 !PLACEHOLDER CHANGE IP
! ip helper-address 10.100.10.25 !PLACEHOLDER CHANGE IP
 no shut
!
!
vlan 10
 name CORP-WIFI
vlan 20
 name GUEST-WIFI
vlan 30
 name General VoIP
vlan 40
 name Management
vlan 50
 name Administration
vlan 60
 name HR
vlan 70
 name Engineering
vlan 80
 name Finance
vlan 90
 name Sales
vlan 100
 name Operations
vlan 110
 name Industrial
vlan 120
 name MANUSecure
vlan 666
 name BLACK HOLE
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
```
