- [Housekeeping](#housekeeping)
  - [L2](#l2)
  - [L3](#l3)
  - [Router](#router)

# Housekeeping

## L2/L3

```
hostname XXXXXX
!
enable secret majteq
username admin password majteq
service password-encryption
spanning-tree mode rapid-pvst
!
ip domain-name team5.ca
!
line console 0
 logging synchronous
!
crypto key generate rsa modulus 1024
ip ssh version 2
!
ip access-list standard ForSSH
 permit 10.100.50.0 0.0.0.255
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
interface vlan 50
 ip address 192.168.50.xx 255.255.255.0
 no shut
!
ip default-gateway 10.100.50.1
!
end
write
```

```

## Router

```
hostname R1
line con 0
 logg syn
!
interface f0/0
 no ip address
 no shutdown
!
int f0/0.11
 encapsulation dot1q 11
 ip address 192.168.11.254 255.255.255.0
 ip help-address 192.168.15.250

int f0/0.12
 encapsulation dot1q 12
 ip address 192.168.12.254 255.255.255.0
 ip help-address 192.168.15.250

int f0/0.13
 encapsulation dot1q 13
 ip address 192.168.13.254 255.255.255.0
 ip help-address 192.168.15.250
!
