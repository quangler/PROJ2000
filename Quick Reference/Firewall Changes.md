
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

# this has been replaced by a new thing. ignore.
