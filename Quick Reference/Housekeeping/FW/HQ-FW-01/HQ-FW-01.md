## Changes made to Firewall

### Interfaces
**HQ_VDOM**
VLANs are created under the `HQ VLAN Switch`

| Name | Type | IP/Mask | Administrative Access |
| ---- | ---- | ---- | ---- |
| `<VLAN>_VLAN` | `VLAN` | `10.<SITE>.<VLAN #>.1/24` | `PING` |
|  |  | We are using .1 as gateway | Allow PING to gateway for troubleshooting |
### Addresses
**HQ_VDOM**

| Interface Subnet | Details | Interface |
| ---- | ---- | ---- |
| `<VLAN>_VLAN address` | `10.<SITE>.<VLAN #>.0/24` | linked to VLAN interface |
### Firewall Policy
**HQ_VDOM**
#### To Internet
| Name | From | To | Source | Destination | Service | Action | NAT | Security Profiles |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| `<VLAN> Out` | `<VLAN>` | `WAN1` | `<VLAN> address` | `all` | `ALL_ICMP`<br>`Web Access` | `ACCEPT` | `ENABLED` | **DO LATER** |
#### Internally
|Name|From|To|Source|Destination|Service|Action|NAT|Security Profiles|
|---|---|---|---|---|---|---|---|---|
|`<VLAN1> To <VLAN2>` |`<VLAN1>` |`<VLAN2>` |`<VLAN1> address` |`<VLAN2> address` |`ALL_ICMP`  <br>`Windows AD`<br>other needed services |`ACCEPT`|`DISABLED` |**DO LATER**|
