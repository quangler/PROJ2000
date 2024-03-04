Current configuration : 8234 bytes
!
! Last configuration change at 13:43:53 UTC Sat Feb 10 2024 by admin
!
version 16.3
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
service password-encryption
no platform punt-keepalive disable-kernel-core
!
hostname HQ-L3SW-02
!
!
vrf definition Mgmt-vrf
 !
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
enable secret 5 $1$vBQQ$jB1GtwjsfACqxy.eWMeD70
!
no aaa new-model
switch 1 provision ws-c3650-24ps
!
!
!
!
!
!
!
ip domain name team5.ca
!
!
!
!
!
!
!
!
!
!
!
license boot level ipbasek9
diagnostic bootup level minimal
spanning-tree mode rapid-pvst
spanning-tree extend system-id
!
!
username admin password 7 0506070535495F
!
redundancy
 mode sso
!
!
!
class-map match-any system-cpp-police-topology-control
  description Topology control
class-map match-any system-cpp-police-sw-forward
  description Sw forwarding, SGT Cache Full, LOGGING
class-map match-any system-cpp-default
  description DHCP snooping, show forward and rest of traffic
class-map match-any system-cpp-police-sys-data
  description Learning cache ovfl, Crypto Control, Exception, EGR Exception, NFL SAMPLED DATA, Gold Pkt, RPF Failed
class-map match-any system-cpp-police-punt-webauth
  description Punt Webauth
class-map match-any system-cpp-police-forus
  description Forus Address resolution and Forus traffic
class-map match-any system-cpp-police-multicast-end-station
  description MCAST END STATION
class-map match-any system-cpp-police-multicast
  description Transit Traffic and MCAST Data
class-map match-any system-cpp-police-l2-control
  description L2 control
class-map match-any system-cpp-police-dot1x-auth
  description DOT1X Auth
class-map match-any system-cpp-police-data
  description ICMP_GEN and BROADCAST
class-map match-any system-cpp-police-control-low-priority
  description ICMP redirect and general punt
class-map match-any system-cpp-police-wireless-priority1
  description Wireless priority 1
class-map match-any system-cpp-police-wireless-priority2
  description Wireless priority 2
class-map match-any system-cpp-police-wireless-priority3-4-5
  description Wireless priority 3,4 and 5
class-map match-any non-client-nrt-class
class-map match-any system-cpp-police-routing-control
  description Routing control
class-map match-any system-cpp-police-protocol-snooping
  description Protocol snooping
!
policy-map port_child_policy
 class non-client-nrt-class
  bandwidth remaining ratio 10
policy-map system-cpp-policy
 class system-cpp-police-data
  police rate 200 pps
 class system-cpp-police-sys-data
  police rate 100 pps
 class system-cpp-police-sw-forward
  police rate 1000 pps
 class system-cpp-police-multicast
  police rate 500 pps
 class system-cpp-police-multicast-end-station
  police rate 2000 pps
 class system-cpp-police-punt-webauth
 class system-cpp-police-l2-control
 class system-cpp-police-routing-control
  police rate 1800 pps
 class system-cpp-police-control-low-priority
 class system-cpp-police-wireless-priority1
 class system-cpp-police-wireless-priority2
 class system-cpp-police-wireless-priority3-4-5
 class system-cpp-police-topology-control
 class system-cpp-police-dot1x-auth
 class system-cpp-police-protocol-snooping
 class system-cpp-police-forus
 class system-cpp-default
!
!
!
!
!
!
!
!
!
!
!
!
!
!
interface GigabitEthernet0/0
 vrf forwarding Mgmt-vrf
 no ip address
 negotiation auto
!
interface GigabitEthernet1/0/1
 description HQ-L3SW-02 / G1/0/1 to  HQ-L3SW-01 / G1/0/1
 switchport trunk native vlan 999
 switchport mode trunk
!
interface GigabitEthernet1/0/2
 description HQ-L3SW-02 / G1/0/2 to  HQ-L3SW-01 / G1/0/2 - LAG
 switchport trunk native vlan 999
 switchport mode trunk
!
interface GigabitEthernet1/0/3
 description HQ-L3SW-02 / G1/0/3 to HQ-FW-01 / Int4 - Routing
 switchport trunk native vlan 999
 switchport mode trunk
!
interface GigabitEthernet1/0/4
 description HQ-L3SW-02 / G1/0/4 to HQ-FW-02 / Int4 - VLANs
 switchport trunk native vlan 999
 switchport mode trunk
!
interface GigabitEthernet1/0/5
 description HQ-L3SW-02 / G1/0/5 to HQ-FW-02 / Int5 - Management
 switchport trunk allowed vlan 50
 switchport mode trunk
!
interface GigabitEthernet1/0/6
 shutdown
