```L3-Switch-Config
hostname !!FILL IN HERE
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
 permit 10.100.10.0 255.255.255.0 ! CHANGE THIS FOR EACH SITE
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
!vlan 2
! name CORP WiFi
!int vlan 2
! ip address 10.100.3.254 255.255.255.0 !PLACEHOLDER CHANGE IP
! ip helper-address 10.100.10.25 !PLACEHOLDER CHANGE IP
! no shut
!
!
!vlan 3
! name GUEST WiFi
!vlan 4
! name General VoIP
!vlan 10
! name Management
!vlan 20
! name Administration
!vlan 30
! name HR
!vlan 40
! name Engineering
!vlan 50
! name Finance
!vlan 60
! name Sales
!vlan 70
! name Operations
!vlan 80
! name Industrial
!vlan 99
! name NATIVE
!vlan 110
! name MANUSecure
!vlan 999
! name BLACK HOLE
!
```
