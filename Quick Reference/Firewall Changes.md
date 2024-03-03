
| Hostname | IP | VLAN - Desc. | user | password |
| ---- | ---- | ---- | ---- | ---- |
| HQ-FW-01 | 10.100.50.1 | 50 - Management | admin | majteq |
| HQ-FW-02 | 10.100.50.2 | 50 - Management | admin | majteq |
```Multi-VDOM
config system global
set vdom-mode multi-vdom
end
#type “y” to continue
```


## HQ-FW-01
removing `internal5` from internal vlan switch on root interfaces
> need to move to internal 3 `192.168.1.99` 

`internal5` - alias `Management`
Role - LAN
Manual IP - `10.100.50.1/24`
create address object matching subnet :check:
all the administrative access except `security fabric connection`

removed `a` and `b` from fortilink
created a VDOM called `HQ_VDOM`

### HA
Active-Passive - 200 priority (HQ-FW-01)
HA group name - `HQ_Cluster` - `majteq`
session pickup - on
heartbeat interfaces: `a` & `b`
heartbeat interface priority - both set to 50


### Housekeeping
set time to MST
changed hostname to `HQ-FW-01`


## HQ-FW-02
hostname - `HQ-FW-02`
time set to MST

removed `a` and `b` from fortilink

### HA
active-passive - 100 priority (HQ-FW-02)
ha group name `HQ_Cluster` - `majteq`
session pickup - on
heartbeat interfaces: `a` & `b`
heartbeat interface priority - both set to 50

---
# ROUTING (update march 02)

- Removed static routes
- only one default root for each VDOM
- Implemented OSPF with VDOM link root-to-HQ
- Updated policies with only one VDOM link (root-to-HQ)

| Name       | Type      | Int0 Name   | Int0 IP        | Int1 Name   | Int1 IP        |
| ---------- | --------- | ----------- | -------------- | ----------- | -------------- |
| Root To HQ | VDOM Link | Root to HQ0 | 172.16.50.8/30 | Root to HQ1 | 172.16.50.9/24 |
#### SNMP + RADIUS Policies
Each of the VDOM Links needed a policy made in the HQ VDOM to ensure functionality.

| Name                               | From       | To             | Source            | Destination            | Service                                                |
| ---------------------------------- | ---------- | -------------- | ----------------- | ---------------------- | ------------------------------------------------------ |
| Network Management VLAN            | Root to HQ | Cluster_VLAN12 | NM_VLAN50 Address | Cluster_VLAN12 Address | SNMP, DCE-RPC, PING, SMTP, SMTPS, SYSLOG               |
| Network Management to Servers VLAN | Root to HQ | Servers_VLAN   | NM_VLAN50 Address | Servers_VLAN Address   | SNMP, DCE-RPC, PING, SMTP, SMTPS, SYSLOG, RADIUS, LDAP |
Cluster_VLAN12 = `10.100.12.1/24` (VLAN Interface)
Servers_VLAN = `10.100.10.1/24` (VLAN Interface)
SNMP Server = `10.100.50.50/32`
Radius Server = `10.100.10.5/32`
DC = `10.100.10.10/32`

### SSH 

| Name                          | From       | To        | Source         | Destination    | Service |
| ----------------------------- | ---------- | --------- | -------------- | -------------- | ------- |
| Network Management to IT_VLAN | Root to HQ | IT_VLAN80 | 10.100.50.0/24 | 10.100.80.0/24 | SSH     |
CISCO ACL = sshIN [10.100.80.0 0.0.0.255]

---

### SNMP Server Config
SNMP Server is on VLAN50 (Management VLAN) which is in the Root VDOM.
The services the SNMP Server monitor are on VLAN10 and VLAN12 (Servers VLAN and Cluster VLAN).
To make this link happen, two VDOM Links were made:
- root-srvman0/1 | `172.16.12.10 `(Root) & `172.16.12.9` (HQ)
- root-to-srv0/1 | `172.16.10.10` (Root) & `172.16.10.9` (HQ)
#### SNMP Policies
Each of the VDOM Links needed a policy made in the HQ VDOM to ensure functionality.

