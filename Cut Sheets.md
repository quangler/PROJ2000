# MAJTeQ Documentation

## Cut Sheets

### IP Scheme

| VLAN # | VLAN Name          |   *IPv4 Scheme   | IPv6 Scheme | Purpose                                                     |
| :----: | :----------------- | :--------------: | ----------- | :---------------------------------------------------------- |
|   10   | Servers            | 10.site.10.0/24  |             | Virtualized Servers / Services (DC, FS, NMS)                |
|   12   | Server Management  | 10.site.12.0/24  |             | Cluster / Physical Servers                                  |
|   20   | CORP WIFI          | 10.site.20.0/24  |             | Employee WiFi - access to file server                       |
|   30   | GUEST WIFI         | 10.site.30.0/24  |             | Guest WiFi - straight to internet, not touching our network |
|   40   | VOIP               | 10.site.40.0/24  |             | CORP Phones - used with Physical phones                     |
|   50   | Network Management | 10.site.50.0/24  |             | Physical network devices (Switches, Routers, Fortigate)     |
|   60   | Accounting         | 10.site.60.0/24  |             | Department                                                  |
|   70   | Engineering        | 10.site.70.0/24  |             | Department                                                  |
|   80   | IT                 | 10.site.80.0/24  |             | MAJTeQ IT Team - Admin workstations                         |
|   90   | Logistics          | 10.site.90.0/24  |             | Department                                                  |
|  100   | Management Team    | 10.site.100.0/24 |             | Department                                                  |
|  110   | MANUSecure (OT)    | 10.site.110.0/24 |             | "Private" OT clients - need to be segregated, VDI clients   |
|  120   | Operations         | 10.site.120.0/24 |             | Department                                                  |
|  130   | QA                 | 10.site.130.0/24 |             | Department                                                  |
|  140   | Sales              | 10.site.140.0/24 |             | Department                                                  |
|  150   | Students           | 10.site.150.0/24 |             | Department                                                  |
|  400   | CCTV               | 10.site.200.0/24 |             | CCTV Network                                                |
|  666   | Blackhole          |       N/A        |             | NULL                                                        |
|  999   | Native             |       N/A        |             | Native VLAN for networking devices                          |

*Site refers to Site ID 

| Site Name           | Code Name | Site ID |
| ------------------- | --------- | ------- |
| Headquarters        | HQ        | 100     |
| Manufacturing Plant | MP        | 110     |
| Materials Warehouse | MW        | 120     |
| Outbound Warehouse  | OW        | 130     |

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

|  Hostname  | Mgmt IP Address | Role                                              | Hardware Type         | System Version    | Notes                     |
| :--------: | :-------------: | :------------------------------------------------ | :-------------------- | :---------------- | :------------------------ |
|  MP-FW-01  |   10.110.50.1   | Primary Firewall / Distribution Router            | Fortigate 100D        | v7.0.14 build0601 | Active High Availability  |
|  MP-FW-02  |   10.110.50.2   | Secondary Firewall / Distribution Router          | Fortigate 100D        | v7.0.14 build0601 | Passive High Availability |
| MP-L3SW-01 |   10.110.50.3   | Core Layer 2 Switch - Infrastructure Distribution | Cisco WS-C3560X-24    | IOS 15.2(4)E7     |                           |
| MP-L3SW-02 |   10.110.50.4   | Core Layer 2 Switch - Infrastructure Distribution | Cisco WS-C3560X-24    | IOS 15.2(4)E7     |                           |
| MP-L2SW-01 |   10.110.50.5   | Department Access Layer 2 Switch                  | Cisco WS-C2960-24TT-L | IOS 15.0(2)SE10a  |                           |
| MP-L2SW-02 |   10.110.50.6   | Department Access Layer 2 Switch                  | Cisco WS-C2960-24TT-L | IOS 15.0(2)SE10a  |                           |

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