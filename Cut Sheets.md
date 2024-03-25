# MAJTeQ Documentation
  *Last updated March. 21
  Todo:
  - RT server
  - stuff at quinns
  - HCI / Storage cutsheet #aidan
  
- [MAJTeQ Documentation](#majteq-documentation)
  - [Cut Sheets](#cut-sheets)
    - [IPv4 Scheme](#ipv4-scheme)
    - [IPv6 Scheme](#ipv6-scheme)
    - [Headquarters Network](#headquarters-network)
    - [Manufacturing Plant Network](#manufacturing-plant-network)
    - [HQ Firewall](#hq-firewall)
      - [VDOMs](#vdoms)
        - [Guest\_VDOM](#guest_vdom)
        - [HQ\_VDOM](#hq_vdom)
        - [Man\_VDOM](#man_vdom)
        - [WAN\_VDOM](#wan_vdom)
    - [MP Firewall](#mp-firewall)
      - [VDOMs](#vdoms-1)
        - [Guest\_VDOM](#guest_vdom-1)
        - [MP\_VDOM](#mp_vdom)
        - [Man\_VDOM](#man_vdom-1)
        - [WAN\_VDOM](#wan_vdom-1)
    - [Hardware](#hardware)
    - [Servers](#servers)
  - [Virtual Machines](#virtual-machines)
    - [HQ-RD-01](#hq-rd-01)
    - [HQ-ISCI-QUO](#hq-isci-quo)
    - [HQ-DC-01](#hq-dc-01)
    - [HQ-RMM-01](#hq-rmm-01)
    - [HQ-BU-01](#hq-bu-01)
    - [HQ-PKI-01](#hq-pki-01)
    - [HQ-FS-01](#hq-fs-01)
    - [HQ-DS-01](#hq-ds-01)
    - [HQ-CLUSTER](#hq-cluster)
    - [HQ-NM-01](#hq-nm-01)
    - [MP-DC-02](#mp-dc-02)
    - [MP-FS-01](#mp-fs-01)
  - [Inventory](#inventory)
    - [Firewall](#firewall)
    - [Layer 2/3 Switch](#layer-23-switch)
    - [Server](#server)
    - [Workstation](#workstation)

## Cut Sheets

### IPv4 Scheme

| VLAN # | VLAN Name          |  *IPv4 Address   | *IPv4 Gateway | Description                                                 |
| :----: | :----------------- | :--------------: | ------------- | :---------------------------------------------------------- |
|   10   | Servers            | 10.site.10.0/24  | 10.site.10.1  | Virtualized Servers / Services (DC, FS, NMS)                |
|   12   | Server Management  | 10.site.12.0/24  | 10.site.12.1  | Cluster / Physical Servers                                  |
|   20   | CORP WIFI          | 10.site.20.0/24  | 10.site.20.1  | Employee WiFi - access to file server                       |
|   30   | GUEST WIFI         | 10.site.30.0/24  | 10.site.30.1  | Guest WiFi - straight to internet, not touching our network |
|   40   | VOIP               | 10.site.40.0/24  | 10.site.40.1  | CORP Phones - used with Physical phones                     |
|   50   | Network Management | 10.site.50.0/24  | 10.site.50.1  | Physical network devices (Switches, Routers, Fortigate)     |
|   60   | Accounting         | 10.site.60.0/24  | 10.site.60.1  | Department                                                  |
|   70   | Engineering        | 10.site.70.0/24  | 10.site.70.1  | Department                                                  |
|   80   | IT                 | 10.site.80.0/24  | 10.site.80.1  | MAJTeQ IT Team - Admin workstations                         |
|   90   | Logistics          | 10.site.90.0/24  | 10.site.90.1  | Department                                                  |
|  100   | Management Team    | 10.site.100.0/24 | 10.site.100.1 | Department                                                  |
|  110   | MANUSecure (OT)    | 10.site.110.0/24 | 10.site.110.1 | "Private" OT clients - need to be segregated, VDI clients   |
|  120   | Operations         | 10.site.120.0/24 | 10.site.120.1 | Department                                                  |
|  130   | QA                 | 10.site.130.0/24 | 10.site.130.1 | Department                                                  |
|  140   | Sales              | 10.site.140.0/24 | 10.site.140.1 | Department                                                  |
|  150   | Students           | 10.site.150.0/24 | 10.site.150.1 | Department                                                  |
|  400   | CCTV               | 10.site.200.0/24 | 10.site.200.1 | CCTV Network                                                |
|  666   | Blackhole          |       ---        | ---           | NULL                                                        |
|  999   | Native             |       ---        | ---           | Native VLAN for networking devices                          |

*Site refers to Site ID 

| Site Name           | Code Name | Site ID |
| ------------------- | --------- | ------- |
| Headquarters        | HQ        | 100     |
| Manufacturing Plant | MP        | 110     |
| Materials Warehouse | MW        | 120     |
| Outbound Warehouse  | OW        | 130     |

### IPv6 Scheme

| VLAN | Assigned Internal IPv6 Network | External ISP Connected Global IPv6 Interface | Link-Local IPv6 Address |
| ---- | ------------------------------ | -------------------------------------------- | ----------------------- |
| HQ   | 2620:fc:0:d3e0::/64            | 2620:fc:0:d307::98/64                        | FE80::98                |
| 50   | 2620:fc:0:d3e1::/64            | 2620:fc:0:d307::9C/64                        | FE80::9C                |
| 10   | 2620:fc:0:d3e2::/64            | 2620:fc:0:d307::A8/64                        | FE80::A8                |
| 80   | 2620:fc:0:d3e3::/64            | 2620:fc:0:d307::AC/64                        | FE80::AC                |

### Headquarters Network

|  Hostname  | Mgmt IP Address | Role                                              | Hardware Type         | System Version    | Notes                     |
| :--------: | :-------------: | :------------------------------------------------ | :-------------------- | :---------------- | :------------------------ |
|  HQ-FW-01  |   10.100.50.1   | Primary Firewall / Distribution Router            | Fortigate 70F         | v7.0.14 build0601 | Active High Availability  |
|  HQ-FW-02  |   10.100.50.2   | Secondary Firewall / Distribution Router          | Fortigate 70F         | v7.0.14 build0601 | Passive High Availability |
| HQ-L3SW-01 |   10.100.50.3   | Core Layer 2 Switch - Infrastructure Distribution | Cisco WS-C3650-24PS   | IOS 16.3.5b       |                           |
| HQ-L3SW-02 |   10.100.50.4   | Core Layer 2 Switch - Infrastructure Distribution | Cisco WS-C3650-24PS   | IOS 16.3.5b       |                           |
| HQ-L2SW-01 |   10.100.50.5   | Department Access Layer 2 Switch                  | Cisco WS-C2960-24TT-L | IOS 15.0(2)SE10a  |                           |
| HQ-L2SW-02 |   10.100.50.6   | Department Access Layer 2 Switch                  | Cisco WS-C2960-24TT-L | IOS 15.0(2)SE10a  |                           |

### Manufacturing Plant Network

|  Hostname  | Mgmt IP Address | Role                                              | Hardware Type         | System Version   | Notes                     |
| :--------: | :-------------: | :------------------------------------------------ | :-------------------- | :--------------- | :------------------------ |
|  MP-FW-01  |   10.110.50.1   | Primary Firewall / Distribution Router            | Fortigate 100D        | v6.2.2 build1010 | Active High Availability  |
|  MP-FW-02  |   10.110.50.2   | Secondary Firewall / Distribution Router          | Fortigate 100D        | v6.2.2 build1010 | Passive High Availability |
| MP-L3SW-01 |   10.110.50.3   | Core Layer 2 Switch - Infrastructure Distribution | Cisco WS-C3560X-24    | IOS 15.2(4)E7    |                           |
| MP-L3SW-02 |   10.110.50.4   | Core Layer 2 Switch - Infrastructure Distribution | Cisco WS-C3560X-24    | IOS 15.2(4)E7    |                           |
| MP-L2SW-01 |   10.110.50.5   | Department Access Layer 2 Switch                  | Cisco WS-C2960-24TT-L | IOS 15.0(2)SE10a |                           |
| MP-L2SW-02 |   10.110.50.6   | Department Access Layer 2 Switch                  | Cisco WS-C2960-24TT-L | IOS 15.0(2)SE10a |                           |

### HQ Firewall

#### VDOMs

| Name       | Management |   NGFW Mode   | Operation Mode | Status  | Interfaces | Notes |
| :--------- | :--------: | :-----------: | :------------: | :-----: | :--------- | :---- |
| Guest_VDOM |     No     | Profile-based |      NAT       | Enabled | INT 2      |       |
| HQ_VDOM    |     No     | Profile-based |      NAT       | Enabled | INT 3-4    |       |
| Man_VDOM   |    Yes     | Profile-based |      NAT       | Enabled | INT 5      |       |
| WAN_VDOM   |     No     | Profile-based |      NAT       | Enabled | WAN 1-2    |       |
| root       |     No     | Profile-based |      NAT       | Enabled | HA A-B     |       |

##### Guest_VDOM

| Name | Type  | Members | IPv4 Address | Admin Access |
| :--- | :---: | :-----: | :----------: | :----------: |
| TBD  |       |         |              |              |

##### HQ_VDOM

| Name            |   Type    | Members                  | IPv4 Address     | Admin Access |
| :-------------- | :-------: | :----------------------- | :--------------- | :----------: |
| Management      | Loopback  | Internal                 | 10.1.1.1/32      |     ALL      |
| HQ-WAN          | VDOM Link | Internal                 | 172.16.100.10/30 |     PING     |
| Man-HQ          | VDOM Link | Internal                 | 172.16.10.10/30  |     PING     |
| Servers_VLAN    |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.10.1/24   |     PING     |
| Cluster_VLAN    |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.12.1/24   |     PING     |
| CORP-WIFI_VLAN  |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.20.1/24   |     PING     |
| VoIP_VLAN       |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.40.1/24   |     PING     |
| Accounting_VLAN |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.60.1/24   |     PING     |
| Engineer_VLAN   |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.70.1/24   |     PING     |
| IT_VLAN         |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.80.1/24   |     PING     |
| Logistics_VLAN  |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.90.1/24   |     PING     |
| MGMTeam_VLAN    |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.100.1/24  |     PING     |
| MANUSecure_VLAN |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.110.1/24  |     PING     |
| Operations_VLAN |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.120.1/24  |     PING     |
| QA_VLAN         |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.130.1/24  |     PING     |
| Sales_VLAN      |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.140.1/24  |     PING     |
| Students_VLAN   |   VLAN    | HQ VLAN Switch (INT 3-4) | 10.100.150.1/24  |     PING     |

##### Man_VDOM

| Name      | Type               | Members  | IPv4 Address   | Admin Access           |
| --------- | ------------------ | -------- | -------------- | ---------------------- |
| internal5 | Physical Interface | INT 5    | 10.100.50.1/24 | PING, HTTPS, SSH, SNMP |
| Man-WAN   | VDOM Link          | Internal | 172.16.5.10/30 | PING                   |
| Man-HQ    | VDOM Link          | Internal | 172.16.10.9/30 | PING                   |

##### WAN_VDOM

| Name      | Type               | Members  | IPv4 Address    | Admin Access |
| --------- | ------------------ | -------- | --------------- | ------------ |
| wan1      | Physical Interface | WAN 1    | 10.10.76.0/20   | PING         |
| wan2      | Physical Interface | WAN 2    | 0.0.0.0/0       | PING         |
| Guest-WAN | VDOM Link          | Internal | 172.16.30.10/30 | PING         |
| HQ-WAN    | VDOM Link          | Internal | 172.16.100.9/30 | PING         |
| Man-WAN   | VDOM Link          | Internal | 172.16.5.9/30   | PING         |

### MP Firewall

#### VDOMs

| Name       | Management |   NGFW Mode   | Operation Mode | Status  | Interfaces | Notes |
| :--------- | :--------: | :-----------: | :------------: | :-----: | :--------- | :---- |
| Guest_VDOM |     No     | Profile-based |      NAT       | Enabled | INT 2      |       |
| MP_VDOM    |     No     | Profile-based |      NAT       | Enabled | INT 3-4    |       |
| Man_VDOM   |    Yes     | Profile-based |      NAT       | Enabled | INT 5      |       |
| WAN_VDOM   |     No     | Profile-based |      NAT       | Enabled | WAN 1-2    |       |
| root       |     No     | Profile-based |      NAT       | Enabled | HA 1-2     |       |

##### Guest_VDOM

| Name | Type  | Members | IPv4 Address | Admin Access |
| :--- | :---: | :-----: | :----------: | :----------: |
| TBD  |       |         |              |              |

##### MP_VDOM

| Name            | Type                | Members                  | IPv4 Address     | Admin Access      |
| :-------------- | :------------------ | :----------------------- | :--------------- | :---------------- |
| MP-Man          | VDOM Link Interface | Internal                 | 172.16.10.14/30  | PING              |
| MP-WAN_L0       | VDOM Link Interface | Internal                 | 172.16.100.14/30 | PING              |
| Servers_VLAN    | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.10.1/24   | PING              |
| CORP-WIFI_VLAN  | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.20.1/24   | PING              |
| VoIP_VLAN       | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.40.1/24   | PING              |
| Accounting_VLAN | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.60.1/24   | PING              |
| Engineer_VLAN   | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.70.1/24   | PING              |
| IT_VLAN         | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.80.1/24   | PING, HTTPS, HTTP |
| Logistics_VLAN  | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.90.1/24   | PING              |
| MANUSecure_VLAN | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.110.1/24  | PING              |
| MGMTeam_VLAN    | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.100.1/24  | PING              |
| Operations_VLAN | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.120.1/24  | PING              |
| QA_VLAN         | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.130.1/24  | PING              |
| Sales_VLAN      | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.140.1/24  | PING              |
| Students_VLAN   | VLAN                | MP VLAN Switch (INT 3-4) | 10.110.150.1/24  | PING              |

##### Man_VDOM

| Name       | Type               | Members  | IPv4 Address    | Admin Access           |
| ---------- | ------------------ | -------- | --------------- | ---------------------- |
| Management | Physical Interface | INT 5    | 10.110.50.1/24  | PING, HTTPS, SSH, SNMP |
| Man-WAN    | VDOM Link          | Internal | 172.16.5.14/30  | PING                   |
| MP-Man     | VDOM Link          | Internal | 172.16.10.13/30 | PING                   |

##### WAN_VDOM

| Name      | Type               | Members  | IPv4 Address     | Admin Access |
| --------- | ------------------ | -------- | ---------------- | ------------ |
| wan1      | Physical Interface | WAN 1    | 10.10.77.0/20    | PING         |
| wan2      | Physical Interface | WAN 2    | 0.0.0.0/0        | PING         |
| Guest-WAN | VDOM Link          | Internal | 172.16.30.13/30  | PING         |
| MP-WAN    | VDOM Link          | Internal | 172.16.100.13/30 | PING         |
| Man-WAN   | VDOM Link          | Internal | 172.16.5.13/30   | PING         |

### Hardware

|   Hostname   | VLAN |   IP Address    | Role                      | Hardware Type       | Operating System               |
| :----------: | ---- | :-------------: | :------------------------ | :------------------ | :----------------------------- |
|   HQ-HV-01   | 12   | 10.100.12.9/30  | Server Node 1             | Dell PowerEdge R730 | Windows Server 2022 Datacenter |
|   HQ-HV-02   | 12   | 10.100.12.10/30 | Server Node 2             | Dell PowerEdge R730 | Windows Server 2022 Datacenter |
| AidanAdminWS | 80   | 10.100.80.17/24 | Aidan's Admin workstation | VMWare Workstation  | Windows 11 Pro                 |
| JamieAdminWS | 80   | 10.100.80.18/24 | Jamie's Admin workstation | VMWare Workstation  | Windows 11 Pro                 |
| QuinnAdminWS | 80   | 10.100.80.19/24 | Quinn's Admin workstation | VMWare Workstation  | Windows 11 Pro                 |
| MattAdminWS  | 80   | 10.100.80.20/24 | Matt's Admin workstation  | VMWare Workstation  | Windows 11 Pro                 |
| TaqiAdminWS  | 80   | 10.100.80.22/24 | Taqi's Admin workstation  | VMWare Workstation  | Windows 11 Pro                 |

### Servers

| Hostname    | VLAN  | IPv4 Address     | IPv6 Address | Description                                                  |
| :---------- | :---: | :--------------- | ------------ | :----------------------------------------------------------- |
| HQ-RD-01    |  10   | 10.100.10.5/24   |              | RADIUS Server                                                |
| HQ-ISCI-QUO |  10   | 10.100.10.7/24   |              | Cluster Quorum Storage Server                                |
| HQ-DC-01    |  10   | 10.100.10.10/24  |              | Domain Controller 1 on HQ side                               |
| HQ-RMM-01   |  10   | 10.100.10.16/24  |              | For RMM tool                                                 |
| HQ-BU-01    |  10   | 10.100.10.15/24  |              | Backup Server on HQ Side                                     |
| HQ-PKI-01   |  10   | 10.100.10.19/24  |              | PKI Certificates - Enterprise Root CA                        |
| HQ-FS-01    |  10   | 10.100.10.13/24  |              | File Server on HQ side                                       |
| HQ-DS-01    |  10   | 10.100.10.150/24 |              | Windows Deployment Server                                    |
| HQ-CLUSTER  |  12   | 10.100.12.12/24  |              | Cluster of both Hypervisors                                  |
| HQ-NM-01    |  50   | 10.100.50.50/24  |              | Network Monitoring Server (TFTP and PRTG)                    |
| MP-DC-02    |  10   | 10.110.10.11/24  |              | Domain Controller 2 on MP side                               |
| MP-FS-01    |  10   | 10.110.10.14/24  |              | Secondary File Server on MP side (IP WILL BE UPDATED TO 110) |

## Virtual Machines

### HQ-RD-01

**Overview**

The HQ-RD-01 is the RADIUS Server responsible for managing network access authentication.

**Notes**:
- Provides secure access to the network.
- Ensures only authorized users can connect to the network.
- Logs and tracks network access attempts for security purposes.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname | IP Address  | Subnet Network | VLAN  |     Role      |         OS          | Notes |
| :---------: | :---------: | :------------: | :---: | :-----------: | :-----------------: | :---: |
|  HQ-RD-01   | 10.100.10.5 | 10.100.10.0/24 |  10   | RADIUS Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-ISCI-QUO

**Overview**

The HQ-ISCI-QUO is the Cluster Quorum Storage Server for high availability and fault tolerance.

**Notes**:
- Provides shared storage for clustered servers.
- Ensures continuous operation in case of server failures.
- Maintains data integrity and availability.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname | IP Address  | Subnet Network | VLAN  |             Role              |         OS          | Notes |
| :---------: | :---------: | :------------: | :---: | :---------------------------: | :-----------------: | :---: |
| HQ-ISCI-QUO | 10.100.10.7 | 10.100.10.0/24 |  10   | Cluster Quorum Storage Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-DC-01

**Overview**

The HQ-DC-01 is the Domain Controller 1 on the HQ side, responsible for domain management and authentication.

**Notes**:
- Centralizes user account management.
- Authenticates users and computers in the domain.
- Manages group policies and security settings.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |       Role        |      OS      | Notes |
| :---------: | :----------: | :------------: | :---: | :---------------: | :----------: | :---: |
|  HQ-DC-01   | 10.100.10.10 | 10.100.10.0/24 |  10   | Domain Controller | Debian Linux |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-RMM-01

**Overview**

The HQ-RMM-01 is for the RMM tool.

**Notes**:
- Provides remote monitoring and management of network devices.
- Helps in troubleshooting and maintaining network performance.
- Ensures network security and compliance.

**Credentials**

|   Accounts    |      Password       |  Permissions  |
| :-----------: | :-----------------: | :-----------: |
| tacticaladmin | [<!-- P@ssw0rd -->] | Administrator |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |   Role   |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :------: | :-----------------: | :---: |
|  HQ-RMM-01  | 10.100.10.16 | 10.100.10.0/24 |  10   | RMM Tool | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-BU-01

**Overview**

The HQ-BU-01 is the Backup Server on the HQ side, responsible for data backup and recovery.

**Notes**:
- Ensures data integrity and availability through regular backups.
- Facilitates quick recovery in case of data loss or disaster.
- Implements backup policies and procedures.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |     Role      |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :-----------: | :-----------------: | :---: |
|  HQ-BU-01   | 10.100.10.15 | 10.100.10.0/24 |  10   | Backup Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-PKI-01

**Overview**

The HQ-PKI-01 is the PKI Certificates - Enterprise Root CA server responsible for managing digital certificates for secure communication.

**Notes**:
- Provides secure access to network resources.
- Ensures trust and authenticity in digital transactions.
- Manages digital certificates for encryption and authentication purposes.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |            Role            |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :------------------------: | :-----------------: | :---: |
|  HQ-PKI-01  | 10.100.10.19 | 10.100.10.0/24 |  10   | PKI Certificates - Root CA | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-FS-01

**Overview**

The HQ-FS-01 is the File Server on the HQ side, providing file storage and sharing services.

**Notes**:
- Stores critical data and files for the organization.
- Facilitates collaboration and file sharing among users.
- Implements security measures to protect data integrity.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |    Role     |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :---------: | :-----------------: | :---: |
|  HQ-FS-01   | 10.100.10.13 | 10.100.10.0/24 |  10   | File Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-DS-01

**Overview**

The HQ-DS-01 is the Windows Deployment Server for deploying Windows operating systems over the network.

**Notes**:
- Automates the deployment of Windows OS to new devices.
- Reduces deployment time and effort for IT administrators.
- Supports network-based installations of Windows OS.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address   | Subnet Network | VLAN  |           Role            |         OS          | Notes |
| :---------: | :-----------: | :------------: | :---: | :-----------------------: | :-----------------: | :---: |
|  HQ-DS-01   | 10.100.10.150 | 10.100.10.0/24 |  10   | Windows Deployment Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### HQ-CLUSTER

**Overview**

The HQ-CLUSTER is a cluster of both Hypervisors for high availability and load balancing.

**Notes**:
- Provides virtualization capabilities for the organization.
- Ensures high availability of virtual machines.
- Optimizes resource utilization and performance.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |    Role    |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :--------: | :-----------------: | :---: |
| HQ-CLUSTER  | 10.100.12.12 | 10.100.12.0/24 |  12   | Hypervisor | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |

### HQ-NM-01

**Overview**

The HQ-NM-01 is the Network Monitoring Server responsible for monitoring network performance and managing network devices.

**Notes**:
- Provides TFTP and PRTG services for network monitoring.
- Facilitates network troubleshooting and diagnostics.
- Ensures network security and compliance.

**Credentials**

|       Accounts        |      Password       | Permissions  |
| :-------------------: | :-----------------: | :----------: |
| `team5\AdminAccounts` | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |           Role            |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :-----------------------: | :-----------------: | :---: |
|  HQ-NM-01   | 10.100.50.50 | 10.100.50.0/24 |  50   | Network Monitoring Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |


### MP-DC-02

**Overview**

The MP-DC-02 is Domain Controller 2 on the MP side, responsible for domain management and authentication.

**Notes**:
- Centralizes user account management.
- Authenticates users and computers in the domain.
- Manages group policies and security settings.

**Credentials**

|     Accounts      |      Password       | Permissions  |
| :---------------: | :-----------------: | :----------: |
| Brunsco\mattadmin | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |       Role        |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :---------------: | :-----------------: | :---: |
|  MP-DC-02   | 10.110.10.11 | 10.110.10.0/24 |  10   | Domain Controller | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |

### MP-FS-01

**Overview**

The MP-FS-01 is the Secondary File Server on the MP side, providing additional file storage and sharing services.

**Notes**:
- Stores critical data and files for the organization.
- Facilitates collaboration and file sharing among users.
- Implements security measures to protect data integrity.

**Credentials**

|     Accounts      |      Password       | Permissions  |
| :---------------: | :-----------------: | :----------: |
| Brunsco\mattadmin | [<!-- P@ssw0rd -->] | DOMAIN ADMIN |

**Configuration**

| VM Hostname |  IP Address  | Subnet Network | VLAN  |         Role          |         OS          | Notes |
| :---------: | :----------: | :------------: | :---: | :-------------------: | :-----------------: | :---: |
|  MP-FS-01   | 10.110.10.14 | 10.110.10.0/24 |  10   | Secondary File Server | Windows Server 2022 |       |

|        HOST        |  RAM  |  CPU  | Storage |  NIC  |
| :----------------: | :---: | :---: | :-----: | :---: |
| VMware Workstation | 8 GB  |   2   |  80 GB  |   1   |

## Inventory

### Firewall

| ID# | Hardware Part No. | Location | System Version    | MAC Address       | Serial Number     | Active |
| --- | :---------------- | -------- | :---------------- | :---------------- | :---------------- | :----: |
| F-1 | Fortigate 70F     | Rack 9   | v7.0.14 build0601 | E0:23:FF:FC:A4:07 | FGT70FTK22011984  |   Y    |
| F-2 | Fortigate 70F     | Rack 10  | v7.0.14 build0601 | E0:23:FF:FC:A4:07 | FGT70FTK22009666  |   Y    |
| F-3 | Fortigate 100D    | Rack 9   | v6.2.2 build1010  | 00:09:0F:09:45:08 | FG100D3G14810637  |   Y    |
| F-4 | Fortigate 100D    | Rack 10  | v6.2.2 build1010  | 00:09:0F:09:45:08 | FFG100D3G14810637 |   Y    |

### Layer 2/3 Switch

| ID#  | Hardware Part No.     | Location | System Version   | MAC Address       | Serial Number | Active |
| ---- | :-------------------- | -------- | :--------------- | :---------------- | :------------ | :----: |
| SW-1 | Cisco WS-C3650-24PS   | Rack 9   | IOS 16.3.5b      | 70:69:5A:43:C9:68 | FDO2202I1BQ   |   Y    |
| SW-2 | Cisco WS-C3650-24PS   | Rack 10  | IOS 16.3.5b      | 00:5D:73:3C:3F:68 | FDO2142E1C7   |   Y    |
| SW-3 | Cisco WS-C2960-24TT-L | Rack 9   | IOS 15.0(2)SE10a | 00:1C:B1:B5:42:C1 | FOC1127W21C   |   Y    |
| SW-4 | Cisco WS-C2960-24TT-L | Rack 10  | IOS 15.0(2)SE10a | 00:1C:B1:B5:48:41 | FOC1127W21E   |   Y    |
| SW-5 | Cisco WS-C2960-24TT-L | Rack 9   | IOS 15.0(2)SE10a | 00:1C:B1:B4:8D:80 | FOC1127W1UH   |   Y    |
| SW-6 | Cisco WS-C2960-24TT-L | Rack 10  | IOS 15.0(2)SE10a | 00:21:1B:B6:03:80 | FOC1212ZBF8   |   Y    |
| SW-7 | Cisco WS-C3560X-24    | Rack 9   | IOS 15.2(4)E7    | C4:64:13:D5:67:80 | FDO15511PX5   |   Y    |
| SW-8 | Cisco WS-C3560X-24    | Rack 10  | IOS 15.2(4)E7    | C4:64:13:C7:BB:00 | FDO15510X7J   |   Y    |

### Server

| ID# | Hardware Part No.   | Location | Operating System               | MAC Address       | Serial Number                        | Active |
| --- | :------------------ | -------- | :----------------------------- | :---------------- | :----------------------------------- | :----: |
| S-1 | Dell PowerEdge R730 | Rack 9   | Windows Server 2022 Datacenter | B0-83-FE-E6-07-6B | 1D4DB0CE-7B40-489F-92E1-1FDED70C786D |   Y    |
| S-2 | Dell PowerEdge R730 | Rack 10  | Windows Server 2022 Datacenter | 14-18-77-54-2A-4C | D6D76F80-759A-427F-9C87-C896FA7EAF48 |   Y    |

### Workstation

| ID# | Hardware Part No. | Operating System | MAC Address | Serial Number | Active |
| --- | :---------------- | :--------------- | :---------- | :------------ | :----: |
| W-1 | Dell              | Windows 11 Pro   |             |               |   Y    |
| W-2 | Dell              | Windows 11 Pro   |             |               |   Y    |
| W-3 | Dell              | Windows 11 Pro   |             |               |   Y    |
| W-4 | Dell              | Windows 11 Pro   |             |               |   Y    |
| W-5 | Dell              | Windows 11 Pro   |             |               |   Y    |
