- [Housekeeping](#housekeeping)
  - [L2](#l2)
  - [L3](#l3)
  - [Router](#router)

# Housekeeping

## L2

```
hostname Sw1
!
enable secret cisco
username admin password cisco
service password-encryption
spanning-tree mode rapid-pvst
!
ip domain-name NETW1100.local
!
line console 0
 logging synchronous
!
crypto key generate rsa modulus 1024
ip ssh version 2
!
ip access-list standard ForSSH
 permit 172.16.6.0 255.255.255.0
!
line vty 0 15
 login local
 transport input ssh
 access-class ForSSH in
!
interface vlan 1
 no ip address
 no shutdown
!
vlan 10
 name DataCenter
vlan 20
 name Engineering
vlan 30
 name Finance
vlan 40
 name Health&HR
vlan 50
 name ITServices
vlan 60
 name NetworkManagement
vlan 70
 name Wireless
vlan 80
 name Research&Development
vlan 90
 name Sales&Marketing
vlan 100
 name Voice
vlan 110
 name Native
vlan 120
 name BlackHole
!

interface range f0/22-24
 switchport mode trunk
 switchport trunk native vlan 110
!

interface range f0/1-21
 switchport mode access
 switchport access vlan 10
 switchport voice vlan 60
 spanning-tree portfast
 spanning-tree bpduguard enable
!

interface vlan 50
 ip address 192.168.50.202 255.255.255.0
 no shut
!

ip default-gateway 192.168.50.254
!
end
write
```

## L3

```
!
ip routing
!
interface range f0/1-4
 switchport trunk  encapsulation dot1q
 switchport mode trunk
 switchport trunk native vlan 40
!
interface range f0/13
 switchport mode access
 switchport access vlan 50
 spanning-tree portfast
 spanning-tree bpduguard enable
!
int vlan 10
 ip address 192.168.10.254 255.255.255.0
 ip helper-address 192.168.50.250
 no shut
int vlan 20
 ip address 192.168.20.254 255.255.255.0
 ip helper-address 192.168.50.250
 no shut
!
interface vlan 50
 ip address 192.168.50.254 255.255.255.0
 no shut
!
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