| Name                        | From         | To             | Source      | Destination            | Service                                  |
| --------------------------- | ------------ | -------------- | ----------- | ---------------------- | ---------------------------------------- |
| SNMP Server to Cluster VLAN | root-srvman1 | Cluster_VLAN12 | SNMP Server | Cluster_VLAN12 Address | SNMP, DCE-RPC, PING, SMTP, SMTPS, SYSLOG |
| SNMP Server to Servers VLAN | root-to-srv1 | Servers_VLAN   | SNMP Server | Servers_VLAN Address   | SNMP, DCE-RPC, PING, SMTP, SMTPS, SYSLOG |
Cluster_VLAN12 = `10.100.12.1/24` (VLAN Interface)
Servers_VLAN = `10.100.10.1/24` (VLAN Interface)
SNMP Server = `10.100.50.50/32`

## Static Routes
Static Routes have been used for multiple purposes, namely:
SNMP, FortiGuard access to the internet, and Management network access for various VLANs.
### Root

| Destination    | Gateway IP  | Interface    | Comments                                              |
| -------------- | ----------- | ------------ | ----------------------------------------------------- |
| 0.0.0.0/0      | 172.16.50.9 | Root to HQ0  | FortiGuard Access to WAN from Management              |
| 10.100.12.0/24 | 172.16.12.9 | root-srvman0 | SNMP Access to Server Management VLAN                 |
| 10.100.10.0/24 | 172.16.10.9 | root-to-srv0 | SNMP Access to Servers VLAN                           |
| 10.100.80.0/24 | 172.16.80.9 | root-to-IT0  | Management Subnet to IT VLAN                          |
| 10.100.10.5/32 | 172.16.10.9 | root-to-srv0 | RADIUS Access from Management Subnet to RADIUS Server |

### HQ

| Destination     | Gateway IP   | Interface    | Comments                                               |
| --------------- | ------------ | ------------ | ------------------------------------------------------ |
| 0.0.0.0/0       | 10.10.79.254 | wan1         | Internet                                               |
| 10.100.50.1/32  | 172.16.50.10 | Root to HQ1  | FortiGuard Access from Management to WAN               |
| 10.100.50.50/32 | 172.16.12.10 | root-srvman1 | SNMP Access from SNMP Server to Server Management VLAN |
| 10.100.50.50/32 | 172.16.10.10 | root-to-srv1 | SNMP Access from SNMP Server to Servers VLAN           |
| 10.100.50.0/24  | 172.16.10.10 | root-to-srv1 | RADIUS Access from Servers to Management Subnet        |

## VDOM Links
VDOM links are to connect the Root VDOM to the HQ_VDOM.
Root VDOM contains the Management subnet, which is in the `10.100.50.0/24` range.
The VDOM links have the purpose of connecting various VLANs that are on the HQ_VDOM to the Management subnet in the Root VDOM.

| Name        | Type      | Int0 Name    | Int0 IP         | Int1 Name    | Int1 IP        |
| ----------- | --------- | ------------ | --------------- | ------------ | -------------- |
| Root To HQ  | VDOM Link | Root to HQ0  | 172.16.50.10/24 | Root to HQ1  | 172.16.50.9/24 |
| root-srvman | VDOM Link | root-srvman0 | 172.16.12.10/24 | root-srvman1 | 172.16.12.9/24 |
| root-to-IT  | VDOM Link | root-to-IT0  | 172.16.80.10/24 | root-to-IT1  | 172.16.80.9/24 |
| root-to-srv | VDOM Link | root-to-srv0 | 172.16.10.10/24 | root-to-srv1 | 172.16.10.9/24 |



samba
upd 443
smb
DNS

