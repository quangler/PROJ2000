# MAJTeQ Documentation

## Cut Sheets

### IP Scheme

| VLAN # | VLAN Name          |   *IPv4 Scheme   | IPv6 Scheme | Purpose                                                     |
| :----: | :----------------- | :--------------: | ----------- | :---------------------------------------------------------- |
|   10   | Servers            | 10.site.10.X/24  |             | Virtualized Servers / Services (DC, FS, NMS)                |
|   12   | Server Management  | 10.site.12.X/24  |             | Cluster / Physical Servers                                  |
|   20   | CORP WIFI          | 10.site.20.X/24  |             | Employee WiFi - access to file server                       |
|   30   | GUEST WIFI         | 10.site.30.X/24  |             | Guest WiFi - straight to internet, not touching our network |
|   40   | VOIP               | 10.site.40.X/24  |             | CORP Phones - used with Physical phones                     |
|   50   | Network Management | 10.site.50.X/24  |             | Physical network devices (Switches, Routers, Fortigate)     |
|   60   | Accounting         | 10.site.60.X/24  |             | Department                                                  |
|   70   | Engineering        | 10.site.70.X/24  |             | Department                                                  |
|   80   | IT                 | 10.site.80.X/24  |             | MAJTeQ IT Team - Admin workstations                         |
|   90   | Logistics          | 10.site.90.X/24  |             | Department                                                  |
|  100   | Management Team    | 10.site.100.X/24 |             | Department                                                  |
|  110   | MANUSecure (OT)    | 10.site.110.X/24 |             | "Private" OT clients - need to be segregated, VDI clients   |
|  120   | Operations         | 10.site.120.X/24 |             | Department                                                  |
|  130   | QA                 | 10.site.130.X/24 |             | Department                                                  |
|  140   | Sales              | 10.site.140.X/24 |             | Department                                                  |
|  150   | Students           | 10.site.150.X/24 |             | Department                                                  |
|  400   | CCTV               | 10.site.200.X/24 |             | CCTV Network                                                |
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

