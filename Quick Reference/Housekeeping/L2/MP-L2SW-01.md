```L2-Switch-Config
hostname MP-L2SW-01 !!FILL IN HERE
!
enable secret majteq
username admin password majteq !! this will be changed later with RADIUS
service password-encryption
spanning-tree mode rapid-pvst
spanning-tree vlan 10,12,20,30,40,50,60,70,80,90,100,110,120,130,140,150,400,666,999
!
ip domain-name team5.ca
!
line console 0
 logging synchronous
!
banner motd @ Welcome to the MP-L2SW-01, lets make the MAJTeQ happen! @
!
banner login @ WARNING: Unauthorized access prohibited! @
!
!SSH Section
!
crypto key generate rsa modulus 1024
ip ssh version 2
!
ip access-list standard ForSSH
 permit 10.110.50.0 0.0.0.255
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
!
!
interface Vlan50
 description Network Management
 ip address 10.110.50.5 255.255.255.0
 no shut
!
ip forward-protocol nd
ip http server
ip http authentication local
ip http secure-server
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
int range f0/1-24
 shut
!
int g0/1
 description MP-L2SW-01 / G0/1 to MP-L3SW-02 / G1/0/8 - Client Trunk
 switchport trunk encapsulation dot1q
 switchport mode trunk
 switchport trunk native vlan 999
!
int g0/2
 description MP-L2SW-01 / G0/2 to MP-L3SW-01 / G1/0/7 - Client Trunk
 switchport trunk encapsulation dot1q
 switchport mode trunk
 switchport trunk native vlan 999
!
```