!
interface GigabitEthernet1/0/7
 shutdown
!
interface GigabitEthernet1/0/8
 shutdown
!
interface GigabitEthernet1/0/9
 shutdown
!
interface GigabitEthernet1/0/10
 shutdown
!
interface GigabitEthernet1/0/11
 shutdown
!
interface GigabitEthernet1/0/12
 shutdown
!
interface GigabitEthernet1/0/13
 description HQ-L3SW-02 / G1/0/13-17 to Admin Workstations / VMNet
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/14
 description HQ-L3SW-02 / G1/0/13-17 to Admin Workstations / VMNet
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/15
 description HQ-L3SW-02 / G1/0/13-17 to Admin Workstations / VMNet
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/16
 description HQ-L3SW-02 / G1/0/13-17 to Admin Workstations / VMNet
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/17
 description HQ-L3SW-02 / G1/0/13-17 to Admin Workstations / VMNet
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/18
 shutdown
!
interface GigabitEthernet1/0/19
 shutdown
!
interface GigabitEthernet1/0/20
 shutdown
!
interface GigabitEthernet1/0/21
 shutdown
!
interface GigabitEthernet1/0/22
 shutdown
!
interface GigabitEthernet1/0/23
 description HQ-L3SW-02 / G1/0/23 to HQ-HV-01 / eth0 - Servers
 switchport access vlan 10
 switchport mode access
!
interface GigabitEthernet1/0/24
 description HQ-L3SW-02 / G1/0/24 to HQ-HV-02 / eth1 - Servers
 switchport access vlan 10
 switchport mode access
!
interface GigabitEthernet1/1/1
 shutdown
!
interface GigabitEthernet1/1/2
 shutdown
!
interface GigabitEthernet1/1/3
 shutdown
!
interface GigabitEthernet1/1/4
 shutdown
!
interface Vlan1
 no ip address
 shutdown
!
interface Vlan50
 ip address 10.100.50.4 255.255.255.0
!
ip forward-protocol nd
ip http server
ip http authentication local
ip http secure-server
!
ip ssh version 2
!
ip access-list standard ForSSH
 permit 10.100.50.0 0.0.0.255
 permit 10.100.80.0 0.0.0.255
!
ip access-list extended AutoQos-4.0-wlan-Acl-Bulk-Data
 permit tcp any any eq 22
 permit tcp any any eq 465
 permit tcp any any eq 143
 permit tcp any any eq 993
 permit tcp any any eq 995
 permit tcp any any eq 1914
 permit tcp any any eq ftp
 permit tcp any any eq ftp-data
 permit tcp any any eq smtp
 permit tcp any any eq pop3
ip access-list extended AutoQos-4.0-wlan-Acl-MultiEnhanced-Conf
 permit udp any any range 16384 32767
 permit tcp any any range 50000 59999
ip access-list extended AutoQos-4.0-wlan-Acl-Scavanger
 permit tcp any any range 2300 2400
 permit udp any any range 2300 2400
 permit tcp any any range 6881 6999
 permit tcp any any range 28800 29100
 permit tcp any any eq 1214
 permit udp any any eq 1214
 permit tcp any any eq 3689
 permit udp any any eq 3689
 permit tcp any any eq 11999
ip access-list extended AutoQos-4.0-wlan-Acl-Signaling
 permit tcp any any range 2000 2002
 permit tcp any any range 5060 5061
 permit udp any any range 5060 5061
ip access-list extended AutoQos-4.0-wlan-Acl-Transactional-Data
 permit tcp any any eq 443
 permit tcp any any eq 1521
 permit udp any any eq 1521
 permit tcp any any eq 1526
 permit udp any any eq 1526
 permit tcp any any eq 1575
 permit udp any any eq 1575
 permit tcp any any eq 1630
 permit udp any any eq 1630
 permit tcp any any eq 1527
 permit tcp any any eq 6200
 permit tcp any any eq 3389
 permit tcp any any eq 5985
 permit tcp any any eq 8080
!
!
!
control-plane
 service-policy input system-cpp-policy
!
!
no vstack
!
line con 0
 logging synchronous
 stopbits 1
line aux 0
 stopbits 1
line vty 0 4
 access-class ForSSH in
 login local
 transport input ssh
line vty 5 15
 access-class ForSSH in
 login local
 transport input ssh
!
!
wsma agent exec
!
wsma agent config
!
wsma agent filesys
!
wsma agent notify
!
!
ap dot11 airtime-fairness policy-name Default 0
ap group default-group
ap hyperlocation ble-beacon 0
ap hyperlocation ble-beacon 1
ap hyperlocation ble-beacon 2
ap hyperlocation ble-beacon 3
ap hyperlocation ble-beacon 4
end
