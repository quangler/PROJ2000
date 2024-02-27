```
#config-version=FGT70F-7.0.14-FW-build0601-240206:opmode=0:vdom=1:user=admin
#conf_file_ver=199428216499920
#buildno=0601
#global_vdom=1

config vdom
edit root
next
edit HQ_VDOM
next
end

config global
config system global
    set alias "FortiGate-70F"
    set hostname "HQ-FW-01"
    set switch-controller enable
    set timezone 06
    set vdom-mode multi-vdom
    set virtual-switch-vlan enable
end
config system accprofile
    edit "prof_admin"
        set secfabgrp read-write
        set ftviewgrp read-write
        set authgrp read-write
        set sysgrp read-write
        set netgrp read-write
        set loggrp read-write
        set fwgrp read-write
        set vpngrp read-write
        set utmgrp read-write
        set wifi read-write
    next
end
config system np6xlite
    edit "np6xlite_0"
    next
end
config system interface
    edit "wan1"
        set vdom "HQ_VDOM"
        set mode dhcp
        set allowaccess ping fgfm
        set type physical
        set role wan
        set snmp-index 1
    next
    edit "wan2"
        set vdom "HQ_VDOM"
        set mode dhcp
        set allowaccess ping fgfm
        set type physical
        set role wan
        set snmp-index 2
    next
    edit "dmz"
        set vdom "root"
        set ip 10.10.10.1 255.255.255.0
        set allowaccess ping https fgfm fabric
        set type physical
        set role dmz
        set snmp-index 3
    next
    edit "internal1"
        set vdom "HQ_VDOM"
        set type physical
        set snmp-index 4
    next
    edit "internal2"
        set vdom "HQ_VDOM"
        set type physical
        set snmp-index 5
    next
    edit "internal3"
        set vdom "HQ_VDOM"
        set type physical
        set snmp-index 6
    next
    edit "internal4"
        set vdom "HQ_VDOM"
        set type physical
        set snmp-index 7
    next
    edit "internal5"
        set vdom "root"
        set allowaccess ping https ssh snmp http fgfm radius-acct ftm
        set type physical
        set alias "Management"
        set device-identification enable
        set lldp-transmission enable
        set role lan
        set snmp-index 8
    next
    edit "a"
        set vdom "root"
        set type physical
        set snmp-index 9
    next
    edit "b"
        set vdom "root"
        set type physical
        set snmp-index 10
    next
    edit "modem"
        set vdom "root"
        set mode pppoe
        set status down
        set type physical
        set snmp-index 11
    next
    edit "naf.root"
        set vdom "root"
        set type tunnel
        set src-check disable
        set snmp-index 12
    next
    edit "l2t.root"
        set vdom "root"
        set type tunnel
        set snmp-index 13
    next
    edit "ssl.root"
        set vdom "root"
        set type tunnel
        set alias "SSL VPN interface"
        set snmp-index 14
    next
    edit "internal"
        set vdom "HQ_VDOM"
        set type hard-switch
        set alias "HQ VLAN Switch"
        set stp enable
        set role lan
        set snmp-index 15
    next
    edit "fortilink"
        set vdom "root"
        set fortilink enable
        set ip 10.255.1.1 255.255.255.0
        set allowaccess ping fabric
        set type aggregate
        set lldp-reception enable
        set lldp-transmission enable
        set snmp-index 16
    next
    edit "npu0_vlink0"
        set vdom "root"
        set type physical
        set snmp-index 17
    next
    edit "npu0_vlink1"
        set vdom "root"
        set type physical
        set snmp-index 18
    next
    edit "Management"
        set vdom "root"
        set ip 10.100.50.1 255.255.255.0
        set allowaccess ping https ssh snmp http fgfm radius-acct ftm speed-test
        set device-identification enable
        set role lan
        set snmp-index 19
        set interface "internal5"
        set vlanid 50
    next
    edit "naf.HQ_VDOM"
        set vdom "HQ_VDOM"
        set type tunnel
        set src-check disable
        set snmp-index 20
    next
    edit "l2t.HQ_VDOM"
        set vdom "HQ_VDOM"
        set type tunnel
        set snmp-index 21
    next
    edit "ssl.HQ_VDOM"
        set vdom "HQ_VDOM"
        set type tunnel
        set alias "SSL VPN interface"
        set snmp-index 22
    next
    edit "CORP-WIFI_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.20.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 24
        set interface "internal"
        set vlanid 20
    next
    edit "Servers_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.10.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 23
        set interface "internal"
        set vlanid 10
    next
    edit "VoIP_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.40.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 25
        set interface "internal"
        set vlanid 40
    next
    edit "Accounting_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.60.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 26
        set interface "internal"
        set vlanid 60
    next
    edit "Engineer_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.70.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 27
        set interface "internal"
        set vlanid 70
    next
    edit "IT_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.80.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 28
        set interface "internal"
        set vlanid 80
    next
    edit "Logistics_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.90.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 29
        set interface "internal"
        set vlanid 90
    next
    edit "MGMTeam_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.100.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 30
        set interface "internal"
        set vlanid 100
    next
    edit "MANUSecure_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.110.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 31
        set interface "internal"
        set vlanid 110
    next
    edit "Operations_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.120.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 32
        set interface "internal"
        set vlanid 120
    next
    edit "QA_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.130.1 255.255.255.0
        set allowaccess ping
        set alias "Quality Assurance"
        set device-identification enable
        set role lan
        set snmp-index 33
        set interface "internal"
        set vlanid 130
    next
    edit "Sales_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.140.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 34
        set interface "internal"
        set vlanid 140
    next
    edit "Students_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.150.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 35
        set interface "internal"
        set vlanid 150
    next
    edit "ServerMan_VLAN"
        set vdom "HQ_VDOM"
        set ip 10.100.15.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 36
        set interface "internal"
        set vlanid 15
    next
    edit "Management1"
        set vdom "HQ_VDOM"
        set ip 10.1.1.1 255.255.255.255
        set allowaccess ping https ssh snmp http fgfm radius-acct ftm speed-test
        set type loopback
        set role lan
        set snmp-index 37
    next
    edit "Cluster_VLAN12"
        set vdom "HQ_VDOM"
        set ip 10.100.12.1 255.255.255.0
        set allowaccess ping
        set device-identification enable
        set role lan
        set snmp-index 38
        set interface "internal"
        set vlanid 12
    next
end
config system physical-switch
    edit "sw0"
        set age-val 0
    next
end
config system virtual-switch
    edit "internal"
        set physical-switch "sw0"
        config port
            edit "internal1"
            next
            edit "internal2"
            next
            edit "internal3"
            next
            edit "internal4"
            next
        end
    next
end
config system custom-language
    edit "en"
        set filename "en"
    next
    edit "fr"
        set filename "fr"
    next
    edit "sp"
        set filename "sp"
    next
    edit "pg"
        set filename "pg"
    next
    edit "x-sjis"
        set filename "x-sjis"
    next
    edit "big5"
        set filename "big5"
    next
    edit "GB2312"
        set filename "GB2312"
    next
    edit "euc-kr"
        set filename "euc-kr"
    next
end
config system admin
    edit "admin"
        set accprofile "super_admin"
        set vdom "root"
        config gui-dashboard
            edit 1
                set name "Status"
                set vdom "root"
                set permanent enable
                config widget
                    edit 1
                        set width 1
                        set height 1
                    next
                    edit 2
                        set type licinfo
                        set x-pos 1
                        set width 1
                        set height 1
                    next
                    edit 3
                        set type forticloud
                        set x-pos 2
                        set width 1
                        set height 1
                    next
                    edit 4
                        set type security-fabric
                        set x-pos 3
                        set width 1
                        set height 1
                    next
                    edit 5
                        set type admins
                        set x-pos 4
                        set width 1
                        set height 1
                    next
                    edit 6
                        set type cpu-usage
                        set x-pos 5
                        set width 2
                        set height 1
                    next
                    edit 7
                        set type memory-usage
                        set x-pos 6
                        set width 2
                        set height 1
                    next
                    edit 8
                        set type sessions
                        set x-pos 7
                        set width 2
                        set height 1
                    next
                end
            next
            edit 2
                set name "Security"
                set vdom "root"
                config widget
                    edit 1
                        set type fortiview
                        set width 2
                        set height 1
                        set fortiview-type "compromisedHosts"
                        set fortiview-sort-by "verdict"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                    edit 2
                        set type fortiview
                        set x-pos 1
                        set width 2
                        set height 1
                        set fortiview-type "threats"
                        set fortiview-sort-by "threatLevel"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                    edit 3
                        set type vulnerability-summary
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type host-scan-summary
                        set x-pos 3
                        set width 1
                        set height 1
                    next
                    edit 5
                        set type fortiview
                        set x-pos 4
                        set width 2
                        set height 1
                        set fortiview-type "endpointDevices"
                        set fortiview-sort-by "vulnerabilities"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 3
                set name "Network"
                set vdom "root"
                config widget
                    edit 1
                        set type routing
                        set width 2
                        set height 1
                        set router-view-type "staticdynamic"
                    next
                    edit 2
                        set type dhcp
                        set x-pos 1
                        set width 2
                        set height 1
                    next
                    edit 3
                        set type virtual-wan
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type ipsec-vpn
                        set x-pos 3
                        set width 2
                        set height 1
                    next
                    edit 5
                        set type ssl-vpn
                        set x-pos 4
                        set width 2
                        set height 1
                    next
                end
            next
            edit 4
                set name "Users & Devices"
                set vdom "root"
                config widget
                    edit 1
                        set type device-inventory
                        set width 2
                        set height 1
                        set table-visualization "charts"
                        set device-list-view-type "hardware_vendor"
                    next
                    edit 2
                        set type forticlient
                        set x-pos 1
                        set width 2
                        set height 1
                        set table-visualization "charts"
                        set device-list-online "online"
                        set device-list-telemetry "sending"
                        set device-list-view-type "interface"
                    next
                    edit 3
                        set type firewall-user
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type quarantine
                        set x-pos 3
                        set width 2
                        set height 1
                    next
                    edit 5
                        set type nac-vlans
                        set x-pos 4
                        set width 2
                        set height 1
                    next
                end
            next
            edit 5
                set name "WiFi"
                set vdom "root"
                config widget
                    edit 1
                        set type ap-status
                        set width 2
                        set height 1
                    next
                    edit 2
                        set type channel-utilization
                        set x-pos 1
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 3
                        set type clients-by-ap
                        set x-pos 2
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 4
                        set type client-signal-strength
                        set x-pos 3
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 5
                        set type rogue-ap
                        set x-pos 4
                        set width 2
                        set height 1
                    next
                    edit 6
                        set type historical-clients
                        set x-pos 5
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 7
                        set type interfering-ssids
                        set x-pos 6
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 8
                        set type wifi-login-failures
                        set x-pos 7
                        set width 2
                        set height 1
                    next
                end
            next
            edit 6
                set name "FortiView Sources"
                set vdom "root"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "source"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 7
                set name "FortiView Destinations"
                set vdom "root"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "destination"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 8
                set name "FortiView Applications"
                set vdom "root"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "application"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 9
                set name "FortiView Web Sites"
                set vdom "root"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "website"
                        set fortiview-sort-by "sessions"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 10
                set name "FortiView Sessions"
                set vdom "root"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "realtimeSessions"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "realtime"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 11
                set name "Status"
                set permanent enable
                config widget
                    edit 1
                        set width 1
                        set height 1
                    next
                    edit 2
                        set type licinfo
                        set x-pos 1
                        set width 1
                        set height 1
                    next
                    edit 3
                        set type forticloud
                        set x-pos 2
                        set width 1
                        set height 1
                    next
                    edit 4
                        set type security-fabric
                        set x-pos 3
                        set width 1
                        set height 1
                    next
                    edit 5
                        set type admins
                        set x-pos 4
                        set width 1
                        set height 1
                    next
                    edit 6
                        set type cpu-usage
                        set x-pos 5
                        set width 2
                        set height 1
                    next
                    edit 7
                        set type memory-usage
                        set x-pos 6
                        set width 2
                        set height 1
                    next
                    edit 8
                        set type sessions
                        set x-pos 7
                        set width 2
                        set height 1
                    next
                end
            next
            edit 12
                set name "Status"
                set vdom "HQ_VDOM"
                set permanent enable
                config widget
                    edit 1
                        set type security-fabric
                        set width 1
                        set height 1
                    next
                    edit 2
                        set type cpu-usage
                        set x-pos 1
                        set width 2
                        set height 1
                    next
                    edit 3
                        set type memory-usage
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type sessions
                        set x-pos 3
                        set width 2
                        set height 1
                    next
                end
            next
            edit 13
                set name "Security"
                set vdom "HQ_VDOM"
                config widget
                    edit 1
                        set type fortiview
                        set width 2
                        set height 1
                        set fortiview-type "compromisedHosts"
                        set fortiview-sort-by "verdict"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                    edit 2
                        set type fortiview
                        set x-pos 1
                        set width 2
                        set height 1
                        set fortiview-type "threats"
                        set fortiview-sort-by "threatLevel"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                    edit 3
                        set type vulnerability-summary
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type host-scan-summary
                        set x-pos 3
                        set width 1
                        set height 1
                    next
                    edit 5
                        set type fortiview
                        set x-pos 4
                        set width 2
                        set height 1
                        set fortiview-type "endpointDevices"
                        set fortiview-sort-by "vulnerabilities"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 14
                set name "Network"
                set vdom "HQ_VDOM"
                config widget
                    edit 1
                        set type routing
                        set width 2
                        set height 1
                        set router-view-type "staticdynamic"
                    next
                    edit 2
                        set type dhcp
                        set x-pos 1
                        set width 2
                        set height 1
                    next
                    edit 3
                        set type virtual-wan
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type ipsec-vpn
                        set x-pos 3
                        set width 2
                        set height 1
                    next
                    edit 5
                        set type ssl-vpn
                        set x-pos 4
                        set width 2
                        set height 1
                    next
                end
            next
            edit 15
                set name "Users & Devices"
                set vdom "HQ_VDOM"
                config widget
                    edit 1
                        set type device-inventory
                        set width 2
                        set height 1
                        set table-visualization "charts"
                        set device-list-view-type "hardware_vendor"
                    next
                    edit 2
                        set type forticlient
                        set x-pos 1
                        set width 2
                        set height 1
                        set table-visualization "charts"
                        set device-list-online "online"
                        set device-list-telemetry "sending"
                        set device-list-view-type "interface"
                    next
                    edit 3
                        set type firewall-user
                        set x-pos 2
                        set width 2
                        set height 1
                    next
                    edit 4
                        set type quarantine
                        set x-pos 3
                        set width 2
                        set height 1
                    next
                    edit 5
                        set type nac-vlans
                        set x-pos 4
                        set width 2
                        set height 1
                    next
                end
            next
            edit 16
                set name "WiFi"
                set vdom "HQ_VDOM"
                config widget
                    edit 1
                        set type ap-status
                        set width 2
                        set height 1
                    next
                    edit 2
                        set type channel-utilization
                        set x-pos 1
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 3
                        set type clients-by-ap
                        set x-pos 2
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 4
                        set type client-signal-strength
                        set x-pos 3
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 5
                        set type rogue-ap
                        set x-pos 4
                        set width 2
                        set height 1
                    next
                    edit 6
                        set type historical-clients
                        set x-pos 5
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 7
                        set type interfering-ssids
                        set x-pos 6
                        set width 2
                        set height 1
                        set wifi-band "both"
                    next
                    edit 8
                        set type wifi-login-failures
                        set x-pos 7
                        set width 2
                        set height 1
                    next
                end
            next
            edit 17
                set name "FortiView Sources"
                set vdom "HQ_VDOM"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "source"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 18
                set name "FortiView Destinations"
                set vdom "HQ_VDOM"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "destination"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 19
                set name "FortiView Applications"
                set vdom "HQ_VDOM"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "application"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 20
                set name "FortiView Web Sites"
                set vdom "HQ_VDOM"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "website"
                        set fortiview-sort-by "sessions"
                        set fortiview-timeframe "hour"
                        set fortiview-visualization "table"
                    next
                end
            next
            edit 21
                set name "FortiView Sessions"
                set vdom "HQ_VDOM"
                set layout-type standalone
                set csf disable
                config widget
                    edit 1
                        set type fortiview
                        set width 6
                        set height 3
                        set fortiview-type "realtimeSessions"
                        set fortiview-sort-by "bytes"
                        set fortiview-timeframe "realtime"
                        set fortiview-visualization "table"
                    next
                end
            next
        end
        set gui-ignore-release-overview-version "7.0.0"
        set password ENC SH2UllsJy8IQm+9eAEfxxsSHsadpGiX6b9MzoNiVxw+FgIv5X/UOAkt7+jvQ4Q=
    next
end
config system sso-admin
end
config system ha
    set group-name "HQ_Cluster"
    set mode a-p
    set password ENC madsd7cLaXG70anN6Z5/HSyJ7ayDQSpsTSR4X6o6IiyUHydNE5ssQnqzongNofOtMZxc6dC0zj4ZK92THPT3iQRCSJFYCCyQ8eCk2Enb5sVYJ8Y/CcI2Sq8VXNZpNFDdbqk8G6YLXri3gYx2BIus0xoAZ9C+ggwtjJ1JbidVEOSOjhimkr4ifi71b1cnyB6S3m8xuA==
    set hbdev "a" 50 "b" 50 
    set session-pickup enable
    set override disable
    set priority 200
end
config system dns
    set primary 96.45.45.45
    set secondary 96.45.46.46
    set protocol dot
    set server-hostname "globalsdns.fortinet.net"
end
config system replacemsg-image
    edit "logo_fnet"
        set image-type gif
    next
    edit "logo_fguard_wf"
        set image-type gif
    next
    edit "logo_v3_fguard_app"
    next
end
config system replacemsg mail "partial"
end
config system replacemsg http "url-block"
end
config system replacemsg http "urlfilter-err"
end
config system replacemsg http "infcache-block"
end
config system replacemsg http "http-contenttypeblock"
end
config system replacemsg http "https-invalid-cert-block"
end
config system replacemsg http "https-untrusted-cert-block"
end
config system replacemsg http "https-blocklisted-cert-block"
end
config system replacemsg http "switching-protocols-block"
end
config system replacemsg http "http-antiphish-block"
end
config system replacemsg http "videofilter-block"
end
config system replacemsg webproxy "deny"
end
config system replacemsg webproxy "user-limit"
end
config system replacemsg webproxy "auth-challenge"
end
config system replacemsg webproxy "auth-login-fail"
end
config system replacemsg webproxy "auth-group-info-fail"
end
config system replacemsg webproxy "http-err"
end
config system replacemsg webproxy "auth-ip-blackout"
end
config system replacemsg webproxy "ztna-block"
end
config system replacemsg ftp "ftp-explicit-banner"
end
config system replacemsg fortiguard-wf "ftgd-block"
end
config system replacemsg fortiguard-wf "ftgd-ovrd"
end
config system replacemsg fortiguard-wf "ftgd-quota"
end
config system replacemsg fortiguard-wf "ftgd-warning"
end
config system replacemsg spam "ipblocklist"
end
config system replacemsg spam "smtp-spam-dnsbl"
end
config system replacemsg spam "smtp-spam-feip"
end
config system replacemsg spam "smtp-spam-helo"
end
config system replacemsg spam "smtp-spam-emailblock"
end
config system replacemsg spam "smtp-spam-mimeheader"
end
config system replacemsg spam "reversedns"
end
config system replacemsg spam "smtp-spam-ase"
end
config system replacemsg spam "submit"
end
config system replacemsg alertmail "alertmail-virus"
end
config system replacemsg alertmail "alertmail-block"
end
config system replacemsg alertmail "alertmail-nids-event"
end
config system replacemsg alertmail "alertmail-crit-event"
end
config system replacemsg alertmail "alertmail-disk-full"
end
config system replacemsg admin "pre_admin-disclaimer-text"
end
config system replacemsg admin "post_admin-disclaimer-text"
end
config system replacemsg auth "auth-disclaimer-page-1"
end
config system replacemsg auth "auth-disclaimer-page-2"
end
config system replacemsg auth "auth-disclaimer-page-3"
end
config system replacemsg auth "auth-proxy-reject-page"
end
config system replacemsg auth "auth-reject-page"
end
config system replacemsg auth "auth-login-page"
end
config system replacemsg auth "auth-login-failed-page"
end
config system replacemsg auth "auth-token-login-page"
end
config system replacemsg auth "auth-token-login-failed-page"
end
config system replacemsg auth "auth-success-msg"
end
config system replacemsg auth "auth-challenge-page"
end
config system replacemsg auth "auth-keepalive-page"
end
config system replacemsg auth "auth-portal-page"
end
config system replacemsg auth "auth-password-page"
end
config system replacemsg auth "auth-fortitoken-page"
end
config system replacemsg auth "auth-next-fortitoken-page"
end
config system replacemsg auth "auth-email-token-page"
end
config system replacemsg auth "auth-sms-token-page"
end
config system replacemsg auth "auth-email-harvesting-page"
end
config system replacemsg auth "auth-email-failed-page"
end
config system replacemsg auth "auth-cert-passwd-page"
end
config system replacemsg auth "auth-guest-print-page"
end
config system replacemsg auth "auth-guest-email-page"
end
config system replacemsg auth "auth-success-page"
end
config system replacemsg auth "auth-block-notification-page"
end
config system replacemsg auth "auth-quarantine-page"
end
config system replacemsg auth "auth-qtn-reject-page"
end
config system replacemsg auth "auth-saml-page"
end
config system replacemsg sslvpn "sslvpn-login"
end
config system replacemsg sslvpn "sslvpn-header"
end
config system replacemsg sslvpn "sslvpn-limit"
end
config system replacemsg sslvpn "hostcheck-error"
end
config system replacemsg sslvpn "sslvpn-provision-user"
end
config system replacemsg sslvpn "sslvpn-provision-user-sms"
end
config system replacemsg nac-quar "nac-quar-virus"
end
config system replacemsg nac-quar "nac-quar-dos"
end
config system replacemsg nac-quar "nac-quar-ips"
end
config system replacemsg nac-quar "nac-quar-dlp"
end
config system replacemsg nac-quar "nac-quar-admin"
end
config system replacemsg nac-quar "nac-quar-app"
end
config system replacemsg traffic-quota "per-ip-shaper-block"
end
config system replacemsg utm "virus-html"
end
config system replacemsg utm "client-virus-html"
end
config system replacemsg utm "virus-text"
end
config system replacemsg utm "dlp-html"
end
config system replacemsg utm "dlp-text"
end
config system replacemsg utm "appblk-html"
end
config system replacemsg utm "ipsblk-html"
end
config system replacemsg utm "ipsfail-html"
end
config system replacemsg utm "exe-text"
end
config system replacemsg utm "waf-html"
end
config system replacemsg utm "outbreak-prevention-html"
end
config system replacemsg utm "outbreak-prevention-text"
end
config system replacemsg utm "external-blocklist-html"
end
config system replacemsg utm "external-blocklist-text"
end
config system replacemsg utm "ems-threat-feed-html"
end
config system replacemsg utm "ems-threat-feed-text"
end
config system replacemsg utm "file-filter-html"
end
config system replacemsg utm "file-filter-text"
end
config system replacemsg utm "file-size-text"
end
config system replacemsg utm "transfer-size-text"
end
config system replacemsg utm "internal-error-text"
end
config system replacemsg utm "archive-block-html"
end
config system replacemsg utm "archive-block-text"
end
config system replacemsg utm "file-av-fail-text"
end
config system replacemsg utm "transfer-av-fail-text"
end
config system replacemsg utm "banned-word-html"
end
config system replacemsg utm "banned-word-text"
end
config system replacemsg utm "block-html"
end
config system replacemsg utm "block-text"
end
config system replacemsg utm "decompress-limit-text"
end
config system replacemsg utm "dlp-subject-text"
end
config system replacemsg utm "file-size-html"
end
config system replacemsg utm "client-file-size-html"
end
config system replacemsg icap "icap-req-resp"
end
config system replacemsg automation "automation-email"
end
config system snmp sysinfo
end
config system central-management
    set type fortiguard
end
config firewall wildcard-fqdn custom
    edit "g-adobe"
        set uuid 5d9ea68a-c842-51ee-3bac-20ed14c8c4e2
        set wildcard-fqdn "*.adobe.com"
    next
    edit "g-Adobe Login"
        set uuid 5d9eb602-c842-51ee-146c-c65ce3da69ef
        set wildcard-fqdn "*.adobelogin.com"
    next
    edit "g-android"
        set uuid 5d9ec1a6-c842-51ee-5891-90dcbcf2c5fa
        set wildcard-fqdn "*.android.com"
    next
    edit "g-apple"
        set uuid 5d9ecd22-c842-51ee-14bf-a88e448ad51f
        set wildcard-fqdn "*.apple.com"
    next
    edit "g-appstore"
        set uuid 5d9ed8e4-c842-51ee-2cf8-ab4b5dd48a52
        set wildcard-fqdn "*.appstore.com"
    next
    edit "g-auth.gfx.ms"
        set uuid 5d9ee488-c842-51ee-e9c2-a8f1e64bf899
        set wildcard-fqdn "*.auth.gfx.ms"
    next
    edit "g-citrix"
        set uuid 5d9ef00e-c842-51ee-9382-33f7d492a118
        set wildcard-fqdn "*.citrixonline.com"
    next
    edit "g-dropbox.com"
        set uuid 5d9efb94-c842-51ee-848d-06d51a0de3e6
        set wildcard-fqdn "*.dropbox.com"
    next
    edit "g-eease"
        set uuid 5d9f072e-c842-51ee-246d-a99bd890fcf9
        set wildcard-fqdn "*.eease.com"
    next
    edit "g-firefox update server"
        set uuid 5d9f1304-c842-51ee-8958-d6ac5f0e40a7
        set wildcard-fqdn "aus*.mozilla.org"
    next
    edit "g-fortinet"
        set uuid 5d9f1ee4-c842-51ee-6670-725cd7589aba
        set wildcard-fqdn "*.fortinet.com"
    next
    edit "g-googleapis.com"
        set uuid 5d9f2a92-c842-51ee-e9e0-6edb0b56e23c
        set wildcard-fqdn "*.googleapis.com"
    next
    edit "g-google-drive"
        set uuid 5d9f362c-c842-51ee-d3c8-b9d6698a82f3
        set wildcard-fqdn "*drive.google.com"
    next
    edit "g-google-play2"
        set uuid 5d9f423e-c842-51ee-4b97-fc883fae8f28
        set wildcard-fqdn "*.ggpht.com"
    next
    edit "g-google-play3"
        set uuid 5d9f4df6-c842-51ee-3278-80b3dd781c9f
        set wildcard-fqdn "*.books.google.com"
    next
    edit "g-Gotomeeting"
        set uuid 5d9f599a-c842-51ee-0209-0f281fd99801
        set wildcard-fqdn "*.gotomeeting.com"
    next
    edit "g-icloud"
        set uuid 5d9f6cdc-c842-51ee-4ea6-016a128f737f
        set wildcard-fqdn "*.icloud.com"
    next
    edit "g-itunes"
        set uuid 5d9f79ac-c842-51ee-4dfa-69d173fe33e5
        set wildcard-fqdn "*itunes.apple.com"
    next
    edit "g-microsoft"
        set uuid 5d9f8564-c842-51ee-9a5a-7cb4bcfab3ba
        set wildcard-fqdn "*.microsoft.com"
    next
    edit "g-skype"
        set uuid 5d9f90fe-c842-51ee-d4e5-a3db7b3f3f8b
        set wildcard-fqdn "*.messenger.live.com"
    next
    edit "g-softwareupdate.vmware.com"
        set uuid 5d9f9cac-c842-51ee-6a5a-7171a5b24c46
        set wildcard-fqdn "*.softwareupdate.vmware.com"
    next
    edit "g-verisign"
        set uuid 5d9fa896-c842-51ee-72aa-23ca901fbe92
        set wildcard-fqdn "*.verisign.com"
    next
    edit "g-Windows update 2"
        set uuid 5d9fb458-c842-51ee-e7b5-170006298fb1
        set wildcard-fqdn "*.windowsupdate.com"
    next
    edit "g-live.com"
        set uuid 5d9fc02e-c842-51ee-8389-c55f0cd44700
        set wildcard-fqdn "*.live.com"
    next
    edit "g-google-play"
        set uuid 5d9fcd4e-c842-51ee-a785-651f9534ecb8
        set wildcard-fqdn "*play.google.com"
    next
    edit "g-update.microsoft.com"
        set uuid 5d9fd9ec-c842-51ee-6942-40580fa42c2c
        set wildcard-fqdn "*update.microsoft.com"
    next
    edit "g-swscan.apple.com"
        set uuid 5d9fe5d6-c842-51ee-7e2a-5486f7fe8dd0
        set wildcard-fqdn "*swscan.apple.com"
    next
    edit "g-autoupdate.opera.com"
        set uuid 5d9ff18e-c842-51ee-a845-b4596ac800ef
        set wildcard-fqdn "*autoupdate.opera.com"
    next
    edit "g-cdn-apple"
        set uuid 5d9ffd64-c842-51ee-4150-a16e493ed6d9
        set wildcard-fqdn "*.cdn-apple.com"
    next
    edit "g-mzstatic-apple"
        set uuid 5da00962-c842-51ee-91d8-0b7535a5ce39
        set wildcard-fqdn "*.mzstatic.com"
    next
end
config firewall internet-service-name
    edit "Google-Other"
        set internet-service-id 65536
    next
    edit "Google-Web"
        set internet-service-id 65537
    next
    edit "Google-ICMP"
        set internet-service-id 65538
    next
    edit "Google-DNS"
        set internet-service-id 65539
    next
    edit "Google-Outbound_Email"
        set internet-service-id 65540
    next
    edit "Google-SSH"
        set internet-service-id 65542
    next
    edit "Google-FTP"
        set internet-service-id 65543
    next
    edit "Google-NTP"
        set internet-service-id 65544
    next
    edit "Google-Inbound_Email"
        set internet-service-id 65545
    next
    edit "Google-LDAP"
        set internet-service-id 65550
    next
    edit "Google-NetBIOS.Session.Service"
        set internet-service-id 65551
    next
    edit "Google-RTMP"
        set internet-service-id 65552
    next
    edit "Google-NetBIOS.Name.Service"
        set internet-service-id 65560
    next
    edit "Google-Google.Cloud"
        set internet-service-id 65641
    next
    edit "Google-Google.Bot"
        set internet-service-id 65643
    next
    edit "Google-Gmail"
        set internet-service-id 65646
    next
    edit "Meta-Other"
        set internet-service-id 131072
    next
    edit "Meta-Web"
        set internet-service-id 131073
    next
    edit "Meta-ICMP"
        set internet-service-id 131074
    next
    edit "Meta-DNS"
        set internet-service-id 131075
    next
    edit "Meta-Outbound_Email"
        set internet-service-id 131076
    next
    edit "Meta-SSH"
        set internet-service-id 131078
    next
    edit "Meta-FTP"
        set internet-service-id 131079
    next
    edit "Meta-NTP"
        set internet-service-id 131080
    next
    edit "Meta-Inbound_Email"
        set internet-service-id 131081
    next
    edit "Meta-LDAP"
        set internet-service-id 131086
    next
    edit "Meta-NetBIOS.Session.Service"
        set internet-service-id 131087
    next
    edit "Meta-RTMP"
        set internet-service-id 131088
    next
    edit "Meta-NetBIOS.Name.Service"
        set internet-service-id 131096
    next
    edit "Meta-Whatsapp"
        set internet-service-id 131184
    next
    edit "Meta-Instagram"
        set internet-service-id 131189
    next
    edit "Apple-Other"
        set internet-service-id 196608
    next
    edit "Apple-Web"
        set internet-service-id 196609
    next
    edit "Apple-ICMP"
        set internet-service-id 196610
    next
    edit "Apple-DNS"
        set internet-service-id 196611
    next
    edit "Apple-Outbound_Email"
        set internet-service-id 196612
    next
    edit "Apple-SSH"
        set internet-service-id 196614
    next
    edit "Apple-FTP"
        set internet-service-id 196615
    next
    edit "Apple-NTP"
        set internet-service-id 196616
    next
    edit "Apple-Inbound_Email"
        set internet-service-id 196617
    next
    edit "Apple-LDAP"
        set internet-service-id 196622
    next
    edit "Apple-NetBIOS.Session.Service"
        set internet-service-id 196623
    next
    edit "Apple-RTMP"
        set internet-service-id 196624
    next
    edit "Apple-NetBIOS.Name.Service"
        set internet-service-id 196632
    next
    edit "Apple-App.Store"
        set internet-service-id 196723
    next
    edit "Apple-APNs"
        set internet-service-id 196747
    next
    edit "Yahoo-Other"
        set internet-service-id 262144
    next
    edit "Yahoo-Web"
        set internet-service-id 262145
    next
    edit "Yahoo-ICMP"
        set internet-service-id 262146
    next
    edit "Yahoo-DNS"
        set internet-service-id 262147
    next
    edit "Yahoo-Outbound_Email"
        set internet-service-id 262148
    next
    edit "Yahoo-SSH"
        set internet-service-id 262150
    next
    edit "Yahoo-FTP"
        set internet-service-id 262151
    next
    edit "Yahoo-NTP"
        set internet-service-id 262152
    next
    edit "Yahoo-Inbound_Email"
        set internet-service-id 262153
    next
    edit "Yahoo-LDAP"
        set internet-service-id 262158
    next
    edit "Yahoo-NetBIOS.Session.Service"
        set internet-service-id 262159
    next
    edit "Yahoo-RTMP"
        set internet-service-id 262160
    next
    edit "Yahoo-NetBIOS.Name.Service"
        set internet-service-id 262168
    next
    edit "Microsoft-Other"
        set internet-service-id 327680
    next
    edit "Microsoft-Web"
        set internet-service-id 327681
    next
    edit "Microsoft-ICMP"
        set internet-service-id 327682
    next
    edit "Microsoft-DNS"
        set internet-service-id 327683
    next
    edit "Microsoft-Outbound_Email"
        set internet-service-id 327684
    next
    edit "Microsoft-SSH"
        set internet-service-id 327686
    next
    edit "Microsoft-FTP"
        set internet-service-id 327687
    next
    edit "Microsoft-NTP"
        set internet-service-id 327688
    next
    edit "Microsoft-Inbound_Email"
        set internet-service-id 327689
    next
    edit "Microsoft-LDAP"
        set internet-service-id 327694
    next
    edit "Microsoft-NetBIOS.Session.Service"
        set internet-service-id 327695
    next
    edit "Microsoft-RTMP"
        set internet-service-id 327696
    next
    edit "Microsoft-NetBIOS.Name.Service"
        set internet-service-id 327704
    next
    edit "Microsoft-Skype_Teams"
        set internet-service-id 327781
    next
    edit "Microsoft-Office365"
        set internet-service-id 327782
    next
    edit "Microsoft-Azure"
        set internet-service-id 327786
    next
    edit "Microsoft-Bing.Bot"
        set internet-service-id 327788
    next
    edit "Microsoft-Outlook"
        set internet-service-id 327791
    next
    edit "Microsoft-Microsoft.Update"
        set internet-service-id 327793
    next
    edit "Microsoft-Dynamics"
        set internet-service-id 327837
    next
    edit "Microsoft-WNS"
        set internet-service-id 327839
    next
    edit "Microsoft-Office365.Published"
        set internet-service-id 327880
    next
    edit "Amazon-Other"
        set internet-service-id 393216
    next
    edit "Amazon-Web"
        set internet-service-id 393217
    next
    edit "Amazon-ICMP"
        set internet-service-id 393218
    next
    edit "Amazon-DNS"
        set internet-service-id 393219
    next
    edit "Amazon-Outbound_Email"
        set internet-service-id 393220
    next
    edit "Amazon-SSH"
        set internet-service-id 393222
    next
    edit "Amazon-FTP"
        set internet-service-id 393223
    next
    edit "Amazon-NTP"
        set internet-service-id 393224
    next
    edit "Amazon-Inbound_Email"
        set internet-service-id 393225
    next
    edit "Amazon-LDAP"
        set internet-service-id 393230
    next
    edit "Amazon-NetBIOS.Session.Service"
        set internet-service-id 393231
    next
    edit "Amazon-RTMP"
        set internet-service-id 393232
    next
    edit "Amazon-NetBIOS.Name.Service"
        set internet-service-id 393240
    next
    edit "Amazon-AWS"
        set internet-service-id 393320
    next
    edit "Amazon-AWS.WorkSpaces.Gateway"
        set internet-service-id 393403
    next
    edit "eBay-Other"
        set internet-service-id 458752
    next
    edit "eBay-Web"
        set internet-service-id 458753
    next
    edit "eBay-ICMP"
        set internet-service-id 458754
    next
    edit "eBay-DNS"
        set internet-service-id 458755
    next
    edit "eBay-Outbound_Email"
        set internet-service-id 458756
    next
    edit "eBay-SSH"
        set internet-service-id 458758
    next
    edit "eBay-FTP"
        set internet-service-id 458759
    next
    edit "eBay-NTP"
        set internet-service-id 458760
    next
    edit "eBay-Inbound_Email"
        set internet-service-id 458761
    next
    edit "eBay-LDAP"
        set internet-service-id 458766
    next
    edit "eBay-NetBIOS.Session.Service"
        set internet-service-id 458767
    next
    edit "eBay-RTMP"
        set internet-service-id 458768
    next
    edit "eBay-NetBIOS.Name.Service"
        set internet-service-id 458776
    next
    edit "PayPal-Other"
        set internet-service-id 524288
    next
    edit "PayPal-Web"
        set internet-service-id 524289
    next
    edit "PayPal-ICMP"
        set internet-service-id 524290
    next
    edit "PayPal-DNS"
        set internet-service-id 524291
    next
    edit "PayPal-Outbound_Email"
        set internet-service-id 524292
    next
    edit "PayPal-SSH"
        set internet-service-id 524294
    next
    edit "PayPal-FTP"
        set internet-service-id 524295
    next
    edit "PayPal-NTP"
        set internet-service-id 524296
    next
    edit "PayPal-Inbound_Email"
        set internet-service-id 524297
    next
    edit "PayPal-LDAP"
        set internet-service-id 524302
    next
    edit "PayPal-NetBIOS.Session.Service"
        set internet-service-id 524303
    next
    edit "PayPal-RTMP"
        set internet-service-id 524304
    next
    edit "PayPal-NetBIOS.Name.Service"
        set internet-service-id 524312
    next
    edit "Box-Other"
        set internet-service-id 589824
    next
    edit "Box-Web"
        set internet-service-id 589825
    next
    edit "Box-ICMP"
        set internet-service-id 589826
    next
    edit "Box-DNS"
        set internet-service-id 589827
    next
    edit "Box-Outbound_Email"
        set internet-service-id 589828
    next
    edit "Box-SSH"
        set internet-service-id 589830
    next
    edit "Box-FTP"
        set internet-service-id 589831
    next
    edit "Box-NTP"
        set internet-service-id 589832
    next
    edit "Box-Inbound_Email"
        set internet-service-id 589833
    next
    edit "Box-LDAP"
        set internet-service-id 589838
    next
    edit "Box-NetBIOS.Session.Service"
        set internet-service-id 589839
    next
    edit "Box-RTMP"
        set internet-service-id 589840
    next
    edit "Box-NetBIOS.Name.Service"
        set internet-service-id 589848
    next
    edit "Salesforce-Other"
        set internet-service-id 655360
    next
    edit "Salesforce-Web"
        set internet-service-id 655361
    next
    edit "Salesforce-ICMP"
        set internet-service-id 655362
    next
    edit "Salesforce-DNS"
        set internet-service-id 655363
    next
    edit "Salesforce-Outbound_Email"
        set internet-service-id 655364
    next
    edit "Salesforce-SSH"
        set internet-service-id 655366
    next
    edit "Salesforce-FTP"
        set internet-service-id 655367
    next
    edit "Salesforce-NTP"
        set internet-service-id 655368
    next
    edit "Salesforce-Inbound_Email"
        set internet-service-id 655369
    next
    edit "Salesforce-LDAP"
        set internet-service-id 655374
    next
    edit "Salesforce-NetBIOS.Session.Service"
        set internet-service-id 655375
    next
    edit "Salesforce-RTMP"
        set internet-service-id 655376
    next
    edit "Salesforce-NetBIOS.Name.Service"
        set internet-service-id 655384
    next
    edit "Salesforce-Email.Relay"
        set internet-service-id 655530
    next
    edit "Dropbox-Other"
        set internet-service-id 720896
    next
    edit "Dropbox-Web"
        set internet-service-id 720897
    next
    edit "Dropbox-ICMP"
        set internet-service-id 720898
    next
    edit "Dropbox-DNS"
        set internet-service-id 720899
    next
    edit "Dropbox-Outbound_Email"
        set internet-service-id 720900
    next
    edit "Dropbox-SSH"
        set internet-service-id 720902
    next
    edit "Dropbox-FTP"
        set internet-service-id 720903
    next
    edit "Dropbox-NTP"
        set internet-service-id 720904
    next
    edit "Dropbox-Inbound_Email"
        set internet-service-id 720905
    next
    edit "Dropbox-LDAP"
        set internet-service-id 720910
    next
    edit "Dropbox-NetBIOS.Session.Service"
        set internet-service-id 720911
    next
    edit "Dropbox-RTMP"
        set internet-service-id 720912
    next
    edit "Dropbox-NetBIOS.Name.Service"
        set internet-service-id 720920
    next
    edit "Netflix-Other"
        set internet-service-id 786432
    next
    edit "Netflix-Web"
        set internet-service-id 786433
    next
    edit "Netflix-ICMP"
        set internet-service-id 786434
    next
    edit "Netflix-DNS"
        set internet-service-id 786435
    next
    edit "Netflix-Outbound_Email"
        set internet-service-id 786436
    next
    edit "Netflix-SSH"
        set internet-service-id 786438
    next
    edit "Netflix-FTP"
        set internet-service-id 786439
    next
    edit "Netflix-NTP"
        set internet-service-id 786440
    next
    edit "Netflix-Inbound_Email"
        set internet-service-id 786441
    next
    edit "Netflix-LDAP"
        set internet-service-id 786446
    next
    edit "Netflix-NetBIOS.Session.Service"
        set internet-service-id 786447
    next
    edit "Netflix-RTMP"
        set internet-service-id 786448
    next
    edit "Netflix-NetBIOS.Name.Service"
        set internet-service-id 786456
    next
    edit "LinkedIn-Other"
        set internet-service-id 851968
    next
    edit "LinkedIn-Web"
        set internet-service-id 851969
    next
    edit "LinkedIn-ICMP"
        set internet-service-id 851970
    next
    edit "LinkedIn-DNS"
        set internet-service-id 851971
    next
    edit "LinkedIn-Outbound_Email"
        set internet-service-id 851972
    next
    edit "LinkedIn-SSH"
        set internet-service-id 851974
    next
    edit "LinkedIn-FTP"
        set internet-service-id 851975
    next
    edit "LinkedIn-NTP"
        set internet-service-id 851976
    next
    edit "LinkedIn-Inbound_Email"
        set internet-service-id 851977
    next
    edit "LinkedIn-LDAP"
        set internet-service-id 851982
    next
    edit "LinkedIn-NetBIOS.Session.Service"
        set internet-service-id 851983
    next
    edit "LinkedIn-RTMP"
        set internet-service-id 851984
    next
    edit "LinkedIn-NetBIOS.Name.Service"
        set internet-service-id 851992
    next
    edit "Adobe-Other"
        set internet-service-id 917504
    next
    edit "Adobe-Web"
        set internet-service-id 917505
    next
    edit "Adobe-ICMP"
        set internet-service-id 917506
    next
    edit "Adobe-DNS"
        set internet-service-id 917507
    next
    edit "Adobe-Outbound_Email"
        set internet-service-id 917508
    next
    edit "Adobe-SSH"
        set internet-service-id 917510
    next
    edit "Adobe-FTP"
        set internet-service-id 917511
    next
    edit "Adobe-NTP"
        set internet-service-id 917512
    next
    edit "Adobe-Inbound_Email"
        set internet-service-id 917513
    next
    edit "Adobe-LDAP"
        set internet-service-id 917518
    next
    edit "Adobe-NetBIOS.Session.Service"
        set internet-service-id 917519
    next
    edit "Adobe-RTMP"
        set internet-service-id 917520
    next
    edit "Adobe-NetBIOS.Name.Service"
        set internet-service-id 917528
    next
    edit "Adobe-Adobe.Experience.Cloud"
        set internet-service-id 917640
    next
    edit "Oracle-Other"
        set internet-service-id 983040
    next
    edit "Oracle-Web"
        set internet-service-id 983041
    next
    edit "Oracle-ICMP"
        set internet-service-id 983042
    next
    edit "Oracle-DNS"
        set internet-service-id 983043
    next
    edit "Oracle-Outbound_Email"
        set internet-service-id 983044
    next
    edit "Oracle-SSH"
        set internet-service-id 983046
    next
    edit "Oracle-FTP"
        set internet-service-id 983047
    next
    edit "Oracle-NTP"
        set internet-service-id 983048
    next
    edit "Oracle-Inbound_Email"
        set internet-service-id 983049
    next
    edit "Oracle-LDAP"
        set internet-service-id 983054
    next
    edit "Oracle-NetBIOS.Session.Service"
        set internet-service-id 983055
    next
    edit "Oracle-RTMP"
        set internet-service-id 983056
    next
    edit "Oracle-NetBIOS.Name.Service"
        set internet-service-id 983064
    next
    edit "Oracle-Oracle.Cloud"
        set internet-service-id 983171
    next
    edit "Hulu-Other"
        set internet-service-id 1048576
    next
    edit "Hulu-Web"
        set internet-service-id 1048577
    next
    edit "Hulu-ICMP"
        set internet-service-id 1048578
    next
    edit "Hulu-DNS"
        set internet-service-id 1048579
    next
    edit "Hulu-Outbound_Email"
        set internet-service-id 1048580
    next
    edit "Hulu-SSH"
        set internet-service-id 1048582
    next
    edit "Hulu-FTP"
        set internet-service-id 1048583
    next
    edit "Hulu-NTP"
        set internet-service-id 1048584
    next
    edit "Hulu-Inbound_Email"
        set internet-service-id 1048585
    next
    edit "Hulu-LDAP"
        set internet-service-id 1048590
    next
    edit "Hulu-NetBIOS.Session.Service"
        set internet-service-id 1048591
    next
    edit "Hulu-RTMP"
        set internet-service-id 1048592
    next
    edit "Hulu-NetBIOS.Name.Service"
        set internet-service-id 1048600
    next
    edit "Pinterest-Other"
        set internet-service-id 1114112
    next
    edit "Pinterest-Web"
        set internet-service-id 1114113
    next
    edit "Pinterest-ICMP"
        set internet-service-id 1114114
    next
    edit "Pinterest-DNS"
        set internet-service-id 1114115
    next
    edit "Pinterest-Outbound_Email"
        set internet-service-id 1114116
    next
    edit "Pinterest-SSH"
        set internet-service-id 1114118
    next
    edit "Pinterest-FTP"
        set internet-service-id 1114119
    next
    edit "Pinterest-NTP"
        set internet-service-id 1114120
    next
    edit "Pinterest-Inbound_Email"
        set internet-service-id 1114121
    next
    edit "Pinterest-LDAP"
        set internet-service-id 1114126
    next
    edit "Pinterest-NetBIOS.Session.Service"
        set internet-service-id 1114127
    next
    edit "Pinterest-RTMP"
        set internet-service-id 1114128
    next
    edit "Pinterest-NetBIOS.Name.Service"
        set internet-service-id 1114136
    next
    edit "LogMeIn-Other"
        set internet-service-id 1179648
    next
    edit "LogMeIn-Web"
        set internet-service-id 1179649
    next
    edit "LogMeIn-ICMP"
        set internet-service-id 1179650
    next
    edit "LogMeIn-DNS"
        set internet-service-id 1179651
    next
    edit "LogMeIn-Outbound_Email"
        set internet-service-id 1179652
    next
    edit "LogMeIn-SSH"
        set internet-service-id 1179654
    next
    edit "LogMeIn-FTP"
        set internet-service-id 1179655
    next
    edit "LogMeIn-NTP"
        set internet-service-id 1179656
    next
    edit "LogMeIn-Inbound_Email"
        set internet-service-id 1179657
    next
    edit "LogMeIn-LDAP"
        set internet-service-id 1179662
    next
    edit "LogMeIn-NetBIOS.Session.Service"
        set internet-service-id 1179663
    next
    edit "LogMeIn-RTMP"
        set internet-service-id 1179664
    next
    edit "LogMeIn-NetBIOS.Name.Service"
        set internet-service-id 1179672
    next
    edit "LogMeIn-GoTo.Suite"
        set internet-service-id 1179767
    next
    edit "Fortinet-Other"
        set internet-service-id 1245184
    next
    edit "Fortinet-Web"
        set internet-service-id 1245185
    next
    edit "Fortinet-ICMP"
        set internet-service-id 1245186
    next
    edit "Fortinet-DNS"
        set internet-service-id 1245187
    next
    edit "Fortinet-Outbound_Email"
        set internet-service-id 1245188
    next
    edit "Fortinet-SSH"
        set internet-service-id 1245190
    next
    edit "Fortinet-FTP"
        set internet-service-id 1245191
    next
    edit "Fortinet-NTP"
        set internet-service-id 1245192
    next
    edit "Fortinet-Inbound_Email"
        set internet-service-id 1245193
    next
    edit "Fortinet-LDAP"
        set internet-service-id 1245198
    next
    edit "Fortinet-NetBIOS.Session.Service"
        set internet-service-id 1245199
    next
    edit "Fortinet-RTMP"
        set internet-service-id 1245200
    next
    edit "Fortinet-NetBIOS.Name.Service"
        set internet-service-id 1245208
    next
    edit "Fortinet-FortiGuard"
        set internet-service-id 1245324
    next
    edit "Fortinet-FortiMail.Cloud"
        set internet-service-id 1245325
    next
    edit "Fortinet-FortiCloud"
        set internet-service-id 1245326
    next
    edit "Kaspersky-Other"
        set internet-service-id 1310720
    next
    edit "Kaspersky-Web"
        set internet-service-id 1310721
    next
    edit "Kaspersky-ICMP"
        set internet-service-id 1310722
    next
    edit "Kaspersky-DNS"
        set internet-service-id 1310723
    next
    edit "Kaspersky-Outbound_Email"
        set internet-service-id 1310724
    next
    edit "Kaspersky-SSH"
        set internet-service-id 1310726
    next
    edit "Kaspersky-FTP"
        set internet-service-id 1310727
    next
    edit "Kaspersky-NTP"
        set internet-service-id 1310728
    next
    edit "Kaspersky-Inbound_Email"
        set internet-service-id 1310729
    next
    edit "Kaspersky-LDAP"
        set internet-service-id 1310734
    next
    edit "Kaspersky-NetBIOS.Session.Service"
        set internet-service-id 1310735
    next
    edit "Kaspersky-RTMP"
        set internet-service-id 1310736
    next
    edit "Kaspersky-NetBIOS.Name.Service"
        set internet-service-id 1310744
    next
    edit "McAfee-Other"
        set internet-service-id 1376256
    next
    edit "McAfee-Web"
        set internet-service-id 1376257
    next
    edit "McAfee-ICMP"
        set internet-service-id 1376258
    next
    edit "McAfee-DNS"
        set internet-service-id 1376259
    next
    edit "McAfee-Outbound_Email"
        set internet-service-id 1376260
    next
    edit "McAfee-SSH"
        set internet-service-id 1376262
    next
    edit "McAfee-FTP"
        set internet-service-id 1376263
    next
    edit "McAfee-NTP"
        set internet-service-id 1376264
    next
    edit "McAfee-Inbound_Email"
        set internet-service-id 1376265
    next
    edit "McAfee-LDAP"
        set internet-service-id 1376270
    next
    edit "McAfee-NetBIOS.Session.Service"
        set internet-service-id 1376271
    next
    edit "McAfee-RTMP"
        set internet-service-id 1376272
    next
    edit "McAfee-NetBIOS.Name.Service"
        set internet-service-id 1376280
    next
    edit "Symantec-Other"
        set internet-service-id 1441792
    next
    edit "Symantec-Web"
        set internet-service-id 1441793
    next
    edit "Symantec-ICMP"
        set internet-service-id 1441794
    next
    edit "Symantec-DNS"
        set internet-service-id 1441795
    next
    edit "Symantec-Outbound_Email"
        set internet-service-id 1441796
    next
    edit "Symantec-SSH"
        set internet-service-id 1441798
    next
    edit "Symantec-FTP"
        set internet-service-id 1441799
    next
    edit "Symantec-NTP"
        set internet-service-id 1441800
    next
    edit "Symantec-Inbound_Email"
        set internet-service-id 1441801
    next
    edit "Symantec-LDAP"
        set internet-service-id 1441806
    next
    edit "Symantec-NetBIOS.Session.Service"
        set internet-service-id 1441807
    next
    edit "Symantec-RTMP"
        set internet-service-id 1441808
    next
    edit "Symantec-NetBIOS.Name.Service"
        set internet-service-id 1441816
    next
    edit "Symantec-Symantec.Cloud"
        set internet-service-id 1441922
    next
    edit "VMware-Other"
        set internet-service-id 1507328
    next
    edit "VMware-Web"
        set internet-service-id 1507329
    next
    edit "VMware-ICMP"
        set internet-service-id 1507330
    next
    edit "VMware-DNS"
        set internet-service-id 1507331
    next
    edit "VMware-Outbound_Email"
        set internet-service-id 1507332
    next
    edit "VMware-SSH"
        set internet-service-id 1507334
    next
    edit "VMware-FTP"
        set internet-service-id 1507335
    next
    edit "VMware-NTP"
        set internet-service-id 1507336
    next
    edit "VMware-Inbound_Email"
        set internet-service-id 1507337
    next
    edit "VMware-LDAP"
        set internet-service-id 1507342
    next
    edit "VMware-NetBIOS.Session.Service"
        set internet-service-id 1507343
    next
    edit "VMware-RTMP"
        set internet-service-id 1507344
    next
    edit "VMware-NetBIOS.Name.Service"
        set internet-service-id 1507352
    next
    edit "VMware-Workspace.ONE"
        set internet-service-id 1507461
    next
    edit "AOL-Other"
        set internet-service-id 1572864
    next
    edit "AOL-Web"
        set internet-service-id 1572865
    next
    edit "AOL-ICMP"
        set internet-service-id 1572866
    next
    edit "AOL-DNS"
        set internet-service-id 1572867
    next
    edit "AOL-Outbound_Email"
        set internet-service-id 1572868
    next
    edit "AOL-SSH"
        set internet-service-id 1572870
    next
    edit "AOL-FTP"
        set internet-service-id 1572871
    next
    edit "AOL-NTP"
        set internet-service-id 1572872
    next
    edit "AOL-Inbound_Email"
        set internet-service-id 1572873
    next
    edit "AOL-LDAP"
        set internet-service-id 1572878
    next
    edit "AOL-NetBIOS.Session.Service"
        set internet-service-id 1572879
    next
    edit "AOL-RTMP"
        set internet-service-id 1572880
    next
    edit "AOL-NetBIOS.Name.Service"
        set internet-service-id 1572888
    next
    edit "RealNetworks-Other"
        set internet-service-id 1638400
    next
    edit "RealNetworks-Web"
        set internet-service-id 1638401
    next
    edit "RealNetworks-ICMP"
        set internet-service-id 1638402
    next
    edit "RealNetworks-DNS"
        set internet-service-id 1638403
    next
    edit "RealNetworks-Outbound_Email"
        set internet-service-id 1638404
    next
    edit "RealNetworks-SSH"
        set internet-service-id 1638406
    next
    edit "RealNetworks-FTP"
        set internet-service-id 1638407
    next
    edit "RealNetworks-NTP"
        set internet-service-id 1638408
    next
    edit "RealNetworks-Inbound_Email"
        set internet-service-id 1638409
    next
    edit "RealNetworks-LDAP"
        set internet-service-id 1638414
    next
    edit "RealNetworks-NetBIOS.Session.Service"
        set internet-service-id 1638415
    next
    edit "RealNetworks-RTMP"
        set internet-service-id 1638416
    next
    edit "RealNetworks-NetBIOS.Name.Service"
        set internet-service-id 1638424
    next
    edit "Zoho-Other"
        set internet-service-id 1703936
    next
    edit "Zoho-Web"
        set internet-service-id 1703937
    next
    edit "Zoho-ICMP"
        set internet-service-id 1703938
    next
    edit "Zoho-DNS"
        set internet-service-id 1703939
    next
    edit "Zoho-Outbound_Email"
        set internet-service-id 1703940
    next
    edit "Zoho-SSH"
        set internet-service-id 1703942
    next
    edit "Zoho-FTP"
        set internet-service-id 1703943
    next
    edit "Zoho-NTP"
        set internet-service-id 1703944
    next
    edit "Zoho-Inbound_Email"
        set internet-service-id 1703945
    next
    edit "Zoho-LDAP"
        set internet-service-id 1703950
    next
    edit "Zoho-NetBIOS.Session.Service"
        set internet-service-id 1703951
    next
    edit "Zoho-RTMP"
        set internet-service-id 1703952
    next
    edit "Zoho-NetBIOS.Name.Service"
        set internet-service-id 1703960
    next
    edit "Mozilla-Other"
        set internet-service-id 1769472
    next
    edit "Mozilla-Web"
        set internet-service-id 1769473
    next
    edit "Mozilla-ICMP"
        set internet-service-id 1769474
    next
    edit "Mozilla-DNS"
        set internet-service-id 1769475
    next
    edit "Mozilla-Outbound_Email"
        set internet-service-id 1769476
    next
    edit "Mozilla-SSH"
        set internet-service-id 1769478
    next
    edit "Mozilla-FTP"
        set internet-service-id 1769479
    next
    edit "Mozilla-NTP"
        set internet-service-id 1769480
    next
    edit "Mozilla-Inbound_Email"
        set internet-service-id 1769481
    next
    edit "Mozilla-LDAP"
        set internet-service-id 1769486
    next
    edit "Mozilla-NetBIOS.Session.Service"
        set internet-service-id 1769487
    next
    edit "Mozilla-RTMP"
        set internet-service-id 1769488
    next
    edit "Mozilla-NetBIOS.Name.Service"
        set internet-service-id 1769496
    next
    edit "TeamViewer-Other"
        set internet-service-id 1835008
    next
    edit "TeamViewer-Web"
        set internet-service-id 1835009
    next
    edit "TeamViewer-ICMP"
        set internet-service-id 1835010
    next
    edit "TeamViewer-DNS"
        set internet-service-id 1835011
    next
    edit "TeamViewer-Outbound_Email"
        set internet-service-id 1835012
    next
    edit "TeamViewer-SSH"
        set internet-service-id 1835014
    next
    edit "TeamViewer-FTP"
        set internet-service-id 1835015
    next
    edit "TeamViewer-NTP"
        set internet-service-id 1835016
    next
    edit "TeamViewer-Inbound_Email"
        set internet-service-id 1835017
    next
    edit "TeamViewer-LDAP"
        set internet-service-id 1835022
    next
    edit "TeamViewer-NetBIOS.Session.Service"
        set internet-service-id 1835023
    next
    edit "TeamViewer-RTMP"
        set internet-service-id 1835024
    next
    edit "TeamViewer-NetBIOS.Name.Service"
        set internet-service-id 1835032
    next
    edit "TeamViewer-TeamViewer"
        set internet-service-id 1835117
    next
    edit "HP-Other"
        set internet-service-id 1900544
    next
    edit "HP-Web"
        set internet-service-id 1900545
    next
    edit "HP-ICMP"
        set internet-service-id 1900546
    next
    edit "HP-DNS"
        set internet-service-id 1900547
    next
    edit "HP-Outbound_Email"
        set internet-service-id 1900548
    next
    edit "HP-SSH"
        set internet-service-id 1900550
    next
    edit "HP-FTP"
        set internet-service-id 1900551
    next
    edit "HP-NTP"
        set internet-service-id 1900552
    next
    edit "HP-Inbound_Email"
        set internet-service-id 1900553
    next
    edit "HP-LDAP"
        set internet-service-id 1900558
    next
    edit "HP-NetBIOS.Session.Service"
        set internet-service-id 1900559
    next
    edit "HP-RTMP"
        set internet-service-id 1900560
    next
    edit "HP-NetBIOS.Name.Service"
        set internet-service-id 1900568
    next
    edit "HP-Aruba"
        set internet-service-id 1900726
    next
    edit "Cisco-Other"
        set internet-service-id 1966080
    next
    edit "Cisco-Web"
        set internet-service-id 1966081
    next
    edit "Cisco-ICMP"
        set internet-service-id 1966082
    next
    edit "Cisco-DNS"
        set internet-service-id 1966083
    next
    edit "Cisco-Outbound_Email"
        set internet-service-id 1966084
    next
    edit "Cisco-SSH"
        set internet-service-id 1966086
    next
    edit "Cisco-FTP"
        set internet-service-id 1966087
    next
    edit "Cisco-NTP"
        set internet-service-id 1966088
    next
    edit "Cisco-Inbound_Email"
        set internet-service-id 1966089
    next
    edit "Cisco-LDAP"
        set internet-service-id 1966094
    next
    edit "Cisco-NetBIOS.Session.Service"
        set internet-service-id 1966095
    next
    edit "Cisco-RTMP"
        set internet-service-id 1966096
    next
    edit "Cisco-NetBIOS.Name.Service"
        set internet-service-id 1966104
    next
    edit "Cisco-Webex"
        set internet-service-id 1966183
    next
    edit "Cisco-Meraki.Cloud"
        set internet-service-id 1966218
    next
    edit "Cisco-Duo.Security"
        set internet-service-id 1966225
    next
    edit "Cisco-AppDynamic"
        set internet-service-id 1966260
    next
    edit "IBM-Other"
        set internet-service-id 2031616
    next
    edit "IBM-Web"
        set internet-service-id 2031617
    next
    edit "IBM-ICMP"
        set internet-service-id 2031618
    next
    edit "IBM-DNS"
        set internet-service-id 2031619
    next
    edit "IBM-Outbound_Email"
        set internet-service-id 2031620
    next
    edit "IBM-SSH"
        set internet-service-id 2031622
    next
    edit "IBM-FTP"
        set internet-service-id 2031623
    next
    edit "IBM-NTP"
        set internet-service-id 2031624
    next
    edit "IBM-Inbound_Email"
        set internet-service-id 2031625
    next
    edit "IBM-LDAP"
        set internet-service-id 2031630
    next
    edit "IBM-NetBIOS.Session.Service"
        set internet-service-id 2031631
    next
    edit "IBM-RTMP"
        set internet-service-id 2031632
    next
    edit "IBM-NetBIOS.Name.Service"
        set internet-service-id 2031640
    next
    edit "IBM-IBM.Cloud"
        set internet-service-id 2031748
    next
    edit "Citrix-Other"
        set internet-service-id 2097152
    next
    edit "Citrix-Web"
        set internet-service-id 2097153
    next
    edit "Citrix-ICMP"
        set internet-service-id 2097154
    next
    edit "Citrix-DNS"
        set internet-service-id 2097155
    next
    edit "Citrix-Outbound_Email"
        set internet-service-id 2097156
    next
    edit "Citrix-SSH"
        set internet-service-id 2097158
    next
    edit "Citrix-FTP"
        set internet-service-id 2097159
    next
    edit "Citrix-NTP"
        set internet-service-id 2097160
    next
    edit "Citrix-Inbound_Email"
        set internet-service-id 2097161
    next
    edit "Citrix-LDAP"
        set internet-service-id 2097166
    next
    edit "Citrix-NetBIOS.Session.Service"
        set internet-service-id 2097167
    next
    edit "Citrix-RTMP"
        set internet-service-id 2097168
    next
    edit "Citrix-NetBIOS.Name.Service"
        set internet-service-id 2097176
    next
    edit "Twitter-Other"
        set internet-service-id 2162688
    next
    edit "Twitter-Web"
        set internet-service-id 2162689
    next
    edit "Twitter-ICMP"
        set internet-service-id 2162690
    next
    edit "Twitter-DNS"
        set internet-service-id 2162691
    next
    edit "Twitter-Outbound_Email"
        set internet-service-id 2162692
    next
    edit "Twitter-SSH"
        set internet-service-id 2162694
    next
    edit "Twitter-FTP"
        set internet-service-id 2162695
    next
    edit "Twitter-NTP"
        set internet-service-id 2162696
    next
    edit "Twitter-Inbound_Email"
        set internet-service-id 2162697
    next
    edit "Twitter-LDAP"
        set internet-service-id 2162702
    next
    edit "Twitter-NetBIOS.Session.Service"
        set internet-service-id 2162703
    next
    edit "Twitter-RTMP"
        set internet-service-id 2162704
    next
    edit "Twitter-NetBIOS.Name.Service"
        set internet-service-id 2162712
    next
    edit "Dell-Other"
        set internet-service-id 2228224
    next
    edit "Dell-Web"
        set internet-service-id 2228225
    next
    edit "Dell-ICMP"
        set internet-service-id 2228226
    next
    edit "Dell-DNS"
        set internet-service-id 2228227
    next
    edit "Dell-Outbound_Email"
        set internet-service-id 2228228
    next
    edit "Dell-SSH"
        set internet-service-id 2228230
    next
    edit "Dell-FTP"
        set internet-service-id 2228231
    next
    edit "Dell-NTP"
        set internet-service-id 2228232
    next
    edit "Dell-Inbound_Email"
        set internet-service-id 2228233
    next
    edit "Dell-LDAP"
        set internet-service-id 2228238
    next
    edit "Dell-NetBIOS.Session.Service"
        set internet-service-id 2228239
    next
    edit "Dell-RTMP"
        set internet-service-id 2228240
    next
    edit "Dell-NetBIOS.Name.Service"
        set internet-service-id 2228248
    next
    edit "Vimeo-Other"
        set internet-service-id 2293760
    next
    edit "Vimeo-Web"
        set internet-service-id 2293761
    next
    edit "Vimeo-ICMP"
        set internet-service-id 2293762
    next
    edit "Vimeo-DNS"
        set internet-service-id 2293763
    next
    edit "Vimeo-Outbound_Email"
        set internet-service-id 2293764
    next
    edit "Vimeo-SSH"
        set internet-service-id 2293766
    next
    edit "Vimeo-FTP"
        set internet-service-id 2293767
    next
    edit "Vimeo-NTP"
        set internet-service-id 2293768
    next
    edit "Vimeo-Inbound_Email"
        set internet-service-id 2293769
    next
    edit "Vimeo-LDAP"
        set internet-service-id 2293774
    next
    edit "Vimeo-NetBIOS.Session.Service"
        set internet-service-id 2293775
    next
    edit "Vimeo-RTMP"
        set internet-service-id 2293776
    next
    edit "Vimeo-NetBIOS.Name.Service"
        set internet-service-id 2293784
    next
    edit "Redhat-Other"
        set internet-service-id 2359296
    next
    edit "Redhat-Web"
        set internet-service-id 2359297
    next
    edit "Redhat-ICMP"
        set internet-service-id 2359298
    next
    edit "Redhat-DNS"
        set internet-service-id 2359299
    next
    edit "Redhat-Outbound_Email"
        set internet-service-id 2359300
    next
    edit "Redhat-SSH"
        set internet-service-id 2359302
    next
    edit "Redhat-FTP"
        set internet-service-id 2359303
    next
    edit "Redhat-NTP"
        set internet-service-id 2359304
    next
    edit "Redhat-Inbound_Email"
        set internet-service-id 2359305
    next
    edit "Redhat-LDAP"
        set internet-service-id 2359310
    next
    edit "Redhat-NetBIOS.Session.Service"
        set internet-service-id 2359311
    next
    edit "Redhat-RTMP"
        set internet-service-id 2359312
    next
    edit "Redhat-NetBIOS.Name.Service"
        set internet-service-id 2359320
    next
    edit "VK-Other"
        set internet-service-id 2424832
    next
    edit "VK-Web"
        set internet-service-id 2424833
    next
    edit "VK-ICMP"
        set internet-service-id 2424834
    next
    edit "VK-DNS"
        set internet-service-id 2424835
    next
    edit "VK-Outbound_Email"
        set internet-service-id 2424836
    next
    edit "VK-SSH"
        set internet-service-id 2424838
    next
    edit "VK-FTP"
        set internet-service-id 2424839
    next
    edit "VK-NTP"
        set internet-service-id 2424840
    next
    edit "VK-Inbound_Email"
        set internet-service-id 2424841
    next
    edit "VK-LDAP"
        set internet-service-id 2424846
    next
    edit "VK-NetBIOS.Session.Service"
        set internet-service-id 2424847
    next
    edit "VK-RTMP"
        set internet-service-id 2424848
    next
    edit "VK-NetBIOS.Name.Service"
        set internet-service-id 2424856
    next
    edit "TrendMicro-Other"
        set internet-service-id 2490368
    next
    edit "TrendMicro-Web"
        set internet-service-id 2490369
    next
    edit "TrendMicro-ICMP"
        set internet-service-id 2490370
    next
    edit "TrendMicro-DNS"
        set internet-service-id 2490371
    next
    edit "TrendMicro-Outbound_Email"
        set internet-service-id 2490372
    next
    edit "TrendMicro-SSH"
        set internet-service-id 2490374
    next
    edit "TrendMicro-FTP"
        set internet-service-id 2490375
    next
    edit "TrendMicro-NTP"
        set internet-service-id 2490376
    next
    edit "TrendMicro-Inbound_Email"
        set internet-service-id 2490377
    next
    edit "TrendMicro-LDAP"
        set internet-service-id 2490382
    next
    edit "TrendMicro-NetBIOS.Session.Service"
        set internet-service-id 2490383
    next
    edit "TrendMicro-RTMP"
        set internet-service-id 2490384
    next
    edit "TrendMicro-NetBIOS.Name.Service"
        set internet-service-id 2490392
    next
    edit "Tencent-Other"
        set internet-service-id 2555904
    next
    edit "Tencent-Web"
        set internet-service-id 2555905
    next
    edit "Tencent-ICMP"
        set internet-service-id 2555906
    next
    edit "Tencent-DNS"
        set internet-service-id 2555907
    next
    edit "Tencent-Outbound_Email"
        set internet-service-id 2555908
    next
    edit "Tencent-SSH"
        set internet-service-id 2555910
    next
    edit "Tencent-FTP"
        set internet-service-id 2555911
    next
    edit "Tencent-NTP"
        set internet-service-id 2555912
    next
    edit "Tencent-Inbound_Email"
        set internet-service-id 2555913
    next
    edit "Tencent-LDAP"
        set internet-service-id 2555918
    next
    edit "Tencent-NetBIOS.Session.Service"
        set internet-service-id 2555919
    next
    edit "Tencent-RTMP"
        set internet-service-id 2555920
    next
    edit "Tencent-NetBIOS.Name.Service"
        set internet-service-id 2555928
    next
    edit "Ask-Other"
        set internet-service-id 2621440
    next
    edit "Ask-Web"
        set internet-service-id 2621441
    next
    edit "Ask-ICMP"
        set internet-service-id 2621442
    next
    edit "Ask-DNS"
        set internet-service-id 2621443
    next
    edit "Ask-Outbound_Email"
        set internet-service-id 2621444
    next
    edit "Ask-SSH"
        set internet-service-id 2621446
    next
    edit "Ask-FTP"
        set internet-service-id 2621447
    next
    edit "Ask-NTP"
        set internet-service-id 2621448
    next
    edit "Ask-Inbound_Email"
        set internet-service-id 2621449
    next
    edit "Ask-LDAP"
        set internet-service-id 2621454
    next
    edit "Ask-NetBIOS.Session.Service"
        set internet-service-id 2621455
    next
    edit "Ask-RTMP"
        set internet-service-id 2621456
    next
    edit "Ask-NetBIOS.Name.Service"
        set internet-service-id 2621464
    next
    edit "CNN-Other"
        set internet-service-id 2686976
    next
    edit "CNN-Web"
        set internet-service-id 2686977
    next
    edit "CNN-ICMP"
        set internet-service-id 2686978
    next
    edit "CNN-DNS"
        set internet-service-id 2686979
    next
    edit "CNN-Outbound_Email"
        set internet-service-id 2686980
    next
    edit "CNN-SSH"
        set internet-service-id 2686982
    next
    edit "CNN-FTP"
        set internet-service-id 2686983
    next
    edit "CNN-NTP"
        set internet-service-id 2686984
    next
    edit "CNN-Inbound_Email"
        set internet-service-id 2686985
    next
    edit "CNN-LDAP"
        set internet-service-id 2686990
    next
    edit "CNN-NetBIOS.Session.Service"
        set internet-service-id 2686991
    next
    edit "CNN-RTMP"
        set internet-service-id 2686992
    next
    edit "CNN-NetBIOS.Name.Service"
        set internet-service-id 2687000
    next
    edit "Myspace-Other"
        set internet-service-id 2752512
    next
    edit "Myspace-Web"
        set internet-service-id 2752513
    next
    edit "Myspace-ICMP"
        set internet-service-id 2752514
    next
    edit "Myspace-DNS"
        set internet-service-id 2752515
    next
    edit "Myspace-Outbound_Email"
        set internet-service-id 2752516
    next
    edit "Myspace-SSH"
        set internet-service-id 2752518
    next
    edit "Myspace-FTP"
        set internet-service-id 2752519
    next
    edit "Myspace-NTP"
        set internet-service-id 2752520
    next
    edit "Myspace-Inbound_Email"
        set internet-service-id 2752521
    next
    edit "Myspace-LDAP"
        set internet-service-id 2752526
    next
    edit "Myspace-NetBIOS.Session.Service"
        set internet-service-id 2752527
    next
    edit "Myspace-RTMP"
        set internet-service-id 2752528
    next
    edit "Myspace-NetBIOS.Name.Service"
        set internet-service-id 2752536
    next
    edit "Tor-Relay.Node"
        set internet-service-id 2818238
    next
    edit "Tor-Exit.Node"
        set internet-service-id 2818243
    next
    edit "Baidu-Other"
        set internet-service-id 2883584
    next
    edit "Baidu-Web"
        set internet-service-id 2883585
    next
    edit "Baidu-ICMP"
        set internet-service-id 2883586
    next
    edit "Baidu-DNS"
        set internet-service-id 2883587
    next
    edit "Baidu-Outbound_Email"
        set internet-service-id 2883588
    next
    edit "Baidu-SSH"
        set internet-service-id 2883590
    next
    edit "Baidu-FTP"
        set internet-service-id 2883591
    next
    edit "Baidu-NTP"
        set internet-service-id 2883592
    next
    edit "Baidu-Inbound_Email"
        set internet-service-id 2883593
    next
    edit "Baidu-LDAP"
        set internet-service-id 2883598
    next
    edit "Baidu-NetBIOS.Session.Service"
        set internet-service-id 2883599
    next
    edit "Baidu-RTMP"
        set internet-service-id 2883600
    next
    edit "Baidu-NetBIOS.Name.Service"
        set internet-service-id 2883608
    next
    edit "ntp.org-Other"
        set internet-service-id 2949120
    next
    edit "ntp.org-Web"
        set internet-service-id 2949121
    next
    edit "ntp.org-ICMP"
        set internet-service-id 2949122
    next
    edit "ntp.org-DNS"
        set internet-service-id 2949123
    next
    edit "ntp.org-Outbound_Email"
        set internet-service-id 2949124
    next
    edit "ntp.org-SSH"
        set internet-service-id 2949126
    next
    edit "ntp.org-FTP"
        set internet-service-id 2949127
    next
    edit "ntp.org-NTP"
        set internet-service-id 2949128
    next
    edit "ntp.org-Inbound_Email"
        set internet-service-id 2949129
    next
    edit "ntp.org-LDAP"
        set internet-service-id 2949134
    next
    edit "ntp.org-NetBIOS.Session.Service"
        set internet-service-id 2949135
    next
    edit "ntp.org-RTMP"
        set internet-service-id 2949136
    next
    edit "ntp.org-NetBIOS.Name.Service"
        set internet-service-id 2949144
    next
    edit "Proxy-Proxy.Server"
        set internet-service-id 3014850
    next
    edit "Botnet-C&C.Server"
        set internet-service-id 3080383
    next
    edit "Spam-Spamming.Server"
        set internet-service-id 3145920
    next
    edit "Phishing-Phishing.Server"
        set internet-service-id 3211457
    next
    edit "Zendesk-Other"
        set internet-service-id 3407872
    next
    edit "Zendesk-Web"
        set internet-service-id 3407873
    next
    edit "Zendesk-ICMP"
        set internet-service-id 3407874
    next
    edit "Zendesk-DNS"
        set internet-service-id 3407875
    next
    edit "Zendesk-Outbound_Email"
        set internet-service-id 3407876
    next
    edit "Zendesk-SSH"
        set internet-service-id 3407878
    next
    edit "Zendesk-FTP"
        set internet-service-id 3407879
    next
    edit "Zendesk-NTP"
        set internet-service-id 3407880
    next
    edit "Zendesk-Inbound_Email"
        set internet-service-id 3407881
    next
    edit "Zendesk-LDAP"
        set internet-service-id 3407886
    next
    edit "Zendesk-NetBIOS.Session.Service"
        set internet-service-id 3407887
    next
    edit "Zendesk-RTMP"
        set internet-service-id 3407888
    next
    edit "Zendesk-NetBIOS.Name.Service"
        set internet-service-id 3407896
    next
    edit "Zendesk-Zendesk.Suite"
        set internet-service-id 3408047
    next
    edit "DocuSign-Other"
        set internet-service-id 3473408
    next
    edit "DocuSign-Web"
        set internet-service-id 3473409
    next
    edit "DocuSign-ICMP"
        set internet-service-id 3473410
    next
    edit "DocuSign-DNS"
        set internet-service-id 3473411
    next
    edit "DocuSign-Outbound_Email"
        set internet-service-id 3473412
    next
    edit "DocuSign-SSH"
        set internet-service-id 3473414
    next
    edit "DocuSign-FTP"
        set internet-service-id 3473415
    next
    edit "DocuSign-NTP"
        set internet-service-id 3473416
    next
    edit "DocuSign-Inbound_Email"
        set internet-service-id 3473417
    next
    edit "DocuSign-LDAP"
        set internet-service-id 3473422
    next
    edit "DocuSign-NetBIOS.Session.Service"
        set internet-service-id 3473423
    next
    edit "DocuSign-RTMP"
        set internet-service-id 3473424
    next
    edit "DocuSign-NetBIOS.Name.Service"
        set internet-service-id 3473432
    next
    edit "ServiceNow-Other"
        set internet-service-id 3538944
    next
    edit "ServiceNow-Web"
        set internet-service-id 3538945
    next
    edit "ServiceNow-ICMP"
        set internet-service-id 3538946
    next
    edit "ServiceNow-DNS"
        set internet-service-id 3538947
    next
    edit "ServiceNow-Outbound_Email"
        set internet-service-id 3538948
    next
    edit "ServiceNow-SSH"
        set internet-service-id 3538950
    next
    edit "ServiceNow-FTP"
        set internet-service-id 3538951
    next
    edit "ServiceNow-NTP"
        set internet-service-id 3538952
    next
    edit "ServiceNow-Inbound_Email"
        set internet-service-id 3538953
    next
    edit "ServiceNow-LDAP"
        set internet-service-id 3538958
    next
    edit "ServiceNow-NetBIOS.Session.Service"
        set internet-service-id 3538959
    next
    edit "ServiceNow-RTMP"
        set internet-service-id 3538960
    next
    edit "ServiceNow-NetBIOS.Name.Service"
        set internet-service-id 3538968
    next
    edit "GitHub-GitHub"
        set internet-service-id 3604638
    next
    edit "Workday-Other"
        set internet-service-id 3670016
    next
    edit "Workday-Web"
        set internet-service-id 3670017
    next
    edit "Workday-ICMP"
        set internet-service-id 3670018
    next
    edit "Workday-DNS"
        set internet-service-id 3670019
    next
    edit "Workday-Outbound_Email"
        set internet-service-id 3670020
    next
    edit "Workday-SSH"
        set internet-service-id 3670022
    next
    edit "Workday-FTP"
        set internet-service-id 3670023
    next
    edit "Workday-NTP"
        set internet-service-id 3670024
    next
    edit "Workday-Inbound_Email"
        set internet-service-id 3670025
    next
    edit "Workday-LDAP"
        set internet-service-id 3670030
    next
    edit "Workday-NetBIOS.Session.Service"
        set internet-service-id 3670031
    next
    edit "Workday-RTMP"
        set internet-service-id 3670032
    next
    edit "Workday-NetBIOS.Name.Service"
        set internet-service-id 3670040
    next
    edit "HubSpot-Other"
        set internet-service-id 3735552
    next
    edit "HubSpot-Web"
        set internet-service-id 3735553
    next
    edit "HubSpot-ICMP"
        set internet-service-id 3735554
    next
    edit "HubSpot-DNS"
        set internet-service-id 3735555
    next
    edit "HubSpot-Outbound_Email"
        set internet-service-id 3735556
    next
    edit "HubSpot-SSH"
        set internet-service-id 3735558
    next
    edit "HubSpot-FTP"
        set internet-service-id 3735559
    next
    edit "HubSpot-NTP"
        set internet-service-id 3735560
    next
    edit "HubSpot-Inbound_Email"
        set internet-service-id 3735561
    next
    edit "HubSpot-LDAP"
        set internet-service-id 3735566
    next
    edit "HubSpot-NetBIOS.Session.Service"
        set internet-service-id 3735567
    next
    edit "HubSpot-RTMP"
        set internet-service-id 3735568
    next
    edit "HubSpot-NetBIOS.Name.Service"
        set internet-service-id 3735576
    next
    edit "Twilio-Other"
        set internet-service-id 3801088
    next
    edit "Twilio-Web"
        set internet-service-id 3801089
    next
    edit "Twilio-ICMP"
        set internet-service-id 3801090
    next
    edit "Twilio-DNS"
        set internet-service-id 3801091
    next
    edit "Twilio-Outbound_Email"
        set internet-service-id 3801092
    next
    edit "Twilio-SSH"
        set internet-service-id 3801094
    next
    edit "Twilio-FTP"
        set internet-service-id 3801095
    next
    edit "Twilio-NTP"
        set internet-service-id 3801096
    next
    edit "Twilio-Inbound_Email"
        set internet-service-id 3801097
    next
    edit "Twilio-LDAP"
        set internet-service-id 3801102
    next
    edit "Twilio-NetBIOS.Session.Service"
        set internet-service-id 3801103
    next
    edit "Twilio-RTMP"
        set internet-service-id 3801104
    next
    edit "Twilio-NetBIOS.Name.Service"
        set internet-service-id 3801112
    next
    edit "Twilio-Elastic.SIP.Trunking"
        set internet-service-id 3801277
    next
    edit "Coupa-Other"
        set internet-service-id 3866624
    next
    edit "Coupa-Web"
        set internet-service-id 3866625
    next
    edit "Coupa-ICMP"
        set internet-service-id 3866626
    next
    edit "Coupa-DNS"
        set internet-service-id 3866627
    next
    edit "Coupa-Outbound_Email"
        set internet-service-id 3866628
    next
    edit "Coupa-SSH"
        set internet-service-id 3866630
    next
    edit "Coupa-FTP"
        set internet-service-id 3866631
    next
    edit "Coupa-NTP"
        set internet-service-id 3866632
    next
    edit "Coupa-Inbound_Email"
        set internet-service-id 3866633
    next
    edit "Coupa-LDAP"
        set internet-service-id 3866638
    next
    edit "Coupa-NetBIOS.Session.Service"
        set internet-service-id 3866639
    next
    edit "Coupa-RTMP"
        set internet-service-id 3866640
    next
    edit "Coupa-NetBIOS.Name.Service"
        set internet-service-id 3866648
    next
    edit "Atlassian-Other"
        set internet-service-id 3932160
    next
    edit "Atlassian-Web"
        set internet-service-id 3932161
    next
    edit "Atlassian-ICMP"
        set internet-service-id 3932162
    next
    edit "Atlassian-DNS"
        set internet-service-id 3932163
    next
    edit "Atlassian-Outbound_Email"
        set internet-service-id 3932164
    next
    edit "Atlassian-SSH"
        set internet-service-id 3932166
    next
    edit "Atlassian-FTP"
        set internet-service-id 3932167
    next
    edit "Atlassian-NTP"
        set internet-service-id 3932168
    next
    edit "Atlassian-Inbound_Email"
        set internet-service-id 3932169
    next
    edit "Atlassian-LDAP"
        set internet-service-id 3932174
    next
    edit "Atlassian-NetBIOS.Session.Service"
        set internet-service-id 3932175
    next
    edit "Atlassian-RTMP"
        set internet-service-id 3932176
    next
    edit "Atlassian-NetBIOS.Name.Service"
        set internet-service-id 3932184
    next
    edit "Xero-Other"
        set internet-service-id 3997696
    next
    edit "Xero-Web"
        set internet-service-id 3997697
    next
    edit "Xero-ICMP"
        set internet-service-id 3997698
    next
    edit "Xero-DNS"
        set internet-service-id 3997699
    next
    edit "Xero-Outbound_Email"
        set internet-service-id 3997700
    next
    edit "Xero-SSH"
        set internet-service-id 3997702
    next
    edit "Xero-FTP"
        set internet-service-id 3997703
    next
    edit "Xero-NTP"
        set internet-service-id 3997704
    next
    edit "Xero-Inbound_Email"
        set internet-service-id 3997705
    next
    edit "Xero-LDAP"
        set internet-service-id 3997710
    next
    edit "Xero-NetBIOS.Session.Service"
        set internet-service-id 3997711
    next
    edit "Xero-RTMP"
        set internet-service-id 3997712
    next
    edit "Xero-NetBIOS.Name.Service"
        set internet-service-id 3997720
    next
    edit "Zuora-Other"
        set internet-service-id 4063232
    next
    edit "Zuora-Web"
        set internet-service-id 4063233
    next
    edit "Zuora-ICMP"
        set internet-service-id 4063234
    next
    edit "Zuora-DNS"
        set internet-service-id 4063235
    next
    edit "Zuora-Outbound_Email"
        set internet-service-id 4063236
    next
    edit "Zuora-SSH"
        set internet-service-id 4063238
    next
    edit "Zuora-FTP"
        set internet-service-id 4063239
    next
    edit "Zuora-NTP"
        set internet-service-id 4063240
    next
    edit "Zuora-Inbound_Email"
        set internet-service-id 4063241
    next
    edit "Zuora-LDAP"
        set internet-service-id 4063246
    next
    edit "Zuora-NetBIOS.Session.Service"
        set internet-service-id 4063247
    next
    edit "Zuora-RTMP"
        set internet-service-id 4063248
    next
    edit "Zuora-NetBIOS.Name.Service"
        set internet-service-id 4063256
    next
    edit "AdRoll-Other"
        set internet-service-id 4128768
    next
    edit "AdRoll-Web"
        set internet-service-id 4128769
    next
    edit "AdRoll-ICMP"
        set internet-service-id 4128770
    next
    edit "AdRoll-DNS"
        set internet-service-id 4128771
    next
    edit "AdRoll-Outbound_Email"
        set internet-service-id 4128772
    next
    edit "AdRoll-SSH"
        set internet-service-id 4128774
    next
    edit "AdRoll-FTP"
        set internet-service-id 4128775
    next
    edit "AdRoll-NTP"
        set internet-service-id 4128776
    next
    edit "AdRoll-Inbound_Email"
        set internet-service-id 4128777
    next
    edit "AdRoll-LDAP"
        set internet-service-id 4128782
    next
    edit "AdRoll-NetBIOS.Session.Service"
        set internet-service-id 4128783
    next
    edit "AdRoll-RTMP"
        set internet-service-id 4128784
    next
    edit "AdRoll-NetBIOS.Name.Service"
        set internet-service-id 4128792
    next
    edit "Xactly-Other"
        set internet-service-id 4194304
    next
    edit "Xactly-Web"
        set internet-service-id 4194305
    next
    edit "Xactly-ICMP"
        set internet-service-id 4194306
    next
    edit "Xactly-DNS"
        set internet-service-id 4194307
    next
    edit "Xactly-Outbound_Email"
        set internet-service-id 4194308
    next
    edit "Xactly-SSH"
        set internet-service-id 4194310
    next
    edit "Xactly-FTP"
        set internet-service-id 4194311
    next
    edit "Xactly-NTP"
        set internet-service-id 4194312
    next
    edit "Xactly-Inbound_Email"
        set internet-service-id 4194313
    next
    edit "Xactly-LDAP"
        set internet-service-id 4194318
    next
    edit "Xactly-NetBIOS.Session.Service"
        set internet-service-id 4194319
    next
    edit "Xactly-RTMP"
        set internet-service-id 4194320
    next
    edit "Xactly-NetBIOS.Name.Service"
        set internet-service-id 4194328
    next
    edit "Intuit-Other"
        set internet-service-id 4259840
    next
    edit "Intuit-Web"
        set internet-service-id 4259841
    next
    edit "Intuit-ICMP"
        set internet-service-id 4259842
    next
    edit "Intuit-DNS"
        set internet-service-id 4259843
    next
    edit "Intuit-Outbound_Email"
        set internet-service-id 4259844
    next
    edit "Intuit-SSH"
        set internet-service-id 4259846
    next
    edit "Intuit-FTP"
        set internet-service-id 4259847
    next
    edit "Intuit-NTP"
        set internet-service-id 4259848
    next
    edit "Intuit-Inbound_Email"
        set internet-service-id 4259849
    next
    edit "Intuit-LDAP"
        set internet-service-id 4259854
    next
    edit "Intuit-NetBIOS.Session.Service"
        set internet-service-id 4259855
    next
    edit "Intuit-RTMP"
        set internet-service-id 4259856
    next
    edit "Intuit-NetBIOS.Name.Service"
        set internet-service-id 4259864
    next
    edit "Marketo-Other"
        set internet-service-id 4325376
    next
    edit "Marketo-Web"
        set internet-service-id 4325377
    next
    edit "Marketo-ICMP"
        set internet-service-id 4325378
    next
    edit "Marketo-DNS"
        set internet-service-id 4325379
    next
    edit "Marketo-Outbound_Email"
        set internet-service-id 4325380
    next
    edit "Marketo-SSH"
        set internet-service-id 4325382
    next
    edit "Marketo-FTP"
        set internet-service-id 4325383
    next
    edit "Marketo-NTP"
        set internet-service-id 4325384
    next
    edit "Marketo-Inbound_Email"
        set internet-service-id 4325385
    next
    edit "Marketo-LDAP"
        set internet-service-id 4325390
    next
    edit "Marketo-NetBIOS.Session.Service"
        set internet-service-id 4325391
    next
    edit "Marketo-RTMP"
        set internet-service-id 4325392
    next
    edit "Marketo-NetBIOS.Name.Service"
        set internet-service-id 4325400
    next
    edit "Bill-Other"
        set internet-service-id 4456448
    next
    edit "Bill-Web"
        set internet-service-id 4456449
    next
    edit "Bill-ICMP"
        set internet-service-id 4456450
    next
    edit "Bill-DNS"
        set internet-service-id 4456451
    next
    edit "Bill-Outbound_Email"
        set internet-service-id 4456452
    next
    edit "Bill-SSH"
        set internet-service-id 4456454
    next
    edit "Bill-FTP"
        set internet-service-id 4456455
    next
    edit "Bill-NTP"
        set internet-service-id 4456456
    next
    edit "Bill-Inbound_Email"
        set internet-service-id 4456457
    next
    edit "Bill-LDAP"
        set internet-service-id 4456462
    next
    edit "Bill-NetBIOS.Session.Service"
        set internet-service-id 4456463
    next
    edit "Bill-RTMP"
        set internet-service-id 4456464
    next
    edit "Bill-NetBIOS.Name.Service"
        set internet-service-id 4456472
    next
    edit "Shopify-Other"
        set internet-service-id 4521984
    next
    edit "Shopify-Web"
        set internet-service-id 4521985
    next
    edit "Shopify-ICMP"
        set internet-service-id 4521986
    next
    edit "Shopify-DNS"
        set internet-service-id 4521987
    next
    edit "Shopify-Outbound_Email"
        set internet-service-id 4521988
    next
    edit "Shopify-SSH"
        set internet-service-id 4521990
    next
    edit "Shopify-FTP"
        set internet-service-id 4521991
    next
    edit "Shopify-NTP"
        set internet-service-id 4521992
    next
    edit "Shopify-Inbound_Email"
        set internet-service-id 4521993
    next
    edit "Shopify-LDAP"
        set internet-service-id 4521998
    next
    edit "Shopify-NetBIOS.Session.Service"
        set internet-service-id 4521999
    next
    edit "Shopify-RTMP"
        set internet-service-id 4522000
    next
    edit "Shopify-NetBIOS.Name.Service"
        set internet-service-id 4522008
    next
    edit "Shopify-Shopify"
        set internet-service-id 4522162
    next
    edit "MuleSoft-Other"
        set internet-service-id 4587520
    next
    edit "MuleSoft-Web"
        set internet-service-id 4587521
    next
    edit "MuleSoft-ICMP"
        set internet-service-id 4587522
    next
    edit "MuleSoft-DNS"
        set internet-service-id 4587523
    next
    edit "MuleSoft-Outbound_Email"
        set internet-service-id 4587524
    next
    edit "MuleSoft-SSH"
        set internet-service-id 4587526
    next
    edit "MuleSoft-FTP"
        set internet-service-id 4587527
    next
    edit "MuleSoft-NTP"
        set internet-service-id 4587528
    next
    edit "MuleSoft-Inbound_Email"
        set internet-service-id 4587529
    next
    edit "MuleSoft-LDAP"
        set internet-service-id 4587534
    next
    edit "MuleSoft-NetBIOS.Session.Service"
        set internet-service-id 4587535
    next
    edit "MuleSoft-RTMP"
        set internet-service-id 4587536
    next
    edit "MuleSoft-NetBIOS.Name.Service"
        set internet-service-id 4587544
    next
    edit "Cornerstone-Other"
        set internet-service-id 4653056
    next
    edit "Cornerstone-Web"
        set internet-service-id 4653057
    next
    edit "Cornerstone-ICMP"
        set internet-service-id 4653058
    next
    edit "Cornerstone-DNS"
        set internet-service-id 4653059
    next
    edit "Cornerstone-Outbound_Email"
        set internet-service-id 4653060
    next
    edit "Cornerstone-SSH"
        set internet-service-id 4653062
    next
    edit "Cornerstone-FTP"
        set internet-service-id 4653063
    next
    edit "Cornerstone-NTP"
        set internet-service-id 4653064
    next
    edit "Cornerstone-Inbound_Email"
        set internet-service-id 4653065
    next
    edit "Cornerstone-LDAP"
        set internet-service-id 4653070
    next
    edit "Cornerstone-NetBIOS.Session.Service"
        set internet-service-id 4653071
    next
    edit "Cornerstone-RTMP"
        set internet-service-id 4653072
    next
    edit "Cornerstone-NetBIOS.Name.Service"
        set internet-service-id 4653080
    next
    edit "Eventbrite-Other"
        set internet-service-id 4718592
    next
    edit "Eventbrite-Web"
        set internet-service-id 4718593
    next
    edit "Eventbrite-ICMP"
        set internet-service-id 4718594
    next
    edit "Eventbrite-DNS"
        set internet-service-id 4718595
    next
    edit "Eventbrite-Outbound_Email"
        set internet-service-id 4718596
    next
    edit "Eventbrite-SSH"
        set internet-service-id 4718598
    next
    edit "Eventbrite-FTP"
        set internet-service-id 4718599
    next
    edit "Eventbrite-NTP"
        set internet-service-id 4718600
    next
    edit "Eventbrite-Inbound_Email"
        set internet-service-id 4718601
    next
    edit "Eventbrite-LDAP"
        set internet-service-id 4718606
    next
    edit "Eventbrite-NetBIOS.Session.Service"
        set internet-service-id 4718607
    next
    edit "Eventbrite-RTMP"
        set internet-service-id 4718608
    next
    edit "Eventbrite-NetBIOS.Name.Service"
        set internet-service-id 4718616
    next
    edit "Paychex-Other"
        set internet-service-id 4784128
    next
    edit "Paychex-Web"
        set internet-service-id 4784129
    next
    edit "Paychex-ICMP"
        set internet-service-id 4784130
    next
    edit "Paychex-DNS"
        set internet-service-id 4784131
    next
    edit "Paychex-Outbound_Email"
        set internet-service-id 4784132
    next
    edit "Paychex-SSH"
        set internet-service-id 4784134
    next
    edit "Paychex-FTP"
        set internet-service-id 4784135
    next
    edit "Paychex-NTP"
        set internet-service-id 4784136
    next
    edit "Paychex-Inbound_Email"
        set internet-service-id 4784137
    next
    edit "Paychex-LDAP"
        set internet-service-id 4784142
    next
    edit "Paychex-NetBIOS.Session.Service"
        set internet-service-id 4784143
    next
    edit "Paychex-RTMP"
        set internet-service-id 4784144
    next
    edit "Paychex-NetBIOS.Name.Service"
        set internet-service-id 4784152
    next
    edit "NewRelic-Other"
        set internet-service-id 4849664
    next
    edit "NewRelic-Web"
        set internet-service-id 4849665
    next
    edit "NewRelic-ICMP"
        set internet-service-id 4849666
    next
    edit "NewRelic-DNS"
        set internet-service-id 4849667
    next
    edit "NewRelic-Outbound_Email"
        set internet-service-id 4849668
    next
    edit "NewRelic-SSH"
        set internet-service-id 4849670
    next
    edit "NewRelic-FTP"
        set internet-service-id 4849671
    next
    edit "NewRelic-NTP"
        set internet-service-id 4849672
    next
    edit "NewRelic-Inbound_Email"
        set internet-service-id 4849673
    next
    edit "NewRelic-LDAP"
        set internet-service-id 4849678
    next
    edit "NewRelic-NetBIOS.Session.Service"
        set internet-service-id 4849679
    next
    edit "NewRelic-RTMP"
        set internet-service-id 4849680
    next
    edit "NewRelic-NetBIOS.Name.Service"
        set internet-service-id 4849688
    next
    edit "Splunk-Other"
        set internet-service-id 4915200
    next
    edit "Splunk-Web"
        set internet-service-id 4915201
    next
    edit "Splunk-ICMP"
        set internet-service-id 4915202
    next
    edit "Splunk-DNS"
        set internet-service-id 4915203
    next
    edit "Splunk-Outbound_Email"
        set internet-service-id 4915204
    next
    edit "Splunk-SSH"
        set internet-service-id 4915206
    next
    edit "Splunk-FTP"
        set internet-service-id 4915207
    next
    edit "Splunk-NTP"
        set internet-service-id 4915208
    next
    edit "Splunk-Inbound_Email"
        set internet-service-id 4915209
    next
    edit "Splunk-LDAP"
        set internet-service-id 4915214
    next
    edit "Splunk-NetBIOS.Session.Service"
        set internet-service-id 4915215
    next
    edit "Splunk-RTMP"
        set internet-service-id 4915216
    next
    edit "Splunk-NetBIOS.Name.Service"
        set internet-service-id 4915224
    next
    edit "Domo-Other"
        set internet-service-id 4980736
    next
    edit "Domo-Web"
        set internet-service-id 4980737
    next
    edit "Domo-ICMP"
        set internet-service-id 4980738
    next
    edit "Domo-DNS"
        set internet-service-id 4980739
    next
    edit "Domo-Outbound_Email"
        set internet-service-id 4980740
    next
    edit "Domo-SSH"
        set internet-service-id 4980742
    next
    edit "Domo-FTP"
        set internet-service-id 4980743
    next
    edit "Domo-NTP"
        set internet-service-id 4980744
    next
    edit "Domo-Inbound_Email"
        set internet-service-id 4980745
    next
    edit "Domo-LDAP"
        set internet-service-id 4980750
    next
    edit "Domo-NetBIOS.Session.Service"
        set internet-service-id 4980751
    next
    edit "Domo-RTMP"
        set internet-service-id 4980752
    next
    edit "Domo-NetBIOS.Name.Service"
        set internet-service-id 4980760
    next
    edit "FreshBooks-Other"
        set internet-service-id 5046272
    next
    edit "FreshBooks-Web"
        set internet-service-id 5046273
    next
    edit "FreshBooks-ICMP"
        set internet-service-id 5046274
    next
    edit "FreshBooks-DNS"
        set internet-service-id 5046275
    next
    edit "FreshBooks-Outbound_Email"
        set internet-service-id 5046276
    next
    edit "FreshBooks-SSH"
        set internet-service-id 5046278
    next
    edit "FreshBooks-FTP"
        set internet-service-id 5046279
    next
    edit "FreshBooks-NTP"
        set internet-service-id 5046280
    next
    edit "FreshBooks-Inbound_Email"
        set internet-service-id 5046281
    next
    edit "FreshBooks-LDAP"
        set internet-service-id 5046286
    next
    edit "FreshBooks-NetBIOS.Session.Service"
        set internet-service-id 5046287
    next
    edit "FreshBooks-RTMP"
        set internet-service-id 5046288
    next
    edit "FreshBooks-NetBIOS.Name.Service"
        set internet-service-id 5046296
    next
    edit "Tableau-Other"
        set internet-service-id 5111808
    next
    edit "Tableau-Web"
        set internet-service-id 5111809
    next
    edit "Tableau-ICMP"
        set internet-service-id 5111810
    next
    edit "Tableau-DNS"
        set internet-service-id 5111811
    next
    edit "Tableau-Outbound_Email"
        set internet-service-id 5111812
    next
    edit "Tableau-SSH"
        set internet-service-id 5111814
    next
    edit "Tableau-FTP"
        set internet-service-id 5111815
    next
    edit "Tableau-NTP"
        set internet-service-id 5111816
    next
    edit "Tableau-Inbound_Email"
        set internet-service-id 5111817
    next
    edit "Tableau-LDAP"
        set internet-service-id 5111822
    next
    edit "Tableau-NetBIOS.Session.Service"
        set internet-service-id 5111823
    next
    edit "Tableau-RTMP"
        set internet-service-id 5111824
    next
    edit "Tableau-NetBIOS.Name.Service"
        set internet-service-id 5111832
    next
    edit "Druva-Other"
        set internet-service-id 5177344
    next
    edit "Druva-Web"
        set internet-service-id 5177345
    next
    edit "Druva-ICMP"
        set internet-service-id 5177346
    next
    edit "Druva-DNS"
        set internet-service-id 5177347
    next
    edit "Druva-Outbound_Email"
        set internet-service-id 5177348
    next
    edit "Druva-SSH"
        set internet-service-id 5177350
    next
    edit "Druva-FTP"
        set internet-service-id 5177351
    next
    edit "Druva-NTP"
        set internet-service-id 5177352
    next
    edit "Druva-Inbound_Email"
        set internet-service-id 5177353
    next
    edit "Druva-LDAP"
        set internet-service-id 5177358
    next
    edit "Druva-NetBIOS.Session.Service"
        set internet-service-id 5177359
    next
    edit "Druva-RTMP"
        set internet-service-id 5177360
    next
    edit "Druva-NetBIOS.Name.Service"
        set internet-service-id 5177368
    next
    edit "Act-on-Other"
        set internet-service-id 5242880
    next
    edit "Act-on-Web"
        set internet-service-id 5242881
    next
    edit "Act-on-ICMP"
        set internet-service-id 5242882
    next
    edit "Act-on-DNS"
        set internet-service-id 5242883
    next
    edit "Act-on-Outbound_Email"
        set internet-service-id 5242884
    next
    edit "Act-on-SSH"
        set internet-service-id 5242886
    next
    edit "Act-on-FTP"
        set internet-service-id 5242887
    next
    edit "Act-on-NTP"
        set internet-service-id 5242888
    next
    edit "Act-on-Inbound_Email"
        set internet-service-id 5242889
    next
    edit "Act-on-LDAP"
        set internet-service-id 5242894
    next
    edit "Act-on-NetBIOS.Session.Service"
        set internet-service-id 5242895
    next
    edit "Act-on-RTMP"
        set internet-service-id 5242896
    next
    edit "Act-on-NetBIOS.Name.Service"
        set internet-service-id 5242904
    next
    edit "GoodData-Other"
        set internet-service-id 5308416
    next
    edit "GoodData-Web"
        set internet-service-id 5308417
    next
    edit "GoodData-ICMP"
        set internet-service-id 5308418
    next
    edit "GoodData-DNS"
        set internet-service-id 5308419
    next
    edit "GoodData-Outbound_Email"
        set internet-service-id 5308420
    next
    edit "GoodData-SSH"
        set internet-service-id 5308422
    next
    edit "GoodData-FTP"
        set internet-service-id 5308423
    next
    edit "GoodData-NTP"
        set internet-service-id 5308424
    next
    edit "GoodData-Inbound_Email"
        set internet-service-id 5308425
    next
    edit "GoodData-LDAP"
        set internet-service-id 5308430
    next
    edit "GoodData-NetBIOS.Session.Service"
        set internet-service-id 5308431
    next
    edit "GoodData-RTMP"
        set internet-service-id 5308432
    next
    edit "GoodData-NetBIOS.Name.Service"
        set internet-service-id 5308440
    next
    edit "SurveyMonkey-Other"
        set internet-service-id 5373952
    next
    edit "SurveyMonkey-Web"
        set internet-service-id 5373953
    next
    edit "SurveyMonkey-ICMP"
        set internet-service-id 5373954
    next
    edit "SurveyMonkey-DNS"
        set internet-service-id 5373955
    next
    edit "SurveyMonkey-Outbound_Email"
        set internet-service-id 5373956
    next
    edit "SurveyMonkey-SSH"
        set internet-service-id 5373958
    next
    edit "SurveyMonkey-FTP"
        set internet-service-id 5373959
    next
    edit "SurveyMonkey-NTP"
        set internet-service-id 5373960
    next
    edit "SurveyMonkey-Inbound_Email"
        set internet-service-id 5373961
    next
    edit "SurveyMonkey-LDAP"
        set internet-service-id 5373966
    next
    edit "SurveyMonkey-NetBIOS.Session.Service"
        set internet-service-id 5373967
    next
    edit "SurveyMonkey-RTMP"
        set internet-service-id 5373968
    next
    edit "SurveyMonkey-NetBIOS.Name.Service"
        set internet-service-id 5373976
    next
    edit "Cvent-Other"
        set internet-service-id 5439488
    next
    edit "Cvent-Web"
        set internet-service-id 5439489
    next
    edit "Cvent-ICMP"
        set internet-service-id 5439490
    next
    edit "Cvent-DNS"
        set internet-service-id 5439491
    next
    edit "Cvent-Outbound_Email"
        set internet-service-id 5439492
    next
    edit "Cvent-SSH"
        set internet-service-id 5439494
    next
    edit "Cvent-FTP"
        set internet-service-id 5439495
    next
    edit "Cvent-NTP"
        set internet-service-id 5439496
    next
    edit "Cvent-Inbound_Email"
        set internet-service-id 5439497
    next
    edit "Cvent-LDAP"
        set internet-service-id 5439502
    next
    edit "Cvent-NetBIOS.Session.Service"
        set internet-service-id 5439503
    next
    edit "Cvent-RTMP"
        set internet-service-id 5439504
    next
    edit "Cvent-NetBIOS.Name.Service"
        set internet-service-id 5439512
    next
    edit "Blackbaud-Other"
        set internet-service-id 5505024
    next
    edit "Blackbaud-Web"
        set internet-service-id 5505025
    next
    edit "Blackbaud-ICMP"
        set internet-service-id 5505026
    next
    edit "Blackbaud-DNS"
        set internet-service-id 5505027
    next
    edit "Blackbaud-Outbound_Email"
        set internet-service-id 5505028
    next
    edit "Blackbaud-SSH"
        set internet-service-id 5505030
    next
    edit "Blackbaud-FTP"
        set internet-service-id 5505031
    next
    edit "Blackbaud-NTP"
        set internet-service-id 5505032
    next
    edit "Blackbaud-Inbound_Email"
        set internet-service-id 5505033
    next
    edit "Blackbaud-LDAP"
        set internet-service-id 5505038
    next
    edit "Blackbaud-NetBIOS.Session.Service"
        set internet-service-id 5505039
    next
    edit "Blackbaud-RTMP"
        set internet-service-id 5505040
    next
    edit "Blackbaud-NetBIOS.Name.Service"
        set internet-service-id 5505048
    next
    edit "InsideSales-Other"
        set internet-service-id 5570560
    next
    edit "InsideSales-Web"
        set internet-service-id 5570561
    next
    edit "InsideSales-ICMP"
        set internet-service-id 5570562
    next
    edit "InsideSales-DNS"
        set internet-service-id 5570563
    next
    edit "InsideSales-Outbound_Email"
        set internet-service-id 5570564
    next
    edit "InsideSales-SSH"
        set internet-service-id 5570566
    next
    edit "InsideSales-FTP"
        set internet-service-id 5570567
    next
    edit "InsideSales-NTP"
        set internet-service-id 5570568
    next
    edit "InsideSales-Inbound_Email"
        set internet-service-id 5570569
    next
    edit "InsideSales-LDAP"
        set internet-service-id 5570574
    next
    edit "InsideSales-NetBIOS.Session.Service"
        set internet-service-id 5570575
    next
    edit "InsideSales-RTMP"
        set internet-service-id 5570576
    next
    edit "InsideSales-NetBIOS.Name.Service"
        set internet-service-id 5570584
    next
    edit "ServiceMax-Other"
        set internet-service-id 5636096
    next
    edit "ServiceMax-Web"
        set internet-service-id 5636097
    next
    edit "ServiceMax-ICMP"
        set internet-service-id 5636098
    next
    edit "ServiceMax-DNS"
        set internet-service-id 5636099
    next
    edit "ServiceMax-Outbound_Email"
        set internet-service-id 5636100
    next
    edit "ServiceMax-SSH"
        set internet-service-id 5636102
    next
    edit "ServiceMax-FTP"
        set internet-service-id 5636103
    next
    edit "ServiceMax-NTP"
        set internet-service-id 5636104
    next
    edit "ServiceMax-Inbound_Email"
        set internet-service-id 5636105
    next
    edit "ServiceMax-LDAP"
        set internet-service-id 5636110
    next
    edit "ServiceMax-NetBIOS.Session.Service"
        set internet-service-id 5636111
    next
    edit "ServiceMax-RTMP"
        set internet-service-id 5636112
    next
    edit "ServiceMax-NetBIOS.Name.Service"
        set internet-service-id 5636120
    next
    edit "Apptio-Other"
        set internet-service-id 5701632
    next
    edit "Apptio-Web"
        set internet-service-id 5701633
    next
    edit "Apptio-ICMP"
        set internet-service-id 5701634
    next
    edit "Apptio-DNS"
        set internet-service-id 5701635
    next
    edit "Apptio-Outbound_Email"
        set internet-service-id 5701636
    next
    edit "Apptio-SSH"
        set internet-service-id 5701638
    next
    edit "Apptio-FTP"
        set internet-service-id 5701639
    next
    edit "Apptio-NTP"
        set internet-service-id 5701640
    next
    edit "Apptio-Inbound_Email"
        set internet-service-id 5701641
    next
    edit "Apptio-LDAP"
        set internet-service-id 5701646
    next
    edit "Apptio-NetBIOS.Session.Service"
        set internet-service-id 5701647
    next
    edit "Apptio-RTMP"
        set internet-service-id 5701648
    next
    edit "Apptio-NetBIOS.Name.Service"
        set internet-service-id 5701656
    next
    edit "Veracode-Other"
        set internet-service-id 5767168
    next
    edit "Veracode-Web"
        set internet-service-id 5767169
    next
    edit "Veracode-ICMP"
        set internet-service-id 5767170
    next
    edit "Veracode-DNS"
        set internet-service-id 5767171
    next
    edit "Veracode-Outbound_Email"
        set internet-service-id 5767172
    next
    edit "Veracode-SSH"
        set internet-service-id 5767174
    next
    edit "Veracode-FTP"
        set internet-service-id 5767175
    next
    edit "Veracode-NTP"
        set internet-service-id 5767176
    next
    edit "Veracode-Inbound_Email"
        set internet-service-id 5767177
    next
    edit "Veracode-LDAP"
        set internet-service-id 5767182
    next
    edit "Veracode-NetBIOS.Session.Service"
        set internet-service-id 5767183
    next
    edit "Veracode-RTMP"
        set internet-service-id 5767184
    next
    edit "Veracode-NetBIOS.Name.Service"
        set internet-service-id 5767192
    next
    edit "Anaplan-Other"
        set internet-service-id 5832704
    next
    edit "Anaplan-Web"
        set internet-service-id 5832705
    next
    edit "Anaplan-ICMP"
        set internet-service-id 5832706
    next
    edit "Anaplan-DNS"
        set internet-service-id 5832707
    next
    edit "Anaplan-Outbound_Email"
        set internet-service-id 5832708
    next
    edit "Anaplan-SSH"
        set internet-service-id 5832710
    next
    edit "Anaplan-FTP"
        set internet-service-id 5832711
    next
    edit "Anaplan-NTP"
        set internet-service-id 5832712
    next
    edit "Anaplan-Inbound_Email"
        set internet-service-id 5832713
    next
    edit "Anaplan-LDAP"
        set internet-service-id 5832718
    next
    edit "Anaplan-NetBIOS.Session.Service"
        set internet-service-id 5832719
    next
    edit "Anaplan-RTMP"
        set internet-service-id 5832720
    next
    edit "Anaplan-NetBIOS.Name.Service"
        set internet-service-id 5832728
    next
    edit "Rapid7-Other"
        set internet-service-id 5898240
    next
    edit "Rapid7-Web"
        set internet-service-id 5898241
    next
    edit "Rapid7-ICMP"
        set internet-service-id 5898242
    next
    edit "Rapid7-DNS"
        set internet-service-id 5898243
    next
    edit "Rapid7-Outbound_Email"
        set internet-service-id 5898244
    next
    edit "Rapid7-SSH"
        set internet-service-id 5898246
    next
    edit "Rapid7-FTP"
        set internet-service-id 5898247
    next
    edit "Rapid7-NTP"
        set internet-service-id 5898248
    next
    edit "Rapid7-Inbound_Email"
        set internet-service-id 5898249
    next
    edit "Rapid7-LDAP"
        set internet-service-id 5898254
    next
    edit "Rapid7-NetBIOS.Session.Service"
        set internet-service-id 5898255
    next
    edit "Rapid7-RTMP"
        set internet-service-id 5898256
    next
    edit "Rapid7-NetBIOS.Name.Service"
        set internet-service-id 5898264
    next
    edit "AnyDesk-AnyDesk"
        set internet-service-id 5963927
    next
    edit "ESET-Eset.Service"
        set internet-service-id 6029426
    next
    edit "Slack-Other"
        set internet-service-id 6094848
    next
    edit "Slack-Web"
        set internet-service-id 6094849
    next
    edit "Slack-ICMP"
        set internet-service-id 6094850
    next
    edit "Slack-DNS"
        set internet-service-id 6094851
    next
    edit "Slack-Outbound_Email"
        set internet-service-id 6094852
    next
    edit "Slack-SSH"
        set internet-service-id 6094854
    next
    edit "Slack-FTP"
        set internet-service-id 6094855
    next
    edit "Slack-NTP"
        set internet-service-id 6094856
    next
    edit "Slack-Inbound_Email"
        set internet-service-id 6094857
    next
    edit "Slack-LDAP"
        set internet-service-id 6094862
    next
    edit "Slack-NetBIOS.Session.Service"
        set internet-service-id 6094863
    next
    edit "Slack-RTMP"
        set internet-service-id 6094864
    next
    edit "Slack-NetBIOS.Name.Service"
        set internet-service-id 6094872
    next
    edit "Slack-Slack"
        set internet-service-id 6095024
    next
    edit "ADP-Other"
        set internet-service-id 6160384
    next
    edit "ADP-Web"
        set internet-service-id 6160385
    next
    edit "ADP-ICMP"
        set internet-service-id 6160386
    next
    edit "ADP-DNS"
        set internet-service-id 6160387
    next
    edit "ADP-Outbound_Email"
        set internet-service-id 6160388
    next
    edit "ADP-SSH"
        set internet-service-id 6160390
    next
    edit "ADP-FTP"
        set internet-service-id 6160391
    next
    edit "ADP-NTP"
        set internet-service-id 6160392
    next
    edit "ADP-Inbound_Email"
        set internet-service-id 6160393
    next
    edit "ADP-LDAP"
        set internet-service-id 6160398
    next
    edit "ADP-NetBIOS.Session.Service"
        set internet-service-id 6160399
    next
    edit "ADP-RTMP"
        set internet-service-id 6160400
    next
    edit "ADP-NetBIOS.Name.Service"
        set internet-service-id 6160408
    next
    edit "Blackboard-Other"
        set internet-service-id 6225920
    next
    edit "Blackboard-Web"
        set internet-service-id 6225921
    next
    edit "Blackboard-ICMP"
        set internet-service-id 6225922
    next
    edit "Blackboard-DNS"
        set internet-service-id 6225923
    next
    edit "Blackboard-Outbound_Email"
        set internet-service-id 6225924
    next
    edit "Blackboard-SSH"
        set internet-service-id 6225926
    next
    edit "Blackboard-FTP"
        set internet-service-id 6225927
    next
    edit "Blackboard-NTP"
        set internet-service-id 6225928
    next
    edit "Blackboard-Inbound_Email"
        set internet-service-id 6225929
    next
    edit "Blackboard-LDAP"
        set internet-service-id 6225934
    next
    edit "Blackboard-NetBIOS.Session.Service"
        set internet-service-id 6225935
    next
    edit "Blackboard-RTMP"
        set internet-service-id 6225936
    next
    edit "Blackboard-NetBIOS.Name.Service"
        set internet-service-id 6225944
    next
    edit "SAP-Other"
        set internet-service-id 6291456
    next
    edit "SAP-Web"
        set internet-service-id 6291457
    next
    edit "SAP-ICMP"
        set internet-service-id 6291458
    next
    edit "SAP-DNS"
        set internet-service-id 6291459
    next
    edit "SAP-Outbound_Email"
        set internet-service-id 6291460
    next
    edit "SAP-SSH"
        set internet-service-id 6291462
    next
    edit "SAP-FTP"
        set internet-service-id 6291463
    next
    edit "SAP-NTP"
        set internet-service-id 6291464
    next
    edit "SAP-Inbound_Email"
        set internet-service-id 6291465
    next
    edit "SAP-LDAP"
        set internet-service-id 6291470
    next
    edit "SAP-NetBIOS.Session.Service"
        set internet-service-id 6291471
    next
    edit "SAP-RTMP"
        set internet-service-id 6291472
    next
    edit "SAP-NetBIOS.Name.Service"
        set internet-service-id 6291480
    next
    edit "SAP-HANA"
        set internet-service-id 6291612
    next
    edit "SAP-SuccessFactors"
        set internet-service-id 6291618
    next
    edit "Snap-Snapchat"
        set internet-service-id 6357108
    next
    edit "Zoom.us-Zoom.Meeting"
        set internet-service-id 6422646
    next
    edit "Sophos-Other"
        set internet-service-id 6488064
    next
    edit "Sophos-Web"
        set internet-service-id 6488065
    next
    edit "Sophos-ICMP"
        set internet-service-id 6488066
    next
    edit "Sophos-DNS"
        set internet-service-id 6488067
    next
    edit "Sophos-Outbound_Email"
        set internet-service-id 6488068
    next
    edit "Sophos-SSH"
        set internet-service-id 6488070
    next
    edit "Sophos-FTP"
        set internet-service-id 6488071
    next
    edit "Sophos-NTP"
        set internet-service-id 6488072
    next
    edit "Sophos-Inbound_Email"
        set internet-service-id 6488073
    next
    edit "Sophos-LDAP"
        set internet-service-id 6488078
    next
    edit "Sophos-NetBIOS.Session.Service"
        set internet-service-id 6488079
    next
    edit "Sophos-RTMP"
        set internet-service-id 6488080
    next
    edit "Sophos-NetBIOS.Name.Service"
        set internet-service-id 6488088
    next
    edit "Cloudflare-Other"
        set internet-service-id 6553600
    next
    edit "Cloudflare-Web"
        set internet-service-id 6553601
    next
    edit "Cloudflare-ICMP"
        set internet-service-id 6553602
    next
    edit "Cloudflare-DNS"
        set internet-service-id 6553603
    next
    edit "Cloudflare-Outbound_Email"
        set internet-service-id 6553604
    next
    edit "Cloudflare-SSH"
        set internet-service-id 6553606
    next
    edit "Cloudflare-FTP"
        set internet-service-id 6553607
    next
    edit "Cloudflare-NTP"
        set internet-service-id 6553608
    next
    edit "Cloudflare-Inbound_Email"
        set internet-service-id 6553609
    next
    edit "Cloudflare-LDAP"
        set internet-service-id 6553614
    next
    edit "Cloudflare-NetBIOS.Session.Service"
        set internet-service-id 6553615
    next
    edit "Cloudflare-RTMP"
        set internet-service-id 6553616
    next
    edit "Cloudflare-NetBIOS.Name.Service"
        set internet-service-id 6553624
    next
    edit "Cloudflare-CDN"
        set internet-service-id 6553737
    next
    edit "Pexip-Pexip.Meeting"
        set internet-service-id 6619256
    next
    edit "Zscaler-Other"
        set internet-service-id 6684672
    next
    edit "Zscaler-Web"
        set internet-service-id 6684673
    next
    edit "Zscaler-ICMP"
        set internet-service-id 6684674
    next
    edit "Zscaler-DNS"
        set internet-service-id 6684675
    next
    edit "Zscaler-Outbound_Email"
        set internet-service-id 6684676
    next
    edit "Zscaler-SSH"
        set internet-service-id 6684678
    next
    edit "Zscaler-FTP"
        set internet-service-id 6684679
    next
    edit "Zscaler-NTP"
        set internet-service-id 6684680
    next
    edit "Zscaler-Inbound_Email"
        set internet-service-id 6684681
    next
    edit "Zscaler-LDAP"
        set internet-service-id 6684686
    next
    edit "Zscaler-NetBIOS.Session.Service"
        set internet-service-id 6684687
    next
    edit "Zscaler-RTMP"
        set internet-service-id 6684688
    next
    edit "Zscaler-NetBIOS.Name.Service"
        set internet-service-id 6684696
    next
    edit "Zscaler-Zscaler.Cloud"
        set internet-service-id 6684793
    next
    edit "Yandex-Other"
        set internet-service-id 6750208
    next
    edit "Yandex-Web"
        set internet-service-id 6750209
    next
    edit "Yandex-ICMP"
        set internet-service-id 6750210
    next
    edit "Yandex-DNS"
        set internet-service-id 6750211
    next
    edit "Yandex-Outbound_Email"
        set internet-service-id 6750212
    next
    edit "Yandex-SSH"
        set internet-service-id 6750214
    next
    edit "Yandex-FTP"
        set internet-service-id 6750215
    next
    edit "Yandex-NTP"
        set internet-service-id 6750216
    next
    edit "Yandex-Inbound_Email"
        set internet-service-id 6750217
    next
    edit "Yandex-LDAP"
        set internet-service-id 6750222
    next
    edit "Yandex-NetBIOS.Session.Service"
        set internet-service-id 6750223
    next
    edit "Yandex-RTMP"
        set internet-service-id 6750224
    next
    edit "Yandex-NetBIOS.Name.Service"
        set internet-service-id 6750232
    next
    edit "mail.ru-Other"
        set internet-service-id 6815744
    next
    edit "mail.ru-Web"
        set internet-service-id 6815745
    next
    edit "mail.ru-ICMP"
        set internet-service-id 6815746
    next
    edit "mail.ru-DNS"
        set internet-service-id 6815747
    next
    edit "mail.ru-Outbound_Email"
        set internet-service-id 6815748
    next
    edit "mail.ru-SSH"
        set internet-service-id 6815750
    next
    edit "mail.ru-FTP"
        set internet-service-id 6815751
    next
    edit "mail.ru-NTP"
        set internet-service-id 6815752
    next
    edit "mail.ru-Inbound_Email"
        set internet-service-id 6815753
    next
    edit "mail.ru-LDAP"
        set internet-service-id 6815758
    next
    edit "mail.ru-NetBIOS.Session.Service"
        set internet-service-id 6815759
    next
    edit "mail.ru-RTMP"
        set internet-service-id 6815760
    next
    edit "mail.ru-NetBIOS.Name.Service"
        set internet-service-id 6815768
    next
    edit "Alibaba-Other"
        set internet-service-id 6881280
    next
    edit "Alibaba-Web"
        set internet-service-id 6881281
    next
    edit "Alibaba-ICMP"
        set internet-service-id 6881282
    next
    edit "Alibaba-DNS"
        set internet-service-id 6881283
    next
    edit "Alibaba-Outbound_Email"
        set internet-service-id 6881284
    next
    edit "Alibaba-SSH"
        set internet-service-id 6881286
    next
    edit "Alibaba-FTP"
        set internet-service-id 6881287
    next
    edit "Alibaba-NTP"
        set internet-service-id 6881288
    next
    edit "Alibaba-Inbound_Email"
        set internet-service-id 6881289
    next
    edit "Alibaba-LDAP"
        set internet-service-id 6881294
    next
    edit "Alibaba-NetBIOS.Session.Service"
        set internet-service-id 6881295
    next
    edit "Alibaba-RTMP"
        set internet-service-id 6881296
    next
    edit "Alibaba-NetBIOS.Name.Service"
        set internet-service-id 6881304
    next
    edit "Alibaba-Alibaba.Cloud"
        set internet-service-id 6881402
    next
    edit "GoDaddy-Other"
        set internet-service-id 6946816
    next
    edit "GoDaddy-Web"
        set internet-service-id 6946817
    next
    edit "GoDaddy-ICMP"
        set internet-service-id 6946818
    next
    edit "GoDaddy-DNS"
        set internet-service-id 6946819
    next
    edit "GoDaddy-Outbound_Email"
        set internet-service-id 6946820
    next
    edit "GoDaddy-SSH"
        set internet-service-id 6946822
    next
    edit "GoDaddy-FTP"
        set internet-service-id 6946823
    next
    edit "GoDaddy-NTP"
        set internet-service-id 6946824
    next
    edit "GoDaddy-Inbound_Email"
        set internet-service-id 6946825
    next
    edit "GoDaddy-LDAP"
        set internet-service-id 6946830
    next
    edit "GoDaddy-NetBIOS.Session.Service"
        set internet-service-id 6946831
    next
    edit "GoDaddy-RTMP"
        set internet-service-id 6946832
    next
    edit "GoDaddy-NetBIOS.Name.Service"
        set internet-service-id 6946840
    next
    edit "GoDaddy-GoDaddy.Email"
        set internet-service-id 6946939
    next
    edit "Bluejeans-Other"
        set internet-service-id 7012352
    next
    edit "Bluejeans-Web"
        set internet-service-id 7012353
    next
    edit "Bluejeans-ICMP"
        set internet-service-id 7012354
    next
    edit "Bluejeans-DNS"
        set internet-service-id 7012355
    next
    edit "Bluejeans-Outbound_Email"
        set internet-service-id 7012356
    next
    edit "Bluejeans-SSH"
        set internet-service-id 7012358
    next
    edit "Bluejeans-FTP"
        set internet-service-id 7012359
    next
    edit "Bluejeans-NTP"
        set internet-service-id 7012360
    next
    edit "Bluejeans-Inbound_Email"
        set internet-service-id 7012361
    next
    edit "Bluejeans-LDAP"
        set internet-service-id 7012366
    next
    edit "Bluejeans-NetBIOS.Session.Service"
        set internet-service-id 7012367
    next
    edit "Bluejeans-RTMP"
        set internet-service-id 7012368
    next
    edit "Bluejeans-NetBIOS.Name.Service"
        set internet-service-id 7012376
    next
    edit "Bluejeans-Bluejeans.Meeting"
        set internet-service-id 7012476
    next
    edit "Webroot-Webroot.SecureAnywhere"
        set internet-service-id 7078013
    next
    edit "Avast-Other"
        set internet-service-id 7143424
    next
    edit "Avast-Web"
        set internet-service-id 7143425
    next
    edit "Avast-ICMP"
        set internet-service-id 7143426
    next
    edit "Avast-DNS"
        set internet-service-id 7143427
    next
    edit "Avast-Outbound_Email"
        set internet-service-id 7143428
    next
    edit "Avast-SSH"
        set internet-service-id 7143430
    next
    edit "Avast-FTP"
        set internet-service-id 7143431
    next
    edit "Avast-NTP"
        set internet-service-id 7143432
    next
    edit "Avast-Inbound_Email"
        set internet-service-id 7143433
    next
    edit "Avast-LDAP"
        set internet-service-id 7143438
    next
    edit "Avast-NetBIOS.Session.Service"
        set internet-service-id 7143439
    next
    edit "Avast-RTMP"
        set internet-service-id 7143440
    next
    edit "Avast-NetBIOS.Name.Service"
        set internet-service-id 7143448
    next
    edit "Avast-Avast.Security"
        set internet-service-id 7143550
    next
    edit "Wetransfer-Other"
        set internet-service-id 7208960
    next
    edit "Wetransfer-Web"
        set internet-service-id 7208961
    next
    edit "Wetransfer-ICMP"
        set internet-service-id 7208962
    next
    edit "Wetransfer-DNS"
        set internet-service-id 7208963
    next
    edit "Wetransfer-Outbound_Email"
        set internet-service-id 7208964
    next
    edit "Wetransfer-SSH"
        set internet-service-id 7208966
    next
    edit "Wetransfer-FTP"
        set internet-service-id 7208967
    next
    edit "Wetransfer-NTP"
        set internet-service-id 7208968
    next
    edit "Wetransfer-Inbound_Email"
        set internet-service-id 7208969
    next
    edit "Wetransfer-LDAP"
        set internet-service-id 7208974
    next
    edit "Wetransfer-NetBIOS.Session.Service"
        set internet-service-id 7208975
    next
    edit "Wetransfer-RTMP"
        set internet-service-id 7208976
    next
    edit "Wetransfer-NetBIOS.Name.Service"
        set internet-service-id 7208984
    next
    edit "Sendgrid-Sendgrid.Email"
        set internet-service-id 7274623
    next
    edit "Ubiquiti-UniFi"
        set internet-service-id 7340160
    next
    edit "Lifesize-Lifesize.Cloud"
        set internet-service-id 7405697
    next
    edit "Okta-Other"
        set internet-service-id 7471104
    next
    edit "Okta-Web"
        set internet-service-id 7471105
    next
    edit "Okta-ICMP"
        set internet-service-id 7471106
    next
    edit "Okta-DNS"
        set internet-service-id 7471107
    next
    edit "Okta-Outbound_Email"
        set internet-service-id 7471108
    next
    edit "Okta-SSH"
        set internet-service-id 7471110
    next
    edit "Okta-FTP"
        set internet-service-id 7471111
    next
    edit "Okta-NTP"
        set internet-service-id 7471112
    next
    edit "Okta-Inbound_Email"
        set internet-service-id 7471113
    next
    edit "Okta-LDAP"
        set internet-service-id 7471118
    next
    edit "Okta-NetBIOS.Session.Service"
        set internet-service-id 7471119
    next
    edit "Okta-RTMP"
        set internet-service-id 7471120
    next
    edit "Okta-NetBIOS.Name.Service"
        set internet-service-id 7471128
    next
    edit "Okta-Okta"
        set internet-service-id 7471307
    next
    edit "Cybozu-Other"
        set internet-service-id 7536640
    next
    edit "Cybozu-Web"
        set internet-service-id 7536641
    next
    edit "Cybozu-ICMP"
        set internet-service-id 7536642
    next
    edit "Cybozu-DNS"
        set internet-service-id 7536643
    next
    edit "Cybozu-Outbound_Email"
        set internet-service-id 7536644
    next
    edit "Cybozu-SSH"
        set internet-service-id 7536646
    next
    edit "Cybozu-FTP"
        set internet-service-id 7536647
    next
    edit "Cybozu-NTP"
        set internet-service-id 7536648
    next
    edit "Cybozu-Inbound_Email"
        set internet-service-id 7536649
    next
    edit "Cybozu-LDAP"
        set internet-service-id 7536654
    next
    edit "Cybozu-NetBIOS.Session.Service"
        set internet-service-id 7536655
    next
    edit "Cybozu-RTMP"
        set internet-service-id 7536656
    next
    edit "Cybozu-NetBIOS.Name.Service"
        set internet-service-id 7536664
    next
    edit "VNC-Other"
        set internet-service-id 7602176
    next
    edit "VNC-Web"
        set internet-service-id 7602177
    next
    edit "VNC-ICMP"
        set internet-service-id 7602178
    next
    edit "VNC-DNS"
        set internet-service-id 7602179
    next
    edit "VNC-Outbound_Email"
        set internet-service-id 7602180
    next
    edit "VNC-SSH"
        set internet-service-id 7602182
    next
    edit "VNC-FTP"
        set internet-service-id 7602183
    next
    edit "VNC-NTP"
        set internet-service-id 7602184
    next
    edit "VNC-Inbound_Email"
        set internet-service-id 7602185
    next
    edit "VNC-LDAP"
        set internet-service-id 7602190
    next
    edit "VNC-NetBIOS.Session.Service"
        set internet-service-id 7602191
    next
    edit "VNC-RTMP"
        set internet-service-id 7602192
    next
    edit "VNC-NetBIOS.Name.Service"
        set internet-service-id 7602200
    next
    edit "Egnyte-Egnyte"
        set internet-service-id 7667846
    next
    edit "CrowdStrike-CrowdStrike.Falcon.Cloud"
        set internet-service-id 7733383
    next
    edit "Aruba.it-Other"
        set internet-service-id 7798784
    next
    edit "Aruba.it-Web"
        set internet-service-id 7798785
    next
    edit "Aruba.it-ICMP"
        set internet-service-id 7798786
    next
    edit "Aruba.it-DNS"
        set internet-service-id 7798787
    next
    edit "Aruba.it-Outbound_Email"
        set internet-service-id 7798788
    next
    edit "Aruba.it-SSH"
        set internet-service-id 7798790
    next
    edit "Aruba.it-FTP"
        set internet-service-id 7798791
    next
    edit "Aruba.it-NTP"
        set internet-service-id 7798792
    next
    edit "Aruba.it-Inbound_Email"
        set internet-service-id 7798793
    next
    edit "Aruba.it-LDAP"
        set internet-service-id 7798798
    next
    edit "Aruba.it-NetBIOS.Session.Service"
        set internet-service-id 7798799
    next
    edit "Aruba.it-RTMP"
        set internet-service-id 7798800
    next
    edit "Aruba.it-NetBIOS.Name.Service"
        set internet-service-id 7798808
    next
    edit "ISLOnline-Other"
        set internet-service-id 7864320
    next
    edit "ISLOnline-Web"
        set internet-service-id 7864321
    next
    edit "ISLOnline-ICMP"
        set internet-service-id 7864322
    next
    edit "ISLOnline-DNS"
        set internet-service-id 7864323
    next
    edit "ISLOnline-Outbound_Email"
        set internet-service-id 7864324
    next
    edit "ISLOnline-SSH"
        set internet-service-id 7864326
    next
    edit "ISLOnline-FTP"
        set internet-service-id 7864327
    next
    edit "ISLOnline-NTP"
        set internet-service-id 7864328
    next
    edit "ISLOnline-Inbound_Email"
        set internet-service-id 7864329
    next
    edit "ISLOnline-LDAP"
        set internet-service-id 7864334
    next
    edit "ISLOnline-NetBIOS.Session.Service"
        set internet-service-id 7864335
    next
    edit "ISLOnline-RTMP"
        set internet-service-id 7864336
    next
    edit "ISLOnline-NetBIOS.Name.Service"
        set internet-service-id 7864344
    next
    edit "Akamai-CDN"
        set internet-service-id 7929993
    next
    edit "Rackspace-CDN"
        set internet-service-id 7995529
    next
    edit "Instart-CDN"
        set internet-service-id 8061065
    next
    edit "Bitdefender-Other"
        set internet-service-id 8126464
    next
    edit "Bitdefender-Web"
        set internet-service-id 8126465
    next
    edit "Bitdefender-ICMP"
        set internet-service-id 8126466
    next
    edit "Bitdefender-DNS"
        set internet-service-id 8126467
    next
    edit "Bitdefender-Outbound_Email"
        set internet-service-id 8126468
    next
    edit "Bitdefender-SSH"
        set internet-service-id 8126470
    next
    edit "Bitdefender-FTP"
        set internet-service-id 8126471
    next
    edit "Bitdefender-NTP"
        set internet-service-id 8126472
    next
    edit "Bitdefender-Inbound_Email"
        set internet-service-id 8126473
    next
    edit "Bitdefender-LDAP"
        set internet-service-id 8126478
    next
    edit "Bitdefender-NetBIOS.Session.Service"
        set internet-service-id 8126479
    next
    edit "Bitdefender-RTMP"
        set internet-service-id 8126480
    next
    edit "Bitdefender-NetBIOS.Name.Service"
        set internet-service-id 8126488
    next
    edit "Pingdom-Other"
        set internet-service-id 8192000
    next
    edit "Pingdom-Web"
        set internet-service-id 8192001
    next
    edit "Pingdom-ICMP"
        set internet-service-id 8192002
    next
    edit "Pingdom-DNS"
        set internet-service-id 8192003
    next
    edit "Pingdom-Outbound_Email"
        set internet-service-id 8192004
    next
    edit "Pingdom-SSH"
        set internet-service-id 8192006
    next
    edit "Pingdom-FTP"
        set internet-service-id 8192007
    next
    edit "Pingdom-NTP"
        set internet-service-id 8192008
    next
    edit "Pingdom-Inbound_Email"
        set internet-service-id 8192009
    next
    edit "Pingdom-LDAP"
        set internet-service-id 8192014
    next
    edit "Pingdom-NetBIOS.Session.Service"
        set internet-service-id 8192015
    next
    edit "Pingdom-RTMP"
        set internet-service-id 8192016
    next
    edit "Pingdom-NetBIOS.Name.Service"
        set internet-service-id 8192024
    next
    edit "UptimeRobot-Other"
        set internet-service-id 8257536
    next
    edit "UptimeRobot-Web"
        set internet-service-id 8257537
    next
    edit "UptimeRobot-ICMP"
        set internet-service-id 8257538
    next
    edit "UptimeRobot-DNS"
        set internet-service-id 8257539
    next
    edit "UptimeRobot-Outbound_Email"
        set internet-service-id 8257540
    next
    edit "UptimeRobot-SSH"
        set internet-service-id 8257542
    next
    edit "UptimeRobot-FTP"
        set internet-service-id 8257543
    next
    edit "UptimeRobot-NTP"
        set internet-service-id 8257544
    next
    edit "UptimeRobot-Inbound_Email"
        set internet-service-id 8257545
    next
    edit "UptimeRobot-LDAP"
        set internet-service-id 8257550
    next
    edit "UptimeRobot-NetBIOS.Session.Service"
        set internet-service-id 8257551
    next
    edit "UptimeRobot-RTMP"
        set internet-service-id 8257552
    next
    edit "UptimeRobot-NetBIOS.Name.Service"
        set internet-service-id 8257560
    next
    edit "UptimeRobot-UptimeRobot.Monitor"
        set internet-service-id 8257709
    next
    edit "Quovadisglobal-Other"
        set internet-service-id 8323072
    next
    edit "Quovadisglobal-Web"
        set internet-service-id 8323073
    next
    edit "Quovadisglobal-ICMP"
        set internet-service-id 8323074
    next
    edit "Quovadisglobal-DNS"
        set internet-service-id 8323075
    next
    edit "Quovadisglobal-Outbound_Email"
        set internet-service-id 8323076
    next
    edit "Quovadisglobal-SSH"
        set internet-service-id 8323078
    next
    edit "Quovadisglobal-FTP"
        set internet-service-id 8323079
    next
    edit "Quovadisglobal-NTP"
        set internet-service-id 8323080
    next
    edit "Quovadisglobal-Inbound_Email"
        set internet-service-id 8323081
    next
    edit "Quovadisglobal-LDAP"
        set internet-service-id 8323086
    next
    edit "Quovadisglobal-NetBIOS.Session.Service"
        set internet-service-id 8323087
    next
    edit "Quovadisglobal-RTMP"
        set internet-service-id 8323088
    next
    edit "Quovadisglobal-NetBIOS.Name.Service"
        set internet-service-id 8323096
    next
    edit "Splashtop-Splashtop"
        set internet-service-id 8388751
    next
    edit "Zoox-Other"
        set internet-service-id 8454144
    next
    edit "Zoox-Web"
        set internet-service-id 8454145
    next
    edit "Zoox-ICMP"
        set internet-service-id 8454146
    next
    edit "Zoox-DNS"
        set internet-service-id 8454147
    next
    edit "Zoox-Outbound_Email"
        set internet-service-id 8454148
    next
    edit "Zoox-SSH"
        set internet-service-id 8454150
    next
    edit "Zoox-FTP"
        set internet-service-id 8454151
    next
    edit "Zoox-NTP"
        set internet-service-id 8454152
    next
    edit "Zoox-Inbound_Email"
        set internet-service-id 8454153
    next
    edit "Zoox-LDAP"
        set internet-service-id 8454158
    next
    edit "Zoox-NetBIOS.Session.Service"
        set internet-service-id 8454159
    next
    edit "Zoox-RTMP"
        set internet-service-id 8454160
    next
    edit "Zoox-NetBIOS.Name.Service"
        set internet-service-id 8454168
    next
    edit "Skyfii-Other"
        set internet-service-id 8519680
    next
    edit "Skyfii-Web"
        set internet-service-id 8519681
    next
    edit "Skyfii-ICMP"
        set internet-service-id 8519682
    next
    edit "Skyfii-DNS"
        set internet-service-id 8519683
    next
    edit "Skyfii-Outbound_Email"
        set internet-service-id 8519684
    next
    edit "Skyfii-SSH"
        set internet-service-id 8519686
    next
    edit "Skyfii-FTP"
        set internet-service-id 8519687
    next
    edit "Skyfii-NTP"
        set internet-service-id 8519688
    next
    edit "Skyfii-Inbound_Email"
        set internet-service-id 8519689
    next
    edit "Skyfii-LDAP"
        set internet-service-id 8519694
    next
    edit "Skyfii-NetBIOS.Session.Service"
        set internet-service-id 8519695
    next
    edit "Skyfii-RTMP"
        set internet-service-id 8519696
    next
    edit "Skyfii-NetBIOS.Name.Service"
        set internet-service-id 8519704
    next
    edit "CoffeeBean-Other"
        set internet-service-id 8585216
    next
    edit "CoffeeBean-Web"
        set internet-service-id 8585217
    next
    edit "CoffeeBean-ICMP"
        set internet-service-id 8585218
    next
    edit "CoffeeBean-DNS"
        set internet-service-id 8585219
    next
    edit "CoffeeBean-Outbound_Email"
        set internet-service-id 8585220
    next
    edit "CoffeeBean-SSH"
        set internet-service-id 8585222
    next
    edit "CoffeeBean-FTP"
        set internet-service-id 8585223
    next
    edit "CoffeeBean-NTP"
        set internet-service-id 8585224
    next
    edit "CoffeeBean-Inbound_Email"
        set internet-service-id 8585225
    next
    edit "CoffeeBean-LDAP"
        set internet-service-id 8585230
    next
    edit "CoffeeBean-NetBIOS.Session.Service"
        set internet-service-id 8585231
    next
    edit "CoffeeBean-RTMP"
        set internet-service-id 8585232
    next
    edit "CoffeeBean-NetBIOS.Name.Service"
        set internet-service-id 8585240
    next
    edit "Cloud4Wi-Other"
        set internet-service-id 8650752
    next
    edit "Cloud4Wi-Web"
        set internet-service-id 8650753
    next
    edit "Cloud4Wi-ICMP"
        set internet-service-id 8650754
    next
    edit "Cloud4Wi-DNS"
        set internet-service-id 8650755
    next
    edit "Cloud4Wi-Outbound_Email"
        set internet-service-id 8650756
    next
    edit "Cloud4Wi-SSH"
        set internet-service-id 8650758
    next
    edit "Cloud4Wi-FTP"
        set internet-service-id 8650759
    next
    edit "Cloud4Wi-NTP"
        set internet-service-id 8650760
    next
    edit "Cloud4Wi-Inbound_Email"
        set internet-service-id 8650761
    next
    edit "Cloud4Wi-LDAP"
        set internet-service-id 8650766
    next
    edit "Cloud4Wi-NetBIOS.Session.Service"
        set internet-service-id 8650767
    next
    edit "Cloud4Wi-RTMP"
        set internet-service-id 8650768
    next
    edit "Cloud4Wi-NetBIOS.Name.Service"
        set internet-service-id 8650776
    next
    edit "Panda-Panda.Security"
        set internet-service-id 8716432
    next
    edit "Ewon-Talk2M"
        set internet-service-id 8781970
    next
    edit "Nutanix-Nutanix.Cloud"
        set internet-service-id 8847507
    next
    edit "Backblaze-Other"
        set internet-service-id 8912896
    next
    edit "Backblaze-Web"
        set internet-service-id 8912897
    next
    edit "Backblaze-ICMP"
        set internet-service-id 8912898
    next
    edit "Backblaze-DNS"
        set internet-service-id 8912899
    next
    edit "Backblaze-Outbound_Email"
        set internet-service-id 8912900
    next
    edit "Backblaze-SSH"
        set internet-service-id 8912902
    next
    edit "Backblaze-FTP"
        set internet-service-id 8912903
    next
    edit "Backblaze-NTP"
        set internet-service-id 8912904
    next
    edit "Backblaze-Inbound_Email"
        set internet-service-id 8912905
    next
    edit "Backblaze-LDAP"
        set internet-service-id 8912910
    next
    edit "Backblaze-NetBIOS.Session.Service"
        set internet-service-id 8912911
    next
    edit "Backblaze-RTMP"
        set internet-service-id 8912912
    next
    edit "Backblaze-NetBIOS.Name.Service"
        set internet-service-id 8912920
    next
    edit "Extreme-Extreme.Cloud"
        set internet-service-id 8978580
    next
    edit "XING-Other"
        set internet-service-id 9043968
    next
    edit "XING-Web"
        set internet-service-id 9043969
    next
    edit "XING-ICMP"
        set internet-service-id 9043970
    next
    edit "XING-DNS"
        set internet-service-id 9043971
    next
    edit "XING-Outbound_Email"
        set internet-service-id 9043972
    next
    edit "XING-SSH"
        set internet-service-id 9043974
    next
    edit "XING-FTP"
        set internet-service-id 9043975
    next
    edit "XING-NTP"
        set internet-service-id 9043976
    next
    edit "XING-Inbound_Email"
        set internet-service-id 9043977
    next
    edit "XING-LDAP"
        set internet-service-id 9043982
    next
    edit "XING-NetBIOS.Session.Service"
        set internet-service-id 9043983
    next
    edit "XING-RTMP"
        set internet-service-id 9043984
    next
    edit "XING-NetBIOS.Name.Service"
        set internet-service-id 9043992
    next
    edit "Genesys-PureCloud"
        set internet-service-id 9109653
    next
    edit "BlackBerry-Cylance"
        set internet-service-id 9175190
    next
    edit "DigiCert-OCSP"
        set internet-service-id 9240728
    next
    edit "Infomaniak-SwissTransfer"
        set internet-service-id 9306265
    next
    edit "Fuze-Fuze"
        set internet-service-id 9371802
    next
    edit "Truecaller-Truecaller"
        set internet-service-id 9437339
    next
    edit "GlobalSign-OCSP"
        set internet-service-id 9502872
    next
    edit "VeriSign-OCSP"
        set internet-service-id 9568408
    next
    edit "Sony-PlayStation.Network"
        set internet-service-id 9633952
    next
    edit "Acronis-Cyber.Cloud"
        set internet-service-id 9699489
    next
    edit "RingCentral-RingCentral"
        set internet-service-id 9765027
    next
    edit "FSecure-FSecure"
        set internet-service-id 9830564
    next
    edit "Kaseya-Kaseya.Cloud"
        set internet-service-id 9896101
    next
    edit "Shodan-Scanner"
        set internet-service-id 9961638
    next
    edit "Censys-Scanner"
        set internet-service-id 10027174
    next
    edit "Valve-Steam"
        set internet-service-id 10092711
    next
    edit "YouSeeU-Bongo"
        set internet-service-id 10158248
    next
    edit "Cato-Cato.Cloud"
        set internet-service-id 10223785
    next
    edit "SolarWinds-SpamExperts"
        set internet-service-id 10289323
    next
    edit "SolarWinds-Pingdom.Probe"
        set internet-service-id 10289326
    next
    edit "8X8-8X8.Cloud"
        set internet-service-id 10354860
    next
    edit "Zattoo-Zattoo.TV"
        set internet-service-id 10420401
    next
    edit "Datto-Datto.RMM"
        set internet-service-id 10485939
    next
    edit "Barracuda-Barracuda.Cloud"
        set internet-service-id 10551477
    next
    edit "Naver-Line"
        set internet-service-id 10617015
    next
    edit "Disney-Disney+"
        set internet-service-id 10682552
    next
    edit "DNS-DoH_DoT"
        set internet-service-id 10748089
    next
    edit "Quad9-Quad9.Standard.DNS"
        set internet-service-id 10813626
    next
    edit "Stretchoid-Scanner"
        set internet-service-id 10879142
    next
    edit "Poly-RealConnect.Service"
        set internet-service-id 10944700
    next
    edit "Telegram-Telegram"
        set internet-service-id 11010249
    next
    edit "Spotify-Spotify"
        set internet-service-id 11075786
    next
    edit "NextDNS-NextDNS"
        set internet-service-id 11141324
    next
    edit "Fastly-CDN"
        set internet-service-id 11206793
    next
    edit "Neustar-UltraDNS.Probes"
        set internet-service-id 11272397
    next
    edit "Microsoft-Intune"
        set internet-service-id 327886
    next
    edit "Microsoft-Office365.Published.Optimize"
        set internet-service-id 327902
    next
    edit "Microsoft-Office365.Published.Allow"
        set internet-service-id 327903
    next
    edit "Microsoft-Office365.Published.USGOV"
        set internet-service-id 327917
    next
    edit "Microsoft-Azure.Monitor"
        set internet-service-id 327958
    next
    edit "Microsoft-Azure.SQL"
        set internet-service-id 327959
    next
    edit "Microsoft-Azure.AD"
        set internet-service-id 327960
    next
    edit "Microsoft-Azure.Data.Factory"
        set internet-service-id 327961
    next
    edit "Microsoft-Azure.Virtual.Desktop"
        set internet-service-id 327962
    next
    edit "Microsoft-Azure.Power.BI"
        set internet-service-id 327963
    next
    edit "Microsoft-Teams.Published.Worldwide.Optimize"
        set internet-service-id 327991
    next
    edit "Microsoft-Teams.Published.Worldwide.Allow"
        set internet-service-id 327992
    next
    edit "Amazon-Twitch"
        set internet-service-id 393446
    next
    edit "Amazon-AWS.GovCloud.US"
        set internet-service-id 393452
    next
    edit "Amazon-Amazon.SES"
        set internet-service-id 393493
    next
    edit "Adobe-Adobe.Sign"
        set internet-service-id 917776
    next
    edit "Fortinet-FortiVoice.Cloud"
        set internet-service-id 1245432
    next
    edit "Fortinet-FortiGuard.Secure.DNS"
        set internet-service-id 1245454
    next
    edit "Fortinet-FortiEDR"
        set internet-service-id 1245475
    next
    edit "Fortinet-FortiClient.EMS"
        set internet-service-id 1245477
    next
    edit "Fortinet-FortiWeb.Cloud"
        set internet-service-id 1245480
    next
    edit "Fortinet-FortiSASE"
        set internet-service-id 1245481
    next
    edit "Fortinet-FortiGuard.SOCaaS"
        set internet-service-id 1245514
    next
    edit "Zoho-Site24x7.Monitor"
        set internet-service-id 1704153
    next
    edit "Cisco-Webex.FedRAMP"
        set internet-service-id 1966315
    next
    edit "Cisco-Secure.Endpoint"
        set internet-service-id 1966324
    next
    edit "Tencent-VooV.Meeting"
        set internet-service-id 2556219
    next
    edit "Atlassian-Atlassian.Cloud"
        set internet-service-id 3932388
    next
    edit "Atlassian-Atlassian.Notification"
        set internet-service-id 3932436
    next
    edit "NewRelic-Synthetic.Monitor"
        set internet-service-id 4849970
    next
    edit "SAP-SAP.Ariba"
        set internet-service-id 6291766
    next
    edit "Akamai-Linode.Cloud"
        set internet-service-id 7930148
    next
    edit "SolarWinds-SolarWinds.RMM"
        set internet-service-id 10289379
    next
    edit "Datto-Datto.BCDR"
        set internet-service-id 10486083
    next
    edit "DNS-Root.Name.Servers"
        set internet-service-id 10748156
    next
    edit "DNS-ARPA.Name.Servers"
        set internet-service-id 10748206
    next
    edit "Malicious-Malicious.Server"
        set internet-service-id 11337935
    next
    edit "NIST-ITS"
        set internet-service-id 11403472
    next
    edit "Jamf-Jamf.Cloud"
        set internet-service-id 11469009
    next
    edit "Alcatel.Lucent-Rainbow"
        set internet-service-id 11534546
    next
    edit "Forcepoint-Forcepoint.Cloud"
        set internet-service-id 11600083
    next
    edit "Datadog-Datadog"
        set internet-service-id 11665620
    next
    edit "Mimecast-Mimecast"
        set internet-service-id 11731157
    next
    edit "MediaFire-Other"
        set internet-service-id 11796480
    next
    edit "MediaFire-Web"
        set internet-service-id 11796481
    next
    edit "MediaFire-ICMP"
        set internet-service-id 11796482
    next
    edit "MediaFire-DNS"
        set internet-service-id 11796483
    next
    edit "MediaFire-Outbound_Email"
        set internet-service-id 11796484
    next
    edit "MediaFire-SSH"
        set internet-service-id 11796486
    next
    edit "MediaFire-FTP"
        set internet-service-id 11796487
    next
    edit "MediaFire-NTP"
        set internet-service-id 11796488
    next
    edit "MediaFire-Inbound_Email"
        set internet-service-id 11796489
    next
    edit "MediaFire-LDAP"
        set internet-service-id 11796494
    next
    edit "MediaFire-NetBIOS.Session.Service"
        set internet-service-id 11796495
    next
    edit "MediaFire-RTMP"
        set internet-service-id 11796496
    next
    edit "MediaFire-NetBIOS.Name.Service"
        set internet-service-id 11796504
    next
    edit "Pandora-Pandora"
        set internet-service-id 11862230
    next
    edit "SiriusXM-SiriusXM"
        set internet-service-id 11927767
    next
    edit "Hopin-Hopin"
        set internet-service-id 11993304
    next
    edit "RedShield-RedShield.Cloud"
        set internet-service-id 12058842
    next
    edit "InterneTTL-Scanner"
        set internet-service-id 12124326
    next
    edit "VadeSecure-VadeSecure.Cloud"
        set internet-service-id 12189915
    next
    edit "Netskope-Netskope.Cloud"
        set internet-service-id 12255452
    next
    edit "ClickMeeting-ClickMeeting"
        set internet-service-id 12320989
    next
    edit "Tenable-Tenable.io.Cloud.Scanner"
        set internet-service-id 12386528
    next
    edit "Vidyo-VidyoCloud"
        set internet-service-id 12452065
    next
    edit "OpenNIC-OpenNIC.DNS"
        set internet-service-id 12517602
    next
    edit "Sectigo-Sectigo"
        set internet-service-id 12583141
    next
    edit "DigitalOcean-DigitalOcean.Platform"
        set internet-service-id 12648679
    next
    edit "Pitney.Bowes-Pitney.Bowes.Data.Center"
        set internet-service-id 12714216
    next
    edit "VPN-Anonymous.VPN"
        set internet-service-id 12779753
    next
    edit "Blockchain-Crypto.Mining.Pool"
        set internet-service-id 12845290
    next
    edit "FactSet-FactSet"
        set internet-service-id 12910830
    next
    edit "Bloomberg-Bloomberg"
        set internet-service-id 12976367
    next
    edit "Five9-Five9"
        set internet-service-id 13041904
    next
    edit "Gigas-Gigas.Cloud"
        set internet-service-id 13107441
    next
    edit "Imperva-Imperva.Cloud.WAF"
        set internet-service-id 13172978
    next
    edit "INAP-INAP"
        set internet-service-id 13238515
    next
    edit "Azion-Azion.Platform"
        set internet-service-id 13304053
    next
    edit "Hurricane.Electric-Hurricane.Electric.Internet.Services"
        set internet-service-id 13369590
    next
    edit "NodePing-NodePing.Probe"
        set internet-service-id 13435127
    next
    edit "Frontline-Frontline"
        set internet-service-id 13500665
    next
    edit "Tally-Tally.ERP"
        set internet-service-id 13566202
    next
    edit "Hosting-Bulletproof.Hosting"
        set internet-service-id 13631739
    next
    edit "Okko-Okko.TV"
        set internet-service-id 13697277
    next
    edit "Voximplant-Voximplant.Platform"
        set internet-service-id 13762829
    next
    edit "OVHcloud-OVHcloud"
        set internet-service-id 13828367
    next
    edit "SentinelOne-SentinelOne.Cloud"
        set internet-service-id 13893905
    next
    edit "Kakao-Kakao.Services"
        set internet-service-id 13959442
    next
    edit "Stripe-Stripe"
        set internet-service-id 14024979
    next
    edit "NetScout-Scanner"
        set internet-service-id 14090406
    next
    edit "Recyber-Scanner"
        set internet-service-id 14155942
    next
    edit "Cyber.Casa-Scanner"
        set internet-service-id 14221478
    next
    edit "GTHost-Dedicated.Instant.Servers"
        set internet-service-id 14287132
    next
    edit "ivi-ivi.Streaming"
        set internet-service-id 14352669
    next
    edit "BinaryEdge-Scanner"
        set internet-service-id 14418086
    next
    edit "Fintech-MarketMap.Terminal"
        set internet-service-id 14483742
    next
    edit "xMatters-xMatters.Platform"
        set internet-service-id 14549279
    next
    edit "Blizzard-Battle.Net"
        set internet-service-id 14614816
    next
    edit "Axon-Evidence"
        set internet-service-id 14680353
    next
    edit "CDN77-CDN"
        set internet-service-id 14745737
    next
    edit "GCore.Labs-CDN"
        set internet-service-id 14811273
    next
    edit "Matrix42-FastViewer"
        set internet-service-id 14876962
    next
    edit "Bunny.net-CDN"
        set internet-service-id 14942345
    next
    edit "StackPath-CDN"
        set internet-service-id 15007881
    next
    edit "Edgio-CDN"
        set internet-service-id 15073417
    next
    edit "CacheFly-CDN"
        set internet-service-id 15138953
    next
    edit "Paylocity-Paylocity"
        set internet-service-id 15204646
    next
    edit "Qualys-Qualys.Cloud.Platform"
        set internet-service-id 15270183
    next
    edit "Dailymotion-Other"
        set internet-service-id 15335424
    next
    edit "Dailymotion-Web"
        set internet-service-id 15335425
    next
    edit "Dailymotion-ICMP"
        set internet-service-id 15335426
    next
    edit "Dailymotion-DNS"
        set internet-service-id 15335427
    next
    edit "Dailymotion-Outbound_Email"
        set internet-service-id 15335428
    next
    edit "Dailymotion-SSH"
        set internet-service-id 15335430
    next
    edit "Dailymotion-FTP"
        set internet-service-id 15335431
    next
    edit "Dailymotion-NTP"
        set internet-service-id 15335432
    next
    edit "Dailymotion-Inbound_Email"
        set internet-service-id 15335433
    next
    edit "Dailymotion-LDAP"
        set internet-service-id 15335438
    next
    edit "Dailymotion-NetBIOS.Session.Service"
        set internet-service-id 15335439
    next
    edit "Dailymotion-RTMP"
        set internet-service-id 15335440
    next
    edit "Dailymotion-NetBIOS.Name.Service"
        set internet-service-id 15335448
    next
    edit "LaunchDarkly-LaunchDarkly.Platform"
        set internet-service-id 15401258
    next
    edit "Medianova-CDN"
        set internet-service-id 15466633
    next
    edit "NetDocuments-NetDocuments.Platform"
        set internet-service-id 15532331
    next
    edit "Vonage-Vonage.Contact.Center"
        set internet-service-id 15597869
    next
    edit "Vonage-Vonage.Video.API"
        set internet-service-id 15597872
    next
    edit "Veritas-Enterprise.Vault.Cloud"
        set internet-service-id 15663407
    next
    edit "UK.NCSC-Scanner"
        set internet-service-id 15728806
    next
    edit "Restream-Restream.Platform"
        set internet-service-id 15794481
    next
    edit "ArcticWolf-ArcticWolf.Cloud"
        set internet-service-id 15860019
    next
    edit "CounterPath-Bria"
        set internet-service-id 15925556
    next
    edit "CriminalIP-Scanner"
        set internet-service-id 15990950
    next
    edit "IPFS-IPFS.Gateway"
        set internet-service-id 16056629
    next
    edit "Internet.Census.Group-Scanner"
        set internet-service-id 16122022
    next
    edit "Performive-Performive.Cloud"
        set internet-service-id 16187706
    next
    edit "OneLogin-OneLogin"
        set internet-service-id 16253244
    next
    edit "Shadowserver-Scanner"
        set internet-service-id 16318630
    next
    edit "Turkcell-Suit.Conference"
        set internet-service-id 16384317
    next
    edit "LeakIX-Scanner"
        set internet-service-id 16449702
    next
    edit "Infoblox-BloxOne"
        set internet-service-id 16515390
    next
    edit "Nice-CXone"
        set internet-service-id 16580927
    next
    edit "Hetzner-Hetzner.Hosting.Service"
        set internet-service-id 16646464
    next
    edit "ThreatLocker-ThreatLocker"
        set internet-service-id 16712001
    next
    edit "ZPE-ZPE.Cloud"
        set internet-service-id 16777538
    next
    edit "ColoCrossing-ColoCrossing.Hosting.Service"
        set internet-service-id 16843076
    next
    edit "Sinch-Mailgun"
        set internet-service-id 16908613
    next
    edit "SpaceX-Starlink"
        set internet-service-id 16974150
    next
    edit "Ingenuity-Ingenuity.Cloud.Service"
        set internet-service-id 17039688
    next
    edit "Skyhigh.Security-Secure.Web.Gateway"
        set internet-service-id 17105227
    next
end
config firewall internet-service-definition
end
config certificate ca
end
config certificate local
    edit "Fortinet_CA_SSL"
        set password ENC A1d41Iclft9vsn9XiiutUT8wfawIWDq+q6anAqe96xDCaWHumm32A3o9VFGcE7seoq/+T0B8CSXkyHe8I1vF//7RqTKTcPIv2rueTyIRWYOMvlp1mF+DrvwkIOKvCxXnlBV+iFYX7lDCEqizsBkk1GjKTSUYAx1aZz9DJFA7sQu0Mjn5unPZJOk8jhqUSDWNkG1Kfg==
        set comments "This is the default CA certificate the SSL Inspection will use when generating new server certificates."
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIFHDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIOppqfNu6vZsCAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECLUv17ljORi9BIIEyCgOvCS9m3Qn
kHxwOKNsY7Cj9MvZVxvXqnG6xpfHjFPr6BBebmhQxjrVu3XigVuSzgY8DhO1UsDu
8tk+bjUsuEO/5o4WcDFMCgJqstcTmhobxDVdf7d5HjxTDC1urQ4e8IT5RMUP+YVz
/Ltcy8yvJiXKsc2Bj6GRP6WxG0z/Wl2EPC62LJnNK9WEEu22bTA+BmgOg+kbtCxN
7gf/oGNQJ0yit/pxv8fQrmFrln/mueczF36YiXdOjWUqFkrpfz9l3K7z5ST6PYwa
5GFVQ9Z28CYWIr8HSalZBFV7y/CZG+YMVSbFM4BY0cquCTDNTCdNve30DUiPd70N
20MKz7J4zX5ZRViCIGlnWqO2tqVXNjZ2Pu1I6yH7CdAO1EjVflDIn01NTP4tb/AU
J8W2aSfGAtJ8v64bsga+ny8RMrjTnjhYMspgXi4eTROL+O+GMvhlSh+7QtpqZhoC
Ijs0DE3qennRduw50Rqg/yIhUuflwlHviKp/rsgr97v+g1YkfVjwHXGvtM5Xicid
cHGR6TSGFQDkALJhEG5aqtMEfC2AXaZUoQOSl0Rl8Dqiw1CSONbAC8h0LROndtzV
mo6MZ/lk/aqsDXpxzlz/a1KJGk8ZTqC/VGlVTjfNp+QRb3gTOrxU/DzY4NrY4f55
HKhnMXbhL7rvdPeB5lrn26mIAJ/+3bfl9y2v3MJQ1fs5a5L2Yo4T555RfiyZow4S
R0YUCks+VQTTA4O5GtpO+ESUVAw/06D5E1/eWWTxfe2g+dcuphpyeLG1YsxXESBt
h92sSvOjOMpp+h+03VAoULVXoPpk8PN8vdLlZ0zP/b0wnxE8FUuz/NPiCSyZ/Eqe
gYwWcOO/q7Aiaf4L3YchDHXHNy2Q5LfQ5Q3JvLnkbY9whooEqv4Zmhsm2favJVaW
NwAHm9h13BubKCa9zWs1dT+01juv8Hocsg8YhFzyhd11AcR7XzUu0zLI4Vxk43PH
n9Ok8aw8ho8KWRM65+oacAHys2fZrODnQwhtBRFKIQkbDTU6p9PNKhZSsMvMkX0O
oDHrZYwbnjrW2o2nY8/F84ybkTyRK1sF7yCUVtn447aDRX7NFEqOYErn2DbY8sfb
vK0YYy2UfwTk61BgQ8euRBzEKCMhy1mDq+QPB1pKC4sYMVFhih141D11VJPJCCQh
Gyzd6MYFZsLQbIhdlUd8QgTEq9Ba+kQ15l4pc1+cFvZMhFnujOhkFvS/zgzN+UpB
chhJi76P+6ST2nhihZJ3vle/vmcw9S+YCSk+e/CZDuz0DrEIJ92RiLBE0Uq+GBYm
QOCguEwzP+ba+BSNgNT6IQ3QN56mjVpHcO3BwVFNYX0U3VqIyrObVuzbEHNHU08K
iF8TP002T/sqC13CWpd4SlSvCSoUlfvPC5qqxPj40uJdkBZ6jnAhOg2Vav8KA6cT
z6NEW2k23oj7pmGDH9RJY5EoWYb7JE2iaX9oZV5SoOWCSu/NXImQGgq6Lzqb4ImN
kqjXCMK7l2O9ffcubuPufD+vRgPiOdulZjFNvjvhb2dcW0QXS164FYeht7uaMhGm
RpyNiXGCF0km7PK0m/mgHfOL1J53JmQuXkip9FgMztog/N9WQ6py5Q9q0AQ52DFP
v7wTtZlwCAH00g29ZFn+rw==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIID8zCCAtugAwIBAgIIICcdfy7wC2EwDQYJKoZIhvcNAQELBQAwgakxCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3Jp
dHkxGTAXBgNVBAMMEEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1
cHBvcnRAZm9ydGluZXQuY29tMB4XDTI0MDIxMDE3MzA0MVoXDTM0MDIxMDE3MzA0
MVowgakxCzAJBgNVBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQH
DAlTdW5ueXZhbGUxETAPBgNVBAoMCEZvcnRpbmV0MR4wHAYDVQQLDBVDZXJ0aWZp
Y2F0ZSBBdXRob3JpdHkxGTAXBgNVBAMMEEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkq
hkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQuY29tMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEA5TflZK/MuzTxPnrHr4qNkt+7yrbenEJEPjaYjINDo4jv
hQk2/9sNmgS/RhJXNRCQq/LTmJMFhBh/skgvk55EslnRVpmqIIJg4jeqjaplfK46
7DbfBpXLzaVudQHte3JmqVqCaoGvRJoVwPjj7PHcasi5JNRTMXLLjQjFbirz7jyl
TTfzPsm3NzsROEu4X3yEa73PO8DPE6v50bdl0MykfL2LliblhQydVQ6Tm0flXUL3
FgoqpxT9sZpNJM2C65p6g6SwK5cGadI6U2koSxwJ91VjWjJJ/Yw3HrvAJg+AVX38
Ta3ZmPuaLjgYMe8D9V95qRLcH7qNi1BwgleNYS58SQIDAQABox0wGzAMBgNVHRME
BTADAQH/MAsGA1UdDwQEAwICBDANBgkqhkiG9w0BAQsFAAOCAQEAZGQMiXZiAqwD
jlICMZn3k/nfxD5Vw1xdEfzCgk19hkXOnySHvbvdj5+xtPHOmUEExSbrfnY45m1I
qmRxgc8zC5JGzIMKBJkQYR5UHn9WEoNTNbmtOUpqHV8pNpCli9hRhFtgMxq6lW9n
muxc995ONxq7rYbOU5Gm8HF89rWuZnGx3vYotIo3JGj+dNR3DQHxc3NOwyC8zWYc
XzKtcfsAxhhObaeAg+Hncwn3GRDktWjavHknAsNmXCEB7KkK1tBUUvLUrBZy6R+f
Hhbj4Rz7IwbyxQM3rLwxNcVvsmNRJL1kdxYH63supgIwIo2qJa+kQEueS5ES+cTb
BHMekVwnSw==
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_CA_Untrusted"
        set password ENC SGVhZ2ci3Y8Zp2/rfffgpJHLS9qzEy7zXN0NhmD8SuFYUNVcGZ3OoopHYZYsQLyXhcYoh0ka1f9rreN7JPQxOAxhX/RnOeTM2wljNjJbc9G09nSIBfmlJuK3NQbIayHskee006T+ME53pB1+FCds1gxTpfUHnVPynwPN4M+3IwrF1mLuvqTLAJaeQVy6Migmr9Ukng==
        set comments "This is the default CA certificate the SSL Inspection will use when generating new server certificates."
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIFHDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIMWClJMVy3bACAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECFGBRHEZJjuJBIIEyILgcbtz1CXS
RM8ZD1omvEg3G0NuQ1O0aK9so4qDGok7xJgOTB01OwLl1D5gidxwLwoF65lkG62C
5zINlAI12QoQcnAgZ+IfusLhmZyBVAl37XiqHIHGTAHDWFvQ4aN904Mqd2rLN3ND
m7NVGiWXMn4cQ5lNzH0Az79xN/oKdtKnT27VLUZLT7B79/qTPZucmLBzL5tNXfFq
wFkM3gF+EVkDfCoZxy840XbfT5DW2xTeNPevk23IZoIPybvzaq+1fLywzJG8YuQ3
qj89HW+D3Nyq8IOBUXOelLy74bFQnOwpgs5gO5DAocmu963lGpqrGe2EatoHBXSB
Tgh6NKtFfaVmgMEBKBKtGZuG5Czir46qckOws+T14o1hYoeHTjdbXT7ZMEmBJQSv
NyBcByxPrmLmDpKRZW65huaENv2d2uTtdMrfSh4kcmNZRpkVtzVyD/a8HlyY39T5
jwt7uif6VJRSJSS7HdGO4kB8qhOaWx3cmVYtwBR4ikzrW6HZjhIqpdSX0GvM+2RN
el7J8rtNLHdoEN5yr8rzLvHjEjZ3+BnJt2ujoKw0b990sm7yrPMjNsJWWnzthzwY
tdD9ZrAi5fGG7tQp/0+yBM1+w58ey0tHCwGv8bIb5hGZYMZKBOcvdKHxhFhFvjj7
QxINpA5twEL2TC0W2i01yYFQfeqdtbbZsjcW7rnC4Y08hgKub40Jyqh2xikcHiLh
SR41vEJRwHHKEfvZ+4fxzBiYOg5p+2rLjy6ofbzhUIQ34t+iSzC3ns2OvJ0ZHQgo
wZgVQMg+wEiu1UUGEDpattnoCNH+mKxw6tSFCEZOeWd9WResPv4eFecc9CnhYqn4
OErpaLqjUWcy6z/VUmkFU3Ok5RY5TjwrTOfKuBuRZn4EX8YqJ5LmrxmDCBH0Ckam
/CVnK6CR9LEdWLo7dE0PphGN6he/7P4X4u+/XdATR3IJfGa+Uzyt0AT5IDm9A7bZ
4KKb/acjoxKWyWsjgFB9Dg+VOlb+MQ/u5by1842JthCD59/NQZ/IEiqUG28Qk0DU
4rSaTi+MRMbctcZ0TWq+SahVykMmsJS2ERh885mwEuL6dazMgUTDnjrsX288vys1
qyORX7RjvkewQhHeNckq9jOHze8RZ5Dnm7ymlrcxvOeA4HfPJcpVxCr4oUI2nu6L
VhqcbuGGm9yqxrIrxPTWLIduSfGU5XJugeffpTeKYNnyBbMKHWZw2tSd+cWsoqCQ
ad+Ootk9Hwmbbycljzi6keQWY6YcZ/HR4kJBCfyh3IIjow1r6qpyXqC6/G0BhImS
NtaLLynKl3EgTzMN6qHK1F+bBBCZUWMfUgzMfXOZ9UCnXUN9yZ2XzdRkUeQC+YDn
DGZCcbdAg5WySPUkh+PL1cGu3WpaKhseAHm73/GPBTYvSGOJ1xbrlaXs6OAwfZh7
bToFmPsoCP79TdygWourLyd9DV29ZN6e9nHocEnOMn9vNNMFoh6QGDi15roDf0wL
GQbx3qYd9CYJ9W295ocSKOzm1bjSVHAfN2LR0yF6L69k4NdlUyVUmMgJ1q0Hm9Os
YWv4V3RSrps8Wn2HNLk+laAuRyi/Aw8T4kGhJxp1WJm4KsgLnPt1V5xok5x1UD2r
0TfEUxL2h5eTW8nPQXyDwQ==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIID/TCCAuWgAwIBAgIIBUdARsJpsygwDQYJKoZIhvcNAQELBQAwga4xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3Jp
dHkxHjAcBgNVBAMMFUZvcnRpbmV0IFVudHJ1c3RlZCBDQTEjMCEGCSqGSIb3DQEJ
ARYUc3VwcG9ydEBmb3J0aW5ldC5jb20wHhcNMjQwMjEwMTczMDQxWhcNMzQwMjEw
MTczMDQxWjCBrjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExEjAQ
BgNVBAcMCVN1bm55dmFsZTERMA8GA1UECgwIRm9ydGluZXQxHjAcBgNVBAsMFUNl
cnRpZmljYXRlIEF1dGhvcml0eTEeMBwGA1UEAwwVRm9ydGluZXQgVW50cnVzdGVk
IENBMSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0LmNvbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAL+cjKCLOJVfVT4RSo7ZiJWJYDDTVeRf
ixJ/37tMQZQJHd5xDKVUPYajUXVR8dg/Tb8y980/6JVMrj9pjYX5FJaiZNcGmHNd
5lAk6BxhcOuzEJfnqeFsZAu0EB+N28XDsrmJ7+nZXoMqg43mra6/jOv7yDtGmzFX
cFvBXW+fK3m8fTPfD/jI7Qc9ZnaT7CY+d0yw2Q43xfq0vDCFU8y1ticvV4GrWffu
iyxryqM+VKIE6885yCEOg8BLn6diPyWOJrPS7jdZeJSBorg0NfokXwvHboM6alNQ
p1l25n78x6T2plquehlSN4DxLiIAAEn/cF0C5qgwolq6uCAKKIwAD80CAwEAAaMd
MBswDAYDVR0TBAUwAwEB/zALBgNVHQ8EBAMCAgQwDQYJKoZIhvcNAQELBQADggEB
AB4IVYsZTYpg68TzdVINhqtBAFjmaan7R9tYFAkQLS7Yow1NbxgRgBT6CXp45v4g
NuCUdLE1UvgRwj/F8WHla6RC1WrMiMkCSEZHKsm1yJThH3d9Ub8fyKhUQzA0J3wn
jvXn+/bsl1vKfGE4SZeuyu874HQxenkL+8gawKvWIGQVGk2UDpeq1tAM5muZiQ7t
QX2PXE/4DEOPCUr+Pd63GeFQpn2tHZBHJ7pZnKpbb6m60s0/4yUfXJopO6ukzn2W
3M9JvUj8BzAvHYIkiXzy6bjCnDHcMJ7NUfQgVFM3ofaEOx5M4oHJDB51LNrbTkUV
MH8ozCn1O0sEOCGhPu1Hmjo=
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL"
        set password ENC yILJOVHOOD7aqGDyoFldBhwRcwvauS2QaHJY6WeXBFy2W0vKknOj0hMcpwKw0Bv+6CPwW2uwO3M3nrzmXMAYCxjHqMHakcIDUOuHrU7mlpL6VvesjqINpOVuq51DGalySF4uNvDkKNSgKbtKB+ZYyUPvPL6xYHjwcxuxuLytb7zsCKwix8Udh2/rr7jDL9ZFIrFfww==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIFHDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQILMzwa1uU+IoCAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECNVR2DwWj2Z0BIIEyOapc5Bng753
bm03093yLweCic9ph5UJMtTgc+r9aYzjfexgnUJpClhqyWsy94Dn4WacyMpijsY8
wrC/SAJJP2Hiy6k8g8i5meOOxw1zLVCYu9kstOf7FmjcsUW3iIQQNQBGj6d9SAvl
mi8x7iIofehcmn4IgPkamMoPmwPpjZLulifhiqZvv6Aas6VQJ9sF9I4IxLSbyQ9K
y7XzQpJebCYiq0PbOswMiq4qoFxgkUL3xGeUWAW7MmMf7qToSP9LG7ZXSTusSc8+
psBBu92OR2yosY/FfHLXH9mS4tUB++ORF7WIoxIuZI0xkhpXlPnuT53r56Xit0Vs
dF8IU8bbZCAYtPDWqrodq1JvYuY96V1I2vDmax+bVhap+I8TgQFjMHRiVE+ghQmA
3dt1gVz8Yn3d1vLQ/R/YHxCIvvfh9OYX1fkku+3AzBt/3mtWlkF2mLVvgJaD44r1
xIrAESQpxqzsjK7YflTjaPfWB3KRlTCpyc+ksJyc0HZg63keeIvW5OiH16RzV3ky
wOlSuo7RVLuXcFW4Lt5BSX0WVgb/69PRKWeqxplH7vLQ4aJw1nUqD9OmDzsjShAj
et+E15rzbevNILAUF7McTPIA2jN4lEf4YoWYXfU15pTdzedIxl9gacOb5vpV0KWM
Wog2hjECiKr7FX/8pOBxOUWbvpEL027NMewww7keABl7tuxc+gtL1aT1JQaoEa6c
p0Ruxvchnj34ZfmBs+TxJ6ypAqDzfhwd/ST/eN0XjO9xCMIT6Pe/K0RMymBXo333
T75QCMTfC1dZSqLmo59ph4VUq8Cy0IdRtipqwqC6WPAOwvF0JO3TJfxsibM1wciE
PQDvsKIreWkFoYN/oA5zG4GktrhrKjxeRwNhLEwLs6Gar/oBOJCCJI4nAZTjpwkI
0M0qa7q1mhVlcGdD69q/EBQ/Mi6K+ISZRue5TxkYjEv0YW4a40qCkR9ogkQNP16h
1qO2WE3DPkbX+FyAd/FI/sOB6Pkj7G0b0Jzud9gbBIkfKkZtensCc6D/iQ36zGSc
wTmEKm0L5qqk/o3nM3UTQ9HrtGiDbZvV5lXwxU407vXlXXIqA+B05EcknfJLjYXI
p9oBJuMeq04kZfvOHFU0ch5CfVQSBeyCh/lUL546zh0Er+Tqix/ShltMcyYnchZi
le6RBIrIg2Nyskba0lGxmWxUbQVEEMppbVUulod6MzM1yaZWnSEO9j4JAuGweaP6
7904cfOkqCY/7+A9NckRsxXWU8PSOMlDjKjJoYgvdUh7EjMXNbkvyEgdrfN+aqx0
JUfZyM3MnRfA8Yh0S4pOnpRLDqYGNZI7YmX4VjiR0ZIvGvMsev8/mh6U3jNatNGe
on6WG/H7SDpRSXO3uQqdmnQUB93+wFUArlh3cmO6XqWUdgpvxiFqpfMnWL45VlxX
P21X7WnH0ebo5MEqf6x6GyP6Me3mGWKZ619nIejw8UZ+1pFRdVBbKHzauWYnxJ0r
U94JzAbgTlR61lC3Kc3Wq8qK8jFQh9633tz1XykiVo6ZNZ6+VY0ytICArt58CHCZ
xpavtppXugVSlNFgWT2OEQomDvmK2F5ERhV95f9/0K3lseLcImxmYr2Ii8bcGe+Q
lEiTm2hWbk3k/lY2tIXu1w==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIID4DCCAsigAwIBAgIIeupE77jxhfAwDQYJKoZIhvcNAQELBQAwgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMB4XDTI0MDIxMDE3MzA0MVoXDTI2MDUxNTE3MzA0MVowgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvXVniAPcU5wI
3bqfONpOyauFoOwSLxipA8QeZY78uK1L/LTUoCrZ3dLppX+85sR9dnPg+xio7pNn
k7o/95T/JxRUp/MpIpranMBdGuvl/MndKhacpHS/36T+ir8gw+oSJTGv+ud9p9Vz
R2eM2rhLYleGHYahue6dHONmrVDMPKtnZ/5X3IrKhhVJWdnRLxCzhv+FZv6oCwpR
oJow2V/iJEPbYzSLtCRYiv9RfexrTkG+D7VERhNp12vqC9v8/gyLwDaV4VIEVW7D
aY6mSjIXDxM+UELVogjvRLdNG3Z6O0mQvcrICWNtqv3Nn/nDuKSJ+C+DDVoO6/08
SIdOVCo5DwIDAQABoyIwIDAJBgNVHRMEAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMB
MA0GCSqGSIb3DQEBCwUAA4IBAQArdRrRPZMulN2SyHDI+pGKaPQGj3bkcIrpB49n
cVgwtTWrFuiU+QE42iy3KcfvdTeIeuqQXlY8qSm9PeWcmj/DSIddu1D5Qr47eYyj
FwGqu7bTqBllCDNi8idLzwY3w1988ePUMHc2hItApt1FhL3wVpRITRicbEZaa1it
JwiTHlDgMU3QbR9+LIq6SiHVYTMlSX8XnNi4GzhE8p7OhbUI15ISzmV0dSU0edyz
yeMoDQKyD1vo8uJblq82XnxZNijR+gmkJSxN6vENwg+SglaJL6p+37qB+kdM9l8y
Drt0f7Yd7TdDTjXLVTSx3YBFK5kCvCHd0KVrCMmCckZX1546
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_RSA1024"
        set password ENC +TB9DQHAJ+/R2zij6XFUleWd+KjJUYxYRPN/tDWE6SXunz3AiMMO408vZrNfc6xElDvWo75bjmWTB09uH3qyocip+4TLu5gK47eoWPF4mHBzBe1vYl5yrt26Fp0x7O4vK5Xy9H8dGX7/ugqO3eYKyDzjwOC8oPukzmE/5Pby2V1IHI2iUtT15yi0/P2NhFQXc6xaBw==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIC1DBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIOtaJZe1GafwCAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECL+B969z3OKFBIICgLMx53blTb4R
YyX7KsjrPoAr41t5HalN8duFUAAnmCwFrILEyr2GBsonua/tvRWG1ipSFTZ76LHe
WbwqeRTCjhlfAFOb3lF7nG53m4KyJpQPz77yAgguJy8Ean+1ZzqXWLuM4RqCkSQn
S46QXIMQnadknBG/MDgcOeEQ4w2wlOykwanYGn4YcMeKRuSxY55ayrWXy/GB9jbx
YWtboYHNabK3ocE4EZJNUJz3YGawKcyxBZfm+a8Zv2x4jiVdot+cc/I8pmQPh0E9
c5lChiAFS9AIfbOcAMEPp59jU7G0mPPZpMywU7RgjFn7XwxNdVwIV9MVZuuZ99Nd
i7SAn19WGVJ/BaEAfcdVvqqNfOydoe6V5xEGWVJMi6S5M6SoWdzLuVzP1ZoGpG9G
sQKPoEFD/8RvoYbC2wRzTL63aYZy/zptrvu/wHzT/T5XPnJFF9utg+pVXaeeKi1l
JGt0nKx71OiyECpcYpSs0Sit5fSQoQgnEz2IJbJL3RtgJdrgu3sH0k6BdZlNnB+o
mJUEe5KsU56p2ElGK161fWO4bQtJcpHLPA/+XiihXyOV2lhvADCq7I9KFdG8upwe
vpPhmQ1j+ayr0Bo1s8KhbZmWeOXkviicrItAnNTQ+vhRAoJ2bBObcW+RVRbyQK2w
cEt2GDzSJKNpMvj/64SH+7lWkXBy144pBNW0KoU/TGGoLkDECD6nxSxXzwga7thq
VhPlakzIPDRS/o/tvb11UIG4ANsBeaWCpSseMfunG4XZAcz39a3jK1iuYyb3iK+T
P/LWNEB0pkGxZQhaNDy7OUMdPMQB6Iar1bFzYltWMiTvxVdAiLvDNxk9BBRIPn3g
EeTPhYKUnho=
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIIC2zCCAkSgAwIBAgIIdd9f3vtq68IwDQYJKoZIhvcNAQELBQAwgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMB4XDTI0MDIxMDE3MzA0MloXDTI2MDUxNTE3MzA0MlowgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4Gt7J53grqcZLImpW
EoUbkw4hMOnAvtOZBkzhVdJ6Msc/mKElfyIq7U38V4frjT1hWLDrI9e1LO779B4v
2abd136WRGY3AkO58lk5gObcW6ZVwJtAZCZCwM/npqiDDn2rBlltRkmykyqlWMLj
ge6+nSpLQ66ldKBjjgVUfmv/4wIDAQABoyIwIDAJBgNVHRMEAjAAMBMGA1UdJQQM
MAoGCCsGAQUFBwMBMA0GCSqGSIb3DQEBCwUAA4GBAHhWPnwMS3cPxTWKiI/Vr4dn
g5hMLCmXxkf5elFqRIdo4+pBYuyzF9Vz5t8H6g3CzNKZDfe40YxlaZCp68QqceHE
zirlv3XqoPNt9s5qn1YYF9dYlvuVdS1A1vs1dKM01XD4dwECkNjf7+YiTmzEfw05
oXnQobe2x7E64Cm0zPYS
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_RSA2048"
        set password ENC HGhXa3Mt7b/+0JRIr0xtu7O1owWtgc0hDouPpy5+tEf8Qlco9D+Ovv7N3g/xyAxM43cmnlUx5ie2r/IWUkx/j3IyC7G1PHOlK6dbczzrFv5EGj1cyBNoz7HaatSbmCYviUBnd2Nc5yCO4ebnKgCve/Rcgu4pUR1VyYUTdhOTeWB1gLEwjQCsz8sRDlo9WtyDzm+8vA==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIFHDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQICiCrdAbrz2UCAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECKzxGidbAWxVBIIEyJ4ifNM+EASi
O+r3t+bwpZuj4ByiniNKxuQbvgQqxUaHYdDUXCFQcclquXIwu9E2mqRb7o6V8tXU
Rt1kL4cW9YUgPU4ap/nUIX1GqfdI+QbUudZKX45bYeIHbXCMS47pqNjZLjSrEIRf
DiOn4H+sDXkYlmooygiUOtPFTKBPA/9jiREVvWAvAyrIIL/Jhhz0EefUagmFvy1d
xuOPu6Sq2mVBkGEVjfgiwkvsONXZLwSbwoghUabUORL0Jt39hGSd9tPlWz6GnSm8
Jhdy5zz3NZcKf5NZ88W3DPhZnaDC35iZlgKHaUKFU45t0oqKZjysv+oGEVDek04Q
BGsDAK2JAluQMaGs5lqVCud0liKHPwNHsf4rRGJblxSYrlvXuYQxQOmPhhKNFY+g
Rz8E3dsg3fTUgAgjk+xc1E0KwlTcmezXbWjLTOBqKtsUytGBEDHsLz3OgymBxIqA
D7gTqhWJV7YLtdtiSxTW2fXMsatoT8V1A+OoX4I/DS/PXHai2f7/i4SXCW69bynQ
TXpzy3qesckLgvb2XbYioFdL08RlUAE8iZlqauGM9vU3FTMXQ5doIJ5ky56vtV1J
C5ipzr0epK+GpSMehgphl1hd8+YuTuO/ydidyEa+fpU4si7Phrhw8m10tU1Hwfli
16Aqegk+mF9+T0lHbaBRX76XJFWY4oc+R8qY0zCo6pbBwY2JsL40wrqdj6qFghak
8wvMPn4hHtg/cB2x3CjGdoOWbWwZTfOf7/CgX2Pz9v2dQUCvRZ37XHND9JfNy6Dg
NMcVI8d6a5ps2HAFVnsGA2vp8V1jxBHBppsdZuHFzMiNbJdhbqHsul4F+4UW8HUk
lwlMtcrN4vUO73hnuYOWzsTOtNie6acrXyFItRt+BbnjsXBcvwZeuWFZSy8IkwaD
Ri73isAyk+4ujZwt7scA6ozhoiNTt7sIIIkg5EWdzorfaXac10Tk4D17TJoWMoGY
ljsRBl4TE4snu9e0OclaSOXSCTW389ycoEyLjimu517W3hDeR9Gz1pz4/G19Rct6
OCoErPRuYY0mVSZ5Jj7wWsVlKeo/sxPQHZBlwjygzzbj685ToWCfzNQ6okZvM2Kg
vZjlrMSaAB/sn01LfIk6M1x2HM4+8mzZKifP50KeYJy0uoZdouqz/U8EwCp5KLma
YCsTDkb7ieOjdXClyK2BJFzHPnmP4c4SFnFypuRCd/iRoWVkuGGHuULztL4iMRol
YMV4SNc6uPj0u0fNia08C7WFmLpkqKDR0MJoddm2WH34zh+HgGwHaCtq1ikbCokM
Lo7RS2Y/26DBWaM+qBYMgb0g6QJrtM33UFODGp2YooxdiVvxaP0BljarYKSSAQVB
SDuPHjaWM0zLLzP8xUz2QeX+rNs3ShPQk+MPdbNiZHolBFsHKZmv6S5XgfgUA/tc
VnoAUoOCjVTsBtjjf4i6qlTxuOONalqwbt5y3pzgiDWiRQJ88nZrF6U4B+8mLVhi
kISvN0Y6WbqVj95yOCQUEkb2nrLZJZkJEMVaDys/Xo1HD8Ju7hhiyjwvY0EnYVzg
5AAOktSOFNKs85dw81balGEZy6iiJDHj/RhmmcsWdv4j5065nKJwMtsRNWNepuwH
Po3pE1z7NUYLOWgVDryloA==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIID4DCCAsigAwIBAgIIb1tLRzVBsyAwDQYJKoZIhvcNAQELBQAwgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMB4XDTI0MDIxMDE3MzA0M1oXDTI2MDUxNTE3MzA0M1owgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA16MPWg9saW9V
ImCOgrfDjeupQJwBrgnsCzkiO2w0E3sWBfMIzrJRmpoUpeAk2pVP8IPMHX4IhH0u
K8FcIF3hyd3OaxLKbgVO779HeijIoyzQq/3X75SC/8qgsL3d8s1QUYfiYknXtFuY
JHLhTptzyzcHBCwx/sk6T/B7+TcRrJRAFKTokAGDy3N+nNF5Y13k0fMrh4VAQ8Dp
8fUNbqe3Ggr1xSnN1/qmuZ+LSqEp9Lq4z18MznnBelMKF+L3XTYNJKN5aXijP6eR
N8pPtkvy338Mx0uKzbxzdsBAp4eET3/rnMesiv4C22P+R0rQG5JtzIkP12aWZwAk
nL2ncacLrwIDAQABoyIwIDAJBgNVHRMEAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMB
MA0GCSqGSIb3DQEBCwUAA4IBAQBnFWcXMYaSHyvZs80ErCyz1mMWqU8LO2YFUA/s
EKUoFIRMGUFbDbV2CnpibCI7914UtMRRKzVKuwtS7ccTNPbKoVx4vnRQVIOy7zoi
yHr6qW8I0BKMi0SkaFNd71rX+fhzm/7VYeHFq5R938m0IYKztra12ErpHf7PqtDl
5tOmRPn8i8dNAw9d+kqpW7FycV7ifGvdVdrNkcmurbY1VPpzzlr3+HWVJaKURS5C
4cIqP1jbJNvJE0duYk7ZBi/H+Zbw5wkNc2Q9K29tHUKiCSr7UnOpiO15Ej3ITxB4
aP7xycUeKLCtNBV8/hbkuzgEmVCQEe16P6nlNsTvOnNdVykx
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_RSA4096"
        set password ENC KL0DgmKTG7/RxlwvI2hoBSjqB81ssecBEHXGWGnxil4hDqa/Vct6XNdnOkiWJRi5mNmLh0i2UVuTV9upSIZpVvEzarT50JnjOj4ZAck6LFyauk0XeAhp1vAiYEKJQWO5adFbaT16TLcjPKf9gF00c/Aq5WR67NLxyFHt/I0aQthrycYd2SU/qGh4coxFW6xxghRDLw==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIJnDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIdunDcPrkqHECAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECNhqTJnv1BE2BIIJSNjywvFM80YU
L8YZfD8EjRgB4Hx9zO7yvQQrDroufPWqiQrW4lKPu/1moemR/quxgQRAD1gCNMaT
duHtABX7kDjsky+f08QJIrivC4kqY/LPfTNmGFVRKovGEZ6AGpY8dSt8nSWhYC0B
7wd7TdMLFvPp/FhN/d1lEL0447DYqjeLuPlM2A/p+fS+7C0uhB+sA5JVq2me/9sM
k2FhOW5FPKfiza3lQdMGdVkZlyRLyuzPwfRJjddWfPG+Zu0zea56/eHkJG/3pNMi
WuDcm1tZ98npNgJX4e5SjVJY42vg6Vp1XJ3yByiW86g+oYqfo8Ey83e3RsNkQF6r
+IUmq/H41vdyABqYQnTwotDky6DoqeXG/1nRA2p98GnyDuvSVa9FYktFStk120Tb
0hYiIeeqdbMoQ2dauPEvhzniSIqdcdWZLbXGUn2X8T+S4QdKPjE9kZHpORX5kQMZ
1359iNOQEppxW4/RWMkIK/hOm2Vl/QhzbsuvrRzPhK1Endimc2KiPcoupaSX8QXu
yrqAQ3r6CR/vSP8qdG5r/56IbNzf4Si5WurosPXg74pvKY/GhWgAkVCBrBlWoloI
OV/DyX4y63dVs0noH8VSSI5lM+/8qNj+waUqBIi8dFyjPCnkd736AUprX4ZwGG4F
S//G60rfKRSB3jS3s8OrwyWaBWwWmvFxl2aQDwnmQMJXvd24s9kWlrdt67DRMpyh
Br5jR3OD+viBX0yJycb6lTtqRh+QF2Z0Bq9BdVb+PrXDjtiQfCgd0JjJqkq2Nzcq
ggnlfUdmbQ0oda4P5n5f9EqsdPzhz4/Ox/RlejjFkvkEZsRSlV/TrFWO/haBA6SY
Fm9TIXNPH0r5eAfNu2oZnOIyqlUZpp2FQlaXIdwOaa+h/E1NOUP4mMarYSCv7VCT
QnCGYoviHF5kdrgNOqz+MeArWGtJ9PHGIN6igkg7Dt46Ng7LFw1RF2Golf27O3nq
AxFk1bc6fhiz/A2BCHKDW4fnC/c/HBtPWZGprKXIhVB7VcWxh/MjzTe4M7IHPMBc
+brRZjfXlTTMIBEFMzhmXynXH6SCOaf+vHU376n4RSfMjKeB4x479PLZo2A0yNWq
2a5ChJ4eaM+OdD+l3bQf/7EyVjae2y57RPku5Y+q83K6u6vwsChvlZBzYtMTH9hr
4rRKbyaCUf3rlN3/CnYtdHqCTuX0eHNCIQUGiKyGfwmkxu2gN9udQBDg+ksOHvwh
/IEFzumIbB0VkkrYUWZJB++cp5VnKpVssG2LvxeqMj89oKG4TFlvvsKGVwN+TJlY
+Rm2cuEzHUQMkWSNTL6cQ9Ry+lXRgDMjWmDY/zmjk+qV30fr96ntBgvWBLzPauAQ
D2iTvrL2lS6hTS+E4pgBX046d3E0OFHZR3zrjei8lYBKrdoxWZtwaBTU9a26i558
YQzwsRfOr5sayINYvnaoIbRJyMc51F1bov/xELEc4C5Lllblz0AN/7C9tfPLytU6
onlEcTe8YXYAbKn35MCSgrqPkXCKWP2aUr9NuYP70CSrijDB824aQ27Hk/kRxXhl
tHCW1NatEf0SsLG92l0T5qNQ5LVY0i3LwkliQ/TX6l+dBEiddlNPlvpCAZH/gFtM
TQz6LqlaU8+R9A/dGSnAa7Zkz9FeNPgCIbnTdvmPU0HOGkMKj608uEGlKWDA0ec6
KXowNLHY+F0NNwqlD6LPnztyy6oMeXpx02DEUgJOOKVsDSQkfbWS5pJfaJ6Acvvg
MYXURx4xZ5czP73D3sZ0nf1N/Oeu+pL0YjwW/0FbmJCKTCdTY6kW946hmAcPj2eS
Z8CpOCSbDZpERPW3NUKl2Y+eHSpvOJ4kNeKHXNllp1Z4UKhZUP9T2P/cOrlltFvs
yhs3+ZnLJOK6SK1GFmMavkSvv34iL4QqIFWU2Yr/QOm2c6UtSKFHqdQHE89y3GI7
KeILn8Hp1NZIJ/7iMbqOSsOX5AA14jaPxG4eGs8OMp5TYc1bIZty8yGoeBOjnqaJ
Sfmjz8hVblFfSkgd0kdQ1SU7gJ12d9YZAQcb5kJeUJonLAZ4VUrfvTiNWRSUQQtO
wBgo4d1IdbmvLWNlMXmPOu22dF/s2GI8I5DJ7Hhd/Q89ulGP4PH31sCKi4aXfP7t
Gl2/3m5JKmk/MzFkYh/De337dyAPjVxxf6csXT3t52J/wZyxdqGo86d/KSUd71sd
vUurBzs4zyu+jU19RmsDVVJemsAh21EQKi4mO56ZUDe6ILlqp1DENWyT+sQB47PY
A/wMlYW2P09I5Z5nJX8EvjYoytYGlNxjp4GdmFROJyJgNwN/kTn9SFfyuKD0mL/v
cPHzzSP65TUZcWzpt9EiN6H2S3RDBTjA9bZ7tm5tKFR2F3lkWSPycF6OfcQ8mqdt
9+tPCO+BnT4VOEdbtBXzPu73uCjVN/Ckao50xviWJCUcV9/Fcy2yrokVmfLWKlDX
6C6ThB9FAZtxnYMbx2kMgRpN9SQwxjTVba+Fff0yVH5rYTot4UQtQONj4L8uMoty
SykAZEkhlEVI+IcAItIGsYreZ0RJJZzDBUD3JlbY8uNV5ZLi1D9MQ+Dl6PfczaPe
tVxX6URrducEaE83vEGrBd9ZZR0SMJGhfhV6sjN/C3u9ig5sj+z6kUWV/MgGgdGq
IHWDLDtNFhRAf7wmdYFisUFio0KPz7LZbNY1yYjf4jzS8OEl4gpW3SIZJnVfwEkY
hL3B40oPFw80U6qLRbO7FGXyzmxL8S02UHEXjz4nkHCe6zqSAMJnAk443VeluCFG
cbsccoPc+nIrn58885iyA6rWfeaNMx3v7EKD/Qpf1kX0X1YFJtw3SFpgicpFbFdf
e6a7WXHzwK4GLdcsO7WNnD6EMcmDu2/Dd3aBghuSZj01Jde6Sy3c4wYrFWb7uC9V
m5zrbcllf85NpL46NiJInhLHVPJo/RJ1pMhnW4jtESUmQGv3LLSUtTVIWJnAxmdl
KQrQ0Isx5VSmLEnzTFYdCiBsNOgq66sc4xN1eoDsk0XdVjlyrKmLFjlhYndqMiNM
DI3zlEK7iNmp/XDIGbSJWmzhs7dGY5IU1SzgQ6shBmio2UoD9H7PrADPX33DBF6z
vwmUgxI8tqMDHFR+DtEeMG24H3uFXki00IlAIaSQetLDv/4Be4UfxHXkrzU7C0gz
A42cGBkONqMKhK8tqgKEWQ==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIIF4DCCA8igAwIBAgIId0bHOo06AmAwDQYJKoZIhvcNAQELBQAwgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMB4XDTI0MDIxMDE3MzA0NVoXDTI2MDUxNTE3MzA0NVowgZ0xCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMM
EEZHVDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGlu
ZXQuY29tMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAvRQSjIQh6dJ2
8e6Hkj3gZjVqaLphmM76f2s/CGoLJd8pTMdK1+nFZzzxjrm+jx4HOypR64X08XGE
QFpQMGLfKqfrTu+3oieYJUFVzjKrhMHMHHcZXY/KQW/PnGagygSO226f+YGTAJfB
3xqabO1i9QJv6JsQ3kzjjdiJwr0huO+hQu4qQGpJgtRkKZWyubO4D4jF5cbJvuDL
th85bjvGi1HcRzLlETOPGR5DCIIc8KyE66im9UHjUvaDhUGV/xdZiBIW5GzCrHMn
LB35Qf6Qodu0G3kGponNCYFKeoJTegEmBMZr/5iWwTox+i14orBJaY1JVRo+P36K
uNqRPITwZut8y5l5i6pbtngeWgJP1sxWHVdOZXXu2JeV5gGMZZz0rEEaW0oaPLO4
gQIm2xapROPOwgLk6W875nvmFnEx3FF2l2Ks1gCfFP/tWai9px6RUt4cF1JXF8aP
JLk7rgHhLsnnQ8Pv7oE+X8sN+eGDGT7IPQPFQ3YySTLcLD/k+7FIbyfmNINdBjCJ
VOvsRACWoLTfFY72La9ivokzbkZkCnlA/50E7G8cRbUrGtpGJwOz8grTnEdariRN
0DlQtqp5sVSomoHU8uzgZ+0vQ5K4NMAYgdVrisUdcfN0wbZn4ItL376e6T5ygnds
SVp3PtQdpmNXNzZZ97AH7ERVxMO7Ug0CAwEAAaMiMCAwCQYDVR0TBAIwADATBgNV
HSUEDDAKBggrBgEFBQcDATANBgkqhkiG9w0BAQsFAAOCAgEAVDrA4xJQaRb6ZhCl
gpINKInnuW0ZPC+atCsgb+Phz1djQqtCICPhHSJCNwspWCxYEqx2V0Q3AtS5rWhz
KeXzq3l4YqjDGFq2ESX/uQ3IuZQd7bxVEaHRHtBQtxkEc5hQco5LMF9gTjKzTuvG
UnUvW3LnL2ypTvinYYMJpHbijuoc0qLmkijY8SHOetQgelp0RNWhmuHfubmi0yiw
N7kmnAEX33g9nJ5HJtmYg04PmM2u8gWTTwhnT9CBAPXLdWCqYR1jmPmZD5hA6CB+
jbyh4TXZYsrcbpF1SikuEmzv04eWHhP7HhiusTr0KpOR2/29YORxzTsAttocIcvA
CB8WbVPCJYqxkKnC90Z42pqxstyU4xacp1P5uNThfnAKx1SVEI1Vq/MGPxwPJnAL
3IDYWNIeYAEY8KGgFTDJzj2HpVe5M7aZ3KjV360c5ZAOhyH0CLJw6RZPs4GT1EwD
S5q7TNZV06kLt0djXCD09469Raot6HvGRx2goKAGSrLkHgbrtqH0p+rSH3IOzhet
7dstheNSmLUEMXj5yQ+mRXclYQcOvDc3Xmy2cBWUb5/tufv4GNfr4TACE/pOM96W
o1DSTjaKvrsESYi1VJkqyiy2QUaVtqAbnvZDPUDYIDvoRQhC0pcQ6d5fLc7X0S/L
i5oiaknlAIaDSffz2sACEBA3zY0=
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_DSA1024"
        set password ENC NVBzT15mfyNMAS2W3VkKPGnCns0DPUKw8Nf9/Os3Qd9PhcIu6j5VMg7KoavPawL32mkReb0P3nuNcr5mUDBeCLhtWqpwgXymVXIqFD6eSGFVOgkWE+PjQDr2SR6p5DFOA9sbiJu8NuHPQ3d3UwmFDp39bosbC0Xp6Imz2y6Q5fh1wfqcKnQT4NtTmeB3i7tooZ+FZw==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIBpDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIsnNuWfcuPnYCAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECJJQLDksqvduBIIBUKW+qUj77nEK
4lUjq99Y2eg2qiddRmnXwwcuv0cE0mn8Mzb11KYXK4/AWnwTvk9qpAN3U9e/yhAq
5ftQLqdP1tRUjcowRybGmO25I9muxI+ft3q2iinvWntWlC3Z1cPFo3r3NcBRHb4F
KrNeiyB+1gt0L/J0gkAsXFviOcC98joydPB0QgfoY7KHNbfAUq8ckWoM2WwsUSEZ
DFapU9KhM/YPWr7CR0lPmVGbyhBZVXyGeKgUjb0vTzw+Vo1jcQ5EtUo4lNcdpefm
VCa3/9nv8xIvQPMXhI1De0CNz5rAhChvz02lGC8Wq9p3cPQ4qeAuhhErkVGgjX7m
4HWbIsQx2Uuh2/K09oCllQ71bY6mqRKSK/dFpsCJd7yGDivAxxCROYL06d561g2e
jxRFrRuN7EqEum5wM0hPMC2FWE42fp/WsqnUAE2De4x+aw9LI9P/1g==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIIDnTCCA1qgAwIBAgIIOKRcuIFNF0YwCwYJYIZIAWUDBAMCMIGdMQswCQYDVQQG
EwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREw
DwYDVQQKDAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBG
R1Q3MEZUSzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0
LmNvbTAeFw0yNDAyMTAxNzMwNDZaFw0yNjA1MTUxNzMwNDZaMIGdMQswCQYDVQQG
EwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREw
DwYDVQQKDAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBG
R1Q3MEZUSzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0
LmNvbTCCAbYwggErBgcqhkjOOAQBMIIBHgKBgQCZ5pToKN8twUvqhHxDjWj56PAd
vpZw6ZveWmwhazXa84wMpkGy0UXM02CXt0V+EuWQNA8aV4dIdpcETEoDT/PuPjuB
QNVfYg02RPywOYRZAp0HkQUAFyf/v3W192WkVgr7sgOOtB6NJO+xrCSWu4LaVqOd
Z07FOagRX/IRJp5QjwIVAPbVRLciUDAOP0bhlRR7ZHDLOwwdAoGALCezmQ6x/3iC
I9B0HcH5wYmCaT7BsSz5l7EgQmXOb5nQVCg6x5V3xqk/C92lQGyBEgPQqsLlxYaK
1OG41RI3CC6hXuzUCHLz8F0c6kGLVCxAF0LkQz68ahz+MVrSGE/ahnxbkimWR1jg
JtvL8zDXmEFDfydW1GHD0gbsB9Vg7jsDgYQAAoGASQooyGJepbNql6pGt+HeoPkZ
N8F3++iSR+0H//qIslppANg2b3fB4WHYLA3cfJ39kF9+W8cStfqGWbpuNmlAyO0u
LpJ2ck6Cu/4RpzGQK1E28ZdRHb4EzIdnOZIoh30Z+Sxuh70vMfbcgLDHpfMYyUlI
4rkZATCpCcdt+NlsXb+jIjAgMAkGA1UdEwQCMAAwEwYDVR0lBAwwCgYIKwYBBQUH
AwEwCwYJYIZIAWUDBAMCAzAAMC0CFDa9naGgSSBhvcOhcw5MkubNN0HOAhUAwKm2
XLQNX7h6UEtqRYE3YeelZ5M=
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_DSA2048"
        set password ENC LqLyRolNueMUyAfkEko/tKFUZMO8exR/jpTW9jrGiWTHbxyJvZmoOrR5bw3eGvgt2wS/gsTapetMW47w7mREdUFdXG33jBRbbjmGeyD7efI8Zxkb1GFl5ttWS0kj5gojrcQnWxB7PqEk0ZQjrahUJo1lac3hP/Yr2i2qVnpJSD1RjtRFpI1pAUjyzTpla9PhxOGLdg==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIICxDBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIAwZOEWfdW84CAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECPKzoMYlS0uCBIICcEbivR4DhPcW
Bqe4v1hDxAQJRJ98q8z7vkXkAMWk3mcqvrwE0IzRVqpQmikcN80/UknStjUIYSHa
pcfr9ZHHja3fp7/KhKIwQkE2Ge9fRFbJFczWh8dcfoWvaPnrusIM48TAocmn/TN8
YW8jIGjQ790ozTW6k3rovXOcFZIoEDHQCHOzCI+2NJrzkdxbUPsfWqGtwDmqMW2f
jfkG0kKjwrVOKVwtprvSIgchBjfqYWXSbFCsNUJ/pMFq4PqHK4u0Lv0QAOwvIH3F
5KUXdPUrfEqLmfaSSjAQCDolOTcyK51Rswg6rmtM8tOA0B7jMfboFcTsXUCnkuvi
dW9QMEm3taeb0co8hXnHfZAN6w4fTXt5X33FEgkjTOnbzvGlr9QgWy/7h/a8qEmb
tqs0f2MigZRg1KN9gW9CZYtxs4Wp5V6GtPNEviRjqDmhurRJ6MBVnfg8YesNFTwE
dxEVL9iIRZW+mKuRPdI1MgXqzzeGdTe15Y2mfMMcPevmF8H0xwSCgp2XwVO55YdK
ktjyo2HHFfr0/2+uCWx6HftkeK/72Ydiu5RRqcPPysnQaNrzXcb7cK36vtXy+TD+
q1R1h/rV3LRm9Aucu0yI/yER6US7KGjrDW6UhWyhW5MPLdcXm83/5Hjv7+vmtl7m
u4Ktj0aTA6v5kmha/TacJHegFHF1MTjbdzYjXB3yoTjxvHUs0hNcVtM9Dp42kBXh
Zlt28AnH//khc3HhG9brYZJsaGLvZc4xDwRgv5zYz12BHFnyRcczcj3vFZI4CM9+
uzB2IGoxVn1hd/9fVeWTwoBvqDsIXLZDWu06O7MK0lHh+0AnXzxXWg==
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIIFRDCCBOqgAwIBAgIIcdzAATBK2FAwCwYJYIZIAWUDBAMCMIGdMQswCQYDVQQG
EwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREw
DwYDVQQKDAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBG
R1Q3MEZUSzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0
LmNvbTAeFw0yNDAyMTAxNzMwNDlaFw0yNjA1MTUxNzMwNDlaMIGdMQswCQYDVQQG
EwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREw
DwYDVQQKDAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBG
R1Q3MEZUSzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0
LmNvbTCCA0YwggI5BgcqhkjOOAQBMIICLAKCAQEAgzLTYs28cDe/hyL4uo8tCPF9
s3xIQFawY0ZOvsSo5+9xh7Gt4UQjKW+elmzfzyDg/cm1Cr4jyqDWOR3RRJTqiatm
OEBNUB7IPx5Qw/vify+I/IqN+vQx22c6c6/I/Dz0uC35Gwv/KAXrfZ90nv+JtM68
kpm0nu3DZBRisF9Ol73vjrKktxmzfBSonq4EV9owDwkNF9md4B7CUyngxxmSEJv2
4d2yigMO4z84pYGhuw61AIuaPXiqcK5h2/Fh4bANXyOg/E/o4KW2enqKnjgysDRM
LMgA2GNwXVFDpq8eexFNHGyWJigbw840USGmHN+0h9w0sI25hwQVzM7vmm+hSwIh
AN8EI7UTJyYrp5VraBdeWgU+Ir7X1mqwjemrJHqxpSvrAoIBAH40ovIKF/dDhQxH
5LkEGnvzOnmOZ01WkGjEu3tE1OhEYxFFNJ/sW3deOvhAN3DgxUoXHTDG+LJqu6dw
0stEUnnN8vH9+hC4QWZVVY7BNJoeSFBn5QLi5ERCEsHTEATXl+sDD7zc5jN6cgxB
ZTGtXV7cAQq4emXHXKn4gN18ojBVzKHEDlqpEMIG1OJs1A5i28+XsrsoyuqKpz/m
GJcHxlQjCHroKl2hKoa5UVyM8QwID8TGi70+wiEtr4nmEhu2E+O608hzZrfBZRP1
+Vc8t9QqZN+sU/DNABUeZzyhkXRi4EaqqZankkZZNeue5dvlUQn1tzt8CCFSR85T
tLq0ru8DggEFAAKCAQAfIENe2O7w1LuyjVdP+XMYt4FnJZfWT5vY2wES01pg/D+2
FH58Ka5uQjYwyxTuajRJ2zVm8/VSuJIOi7FDd8msX16iG9DcjMMixfxxIbgFiBuQ
oPPEgnChgy1dEJS4NL/VZMKDhB2aXrS5hnw/Tf6r+5s28Nw79rycodm4l+eJC9Wv
CnUIsSbE+DgWqqxADFu0j3T61GUdXGbVnbQZTVO5fxKblDtO8WciP0APZ4aL5s/K
OpVlXc1GYWHk7BajDvQLJzuXnh8A4w+GXBdRZmvornips87JjgE0adZHEpCDrrJL
/HsfiAvvv6/q8oHm/3wOMAlrg9sSUn7W4V1PF0ahoyIwIDAJBgNVHRMEAjAAMBMG
A1UdJQQMMAoGCCsGAQUFBwMBMAsGCWCGSAFlAwQDAgNHADBEAiBI0w13nxAx6G5T
vMN9bWP403e/VMdM0wXgciP09J9XMgIgeFAgQx4evhA7POxzgNHgemKtcl+4e9Pe
YbQNrPldLJ8=
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_ECDSA256"
        set password ENC 4uFs2OzMeroxkIIBQwR20HY3PeW8OnmbPzzLV3TzlNpAf6Rbb5jS91GHVKFVEttG0FvVt3EWmZgI3NCyQhkB6j3fajd3ZURl3iHsaJdBZfVcNGtzyP8Nj5FqKFsRIt8X+nzT8W/ZJyR5tltCQSbPjjsY+CtbzWkovDsoxT4ad3QyFptBSl+Rp8NaUjHw12nEvx8SxA==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIHjME4GCSqGSIb3DQEFDTBBMCkGCSqGSIb3DQEFDDAcBAj3Xeti7Cy99QICCAAw
DAYIKoZIhvcNAgkFADAUBggqhkiG9w0DBwQIkisI0PfYp24EgZDQzzrkZyIb7/1K
e03hNMW7I1IkTGfXzrg3F04fXtci/6p+6DzHTRgK5LGRPEDy8vCcD6J3dUVzMJNu
q3t83fITdhqjFtZ+tHNTNXvC80e+Fma4O/sCmMstiKHsy5rKl48T1KxdA3+FU/6a
UnTexL/WAkfRqrziSQMGjqz8E4uA4FOZQwIOg5aYZqq4U4805A8=
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIICVDCCAfqgAwIBAgIIKYR4sVS9FrUwCgYIKoZIzj0EAwIwgZ0xCzAJBgNVBAYT
AlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUxETAP
BgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMMEEZH
VDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQu
Y29tMB4XDTI0MDIxMDE3MzA0OVoXDTI2MDUxNTE3MzA0OVowgZ0xCzAJBgNVBAYT
AlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUxETAP
BgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMMEEZH
VDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQu
Y29tMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAELX4zP2IWuBFPX2/XGz6KmSIW
VqWCatjyZDwCrK7sN0+6wKMZFcvDWUHCtAjC/B6J4SS2u/MXX5Xr7Q9zGGSanaMi
MCAwCQYDVR0TBAIwADATBgNVHSUEDDAKBggrBgEFBQcDATAKBggqhkjOPQQDAgNI
ADBFAiEA3TGX4DA8ewPAxfySIOE2wSdgjXjIeMm6yGAZsWvlqRMCIDPysmrs0MQB
b8oW6VpKk1hkXKHkSQZw1K/kGoBYhxRq
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_ECDSA384"
        set password ENC /nwCWc+zCl+eJrwiBHBupNZnm0ZFc7sF12EQXFY1m+B6r5ZQZRZN0Mhq8vfy2Qgf2QSANAvSrEQnp/dYdGylJcgVtxgNnuWzHK29G140vqtVqQXridGU+goXopkvNTHKSe/ksWOpUvRHLhGhFpbn223bKMWkPt4d1DeDgQWpsVQ5P8O7mLINd3XunzRgJuLaVVcUEQ==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIBEzBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIKHvsrE7sK+4CAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECJ2L+8Dq8rrRBIHAyOMH6wRQUHXm
0YvqtxVSJr+tigEXAMjQXDd/TAZe7xokyBsSwpkfRGFSW1gxXOvD7p93sEOdxFzq
nBKULvmuGqy4YoO7nekAE2tpWYCpOmuGl9ZExUMc4MAYI3so7/hzSMtjdZRmn6XC
pj1nCNHKjElg48F89VDKabL1ODvAYGKOas3BequzR5wlv826ap2gy1fRX3wxcNDm
IExHSRek7Ij41zbz2ConK8r5FbBcyhHkVTxt7pSpkGAovtPw4oTD
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIICkDCCAhegAwIBAgIIet/1GTyiSswwCgYIKoZIzj0EAwIwgZ0xCzAJBgNVBAYT
AlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUxETAP
BgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMMEEZH
VDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQu
Y29tMB4XDTI0MDIxMDE3MzA0OVoXDTI2MDUxNTE3MzA0OVowgZ0xCzAJBgNVBAYT
AlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUxETAP
BgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMMEEZH
VDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQu
Y29tMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEfdM/1SzhL6cTiWbEor6h7D2CuxfP
PwWeo44iMyy/dV9gS2yiMCKQc7y4fXDiyjfsuyxn4QxNYhJK+CKDzg7Ulj63p/hF
/aqADJ7FxZvtx0xAbQsk1ndl7ggLxo2YFG7DoyIwIDAJBgNVHRMEAjAAMBMGA1Ud
JQQMMAoGCCsGAQUFBwMBMAoGCCqGSM49BAMCA2cAMGQCMFCpFBlAL2KGkIztzN3M
Mmrf//7ONQKExpTcpNN9SQvy3eZ/4jGEc2buiRLFCNdCCwIwIs3WbmUpq2ixayyY
Y+HhUHmsXMfADlxCcnAZySMmNgvxZ6ZFxyFjWLzQyG0PXSYw
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_ECDSA521"
        set password ENC FH+vA+cAlAMyIJR4KLWkK00+aGkeR2wWKLl04CvkcxRpQJSFnzi5eI85xLrtoo0GK9QsFWTq3rbn7xUJfJRbwEYGT2hDKMw1pn9Ts2jc/1CjFxduX9wvxYxQzeFnaxkmSnT5XSiQalDlY63WBZ7tWw0Oj+AM4yxYNdHpfb/Nu9LLwTAjm3QbqeaYSNHcAsP4e6h/LQ==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIIBSzBOBgkqhkiG9w0BBQ0wQTApBgkqhkiG9w0BBQwwHAQIZNicT+zrXAECAggA
MAwGCCqGSIb3DQIJBQAwFAYIKoZIhvcNAwcECLlkkxm8/mpcBIH4tXIzfUXs74LE
84H1a1WSG8JsC3OUkn6h0sY/rrfo57JmaGAv3hKqd4Tq+iMf5JD/sRBNrsNmwuQ5
2w4SiP5/OlXnJfWUXBZ9sC8tqy6CZrMDPWMTyoZo4idaR8qvoM8PnE58AOP7qJgd
aOyr3oGz7NQHZfVNQAhe87jwNpCSQLXjAwzgCC7NAwvFrlzyYP4vi+5IDDEhC/yB
SiOekmfjDHWXoEcpy5TLCqG456XrxIq51aMxWGsojRFV+nzkbWLB/x05zFtmUaN4
LdSGlyBRgUSebfsHrO8eym9ltGxZxZypSgkP7vHJNsDmB4vtlRSMb/v+Qcs3jW8=
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIIC2zCCAj2gAwIBAgIIPEDS4zoDNpcwCgYIKoZIzj0EAwIwgZ0xCzAJBgNVBAYT
AlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUxETAP
BgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMMEEZH
VDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQu
Y29tMB4XDTI0MDIxMDE3MzA0OVoXDTI2MDUxNTE3MzA0OVowgZ0xCzAJBgNVBAYT
AlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUxETAP
BgNVBAoMCEZvcnRpbmV0MRIwEAYDVQQLDAlGb3J0aUdhdGUxGTAXBgNVBAMMEEZH
VDcwRlRLMjIwMTE5ODQxIzAhBgkqhkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQu
Y29tMIGbMBAGByqGSM49AgEGBSuBBAAjA4GGAAQA6mnHFZv/a/r4KH4N9rG9PHLt
lEYNcjM8kmrOQKnHxXD8QNo5cA7YPqqqRlZBnmQHvVkxYYQq2YaMQkUMdtNvXH4B
LnayvUwBUUx/kpuJ6rfueHsctExl5CaC4m1wSC/nLKTOm5bqPKjIWWooGwME/fPp
H0F9eOXHAO0628cUbRwHFHyjIjAgMAkGA1UdEwQCMAAwEwYDVR0lBAwwCgYIKwYB
BQUHAwEwCgYIKoZIzj0EAwIDgYsAMIGHAkFjgE2f9dBNnnBDKMjnQD0dsmtu/zj8
kf5MeMdZFYXxKTboWEQ/Hcyo85+ls+quJu7uknUWEIucBzbfh/PrAZGcSQJCAVLo
/hDVpl8YGvD3ycm8cmSTL/n83QYfy33/nJxh5djEOZQg3Gmyy07cvT5JAhAHAyZF
KzVlrBgdzfPoc/ypEbO4
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_ED25519"
        set password ENC gQPPPtWvva2u3I2mXuZHuxAy9KwkN18Q4z0v+k4Xyg5CZ7kwEoP9jhr+qJMOjbrSRGkm1aUT5ELcv+NMMdlPIFde+6A0D5QBAMmUrGFD2MtoXnB3djrBrf+C17INYKGaNJcoTXXB4GIZ6nIwd04RBpKfR4AIODJ9dzhXk9X45iwDeZOE/bJNwUK/rVAw5rk9N/uQ4Q==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIGKME4GCSqGSIb3DQEFDTBBMCkGCSqGSIb3DQEFDDAcBAi93jjsXJNCnQICCAAw
DAYIKoZIhvcNAgkFADAUBggqhkiG9w0DBwQIZpPYzVMT7YgEODS16m2SWaTh59TF
hXShlMrEhOJ7jc3YItf7167wk7TTlx9BpwUzbpLoJOzK5X/LmnKO15THBmVf
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIICFDCCAcagAwIBAgIINRryg2VLA9QwBQYDK2VwMIGdMQswCQYDVQQGEwJVUzET
MBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREwDwYDVQQK
DAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBGR1Q3MEZU
SzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0LmNvbTAe
Fw0yNDAyMTAxNzMwNDlaFw0yNjA1MTUxNzMwNDlaMIGdMQswCQYDVQQGEwJVUzET
MBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREwDwYDVQQK
DAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBGR1Q3MEZU
SzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0LmNvbTAq
MAUGAytlcAMhAKVhreKvS79X1jyPdD4wVa2iF+2THkzeyhJoiEyaIx4qoyIwIDAJ
BgNVHRMEAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMBMAUGAytlcANBAE32R4Ko0FmD
S3sXxfAEM+32j8l9kQ/zLJQ1r9vGE+O9J2JmTquObxMhKPaDtf+biJlyNFbOCJEo
M6jn6JfsGAc=
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
    edit "Fortinet_SSL_ED448"
        set password ENC bEO37tH5s/wqLOjA7yZVCk1GMcttTf+S5UT9hfM8GFHgLngCO0ZmdwkH/sSjW94NPYpUKOjRGIHxcN0n4zMVEngwjISCnwSeOHkkNqvE9StfXfqRo4K0nT0ZmP2ldEU2Rx66yEGYB+lqbuYlbKNScKmcfKxYB9TM9Ws6zhpGGrCuOL92e0XsDYmQXa1At8SQYgbwjA==
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set private-key "-----BEGIN ENCRYPTED PRIVATE KEY-----
MIGiME4GCSqGSIb3DQEFDTBBMCkGCSqGSIb3DQEFDDAcBAgQGcL1h8HeQQICCAAw
DAYIKoZIhvcNAgkFADAUBggqhkiG9w0DBwQIijyOrUYiRiwEUHpccYTpfChTAqAp
2BbrlIPrD+ExzbL4VN3mA6saHef1gij3NhR7LEaM6Ra8jb8VaIc2JZpwqckoSM1Y
J/7FQLtZqCiX/HhndGc456/s3BhL
-----END ENCRYPTED PRIVATE KEY-----"
        set certificate "-----BEGIN CERTIFICATE-----
MIICXzCCAd+gAwIBAgIIKPme8nsJjHIwBQYDK2VxMIGdMQswCQYDVQQGEwJVUzET
MBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREwDwYDVQQK
DAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBGR1Q3MEZU
SzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0LmNvbTAe
Fw0yNDAyMTAxNzMwNDlaFw0yNjA1MTUxNzMwNDlaMIGdMQswCQYDVQQGEwJVUzET
MBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJU3Vubnl2YWxlMREwDwYDVQQK
DAhGb3J0aW5ldDESMBAGA1UECwwJRm9ydGlHYXRlMRkwFwYDVQQDDBBGR1Q3MEZU
SzIyMDExOTg0MSMwIQYJKoZIhvcNAQkBFhRzdXBwb3J0QGZvcnRpbmV0LmNvbTBD
MAUGAytlcQM6ACWtjLr/RVanWmmLwfU1nOKnpFTTb8Ftrb6YYSBQXh0p0kEt5so9
Vr3LRGLDqaal1vg2FzgRGvDUgKMiMCAwCQYDVR0TBAIwADATBgNVHSUEDDAKBggr
BgEFBQcDATAFBgMrZXEDcwDS7n0Wgq9IsStTDSHAEygk8QIUjcrKMpelYn1EJrcu
sE+lfAkZvXWqgjfGeDuFwE/7dX6oxRH3GICrBRxAn5+P1swWX/dtcBqkUHnUa17m
Uyt2D59U+2Q6EAjKG59PXqNb52F5iHt6tOl7dsHlV/ACJQA=
-----END CERTIFICATE-----"
        set source factory
        set last-updated 1707586870
    next
end
config ips sensor
    edit "g-default"
        set comment "Prevent critical attacks."
        config entries
            edit 1
                set severity medium high critical 
            next
        end
    next
    edit "g-sniffer-profile"
        set comment "Monitor IPS attacks."
        config entries
            edit 1
                set severity medium high critical 
            next
        end
    next
    edit "g-wifi-default"
        set comment "Default configuration for offloading WiFi traffic."
        config entries
            edit 1
                set severity medium high critical 
            next
        end
    next
end
config application list
    edit "g-default"
        set comment "Monitor all applications."
        config entries
            edit 1
                set action pass
            next
        end
    next
    edit "g-sniffer-profile"
        set comment "Monitor all applications."
        unset options
        config entries
            edit 1
                set action pass
            next
        end
    next
    edit "g-wifi-default"
        set comment "Default configuration for offloading WiFi traffic."
        set deep-app-inspection disable
        config entries
            edit 1
                set action pass
                set log disable
            next
        end
    next
end
config dlp sensor
    edit "g-default"
        set comment "Default sensor."
    next
    edit "g-sniffer-profile"
        set comment "Log a summary of email and web traffic."
        set summary-proto smtp pop3 imap http-get http-post
    next
end
config antivirus profile
    edit "g-default"
        set comment "Scan files and block viruses."
        config http
            set av-scan block
        end
        config ftp
            set av-scan block
        end
        config imap
            set av-scan block
            set executables virus
        end
        config pop3
            set av-scan block
            set executables virus
        end
        config smtp
            set av-scan block
            set executables virus
        end
    next
    edit "g-sniffer-profile"
        set comment "Scan files and monitor viruses."
        config http
            set av-scan block
        end
        config ftp
            set av-scan block
        end
        config imap
            set av-scan block
            set executables virus
        end
        config pop3
            set av-scan block
            set executables virus
        end
        config smtp
            set av-scan block
            set executables virus
        end
    next
    edit "g-wifi-default"
        set comment "Default configuration for offloading WiFi traffic."
        config http
            set av-scan block
        end
        config ftp
            set av-scan block
        end
        config imap
            set av-scan block
            set executables virus
        end
        config pop3
            set av-scan block
            set executables virus
        end
        config smtp
            set av-scan block
            set executables virus
        end
    next
end
config file-filter profile
    edit "g-default"
        set comment "File type inspection."
    next
    edit "g-sniffer-profile"
        set comment "File type inspection."
    next
end
config webfilter profile
    edit "g-default"
        set comment "Default web filtering."
        config ftgd-wf
            unset options
            config filters
                edit 1
                    set action block
                next
                edit 2
                    set category 2
                    set action block
                next
                edit 3
                    set category 7
                    set action block
                next
                edit 4
                    set category 8
                    set action block
                next
                edit 5
                    set category 9
                    set action block
                next
                edit 6
                    set category 11
                    set action block
                next
                edit 7
                    set category 13
                    set action block
                next
                edit 8
                    set category 14
                    set action block
                next
                edit 9
                    set category 15
                    set action block
                next
                edit 10
                    set category 16
                    set action block
                next
                edit 11
                    set category 26
                    set action block
                next
                edit 12
                    set category 57
                    set action block
                next
                edit 13
                    set category 61
                    set action block
                next
                edit 14
                    set category 63
                    set action block
                next
                edit 15
                    set category 64
                    set action block
                next
                edit 16
                    set category 65
                    set action block
                next
                edit 17
                    set category 66
                    set action block
                next
                edit 18
                    set category 67
                    set action block
                next
                edit 19
                    set category 83
                    set action block
                next
                edit 20
                    set category 86
                    set action block
                next
                edit 21
                    set category 88
                    set action block
                next
                edit 22
                    set category 90
                    set action block
                next
                edit 23
                    set category 91
                    set action block
                next
                edit 24
                    set category 96
                    set action block
                next
                edit 25
                    set category 98
                    set action block
                next
                edit 26
                    set category 99
                    set action block
                next
                edit 27
                    set category 1
                next
                edit 28
                    set category 3
                next
                edit 29
                    set category 4
                next
                edit 30
                    set category 5
                next
                edit 31
                    set category 6
                next
                edit 32
                    set category 12
                next
                edit 33
                    set category 59
                next
                edit 34
                    set category 62
                next
            end
        end
    next
    edit "g-sniffer-profile"
        set comment "Monitor web traffic."
        config ftgd-wf
            config filters
                edit 1
                next
                edit 2
                    set category 1
                next
                edit 3
                    set category 2
                next
                edit 4
                    set category 3
                next
                edit 5
                    set category 4
                next
                edit 6
                    set category 5
                next
                edit 7
                    set category 6
                next
                edit 8
                    set category 7
                next
                edit 9
                    set category 8
                next
                edit 10
                    set category 9
                next
                edit 11
                    set category 11
                next
                edit 12
                    set category 12
                next
                edit 13
                    set category 13
                next
                edit 14
                    set category 14
                next
                edit 15
                    set category 15
                next
                edit 16
                    set category 16
                next
                edit 17
                    set category 17
                next
                edit 18
                    set category 18
                next
                edit 19
                    set category 19
                next
                edit 20
                    set category 20
                next
                edit 21
                    set category 23
                next
                edit 22
                    set category 24
                next
                edit 23
                    set category 25
                next
                edit 24
                    set category 26
                next
                edit 25
                    set category 28
                next
                edit 26
                    set category 29
                next
                edit 27
                    set category 30
                next
                edit 28
                    set category 31
                next
                edit 29
                    set category 33
                next
                edit 30
                    set category 34
                next
                edit 31
                    set category 35
                next
                edit 32
                    set category 36
                next
                edit 33
                    set category 37
                next
                edit 34
                    set category 38
                next
                edit 35
                    set category 39
                next
                edit 36
                    set category 40
                next
                edit 37
                    set category 41
                next
                edit 38
                    set category 42
                next
                edit 39
                    set category 43
                next
                edit 40
                    set category 44
                next
                edit 41
                    set category 46
                next
                edit 42
                    set category 47
                next
                edit 43
                    set category 48
                next
                edit 44
                    set category 49
                next
                edit 45
                    set category 50
                next
                edit 46
                    set category 51
                next
                edit 47
                    set category 52
                next
                edit 48
                    set category 53
                next
                edit 49
                    set category 54
                next
                edit 50
                    set category 55
                next
                edit 51
                    set category 56
                next
                edit 52
                    set category 57
                next
                edit 53
                    set category 58
                next
                edit 54
                    set category 59
                next
                edit 55
                    set category 61
                next
                edit 56
                    set category 62
                next
                edit 57
                    set category 63
                next
                edit 58
                    set category 64
                next
                edit 59
                    set category 65
                next
                edit 60
                    set category 66
                next
                edit 61
                    set category 67
                next
                edit 62
                    set category 68
                next
                edit 63
                    set category 69
                next
                edit 64
                    set category 70
                next
                edit 65
                    set category 71
                next
                edit 66
                    set category 72
                next
                edit 67
                    set category 75
                next
                edit 68
                    set category 76
                next
                edit 69
                    set category 77
                next
                edit 70
                    set category 78
                next
                edit 71
                    set category 79
                next
                edit 72
                    set category 80
                next
                edit 73
                    set category 81
                next
                edit 74
                    set category 82
                next
                edit 75
                    set category 83
                next
                edit 76
                    set category 84
                next
                edit 77
                    set category 85
                next
                edit 78
                    set category 86
                next
                edit 79
                    set category 87
                next
                edit 80
                    set category 88
                next
                edit 81
                    set category 89
                next
                edit 82
                    set category 90
                next
                edit 83
                    set category 91
                next
                edit 84
                    set category 92
                next
                edit 85
                    set category 93
                next
                edit 86
                    set category 94
                next
                edit 87
                    set category 95
                next
                edit 88
                    set category 96
                next
                edit 89
                    set category 97
                next
                edit 90
                    set category 98
                next
                edit 91
                    set category 99
                next
            end
        end
    next
    edit "g-wifi-default"
        set comment "Default configuration for offloading WiFi traffic."
        set options block-invalid-url
        config ftgd-wf
            unset options
            config filters
                edit 1
                    set action block
                next
                edit 2
                    set category 2
                    set action block
                next
                edit 3
                    set category 7
                    set action block
                next
                edit 4
                    set category 8
                    set action block
                next
                edit 5
                    set category 9
                    set action block
                next
                edit 6
                    set category 11
                    set action block
                next
                edit 7
                    set category 13
                    set action block
                next
                edit 8
                    set category 14
                    set action block
                next
                edit 9
                    set category 15
                    set action block
                next
                edit 10
                    set category 16
                    set action block
                next
                edit 11
                    set category 26
                    set action block
                next
                edit 12
                    set category 57
                    set action block
                next
                edit 13
                    set category 61
                    set action block
                next
                edit 14
                    set category 63
                    set action block
                next
                edit 15
                    set category 64
                    set action block
                next
                edit 16
                    set category 65
                    set action block
                next
                edit 17
                    set category 66
                    set action block
                next
                edit 18
                    set category 67
                    set action block
                next
                edit 19
                    set category 83
                    set action block
                next
                edit 20
                    set category 86
                    set action block
                next
                edit 21
                    set category 88
                    set action block
                next
                edit 22
                    set category 90
                    set action block
                next
                edit 23
                    set category 91
                    set action block
                next
                edit 24
                    set category 96
                    set action block
                next
                edit 25
                    set category 98
                    set action block
                next
                edit 26
                    set category 99
                    set action block
                next
                edit 27
                    set category 1
                next
                edit 28
                    set category 3
                next
                edit 29
                    set category 4
                next
                edit 30
                    set category 5
                next
                edit 31
                    set category 6
                next
                edit 32
                    set category 12
                next
                edit 33
                    set category 59
                next
                edit 34
                    set category 62
                next
            end
        end
    next
end
config webfilter search-engine
    edit "g-google"
        set hostname ".*\\.google\\..*"
        set url "^\\/((custom|search|images|videosearch|webhp)\\?)"
        set query "q="
        set safesearch url
        set safesearch-str "&safe=active"
    next
    edit "g-yahoo"
        set hostname ".*\\.yahoo\\..*"
        set url "^\\/search(\\/video|\\/images){0,1}(\\?|;)"
        set query "p="
        set safesearch url
        set safesearch-str "&vm=r"
    next
    edit "g-bing"
        set hostname ".*\\.bing\\..*"
        set url "^(\\/images|\\/videos)?(\\/search|\\/async|\\/asyncv2)\\?"
        set query "q="
        set safesearch header
    next
    edit "g-yandex"
        set hostname "yandex\\..*"
        set url "^\\/((yand|images\\/|video\\/)(search)|search\\/)\\?"
        set query "text="
        set safesearch url
        set safesearch-str "&family=yes"
    next
    edit "g-youtube"
        set hostname ".*youtube.*"
        set safesearch header
    next
    edit "g-baidu"
        set hostname ".*\\.baidu\\.com"
        set url "^\\/s?\\?"
        set query "wd="
    next
    edit "g-baidu2"
        set hostname ".*\\.baidu\\.com"
        set url "^\\/(ns|q|m|i|v)\\?"
        set query "word="
    next
    edit "g-baidu3"
        set hostname "tieba\\.baidu\\.com"
        set url "^\\/f\\?"
        set query "kw="
    next
    edit "g-vimeo"
        set hostname ".*vimeo.*"
        set url "^\\/search\\?"
        set query "q="
        set safesearch header
    next
    edit "g-yt-scan-1"
        set url "www.youtube.com/user/"
        set safesearch yt-scan
    next
    edit "g-yt-scan-2"
        set url "www.youtube.com/youtubei/v1/browse"
        set safesearch yt-scan
    next
    edit "g-yt-scan-3"
        set url "www.youtube.com/youtubei/v1/player"
        set safesearch yt-scan
    next
    edit "g-yt-scan-4"
        set url "www.youtube.com/youtubei/v1/navigator"
        set safesearch yt-scan
    next
    edit "g-yt-channel"
        set url "www.youtube.com/channel"
        set safesearch yt-channel
    next
    edit "g-yt-pattern"
        set url "youtube.com/channel/"
        set safesearch yt-pattern
    next
    edit "g-twitter"
        set hostname "twitter\\.com"
        set url "^\\/i\\/api\\/graphql\\/.*\\/UserByScreenName"
        set query "variables="
        set safesearch translate
    next
    edit "g-google-translate-1"
        set hostname "translate\\.google\\..*"
        set url "^\\/translate"
        set query "u="
        set safesearch translate
    next
    edit "g-google-translate-2"
        set hostname ".*\\.translate\\.goog"
        set url "^\\/"
        set safesearch translate
    next
end
config system resource-limits
end
config system vdom-property
    edit "root"
        set description "property limits for vdom root"
        set snmp-index 1
    next
    edit "HQ_VDOM"
        set description "property limits for vdom HQ_VDOM"
        set snmp-index 2
    next
end
config log fortiguard setting
    set status enable
end
config log tap-device
    edit "default-tap-gui"
        set status enable
        set port 12121
        set format json
        config filter
            set forward-traffic disable
            set local-traffic disable
            set multicast-traffic disable
            set sniffer-traffic disable
            set ztna-traffic disable
            set anomaly disable
            set voip disable
            config free-style
                edit 1
                    set category event
                    set filter "subtype router or VPN"
                    set filter-type exclude
                next
            end
        end
    next
end
config firewall ssh local-key
    edit "g-Fortinet_SSH_RSA2048"
        set password ENC AAAAEO1DDDPASnKwejh25w8NnBnXyGkdmKD1RxrRoMyMb4dvvdZeC+GJsFZ1q0GMsYCFu1FhBA9BH3L2m2B3Fme1EN4cmaq9SXeuw9gMAL1JsIihaRM5TcxfAxSdhm2NCQkCCKchwPCGu5Va6D3r0TwbZIIz+s1Qw+EB7YcJDdiQ4N7nSlYEnB0xg92P1WAXEzc8qg==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABAhGiUUrK
fs0wTNCQxxMzeqAAAAEAAAAAEAAAEXAAAAB3NzaC1yc2EAAAADAQABAAABAQCuIGXNO9VA
aEkQl/f5kesqWZS0OBkwl26Q5CZECt/FG31smow8EminLqjU/Y/fDKoq9ePIqq2EvVab3o
wujl+T9T7T2/m3vrHRBSIoi8Xm62vHQw0EVDCd7X6ZuiutV1hsiRlWmvsXJnH3hhuyrHu6
fCfN1HzfqhbQpEl1tGDvh6+VCck12sjooqrMeGD9/8oky0ZCl5P2IIDQrcUt+qyQY5+s7w
J+m2sAlnEK8U3IiS80lOU20HY5qC+8PBJo1fWirFGEYoFw5piMo5/3CL6f2kYetqEK5n1d
l20Uz4bYtZzWSo5GapXBmstIO2F9Z1VzCZUwG13GaW1PytG86rGHAAADwLax0OayWtZSUI
bbSE+qypsvNr0yTLKXSnATmbOAoF5FkZ+ADhW3fgHasCuhIUO+d6/a8VW+ce6gVB95pPFu
IPTdnUWMQ8mkwRCcSKKMnHY5EsPeTL1giZwW1xMRC6Uay1lnjAanm9OpjmXQnOGpY2e037
RqKbMrmITuQMxmW7ei2fElARHfjDiDJTCd71VZyhph8Wp0sMhMqY8nzsn+13vlu81hK/Cd
e5l3TaP4MNri6D1XMGp2cXiuxDoYIGYp3mCWz/9JFNtxamudSWXHj9XcH6dWDDsrNbAx//
RhTZHN8W6WK9LLPLEHVLf3bwmPKcNvo87qES7LMEZPPbsdLjsTQpYkcltvILJr6M4wkfff
+tBKt6ahLvfFoaJ06gFZLCrB+ve5ht65m04qncEsJPNJfk2eNPf+hGsAx968fMeLwyY1Wz
U9vvUR+LIhY+CJJ0pdYlHbJZWJEZddl6ZhokT4h1LDS0RT7gHygKbq/H9UwpDKf7uAwW1z
dsXllrUuPQnZeORQAHxd0Lgiwd4bAqNF75NScgAAnhQoWirsdzJjbpiuhd5lSGT1yBFDtz
iWUXWN6hVJEI0vBI8hS7L8ea/k0TfmpnTIX1ehEr2y3l7W8647u6bcc8sNmtATFVFoME+v
fZr8LA5utV1pShd4NfKLOwYbC1G0uCiq4CiBBCcuWIVvXBHWUhX0X07OiMEQNEncIl25aJ
ATZlqIE7t/X99hm3WmrtSGntCYrFWSH32hwbqa6H5UK9VLiy59dPEJ1O8Bifk0AdOsatJh
TqQ/aGQfxq9x7307oeydpxZcUQ8hWwDXHl6uqZ7ZCPKZox1C/B25ZeGxpGnt6XsVNrPhVP
8bhdpUtCaUH8IbH/7Tl8PSZuLLv+nhFOnEgwN70g/qRiFaSxtEmjOuorSjErrNwSdcaM1L
4qfcy15Fo4NTRCcv4rqQuX0lOxzrvnvDdS91LgUp++jQSAIS2SZRaZ12w583PhJQxtnunG
wHqQPKPHzsGlmPIwTDwNl7Hc2jLHNEnjVUR+PLwGQQKvZj0wbCsWxdUd8NM5jTv925kg29
u+CDyp93GzrW5NefsP666oiLDYLComEep5NHKMOMCF1LlhIoeFtQkgnd30R2AaiHWPsMSw
xgACJ8wwevv44pLx8FpaZ8d6ad2BSyJYSib8uYX8WAM2zuy5dN1cGyKnQJ5iSQ1C0j/eb9
DAWOcIx3UpCWYEqel/29f25WGDl6ebJW06Yg78rKkC4lupvCbF8RrZ9zGkhG0oIEVas157
EjC6LdCg==
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuIGXNO9VAaEkQl/f5kesqWZS0OBkwl26Q5CZECt/FG31smow8EminLqjU/Y/fDKoq9ePIqq2EvVab3owujl+T9T7T2/m3vrHRBSIoi8Xm62vHQw0EVDCd7X6ZuiutV1hsiRlWmvsXJnH3hhuyrHu6fCfN1HzfqhbQpEl1tGDvh6+VCck12sjooqrMeGD9/8oky0ZCl5P2IIDQrcUt+qyQY5+s7wJ+m2sAlnEK8U3IiS80lOU20HY5qC+8PBJo1fWirFGEYoFw5piMo5/3CL6f2kYetqEK5n1dl20Uz4bYtZzWSo5GapXBmstIO2F9Z1VzCZUwG13GaW1PytG86rGH"
        set source built-in
    next
    edit "g-Fortinet_SSH_DSA1024"
        set password ENC AAAAEJ+Jo+9Xvfkcg3fnPeu69NhP/8/e5aYw4BLzw82fjzLe7tYu5cK0P5fXpNeJupwpLbauXCF2BXBfeN4f6HOb64J4VnMe9Plv0L2sJKGZbwj9Cx9WTRiSjyTQx46dH7zfBwCz7cU6w25RVvKkp69++OE1UnPwKkeGbTsymt9zvjnIlqJ2OgvtnpDrORptKZzy6Q==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABCaRByJ89
5WELsiOck+/O4cAAAAEAAAAAEAAAGxAAAAB3NzaC1kc3MAAACBAK/3xlmrIkMHTFS6hiq2
hTMqYWiDFdRujN41SJaZke3DgUmtKUAHudTCMz+3zsYDIx1onGjNVjlvY8qHBNdUT1hFad
8FoDUQIkvBNJc4lc0g+0dhP/bY4vuWDmXGSRYvUxQ95AmaAgpKz8PbVerNkLhHBcu4uiio
LCwXx7mDBs3tAAAAFQC1MdayoyG6xnloTE9z6h8Z9mBC8wAAAIBYRu9jb1xj7U+UhRzR5y
GM3yt3XHrYF/Sa9OY/UXMZCzD9Fo+skCNkFuMz/CV85tvzUFcpYgixb4QR3d3njn8VE6V4
TTKM7Udu4FJHynKJsfWCtSfT/X3dltuLaSbduKwfNj06IpueH6+sWtG/5FTbOiXGFA7HAd
n0fS5xEf0YrAAAAIBfPvT0fNCfDDlob7Kf7IhoYG6dGZuwbaojFnhC66VYSCzFrnb0Ilib
/jVshhXoFHPSh5T8LCcw28yXF7cCJO2MoIto4ezJuflcIVHEYShqwRVumzrsLdez8E+JTT
rKIvmcbbFaPFOACJvBh2nH1hDyxHjRTgPENPIlzyG1+ZUdVwAAAeAxwMM+AvBhgJ0nAoYQ
2HJvypAq03QejIQgrQspomb7MLNvxgG8w5hq2J/eqDoMS4AfxyUAF3EOhmnT8Njp4apqeZ
hMApBNUOFNwOFEM9qqyS8frZlK5IXAirytCpTwcGUTd2DNog70CXKz+5v9tO+93OVdT3gI
xIYASuO7ilbcgb0/SlYGSFazlW7+wUwluwgnfaxzcar0RgghOVUBTXd/T0ueyrEjhfoal6
s2O5GCl8J6ZjtGoBcd4W8josbI33es3Jq2mHdK1TFgjwFPsYP8thRWZe2bGcxxPRoHVyzB
GZiXcRu80A6ZwkjBVHRWH1RUV+DdfoOyTfJHrKrTz3l5LHsBgc7+eJsexgNFicWGAUMdLQ
O5ZCX8ssTh4Udsn0Dg0Y9qle7LDiwSQrNcdXvszI6FSEfaThmfVi9zj8RctU8P0RLU/uJ5
nE55W0Ug+SAR7O9ehrViWKrNWXJUEI+USBWG1BdTkP65Ub7fvefoi0BYJNu3Qpc3VUus6w
7s1RmukZDNNVORdZl5yJum+4f00j95Fweb3FLGlyrQKelFIlivDjs6f1TA6lGLLa/HMy/u
In+vH3CzyxgaR2CC3yn0rmQVjmDdv8bq8htEHY7jK7JOephStrNGRATucCCHt6A=
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ssh-dss AAAAB3NzaC1kc3MAAACBAK/3xlmrIkMHTFS6hiq2hTMqYWiDFdRujN41SJaZke3DgUmtKUAHudTCMz+3zsYDIx1onGjNVjlvY8qHBNdUT1hFad8FoDUQIkvBNJc4lc0g+0dhP/bY4vuWDmXGSRYvUxQ95AmaAgpKz8PbVerNkLhHBcu4uiioLCwXx7mDBs3tAAAAFQC1MdayoyG6xnloTE9z6h8Z9mBC8wAAAIBYRu9jb1xj7U+UhRzR5yGM3yt3XHrYF/Sa9OY/UXMZCzD9Fo+skCNkFuMz/CV85tvzUFcpYgixb4QR3d3njn8VE6V4TTKM7Udu4FJHynKJsfWCtSfT/X3dltuLaSbduKwfNj06IpueH6+sWtG/5FTbOiXGFA7HAdn0fS5xEf0YrAAAAIBfPvT0fNCfDDlob7Kf7IhoYG6dGZuwbaojFnhC66VYSCzFrnb0Ilib/jVshhXoFHPSh5T8LCcw28yXF7cCJO2MoIto4ezJuflcIVHEYShqwRVumzrsLdez8E+JTTrKIvmcbbFaPFOACJvBh2nH1hDyxHjRTgPENPIlzyG1+ZUdVw=="
        set source built-in
    next
    edit "g-Fortinet_SSH_ECDSA256"
        set password ENC AAAAEHj1gZiWmwY6+X08JnImUKvJ+37pj8dlpO+rViS5ixf7TOpnGpMBksgsgdt6Dcla0gFV4guYl8YSpEoa2pg+pgUImEHNfZvUtIHfmuw+jiClG9zg4k/tN+hjr1ERJULeidhvhnlqK0O0t26Ip2SgTMTjLO4DkMXaIBAyNJLhy2h0yYA93PawZGaC9AiRK9ECIw==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABDduxGCW5
QYM3Yh3p3gw3/PAAAAEAAAAAEAAABoAAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlz
dHAyNTYAAABBBD4Gz1Y+NJozB2QFuIdKVmqaT7mOr0w5LjD257fJ+CkZ72grsReDYGu39m
J1iDnqYjJy3XqHAGJMidylfAczkDwAAACgXWcVsYJLhxB5UoqbDBm0ZTBxnFQB9wlPPiZQ
DfOxn9kgRY4WKpFZ4PeJfxNOaWgxruedyrbTE7j8ho/SEDhCriZWcLoz8+Vplz+J4aMTOE
DjGXQdqzz9RZGyN7ElVXXIoSgnw4gzKABiFTa/vKnYZhtRnP14rcmRMyc7aqEFFbpDZwZj
qzXnckaH6xnKn+X/bwb3savB2M456dc4e2NSug==
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBD4Gz1Y+NJozB2QFuIdKVmqaT7mOr0w5LjD257fJ+CkZ72grsReDYGu39mJ1iDnqYjJy3XqHAGJMidylfAczkDw="
        set source built-in
    next
    edit "g-Fortinet_SSH_ECDSA384"
        set password ENC AAAAEIll8hjhbLhASbvNDNZN3Zs2ulnRZsd0rOqvvUCbl59nvmNhsYUCzafs1VDdQ7VOYJZyoHRUkXRonLAox4BDZTugFm22EwzQ8dA2+1nkz18f86H5Q8FD1fV4B9wWo9l10DDOrsPSezb19XUDVJIOnEEQlYYyhLOYnqEDLH/HObKVlWex88iOet4V5DsyRCU6fA==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABCj5jjdM8
hEJy35KhCJTxoDAAAAEAAAAAEAAACIAAAAE2VjZHNhLXNoYTItbmlzdHAzODQAAAAIbmlz
dHAzODQAAABhBEhRgSn1K2VM4oeGSvpFRcxEv1hgL/UiN6LwYXPQQmiGMmNE5QkwT0iPin
kTnlOfgGPmKPseE9Jw5mnwaUzAoKYB7zKOLu/8RbAOnfXw/2HJ7mivOdLmm+77P2JuBIsz
sAAAANBnEOKR67e/rBCkSY5yOW0v4RRVbLwHG5L/dxn6HqZnF+miqm58L3PTd4R2D3uBNe
ltBVLMAzbJ1XbUP58i5xX986kpW4PQiAiulea009N9J8lFH3Wrn+jjiU6RVA/v5x6FhxE8
9sLXB1Y2pvV1aL5e2ZJ6Z4CgeJEPZ5sY23rECt8NMqGBdMFBGaI/uX9fjVbz0K6ax+IUgG
unzrTUCtKq8v74Nr3TMt+fOHWe73SgA2PmwjNRNhp8UAN2JujpexDoBcJqHelUf2Vg4rKv
vJ3C
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ecdsa-sha2-nistp384 AAAAE2VjZHNhLXNoYTItbmlzdHAzODQAAAAIbmlzdHAzODQAAABhBEhRgSn1K2VM4oeGSvpFRcxEv1hgL/UiN6LwYXPQQmiGMmNE5QkwT0iPinkTnlOfgGPmKPseE9Jw5mnwaUzAoKYB7zKOLu/8RbAOnfXw/2HJ7mivOdLmm+77P2JuBIszsA=="
        set source built-in
    next
    edit "g-Fortinet_SSH_ECDSA521"
        set password ENC AAAAEKR0Sa34aNgLvzkdVtG0smUMQwX6FG1rbHnA6HAyhcBENPaG0lajnUhyiyhp/rYySdsD+TTYtVVT8WIDFvkp6wK8WjbFEfaIK4GXeULFrCs6+8i2ltFIsryH6s5ZahRZV6QDUsZJTghs+gG3pBvfT4hXTsvH8gIiVXVWt9UpEqP4Nxrycap0COH5IDMjnC/a+g==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABBlBd1/ZX
JFx/d/+bYNl96QAAAAEAAAAAEAAACsAAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlz
dHA1MjEAAACFBAFzuvFmUShmw6yUAmqexxIio5KKLLB5VS/7nwc/y5iylPqsOBEhBt9Nce
7Dz36qCe5UhwuncRTG8KMkCPhKbq5K/AERtOxXq5Zj3Fd4nQPot4uAQgtYoiC4OXQ/HFxb
Aacnj7qDFPZ1H9lNcuQqY1VligDJA4mpCvi4iWVN0I4IjB9YJwAAAQCbRvpzRWJ4Cu4BdI
SbNNG1P5OKbHiRmT4Fi89weFAliDoV4CVqzejPQHm2IYu+DuB5Mf5AEbzbrfy7Z6Gghgql
mVFuB2DVASswa031bDuAZ//sJAIBqiHPkXgHCD9MBwLtJQlIhZD+fxG9gKSLoyTGdcDsHs
6jhCzT4z25wNf93iaw0dxU3x/qtP7zceTI7/KDLDK/xbrsLlimmWT+2fZIJyiWUnhLlBQ/
uATNUkjf2VIHjLI1jp2wrQUMm4063gexwUmyV9J4Rfi5TIk7Z83l/r8Tav4zSIUlQQpiaH
aW4dvjFJMNk9BV+KrLzKKfefD4qQ9HRpMbxHzhRJxyqXvh
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAFzuvFmUShmw6yUAmqexxIio5KKLLB5VS/7nwc/y5iylPqsOBEhBt9Nce7Dz36qCe5UhwuncRTG8KMkCPhKbq5K/AERtOxXq5Zj3Fd4nQPot4uAQgtYoiC4OXQ/HFxbAacnj7qDFPZ1H9lNcuQqY1VligDJA4mpCvi4iWVN0I4IjB9YJw=="
        set source built-in
    next
    edit "g-Fortinet_SSH_ED25519"
        set password ENC T3t9EJijTL+PX8c92BnR8QlrKksDE/nAudCI84YuMPNcTPam7Zj5X20T7ia5RavaGvoCjuKzDZmzag2yycHTEOBWZLiHwV+duLC2sKGUs2ZqmXPOlwvxpYnw0vNtnNV/ovVuoDOZzg6iXLQ0zvRBOlY+TamT8VdXVJg6Bejrd/8kz9anjNzYYxqYrbkMACKZPwCneg==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABAY6bY94K
aBO7Q6Kyr+JT2oAAAAEAAAAAEAAAAzAAAAC3NzaC1lZDI1NTE5AAAAIMiLQY4Tld6Oz6Fs
m/QCOtDWSOC3H5+QLZkHy+tv5T99AAAAkDhrTyhmN3BJbH7P6yLKWQjVh8A2urR5MHA8qp
xNG8hGtFqSUSlGDbcb6CbXEWLNI9YQGC03bPspVgMDwxzpr1iUckgh6zTZmaX6eNd6qlwc
nxwwJtVKj1g1XYQ0p9Hxku3+ioV5kNqH5HUNKANgWmwOS8CYx/oGEJdqz4TjbZ3rUwiEeq
ABKf8WKdPasEJnlg==
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMiLQY4Tld6Oz6Fsm/QCOtDWSOC3H5+QLZkHy+tv5T99"
        set source built-in
    next
end
config firewall ssh local-ca
    edit "g-Fortinet_SSH_CA"
        set password ENC AAAAEDq6HH7iLlJy4Mo2eqbp8Hd0FDdmYsN2s9Wya72J5mRpB+85wPkq3vWyaGwMXckNbYab4F2Bk9JKoKFi7bM6c1e7aCk9lnga8ZXyoUjhf/PCULZae+w6foS4gm1bqJT/DwRTVC7MYhVxO8NYd4KgSGK6JxwPtvqBodHquvgjgH6iuGZnN5rIVg7wbhNlSsv6Qw==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABCuJdDVb7
sXbpUJP2ODZvbLAAAAEAAAAAEAAAEXAAAAB3NzaC1yc2EAAAADAQABAAABAQDHmykKglBu
3H9Pnnh8zfH178/Ft4Xv0y9AW9zwFQR9uADGEFxJ6sQ6n5CUARdb/sQYc4n7DIXXHNoYOi
HRVpRmlmfNq0AkQYpa3FACNndbrLH6FFGH7UCGsPjh6eylX5NwR9iuYYwRA1pTAv73ecZG
G6iHNoDaWpOwR17ACwFGloCNODeOWkDPGURGjpVHqWhKboRPqSRGyNUwvJVQgGiyuGlM/k
6THqDG9oS3VcRZVhJkjnWbRl261ktCl+j/cirWIowYX+3FQSbkX3XOc+N+wVXgI/SOdVNX
vF8zYdp9aEreza6BCpw1sQj5soRvp3JKlUKA9EeYqOM9R8vd341RAAADwB2vJSyCs2/yPp
3VoqHcvLvOpuJK7SX7qQeoEsKc/wHzQ3mtgxqB/fsf+T1WSwN+g/+YVKyP2dkF7E8yQ1O+
BBfF5Enrk91C1WllBGdGevjl0NCcV3RvTCkMzRsk3hZB0bFEXLnpWUPakKdg79/JfFN1pt
4OV2TWfMQ09UrFFgysA640SvWlTNBOyBQ7dMe52Ftdg9quFbTL9URb89oNrdMTj9YFEfHH
44tJOrI/Qb7in9kIcHdWAUHRShuXMQsiezjtiQ90rfLmH/47qHlc633EHzbNyoFWIQkNbK
t6psWoFm/S22GwE/FB5s6NCh/4jZFvqdydcJcrv+rsLtMY5nIJDzq78bdi9wbE3PQcaSGO
fNm3R8wLFxrETvXe5u0ppzZXqe399BSTsi0cr1q8knErRB1PBkCAO42/7kN7H4AECNWPaf
9T1yiQljiCEu1Kj6RNDkRBsctfoAb/lHOr3Uha7mZvvOTRiDCeWuFhXyXRZvpQwV1WOYoQ
B+peV3e3HFxG3GI4wxyMsLebQGaqT9EeW0RUlx9ivfSVujbwxZYY1RDe+0RkyvH1gtEMgE
r9qDvhspXqvn+XlXl43FqXdpYdx//VSDepD2anenI/LnyDtZioLCaCsy387u9KjQMPv8bJ
e7aVEic2suablmQ1l7RCR7ok5ruYpt0ddkRr6YTOjWYc4UD9IZL2LhmAImoMa8ZFKURH6N
a4GsRtKenuascEvu1ihThzbwjePKMjoc8OwfZGmUgGlZ0hFbOHIw+iCevpfPT/vcYxXPS1
al4XUT1T5wacmUHDYe7T/ILXDX4f+YhMJYj1tyb0z/Aac/yGYV9yYWY2ijn+FWVKTaU7Hp
KQVnwrjQrvccZyY6lQBv4BwLBDgPlfPBRFk80DSLr/k5MePuQZvGv719LcMT3p2Parne9B
lh6YfvoqiC9/k2NZ2/6WGXmM1wcV9qv1VbvA0CKkFX1tZEFd6I+r2x/xUN68/FXI6ljPNw
yPnbf6f2zmjhbSvsnCUlctIPtCJUy/JB3G8/P9/NjRHURyX9hVqwweGhCfP84hsXAKLPUw
Y9dYJbBKxvlXAr3tCrYaqcOyZFRSl1jmn2SZ+2GsEKF9mCp/dvHETj+V9zBZ46y0LlgHQM
tYg/FrqaEbbZBbNObSXeV/jgTDQNUTmqiFBIwczjUWnD5MqPtUoWoyeKnQjcLPwhgOMJ3U
nCpw6gLqGmJ4dwjwDN/V67hj2CBqLikNAim/RE+NjKN76NOZXSypq5IaNayofdWAWx1nJh
rqmYLHlQ==
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHmykKglBu3H9Pnnh8zfH178/Ft4Xv0y9AW9zwFQR9uADGEFxJ6sQ6n5CUARdb/sQYc4n7DIXXHNoYOiHRVpRmlmfNq0AkQYpa3FACNndbrLH6FFGH7UCGsPjh6eylX5NwR9iuYYwRA1pTAv73ecZGG6iHNoDaWpOwR17ACwFGloCNODeOWkDPGURGjpVHqWhKboRPqSRGyNUwvJVQgGiyuGlM/k6THqDG9oS3VcRZVhJkjnWbRl261ktCl+j/cirWIowYX+3FQSbkX3XOc+N+wVXgI/SOdVNXvF8zYdp9aEreza6BCpw1sQj5soRvp3JKlUKA9EeYqOM9R8vd341R"
        set source built-in
    next
    edit "g-Fortinet_SSH_CA_Untrusted"
        set password ENC AAAAEHwohdm1WuTBBTEgkY/+cdDzO2P3a132/ydfVDcZeMSyGbQOTXJgD7Z+8yXqJlSyy1BtdCAeV6iATkuH+6cFMR7wRTKbR09Xk5i3qLe7CaBbaPzyFX2ZmksJw9Ycqfk03gfygnjyYh+JM/tu8J1JCjrka1drPD6w01XDbcMh60CLM7QOiv2s0wYK+iZJPTJ22Q==
        set private-key "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABC2R+qNhC
Yidh+A82+YBPYZAAAAEAAAAAEAAAEXAAAAB3NzaC1yc2EAAAADAQABAAABAQDw1+/kYdVA
QyGgOI5zYtA9TMKFME13OJNlwEwRx+4gCUfpv+alsphjHnaw1VNzIEviFderijzhYUovaW
mfWO/jtCZnnzCXBQQRmmHKAEo2m5k9yB5+peqDBCdMbGMTKGnp+VogYMii+f6YtA5pkLFJ
1X2M4ZcyFOcSpNICCCLGilMyv9qiSFORxB1/8mCb51LJ+Nz9SyHU+VkYJSCYP6zf4O6/Os
wklB994VoPaixv5svsf3rshjm7R2dpN2UVRR0xIFDJ7Pufwm4FKv0NCmoDWKCuFgaqay2h
ch230TdhNt5QpPUnPWmuruBAHZH55rn8xmFFg4f14o4FEu6YP8WLAAADwHsNSvyFZrrKw6
VrJzDbEmvufIsA7rnG3pCh3UhAWp6OT2Bk0BqhzrdE5XblaESUfNTFD00zrb+QrM52HjxX
a33sSwMnYShYbOLkBvp24k9ppM/juS4v51JLSemCgL4sXVcS7MlbuOcI690OHPozN4v0lK
Dwxj3MYVRl0YFZy7SSbQCYnm1XCZGZaZa9k3UiMAWiSkFU+uAywNLgKEHpP8U/TQ7uOfkD
rmpRvbLshGzN/aIt7NfqFKv6Zi7iP8FK8kXIsezYbGOwjxPiLJIuybTIjQl2woHIDVTIYA
At7D6nnVKW9BhCosJPzBtAWuVB/1LPrZ1WvqhutI5AwQ15ZAuwbqKOc39So9VooNqDBATa
mDm+0CNmiXdD4+Irwe3fjO+FzTqTcCY/JbMJDhd3Pst/oxu5Ql+LaoighdYVJXLQdq7z3V
rJUVveu2HhAFkXSYdNhDxen7/GfYGmaDgezy+1im1W0F/LARG9zCMYdzy/fPrPWDTLDTX8
mYxfDya4QFAlqn0TDsprx0yvweM8UwxXOEpPcBXN/U3+0/evygRkaJxtuMVtPR0rqkVNep
+Y7VRfd8Nnb+nKwUdTRZ8AY0E722ZVYmgppSfsaGClSYriAMLa/2n8/MtY5pcRSiQM8Z3M
ypGy1UYMmeG3/z5CjHgI4BBZGXIwLyBgzfvI9If7Z6ZK7kwdYCELnlZ61B90nMXxOFQ+Hy
FppO36n/QAQWn6tbL3eNA4rEYpeTSWI3naH6ye226azpkeIChpFFcxn+tQLEEGAx1G+XNV
TI0Sk4mDKlga2VyDPD5+Z/dNxaPDpkhZ2EoiIEagW+AmGrbVYPkiAI9U5du0FSDcFXE/oO
zXXusFGN+ILbMFSExw09ousjtF87kfkIaE7q6u/wKxkzSkRKLhO0okc6RiMg/toL6OqgeG
ueRGTrI1n9IEgRCgk+iU6sKwc2x5Tr7pZzti9AIZn1rDvTavZbDEE41BXCNrOtcA0bhKG7
VsrzAZn7uBb1mLJb/vWtsUxW82QcR5fEbtZQLzyHpeQvZH+1aaeaRcn5tZOnSUi2Ccp7Cq
F8xbznSIm3Hq5za6kGmtXt5gV+r9hb67zVIhALO3Wdwx3URk51OPAmf7946kUXwGkS1WlO
bmeuDr2QdhR+ftc0g6joZzmDCB+YSfC6TSxu/MQ7Fj/AN1RVmqKuLcS8w7816585MYiF/1
VJ6d6QJFsLUIdBf/IXtOdHKj9Z8g62qmk1yOGraA3SjbdvDaPOcOPwunp4bRczfkGW+SV8
+JyHBHzw==
-----END OPENSSH PRIVATE KEY-----
"
        set public-key "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDw1+/kYdVAQyGgOI5zYtA9TMKFME13OJNlwEwRx+4gCUfpv+alsphjHnaw1VNzIEviFderijzhYUovaWmfWO/jtCZnnzCXBQQRmmHKAEo2m5k9yB5+peqDBCdMbGMTKGnp+VogYMii+f6YtA5pkLFJ1X2M4ZcyFOcSpNICCCLGilMyv9qiSFORxB1/8mCb51LJ+Nz9SyHU+VkYJSCYP6zf4O6/OswklB994VoPaixv5svsf3rshjm7R2dpN2UVRR0xIFDJ7Pufwm4FKv0NCmoDWKCuFgaqay2hch230TdhNt5QpPUnPWmuruBAHZH55rn8xmFFg4f14o4FEu6YP8WL"
        set source built-in
    next
end
config system cluster-sync
end
config system fortiguard
    set service-account-id "netfortinet@gmail.com"
end
config endpoint-control fctems
    edit 1
    next
    edit 2
    next
    edit 3
    next
    edit 4
    next
    edit 5
    next
end
config system email-server
    set server "notification.fortinet.net"
    set port 465
    set security smtps
end
config system session-helper
    edit 1
        set name pptp
        set protocol 6
        set port 1723
    next
    edit 2
        set name h323
        set protocol 6
        set port 1720
    next
    edit 3
        set name ras
        set protocol 17
        set port 1719
    next
    edit 4
        set name tns
        set protocol 6
        set port 1521
    next
    edit 5
        set name tftp
        set protocol 17
        set port 69
    next
    edit 6
        set name rtsp
        set protocol 6
        set port 554
    next
    edit 7
        set name rtsp
        set protocol 6
        set port 7070
    next
    edit 8
        set name rtsp
        set protocol 6
        set port 8554
    next
    edit 9
        set name ftp
        set protocol 6
        set port 21
    next
    edit 10
        set name mms
        set protocol 6
        set port 1863
    next
    edit 11
        set name pmap
        set protocol 6
        set port 111
    next
    edit 12
        set name pmap
        set protocol 17
        set port 111
    next
    edit 13
        set name sip
        set protocol 17
        set port 5060
    next
    edit 14
        set name dns-udp
        set protocol 17
        set port 53
    next
    edit 15
        set name rsh
        set protocol 6
        set port 514
    next
    edit 16
        set name rsh
        set protocol 6
        set port 512
    next
    edit 17
        set name dcerpc
        set protocol 6
        set port 135
    next
    edit 18
        set name dcerpc
        set protocol 17
        set port 135
    next
    edit 19
        set name mgcp
        set protocol 17
        set port 2427
    next
    edit 20
        set name mgcp
        set protocol 17
        set port 2727
    next
end
config system auto-install
    set auto-install-config enable
    set auto-install-image enable
end
config system console
end
config system ntp
    set ntpsync enable
    set server-mode enable
    set interface "fortilink"
end
config system ftm-push
    set server-cert "Fortinet_Factory"
end
config system automation-trigger
    edit "Network Down"
        set description "Default automation trigger configuration for when a network connection goes down."
        set event-type event-log
        set logid 20099
        config fields
            edit 1
                set name "status"
                set value "DOWN"
            next
        end
    next
    edit "HA Failover"
        set description "Default automation trigger configuration for when an HA failover occurs."
        set event-type ha-failover
    next
    edit "Reboot"
        set description "Default automation trigger configuration for when a FortiGate is rebooted."
        set event-type reboot
    next
    edit "FortiAnalyzer Connection Down"
        set description "Default automation trigger configuration for when the FortiAnalyzer connection is lost."
        set event-type event-log
        set logid 22902
    next
    edit "License Expired Notification"
        set description "Default automation trigger configuration for when a license is near expiration."
        set event-type license-near-expiry
        set license-type any
    next
    edit "Compromised Host - High"
        set description "Default automation trigger configuration for when a high severity compromised host is detected."
    next
    edit "Incoming Webhook Call"
        set description "Default automation trigger configuration for an incoming webhook."
        set event-type incoming-webhook
    next
    edit "Security Rating Notification"
        set description "Default automation trigger configuration for when a new Security Rating report is available."
        set event-type security-rating-summary
        set report-type any
    next
end
config system automation-action
    edit "Default Email"
        set description "Default automation action configuration for sending an email with basic information on the log event."
        set action-type email
        set email-subject "%%log.logdesc%%"
    next
    edit "FortiExplorer Notification"
        set description "Default automation action configuration for sending a notification to any FortiExplorer mobile application."
        set action-type fortiexplorer-notification
    next
    edit "Quarantine on FortiSwitch + FortiAP"
        set description "Default automation action configuration for quarantining a MAC address on FortiSwitches and FortiAPs."
        set action-type quarantine
    next
    edit "Quarantine FortiClient EMS Endpoint"
        set description "Default automation action configuration for quarantining a FortiClient EMS endpoing device."
        set action-type quarantine-forticlient
    next
end
config system automation-stitch
    edit "Network Down"
        set description "Default automation stitch to send an email when a network goes down."
        set status disable
        set trigger "Network Down"
        config actions
            edit 1
                set action "Default Email"
            next
        end
    next
    edit "HA Failover"
        set description "Default automation stitch to send an email when a HA failover is detected."
        set status disable
        set trigger "HA Failover"
        config actions
            edit 1
                set action "Default Email"
            next
        end
    next
    edit "Reboot"
        set description "Default automation stitch to send an email when a FortiGate is rebooted."
        set status disable
        set trigger "Reboot"
        config actions
            edit 1
                set action "Default Email"
            next
        end
    next
    edit "FortiAnalyzer Connection Down"
        set description "Default automation stitch to send a FortiExplorer notification when the connection to FortiAnalyzer is lost."
        set trigger "FortiAnalyzer Connection Down"
        config actions
            edit 1
                set action "FortiExplorer Notification"
            next
        end
    next
    edit "License Expired Notification"
        set description "Default automation stitch to send a FortiExplorer notification when a license is near expiration."
        set trigger "License Expired Notification"
        config actions
            edit 1
                set action "FortiExplorer Notification"
            next
        end
    next
    edit "Compromised Host Quarantine"
        set description "Default automation stitch to quarantine a high severity compromised host on FortiAPs, FortiSwitches, and FortiClient EMS."
        set status disable
        set trigger "Compromised Host - High"
        config actions
            edit 1
                set action "Quarantine on FortiSwitch + FortiAP"
            next
            edit 2
                set action "Quarantine FortiClient EMS Endpoint"
            next
        end
    next
    edit "Incoming Webhook Quarantine"
        set description "Default automation stitch to quarantine a provided MAC address on FortiAPs, FortiSwitches, and FortiClient EMS using an Incoming Webhook."
        set status disable
        set trigger "Incoming Webhook Call"
        config actions
            edit 1
                set action "Quarantine on FortiSwitch + FortiAP"
            next
            edit 2
                set action "Quarantine FortiClient EMS Endpoint"
            next
        end
    next
    edit "Security Rating Notification"
        set description "Default automation stitch to send a FortiExplorer notification when a new Security Rating report is available."
        set trigger "Security Rating Notification"
        config actions
            edit 1
                set action "FortiExplorer Notification"
            next
        end
    next
end
config system federated-upgrade
    set status disabled
end
config system ike
end
end

config vdom
edit root
config system object-tagging
    edit "default"
    next
end
config switch-controller traffic-policy
    edit "quarantine"
        set description "Rate control for quarantined traffic"
        set guaranteed-bandwidth 163840
        set guaranteed-burst 8192
        set maximum-burst 163840
        set cos-queue 0
        set id 1
    next
    edit "sniffer"
        set description "Rate control for sniffer mirrored traffic"
        set guaranteed-bandwidth 50000
        set guaranteed-burst 8192
        set maximum-burst 163840
        set cos-queue 0
        set id 2
    next
end
config system settings
end
config system replacemsg-group
    edit "default"
        set comment "Default replacement message group."
    next
end
config system dhcp server
    edit 2
        set ntp-service local
        set default-gateway 10.255.1.1
        set netmask 255.255.255.0
        set interface "fortilink"
        config ip-range
            edit 1
                set start-ip 10.255.1.2
                set end-ip 10.255.1.254
            next
        end
        set vci-match enable
        set vci-string "FortiSwitch" "FortiExtender"
    next
end
config system dhcp6 server
    edit 1
        set interface "fortilink"
    next
end
config firewall address
    edit "none"
        set uuid 236d6152-c83a-51ee-6a7f-b5b2593c82c7
        set subnet 0.0.0.0 255.255.255.255
    next
    edit "login.microsoftonline.com"
        set uuid 236d7bf6-c83a-51ee-b3f4-6bed1a1ab8cf
        set type fqdn
        set fqdn "login.microsoftonline.com"
    next
    edit "login.microsoft.com"
        set uuid 236d92c6-c83a-51ee-0ac5-479d7c227571
        set type fqdn
        set fqdn "login.microsoft.com"
    next
    edit "login.windows.net"
        set uuid 236da75c-c83a-51ee-4579-ae4acc112c3c
        set type fqdn
        set fqdn "login.windows.net"
    next
    edit "gmail.com"
        set uuid 236dbc1a-c83a-51ee-7606-6cba4007151b
        set type fqdn
        set fqdn "gmail.com"
    next
    edit "wildcard.google.com"
        set uuid 236dd074-c83a-51ee-8aee-5b6a762e7fc7
        set type fqdn
        set fqdn "*.google.com"
    next
    edit "wildcard.dropbox.com"
        set uuid 236de56e-c83a-51ee-ee86-8a5bbeff541c
        set type fqdn
        set fqdn "*.dropbox.com"
    next
    edit "all"
        set uuid 264673fa-c83a-51ee-c241-846f998c9bc7
    next
    edit "FIREWALL_AUTH_PORTAL_ADDRESS"
        set uuid 26467e36-c83a-51ee-e461-f9290b5bf4b3
    next
    edit "FABRIC_DEVICE"
        set uuid 2646866a-c83a-51ee-0a71-480e4a99e07d
        set comment "IPv4 addresses of Fabric Devices."
    next
    edit "SSLVPN_TUNNEL_ADDR1"
        set uuid 2648bcb4-c83a-51ee-bf20-71731472986c
        set type iprange
        set start-ip 10.212.134.200
        set end-ip 10.212.134.210
    next
    edit "FCTEMS_ALL_FORTICLOUD_SERVERS"
        set uuid 39c05da6-c83a-51ee-cb35-9204b940cfb2
        set type dynamic
        set sub-type ems-tag
        set dirty clean
    next
    edit "internal5 address"
        set uuid 5631b440-c843-51ee-581f-9a09ddeb66f8
        set type interface-subnet
        set subnet 0.0.0.0 255.255.255.255
        set interface "internal5"
    next
    edit "Management address"
        set uuid 7703f61e-c844-51ee-a8d3-eaf7f19deb5f
        set type interface-subnet
        set subnet 10.100.50.1 255.255.255.0
        set interface "Management"
    next
end
config firewall multicast-address
    edit "all"
        set start-ip 224.0.0.0
        set end-ip 239.255.255.255
    next
    edit "all_hosts"
        set start-ip 224.0.0.1
        set end-ip 224.0.0.1
    next
    edit "all_routers"
        set start-ip 224.0.0.2
        set end-ip 224.0.0.2
    next
    edit "Bonjour"
        set start-ip 224.0.0.251
        set end-ip 224.0.0.251
    next
    edit "EIGRP"
        set start-ip 224.0.0.10
        set end-ip 224.0.0.10
    next
    edit "OSPF"
        set start-ip 224.0.0.5
        set end-ip 224.0.0.6
    next
end
config firewall address6
    edit "SSLVPN_TUNNEL_IPv6_ADDR1"
        set uuid 2648c5d8-c83a-51ee-e49d-b2c972aa6a8a
        set ip6 fdff:ffff::/120
    next
    edit "all"
        set uuid 236e394c-c83a-51ee-2c77-13436265e189
    next
    edit "none"
        set uuid 236e4a04-c83a-51ee-cf22-15a34aa68778
        set ip6 ::/128
    next
end
config firewall multicast-address6
    edit "all"
        set ip6 ff00::/8
    next
end
config firewall addrgrp
    edit "G Suite"
        set uuid 236dfc70-c83a-51ee-712b-0d99e0ea0ea6
        set member "gmail.com" "wildcard.google.com"
    next
    edit "Microsoft Office 365"
        set uuid 236e17fa-c83a-51ee-759f-d25b366057d7
        set member "login.microsoftonline.com" "login.microsoft.com" "login.windows.net"
    next
end
config firewall service category
    edit "General"
        set comment "General services."
    next
    edit "Web Access"
        set comment "Web access."
    next
    edit "File Access"
        set comment "File access."
    next
    edit "Email"
        set comment "Email services."
    next
    edit "Network Services"
        set comment "Network services."
    next
    edit "Authentication"
        set comment "Authentication service."
    next
    edit "Remote Access"
        set comment "Remote access."
    next
    edit "Tunneling"
        set comment "Tunneling service."
    next
    edit "VoIP, Messaging & Other Applications"
        set comment "VoIP, messaging, and other applications."
    next
    edit "Web Proxy"
        set comment "Explicit web proxy."
    next
end
config firewall service custom
    edit "DNS"
        set category "Network Services"
        set tcp-portrange 53
        set udp-portrange 53
    next
    edit "HTTP"
        set category "Web Access"
        set tcp-portrange 80
    next
    edit "HTTPS"
        set category "Web Access"
        set tcp-portrange 443
    next
    edit "IMAP"
        set category "Email"
        set tcp-portrange 143
    next
    edit "IMAPS"
        set category "Email"
        set tcp-portrange 993
    next
    edit "LDAP"
        set category "Authentication"
        set tcp-portrange 389
    next
    edit "DCE-RPC"
        set category "Remote Access"
        set tcp-portrange 135
        set udp-portrange 135
    next
    edit "POP3"
        set category "Email"
        set tcp-portrange 110
    next
    edit "POP3S"
        set category "Email"
        set tcp-portrange 995
    next
    edit "SAMBA"
        set category "File Access"
        set tcp-portrange 139
    next
    edit "SMTP"
        set category "Email"
        set tcp-portrange 25
    next
    edit "SMTPS"
        set category "Email"
        set tcp-portrange 465
    next
    edit "KERBEROS"
        set category "Authentication"
        set tcp-portrange 88 464
        set udp-portrange 88 464
    next
    edit "LDAP_UDP"
        set category "Authentication"
        set udp-portrange 389
    next
    edit "SMB"
        set category "File Access"
        set tcp-portrange 445
    next
    edit "FTP"
        set category "File Access"
        set tcp-portrange 21
    next
    edit "FTP_GET"
        set category "File Access"
        set tcp-portrange 21
    next
    edit "FTP_PUT"
        set category "File Access"
        set tcp-portrange 21
    next
    edit "ALL"
        set category "General"
        set protocol IP
    next
    edit "ALL_TCP"
        set category "General"
        set tcp-portrange 1-65535
    next
    edit "ALL_UDP"
        set category "General"
        set udp-portrange 1-65535
    next
    edit "ALL_ICMP"
        set category "General"
        set protocol ICMP
        unset icmptype
    next
    edit "ALL_ICMP6"
        set category "General"
        set protocol ICMP6
        unset icmptype
    next
    edit "GRE"
        set category "Tunneling"
        set protocol IP
        set protocol-number 47
    next
    edit "AH"
        set category "Tunneling"
        set protocol IP
        set protocol-number 51
    next
    edit "ESP"
        set category "Tunneling"
        set protocol IP
        set protocol-number 50
    next
    edit "AOL"
        set visibility disable
        set tcp-portrange 5190-5194
    next
    edit "BGP"
        set category "Network Services"
        set tcp-portrange 179
    next
    edit "DHCP"
        set category "Network Services"
        set udp-portrange 67-68
    next
    edit "FINGER"
        set visibility disable
        set tcp-portrange 79
    next
    edit "GOPHER"
        set visibility disable
        set tcp-portrange 70
    next
    edit "H323"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 1720 1503
        set udp-portrange 1719
    next
    edit "IKE"
        set category "Tunneling"
        set udp-portrange 500 4500
    next
    edit "Internet-Locator-Service"
        set visibility disable
        set tcp-portrange 389
    next
    edit "IRC"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 6660-6669
    next
    edit "L2TP"
        set category "Tunneling"
        set tcp-portrange 1701
        set udp-portrange 1701
    next
    edit "NetMeeting"
        set visibility disable
        set tcp-portrange 1720
    next
    edit "NFS"
        set category "File Access"
        set tcp-portrange 111 2049
        set udp-portrange 111 2049
    next
    edit "NNTP"
        set visibility disable
        set tcp-portrange 119
    next
    edit "NTP"
        set category "Network Services"
        set tcp-portrange 123
        set udp-portrange 123
    next
    edit "OSPF"
        set category "Network Services"
        set protocol IP
        set protocol-number 89
    next
    edit "PC-Anywhere"
        set category "Remote Access"
        set tcp-portrange 5631
        set udp-portrange 5632
    next
    edit "PING"
        set category "Network Services"
        set protocol ICMP
        set icmptype 8
        unset icmpcode
    next
    edit "TIMESTAMP"
        set protocol ICMP
        set visibility disable
        set icmptype 13
        unset icmpcode
    next
    edit "INFO_REQUEST"
        set protocol ICMP
        set visibility disable
        set icmptype 15
        unset icmpcode
    next
    edit "INFO_ADDRESS"
        set protocol ICMP
        set visibility disable
        set icmptype 17
        unset icmpcode
    next
    edit "ONC-RPC"
        set category "Remote Access"
        set tcp-portrange 111
        set udp-portrange 111
    next
    edit "PPTP"
        set category "Tunneling"
        set tcp-portrange 1723
    next
    edit "QUAKE"
        set visibility disable
        set udp-portrange 26000 27000 27910 27960
    next
    edit "RAUDIO"
        set visibility disable
        set udp-portrange 7070
    next
    edit "REXEC"
        set visibility disable
        set tcp-portrange 512
    next
    edit "RIP"
        set category "Network Services"
        set udp-portrange 520
    next
    edit "RLOGIN"
        set visibility disable
        set tcp-portrange 513:512-1023
    next
    edit "RSH"
        set visibility disable
        set tcp-portrange 514:512-1023
    next
    edit "SCCP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 2000
    next
    edit "SIP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 5060
        set udp-portrange 5060
    next
    edit "SIP-MSNmessenger"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 1863
    next
    edit "SNMP"
        set category "Network Services"
        set tcp-portrange 161-162
        set udp-portrange 161-162
    next
    edit "SSH"
        set category "Remote Access"
        set tcp-portrange 22
    next
    edit "SYSLOG"
        set category "Network Services"
        set udp-portrange 514
    next
    edit "TALK"
        set visibility disable
        set udp-portrange 517-518
    next
    edit "TELNET"
        set category "Remote Access"
        set tcp-portrange 23
    next
    edit "TFTP"
        set category "File Access"
        set udp-portrange 69
    next
    edit "MGCP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 2428
        set udp-portrange 2427 2727
    next
    edit "UUCP"
        set visibility disable
        set tcp-portrange 540
    next
    edit "VDOLIVE"
        set visibility disable
        set tcp-portrange 7000-7010
    next
    edit "WAIS"
        set visibility disable
        set tcp-portrange 210
    next
    edit "WINFRAME"
        set visibility disable
        set tcp-portrange 1494 2598
    next
    edit "X-WINDOWS"
        set category "Remote Access"
        set tcp-portrange 6000-6063
    next
    edit "PING6"
        set protocol ICMP6
        set visibility disable
        set icmptype 128
        unset icmpcode
    next
    edit "MS-SQL"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 1433 1434
    next
    edit "MYSQL"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 3306
    next
    edit "RDP"
        set category "Remote Access"
        set tcp-portrange 3389
    next
    edit "VNC"
        set category "Remote Access"
        set tcp-portrange 5900
    next
    edit "DHCP6"
        set category "Network Services"
        set udp-portrange 546 547
    next
    edit "SQUID"
        set category "Tunneling"
        set tcp-portrange 3128
    next
    edit "SOCKS"
        set category "Tunneling"
        set tcp-portrange 1080
        set udp-portrange 1080
    next
    edit "WINS"
        set category "Remote Access"
        set tcp-portrange 1512
        set udp-portrange 1512
    next
    edit "RADIUS"
        set category "Authentication"
        set udp-portrange 1812 1813
    next
    edit "RADIUS-OLD"
        set visibility disable
        set udp-portrange 1645 1646
    next
    edit "CVSPSERVER"
        set visibility disable
        set tcp-portrange 2401
        set udp-portrange 2401
    next
    edit "AFS3"
        set category "File Access"
        set tcp-portrange 7000-7009
        set udp-portrange 7000-7009
    next
    edit "TRACEROUTE"
        set category "Network Services"
        set udp-portrange 33434-33535
    next
    edit "RTSP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 554 7070 8554
        set udp-portrange 554
    next
    edit "MMS"
        set visibility disable
        set tcp-portrange 1755
        set udp-portrange 1024-5000
    next
    edit "NONE"
        set visibility disable
        set tcp-portrange 0
    next
    edit "webproxy"
        set proxy enable
        set category "Web Proxy"
        set protocol ALL
        set tcp-portrange 0-65535:0-65535
    next
end
config firewall service group
    edit "Email Access"
        set member "DNS" "IMAP" "IMAPS" "POP3" "POP3S" "SMTP" "SMTPS"
    next
    edit "Web Access"
        set member "DNS" "HTTP" "HTTPS"
    next
    edit "Windows AD"
        set member "DCE-RPC" "DNS" "KERBEROS" "LDAP" "LDAP_UDP" "SAMBA" "SMB"
    next
    edit "Exchange Server"
        set member "DCE-RPC" "DNS" "HTTPS"
    next
end
config vpn certificate ca
end
config vpn certificate local
    edit "Fortinet_CA_SSL"
        set comments "This is the default CA certificate the SSL Inspection will use when generating new server certificates."
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_CA_Untrusted"
        set comments "This is the default CA certificate the SSL Inspection will use when generating new server certificates."
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_RSA1024"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_RSA2048"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_RSA4096"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_DSA1024"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_DSA2048"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_ECDSA256"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_ECDSA384"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_ECDSA521"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_ED25519"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
    edit "Fortinet_SSL_ED448"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707586252
    next
end
config webfilter ftgd-local-cat
    edit "custom1"
        set id 140
    next
    edit "custom2"
        set id 141
    next
end
config ips sensor
    edit "all_default"
        set comment "All predefined signatures with default setting."
        config entries
            edit 1
            next
        end
    next
    edit "all_default_pass"
        set comment "All predefined signatures with PASS action."
        config entries
            edit 1
                set action pass
            next
        end
    next
    edit "protect_http_server"
        set comment "Protect against HTTP server-side vulnerabilities."
        config entries
            edit 1
                set location server 
                set protocol HTTP 
            next
        end
    next
    edit "protect_email_server"
        set comment "Protect against email server-side vulnerabilities."
        config entries
            edit 1
                set location server 
                set protocol SMTP POP3 IMAP 
            next
        end
    next
    edit "protect_client"
        set comment "Protect against client-side vulnerabilities."
        config entries
            edit 1
                set location client 
            next
        end
    next
    edit "high_security"
        set comment "Blocks all Critical/High/Medium and some Low severity vulnerabilities"
        set block-malicious-url enable
        config entries
            edit 1
                set severity medium high critical 
                set status enable
                set action block
            next
            edit 2
                set severity low 
            next
        end
    next
end
config firewall shaper traffic-shaper
    edit "high-priority"
        set maximum-bandwidth 1048576
        set per-policy enable
    next
    edit "medium-priority"
        set maximum-bandwidth 1048576
        set priority medium
        set per-policy enable
    next
    edit "low-priority"
        set maximum-bandwidth 1048576
        set priority low
        set per-policy enable
    next
    edit "guarantee-100kbps"
        set guaranteed-bandwidth 100
        set maximum-bandwidth 1048576
        set per-policy enable
    next
    edit "shared-1M-pipe"
        set maximum-bandwidth 1024
    next
end
config web-proxy global
    set proxy-fqdn "default.fqdn"
end
config application list
    edit "block-high-risk"
        config entries
            edit 1
                set category 2 6
            next
            edit 2
                set action pass
            next
        end
    next
end
config dlp filepattern
    edit 1
        set name "builtin-patterns"
        config entries
            edit "*.bat"
            next
            edit "*.com"
            next
            edit "*.dll"
            next
            edit "*.doc"
            next
            edit "*.exe"
            next
            edit "*.gz"
            next
            edit "*.hta"
            next
            edit "*.ppt"
            next
            edit "*.rar"
            next
            edit "*.scr"
            next
            edit "*.tar"
            next
            edit "*.tgz"
            next
            edit "*.vb?"
            next
            edit "*.wps"
            next
            edit "*.xl?"
            next
            edit "*.zip"
            next
            edit "*.pif"
            next
            edit "*.cpl"
            next
        end
    next
    edit 2
        set name "all_executables"
        config entries
            edit "bat"
                set filter-type type
                set file-type bat
            next
            edit "exe"
                set filter-type type
                set file-type exe
            next
            edit "elf"
                set filter-type type
                set file-type elf
            next
            edit "hta"
                set filter-type type
                set file-type hta
            next
        end
    next
end
config dlp sensitivity
    edit "Private"
    next
    edit "Critical"
    next
    edit "Warning"
    next
end
config dlp sensor
    edit "Content_Summary"
        set summary-proto smtp pop3 imap http-get http-post ftp nntp
    next
    edit "Content_Archive"
        set full-archive-proto smtp pop3 imap http-get http-post ftp nntp
        set summary-proto smtp pop3 imap http-get http-post ftp nntp
    next
    edit "Large-File"
        config filter
            edit 1
                set name "Large-File-Filter"
                set proto smtp pop3 imap http-get http-post
                set filter-by file-size
                set file-size 5120
                set action log-only
            next
        end
    next
    edit "Credit-Card"
        config filter
            edit 1
                set name "Credit-Card-Filter"
                set severity high
                set proto smtp pop3 imap http-get http-post
                set action log-only
            next
            edit 2
                set name "Credit-Card-Filter"
                set severity high
                set type message
                set proto smtp pop3 imap http-post
                set action log-only
            next
        end
    next
    edit "SSN-Sensor"
        set comment "Match SSN numbers but NOT WebEx invite emails."
        config filter
            edit 1
                set name "SSN-Sensor-Filter"
                set severity high
                set type message
                set proto smtp pop3 imap
                set filter-by regexp
                set regexp "WebEx"
            next
            edit 2
                set name "SSN-Sensor-Filter"
                set severity high
                set type message
                set proto smtp pop3 imap
                set filter-by ssn
                set action log-only
            next
            edit 3
                set name "SSN-Sensor-Filter"
                set severity high
                set proto smtp pop3 imap http-get http-post ftp
                set filter-by ssn
                set action log-only
            next
        end
    next
end
config webfilter ips-urlfilter-setting
end
config webfilter ips-urlfilter-setting6
end
config log threat-weight
    config web
        edit 1
            set category 26
            set level high
        next
        edit 2
            set category 61
            set level high
        next
        edit 3
            set category 86
            set level high
        next
        edit 4
            set category 1
            set level medium
        next
        edit 5
            set category 3
            set level medium
        next
        edit 6
            set category 4
            set level medium
        next
        edit 7
            set category 5
            set level medium
        next
        edit 8
            set category 6
            set level medium
        next
        edit 9
            set category 12
            set level medium
        next
        edit 10
            set category 59
            set level medium
        next
        edit 11
            set category 62
            set level medium
        next
        edit 12
            set category 83
            set level medium
        next
        edit 13
            set category 72
        next
        edit 14
            set category 14
        next
        edit 15
            set category 96
            set level medium
        next
    end
    config application
        edit 1
            set category 2
        next
        edit 2
            set category 6
            set level medium
        next
    end
end
config icap profile
    edit "default"
        config icap-headers
            edit 1
                set name "X-Authenticated-User"
                set content "$user"
            next
            edit 2
                set name "X-Authenticated-Groups"
                set content "$local_grp"
            next
        end
    next
end
config user fortitoken
    edit "FTKMOB39D42061E0"
        set license "FTMTRIAL0A4E28E6"
    next
    edit "FTKMOB39E6D80EB9"
        set license "FTMTRIAL0A4E28E6"
    next
end
config user local
    edit "guest"
        set type password
        set passwd ENC Z9rL8+nZ4IqWjK0UA+ZG6e/wzc+zswBD1Dogj6k3/aVCUmx7QMpvGe1Z6OVBt519zNdwlm2ae8veKEvszE1DgpaB6HFHxV8EyGgE02K7V+XiaFulnf8yLgbeAvb+t2u5LyOK+RmfMQUoNodqj0QXNf4LUNmBZgKHfCOIHVooYBmIEwG8C7aQzMbuk9HXjCwJZIhl1Q==
    next
end
config user setting
    set auth-cert "Fortinet_Factory"
end
config user group
    edit "SSO_Guest_Users"
    next
    edit "Guest-group"
        set member "guest"
    next
end
config vpn ssl web host-check-software
    edit "FortiClient-AV"
        set guid "1A0271D5-3D4F-46DB-0C2C-AB37BA90D9F7"
    next
    edit "FortiClient-FW"
        set type fw
        set guid "528CB157-D384-4593-AAAA-E42DFF111CED"
    next
    edit "FortiClient-AV-Vista"
        set guid "385618A6-2256-708E-3FB9-7E98B93F91F9"
    next
    edit "FortiClient-FW-Vista"
        set type fw
        set guid "006D9983-6839-71D6-14E6-D7AD47ECD682"
    next
    edit "FortiClient5-AV"
        set guid "5EEDDB8C-C27A-6714-3657-DBD811D1F1B7"
    next
    edit "AVG-Internet-Security-AV"
        set guid "17DDD097-36FF-435F-9E1B-52D74245D6BF"
    next
    edit "AVG-Internet-Security-FW"
        set type fw
        set guid "8DECF618-9569-4340-B34A-D78D28969B66"
    next
    edit "AVG-Internet-Security-AV-Vista-Win7"
        set guid "0C939084-9E57-CBDB-EA61-0B0C7F62AF82"
    next
    edit "AVG-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "34A811A1-D438-CA83-C13E-A23981B1E8F9"
    next
    edit "CA-Anti-Virus"
        set guid "17CFD1EA-56CF-40B5-A06B-BD3A27397C93"
    next
    edit "CA-Internet-Security-AV"
        set guid "6B98D35F-BB76-41C0-876B-A50645ED099A"
    next
    edit "CA-Internet-Security-FW"
        set type fw
        set guid "38102F93-1B6E-4922-90E1-A35D8DC6DAA3"
    next
    edit "CA-Internet-Security-AV-Vista-Win7"
        set guid "3EED0195-0A4B-4EF3-CC4F-4F401BDC245F"
    next
    edit "CA-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "06D680B0-4024-4FAB-E710-E675E50F6324"
    next
    edit "CA-Personal-Firewall"
        set type fw
        set guid "14CB4B80-8E52-45EA-905E-67C1267B4160"
    next
    edit "F-Secure-Internet-Security-AV"
        set guid "E7512ED5-4245-4B4D-AF3A-382D3F313F15"
    next
    edit "F-Secure-Internet-Security-FW"
        set type fw
        set guid "D4747503-0346-49EB-9262-997542F79BF4"
    next
    edit "F-Secure-Internet-Security-AV-Vista-Win7"
        set guid "15414183-282E-D62C-CA37-EF24860A2F17"
    next
    edit "F-Secure-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "2D7AC0A6-6241-D774-E168-461178D9686C"
    next
    edit "Kaspersky-AV"
        set guid "2C4D4BC6-0793-4956-A9F9-E252435469C0"
    next
    edit "Kaspersky-FW"
        set type fw
        set guid "2C4D4BC6-0793-4956-A9F9-E252435469C0"
    next
    edit "Kaspersky-AV-Vista-Win7"
        set guid "AE1D740B-8F0F-D137-211D-873D44B3F4AE"
    next
    edit "Kaspersky-FW-Vista-Win7"
        set type fw
        set guid "9626F52E-C560-D06F-0A42-2E08BA60B3D5"
    next
    edit "McAfee-Internet-Security-Suite-AV"
        set guid "84B5EE75-6421-4CDE-A33A-DD43BA9FAD83"
    next
    edit "McAfee-Internet-Security-Suite-FW"
        set type fw
        set guid "94894B63-8C7F-4050-BDA4-813CA00DA3E8"
    next
    edit "McAfee-Internet-Security-Suite-AV-Vista-Win7"
        set guid "86355677-4064-3EA7-ABB3-1B136EB04637"
    next
    edit "McAfee-Internet-Security-Suite-FW-Vista-Win7"
        set type fw
        set guid "BE0ED752-0A0B-3FFF-80EC-B2269063014C"
    next
    edit "McAfee-Virus-Scan-Enterprise"
        set guid "918A2B0B-2C60-4016-A4AB-E868DEABF7F0"
    next
    edit "Norton-360-2.0-AV"
        set guid "A5F1BC7C-EA33-4247-961C-0217208396C4"
    next
    edit "Norton-360-2.0-FW"
        set type fw
        set guid "371C0A40-5A0C-4AD2-A6E5-69C02037FBF3"
    next
    edit "Norton-360-3.0-AV"
        set guid "E10A9785-9598-4754-B552-92431C1C35F8"
    next
    edit "Norton-360-3.0-FW"
        set type fw
        set guid "7C21A4C9-F61F-4AC4-B722-A6E19C16F220"
    next
    edit "Norton-Internet-Security-AV"
        set guid "E10A9785-9598-4754-B552-92431C1C35F8"
    next
    edit "Norton-Internet-Security-FW"
        set type fw
        set guid "7C21A4C9-F61F-4AC4-B722-A6E19C16F220"
    next
    edit "Norton-Internet-Security-AV-Vista-Win7"
        set guid "88C95A36-8C3B-2F2C-1B8B-30FCCFDC4855"
    next
    edit "Norton-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "B0F2DB13-C654-2E74-30D4-99C9310F0F2E"
    next
    edit "Symantec-Endpoint-Protection-AV"
        set guid "FB06448E-52B8-493A-90F3-E43226D3305C"
    next
    edit "Symantec-Endpoint-Protection-FW"
        set type fw
        set guid "BE898FE3-CD0B-4014-85A9-03DB9923DDB6"
    next
    edit "Symantec-Endpoint-Protection-AV-Vista-Win7"
        set guid "88C95A36-8C3B-2F2C-1B8B-30FCCFDC4855"
    next
    edit "Symantec-Endpoint-Protection-FW-Vista-Win7"
        set type fw
        set guid "B0F2DB13-C654-2E74-30D4-99C9310F0F2E"
    next
    edit "Panda-Antivirus+Firewall-2008-AV"
        set guid "EEE2D94A-D4C1-421A-AB2C-2CE8FE51747A"
    next
    edit "Panda-Antivirus+Firewall-2008-FW"
        set type fw
        set guid "7B090DC0-8905-4BAF-8040-FD98A41C8FB8"
    next
    edit "Panda-Internet-Security-AV"
        set guid "4570FB70-5C9E-47E9-B16C-A3A6A06C4BF0"
    next
    edit "Panda-Internet-Security-2006~2007-FW"
        set type fw
        set guid "4570FB70-5C9E-47E9-B16C-A3A6A06C4BF0"
    next
    edit "Panda-Internet-Security-2008~2009-FW"
        set type fw
        set guid "7B090DC0-8905-4BAF-8040-FD98A41C8FB8"
    next
    edit "Sophos-Anti-Virus"
        set guid "3F13C776-3CBE-4DE9-8BF6-09E5183CA2BD"
    next
    edit "Sophos-Enpoint-Secuirty-and-Control-FW"
        set type fw
        set guid "0786E95E-326A-4524-9691-41EF88FB52EA"
    next
    edit "Sophos-Enpoint-Secuirty-and-Control-AV-Vista-Win7"
        set guid "479CCF92-4960-B3E0-7373-BF453B467D2C"
    next
    edit "Sophos-Enpoint-Secuirty-and-Control-FW-Vista-Win7"
        set type fw
        set guid "7FA74EB7-030F-B2B8-582C-1670C5953A57"
    next
    edit "Trend-Micro-AV"
        set guid "7D2296BC-32CC-4519-917E-52E652474AF5"
    next
    edit "Trend-Micro-FW"
        set type fw
        set guid "3E790E9E-6A5D-4303-A7F9-185EC20F3EB6"
    next
    edit "Trend-Micro-AV-Vista-Win7"
        set guid "48929DFC-7A52-A34F-8351-C4DBEDBD9C50"
    next
    edit "Trend-Micro-FW-Vista-Win7"
        set type fw
        set guid "70A91CD9-303D-A217-A80E-6DEE136EDB2B"
    next
    edit "ZoneAlarm-AV"
        set guid "5D467B10-818C-4CAB-9FF7-6893B5B8F3CF"
    next
    edit "ZoneAlarm-FW"
        set type fw
        set guid "829BDA32-94B3-44F4-8446-F8FCFF809F8B"
    next
    edit "ZoneAlarm-AV-Vista-Win7"
        set guid "D61596DF-D219-341C-49B3-AD30538CBC5B"
    next
    edit "ZoneAlarm-FW-Vista-Win7"
        set type fw
        set guid "EE2E17FA-9876-3544-62EC-0405AD5FFB20"
    next
    edit "ESET-Smart-Security-AV"
        set guid "19259FAE-8396-A113-46DB-15B0E7DFA289"
    next
    edit "ESET-Smart-Security-FW"
        set type fw
        set guid "211E1E8B-C9F9-A04B-6D84-BC85190CE5F2"
    next
end
config vpn ssl web portal
    edit "full-access"
        set tunnel-mode enable
        set ipv6-tunnel-mode enable
        set web-mode enable
        set ip-pools "SSLVPN_TUNNEL_ADDR1"
        set ipv6-pools "SSLVPN_TUNNEL_IPv6_ADDR1"
    next
    edit "web-access"
        set web-mode enable
    next
    edit "tunnel-access"
        set tunnel-mode enable
        set ipv6-tunnel-mode enable
        set ip-pools "SSLVPN_TUNNEL_ADDR1"
        set ipv6-pools "SSLVPN_TUNNEL_IPv6_ADDR1"
    next
end
config vpn ssl settings
    set servercert ''
    set port 443
end
config voip profile
    edit "default"
        set comment "Default VoIP profile."
    next
    edit "strict"
        config sip
            set malformed-request-line discard
            set malformed-header-via discard
            set malformed-header-from discard
            set malformed-header-to discard
            set malformed-header-call-id discard
            set malformed-header-cseq discard
            set malformed-header-rack discard
            set malformed-header-rseq discard
            set malformed-header-contact discard
            set malformed-header-record-route discard
            set malformed-header-route discard
            set malformed-header-expires discard
            set malformed-header-content-type discard
            set malformed-header-content-length discard
            set malformed-header-max-forwards discard
            set malformed-header-allow discard
            set malformed-header-p-asserted-identity discard
            set malformed-header-sdp-v discard
            set malformed-header-sdp-o discard
            set malformed-header-sdp-s discard
            set malformed-header-sdp-i discard
            set malformed-header-sdp-c discard
            set malformed-header-sdp-b discard
            set malformed-header-sdp-z discard
            set malformed-header-sdp-k discard
            set malformed-header-sdp-a discard
            set malformed-header-sdp-t discard
            set malformed-header-sdp-r discard
            set malformed-header-sdp-m discard
        end
    next
end
config system sdwan
    config zone
        edit "virtual-wan-link"
        next
    end
    config health-check
        edit "Default_DNS"
            set system-dns enable
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_Office_365"
            set server "www.office.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_Gmail"
            set server "gmail.com"
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 2
                next
            end
        next
        edit "Default_AWS"
            set server "aws.amazon.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_Google Search"
            set server "www.google.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_FortiGuard"
            set server "fortiguard.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
    end
end
config vpn ocvpn
end
config dnsfilter profile
    edit "default"
        set comment "Default dns filtering."
        config ftgd-dns
            config filters
                edit 1
                    set category 2
                next
                edit 2
                    set category 7
                next
                edit 3
                    set category 8
                next
                edit 4
                    set category 9
                next
                edit 5
                    set category 11
                next
                edit 6
                    set category 12
                next
                edit 7
                    set category 13
                next
                edit 8
                    set category 14
                next
                edit 9
                    set category 15
                next
                edit 10
                    set category 16
                next
                edit 11
                next
                edit 12
                    set category 57
                next
                edit 13
                    set category 63
                next
                edit 14
                    set category 64
                next
                edit 15
                    set category 65
                next
                edit 16
                    set category 66
                next
                edit 17
                    set category 67
                next
                edit 18
                    set category 26
                    set action block
                next
                edit 19
                    set category 61
                    set action block
                next
                edit 20
                    set category 86
                    set action block
                next
                edit 21
                    set category 88
                    set action block
                next
                edit 22
                    set category 90
                    set action block
                next
                edit 23
                    set category 91
                    set action block
                next
                edit 24
                    set category 96
                    set action block
                next
                edit 25
                    set category 98
                    set action block
                next
                edit 26
                    set category 99
                    set action block
                next
            end
        end
        set block-botnet enable
    next
end
config antivirus settings
    set machine-learning-detection enable
    set grayware enable
end
config webfilter profile
    edit "sniffer-profile"
        set comment "Monitor web traffic."
        config ftgd-wf
            config filters
                edit 1
                next
                edit 2
                    set category 1
                next
                edit 3
                    set category 2
                next
                edit 4
                    set category 3
                next
                edit 5
                    set category 4
                next
                edit 6
                    set category 5
                next
                edit 7
                    set category 6
                next
                edit 8
                    set category 7
                next
                edit 9
                    set category 8
                next
                edit 10
                    set category 9
                next
                edit 11
                    set category 11
                next
                edit 12
                    set category 12
                next
                edit 13
                    set category 13
                next
                edit 14
                    set category 14
                next
                edit 15
                    set category 15
                next
                edit 16
                    set category 16
                next
                edit 17
                    set category 17
                next
                edit 18
                    set category 18
                next
                edit 19
                    set category 19
                next
                edit 20
                    set category 20
                next
                edit 21
                    set category 23
                next
                edit 22
                    set category 24
                next
                edit 23
                    set category 25
                next
                edit 24
                    set category 26
                next
                edit 25
                    set category 28
                next
                edit 26
                    set category 29
                next
                edit 27
                    set category 30
                next
                edit 28
                    set category 31
                next
                edit 29
                    set category 33
                next
                edit 30
                    set category 34
                next
                edit 31
                    set category 35
                next
                edit 32
                    set category 36
                next
                edit 33
                    set category 37
                next
                edit 34
                    set category 38
                next
                edit 35
                    set category 39
                next
                edit 36
                    set category 40
                next
                edit 37
                    set category 41
                next
                edit 38
                    set category 42
                next
                edit 39
                    set category 43
                next
                edit 40
                    set category 44
                next
                edit 41
                    set category 46
                next
                edit 42
                    set category 47
                next
                edit 43
                    set category 48
                next
                edit 44
                    set category 49
                next
                edit 45
                    set category 50
                next
                edit 46
                    set category 51
                next
                edit 47
                    set category 52
                next
                edit 48
                    set category 53
                next
                edit 49
                    set category 54
                next
                edit 50
                    set category 55
                next
                edit 51
                    set category 56
                next
                edit 52
                    set category 57
                next
                edit 53
                    set category 58
                next
                edit 54
                    set category 59
                next
                edit 55
                    set category 61
                next
                edit 56
                    set category 62
                next
                edit 57
                    set category 63
                next
                edit 58
                    set category 64
                next
                edit 59
                    set category 65
                next
                edit 60
                    set category 66
                next
                edit 61
                    set category 67
                next
                edit 62
                    set category 68
                next
                edit 63
                    set category 69
                next
                edit 64
                    set category 70
                next
                edit 65
                    set category 71
                next
                edit 66
                    set category 72
                next
                edit 67
                    set category 75
                next
                edit 68
                    set category 76
                next
                edit 69
                    set category 77
                next
                edit 70
                    set category 78
                next
                edit 71
                    set category 79
                next
                edit 72
                    set category 80
                next
                edit 73
                    set category 81
                next
                edit 74
                    set category 82
                next
                edit 75
                    set category 83
                next
                edit 76
                    set category 84
                next
                edit 77
                    set category 85
                next
                edit 78
                    set category 86
                next
                edit 79
                    set category 87
                next
                edit 80
                    set category 88
                next
                edit 81
                    set category 89
                next
                edit 82
                    set category 90
                next
                edit 83
                    set category 91
                next
                edit 84
                    set category 92
                next
                edit 85
                    set category 93
                next
                edit 86
                    set category 94
                next
                edit 87
                    set category 95
                next
                edit 88
                    set category 96
                next
                edit 89
                    set category 97
                next
                edit 90
                    set category 98
                next
                edit 91
                    set category 99
                next
            end
        end
    next
    edit "wifi-default"
        set comment "Default configuration for offloading WiFi traffic."
        set options block-invalid-url
        config ftgd-wf
            unset options
            config filters
                edit 1
                    set action block
                next
                edit 2
                    set category 2
                    set action block
                next
                edit 3
                    set category 7
                    set action block
                next
                edit 4
                    set category 8
                    set action block
                next
                edit 5
                    set category 9
                    set action block
                next
                edit 6
                    set category 11
                    set action block
                next
                edit 7
                    set category 13
                    set action block
                next
                edit 8
                    set category 14
                    set action block
                next
                edit 9
                    set category 15
                    set action block
                next
                edit 10
                    set category 16
                    set action block
                next
                edit 11
                    set category 26
                    set action block
                next
                edit 12
                    set category 57
                    set action block
                next
                edit 13
                    set category 61
                    set action block
                next
                edit 14
                    set category 63
                    set action block
                next
                edit 15
                    set category 64
                    set action block
                next
                edit 16
                    set category 65
                    set action block
                next
                edit 17
                    set category 66
                    set action block
                next
                edit 18
                    set category 67
                    set action block
                next
                edit 19
                    set category 83
                    set action block
                next
                edit 20
                    set category 86
                    set action block
                next
                edit 21
                    set category 88
                    set action block
                next
                edit 22
                    set category 90
                    set action block
                next
                edit 23
                    set category 91
                    set action block
                next
                edit 24
                    set category 96
                    set action block
                next
                edit 25
                    set category 98
                    set action block
                next
                edit 26
                    set category 99
                    set action block
                next
                edit 27
                    set category 1
                next
                edit 28
                    set category 3
                next
                edit 29
                    set category 4
                next
                edit 30
                    set category 5
                next
                edit 31
                    set category 6
                next
                edit 32
                    set category 12
                next
                edit 33
                    set category 59
                next
                edit 34
                    set category 62
                next
            end
        end
    next
    edit "monitor-all"
        set comment "Monitor and log all visited URLs, flow-based."
        config ftgd-wf
            unset options
            config filters
                edit 1
                    set category 1
                next
                edit 2
                    set category 3
                next
                edit 3
                    set category 4
                next
                edit 4
                    set category 5
                next
                edit 5
                    set category 6
                next
                edit 6
                    set category 12
                next
                edit 7
                    set category 59
                next
                edit 8
                    set category 62
                next
                edit 9
                    set category 83
                next
                edit 10
                    set category 2
                next
                edit 11
                    set category 7
                next
                edit 12
                    set category 8
                next
                edit 13
                    set category 9
                next
                edit 14
                    set category 11
                next
                edit 15
                    set category 13
                next
                edit 16
                    set category 14
                next
                edit 17
                    set category 15
                next
                edit 18
                    set category 16
                next
                edit 19
                    set category 57
                next
                edit 20
                    set category 63
                next
                edit 21
                    set category 64
                next
                edit 22
                    set category 65
                next
                edit 23
                    set category 66
                next
                edit 24
                    set category 67
                next
                edit 25
                    set category 19
                next
                edit 26
                    set category 24
                next
                edit 27
                    set category 25
                next
                edit 28
                    set category 72
                next
                edit 29
                    set category 75
                next
                edit 30
                    set category 76
                next
                edit 31
                    set category 26
                next
                edit 32
                    set category 61
                next
                edit 33
                    set category 86
                next
                edit 34
                    set category 17
                next
                edit 35
                    set category 18
                next
                edit 36
                    set category 20
                next
                edit 37
                    set category 23
                next
                edit 38
                    set category 28
                next
                edit 39
                    set category 29
                next
                edit 40
                    set category 30
                next
                edit 41
                    set category 33
                next
                edit 42
                    set category 34
                next
                edit 43
                    set category 35
                next
                edit 44
                    set category 36
                next
                edit 45
                    set category 37
                next
                edit 46
                    set category 38
                next
                edit 47
                    set category 39
                next
                edit 48
                    set category 40
                next
                edit 49
                    set category 42
                next
                edit 50
                    set category 44
                next
                edit 51
                    set category 46
                next
                edit 52
                    set category 47
                next
                edit 53
                    set category 48
                next
                edit 54
                    set category 54
                next
                edit 55
                    set category 55
                next
                edit 56
                    set category 58
                next
                edit 57
                    set category 68
                next
                edit 58
                    set category 69
                next
                edit 59
                    set category 70
                next
                edit 60
                    set category 71
                next
                edit 61
                    set category 77
                next
                edit 62
                    set category 78
                next
                edit 63
                    set category 79
                next
                edit 64
                    set category 80
                next
                edit 65
                    set category 82
                next
                edit 66
                    set category 85
                next
                edit 67
                    set category 87
                next
                edit 68
                    set category 31
                next
                edit 69
                    set category 41
                next
                edit 70
                    set category 43
                next
                edit 71
                    set category 49
                next
                edit 72
                    set category 50
                next
                edit 73
                    set category 51
                next
                edit 74
                    set category 52
                next
                edit 75
                    set category 53
                next
                edit 76
                    set category 56
                next
                edit 77
                    set category 81
                next
                edit 78
                    set category 84
                next
                edit 79
                next
                edit 80
                    set category 88
                next
                edit 81
                    set category 89
                next
                edit 82
                    set category 90
                next
                edit 83
                    set category 91
                next
                edit 84
                    set category 92
                next
                edit 85
                    set category 93
                next
                edit 86
                    set category 94
                next
                edit 87
                    set category 95
                next
                edit 88
                    set category 96
                next
                edit 89
                    set category 97
                next
                edit 90
                    set category 98
                next
                edit 91
                    set category 99
                next
            end
        end
        set log-all-url enable
        set web-content-log disable
        set web-filter-command-block-log disable
        set web-filter-cookie-log disable
        set web-url-log disable
        set web-invalid-domain-log disable
        set web-ftgd-err-log disable
    next
end
config webfilter search-engine
    edit "translate"
        set hostname "translate\\.google\\..*"
        set url "^\\/translate\\?"
        set query "u="
        set safesearch translate
    next
end
config emailfilter profile
    edit "sniffer-profile"
        set comment "Malware and phishing URL monitoring."
        config imap
        end
        config pop3
        end
        config smtp
        end
    next
    edit "default"
        set comment "Malware and phishing URL filtering."
        config imap
        end
        config pop3
        end
        config smtp
        end
    next
end
config log memory setting
    set status enable
end
config log null-device setting
    set status disable
end
config firewall schedule recurring
    edit "always"
        set day sunday monday tuesday wednesday thursday friday saturday
    next
    edit "none"
    next
    edit "default-darrp-optimize"
        set start 01:00
        set end 01:30
        set day sunday monday tuesday wednesday thursday friday saturday
    next
end
config firewall ssh setting
    set caname "g-Fortinet_SSH_CA"
    set untrusted-caname "g-Fortinet_SSH_CA_Untrusted"
    set hostkey-rsa2048 "g-Fortinet_SSH_RSA2048"
    set hostkey-dsa1024 "g-Fortinet_SSH_DSA1024"
    set hostkey-ecdsa256 "g-Fortinet_SSH_ECDSA256"
    set hostkey-ecdsa384 "g-Fortinet_SSH_ECDSA384"
    set hostkey-ecdsa521 "g-Fortinet_SSH_ECDSA521"
    set hostkey-ed25519 "g-Fortinet_SSH_ED25519"
end
config firewall profile-protocol-options
    edit "default"
        set comment "All default services."
        config http
            set ports 80
            unset options
            unset post-lang
        end
        config ftp
            set ports 21
            set options splice
        end
        config imap
            set ports 143
            set options fragmail
        end
        config mapi
            set ports 135
            set options fragmail
        end
        config pop3
            set ports 110
            set options fragmail
        end
        config smtp
            set ports 25
            set options fragmail splice
        end
        config nntp
            set ports 119
            set options splice
        end
        config ssh
            unset options
        end
        config dns
            set ports 53
        end
        config cifs
            set ports 445
            unset options
        end
    next
end
config firewall ssl-ssh-profile
    edit "deep-inspection"
        set comment "Read-only deep inspection profile."
        config https
            set ports 443
            set status deep-inspection
        end
        config ftps
            set ports 990
            set status deep-inspection
        end
        config imaps
            set ports 993
            set status deep-inspection
        end
        config pop3s
            set ports 995
            set status deep-inspection
        end
        config smtps
            set ports 465
            set status deep-inspection
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
        config ssl-exempt
            edit 1
                set fortiguard-category 31
            next
            edit 2
                set fortiguard-category 33
            next
            edit 3
                set type wildcard-fqdn
                set wildcard-fqdn "g-adobe"
            next
            edit 4
                set type wildcard-fqdn
                set wildcard-fqdn "g-Adobe Login"
            next
            edit 5
                set type wildcard-fqdn
                set wildcard-fqdn "g-android"
            next
            edit 6
                set type wildcard-fqdn
                set wildcard-fqdn "g-apple"
            next
            edit 7
                set type wildcard-fqdn
                set wildcard-fqdn "g-appstore"
            next
            edit 8
                set type wildcard-fqdn
                set wildcard-fqdn "g-auth.gfx.ms"
            next
            edit 9
                set type wildcard-fqdn
                set wildcard-fqdn "g-citrix"
            next
            edit 10
                set type wildcard-fqdn
                set wildcard-fqdn "g-dropbox.com"
            next
            edit 11
                set type wildcard-fqdn
                set wildcard-fqdn "g-eease"
            next
            edit 12
                set type wildcard-fqdn
                set wildcard-fqdn "g-firefox update server"
            next
            edit 13
                set type wildcard-fqdn
                set wildcard-fqdn "g-fortinet"
            next
            edit 14
                set type wildcard-fqdn
                set wildcard-fqdn "g-googleapis.com"
            next
            edit 15
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-drive"
            next
            edit 16
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play2"
            next
            edit 17
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play3"
            next
            edit 18
                set type wildcard-fqdn
                set wildcard-fqdn "g-Gotomeeting"
            next
            edit 19
                set type wildcard-fqdn
                set wildcard-fqdn "g-icloud"
            next
            edit 20
                set type wildcard-fqdn
                set wildcard-fqdn "g-itunes"
            next
            edit 21
                set type wildcard-fqdn
                set wildcard-fqdn "g-microsoft"
            next
            edit 22
                set type wildcard-fqdn
                set wildcard-fqdn "g-skype"
            next
            edit 23
                set type wildcard-fqdn
                set wildcard-fqdn "g-softwareupdate.vmware.com"
            next
            edit 24
                set type wildcard-fqdn
                set wildcard-fqdn "g-verisign"
            next
            edit 25
                set type wildcard-fqdn
                set wildcard-fqdn "g-Windows update 2"
            next
            edit 26
                set type wildcard-fqdn
                set wildcard-fqdn "g-live.com"
            next
            edit 27
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play"
            next
            edit 28
                set type wildcard-fqdn
                set wildcard-fqdn "g-update.microsoft.com"
            next
            edit 29
                set type wildcard-fqdn
                set wildcard-fqdn "g-swscan.apple.com"
            next
            edit 30
                set type wildcard-fqdn
                set wildcard-fqdn "g-autoupdate.opera.com"
            next
            edit 31
                set type wildcard-fqdn
                set wildcard-fqdn "g-cdn-apple"
            next
            edit 32
                set type wildcard-fqdn
                set wildcard-fqdn "g-mzstatic-apple"
            next
        end
    next
    edit "custom-deep-inspection"
        set comment "Customizable deep inspection profile."
        config https
            set ports 443
            set status deep-inspection
        end
        config ftps
            set ports 990
            set status deep-inspection
        end
        config imaps
            set ports 993
            set status deep-inspection
        end
        config pop3s
            set ports 995
            set status deep-inspection
        end
        config smtps
            set ports 465
            set status deep-inspection
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
        config ssl-exempt
            edit 1
                set fortiguard-category 31
            next
            edit 2
                set fortiguard-category 33
            next
            edit 3
                set type wildcard-fqdn
                set wildcard-fqdn "g-adobe"
            next
            edit 4
                set type wildcard-fqdn
                set wildcard-fqdn "g-Adobe Login"
            next
            edit 5
                set type wildcard-fqdn
                set wildcard-fqdn "g-android"
            next
            edit 6
                set type wildcard-fqdn
                set wildcard-fqdn "g-apple"
            next
            edit 7
                set type wildcard-fqdn
                set wildcard-fqdn "g-appstore"
            next
            edit 8
                set type wildcard-fqdn
                set wildcard-fqdn "g-auth.gfx.ms"
            next
            edit 9
                set type wildcard-fqdn
                set wildcard-fqdn "g-citrix"
            next
            edit 10
                set type wildcard-fqdn
                set wildcard-fqdn "g-dropbox.com"
            next
            edit 11
                set type wildcard-fqdn
                set wildcard-fqdn "g-eease"
            next
            edit 12
                set type wildcard-fqdn
                set wildcard-fqdn "g-firefox update server"
            next
            edit 13
                set type wildcard-fqdn
                set wildcard-fqdn "g-fortinet"
            next
            edit 14
                set type wildcard-fqdn
                set wildcard-fqdn "g-googleapis.com"
            next
            edit 15
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-drive"
            next
            edit 16
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play2"
            next
            edit 17
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play3"
            next
            edit 18
                set type wildcard-fqdn
                set wildcard-fqdn "g-Gotomeeting"
            next
            edit 19
                set type wildcard-fqdn
                set wildcard-fqdn "g-icloud"
            next
            edit 20
                set type wildcard-fqdn
                set wildcard-fqdn "g-itunes"
            next
            edit 21
                set type wildcard-fqdn
                set wildcard-fqdn "g-microsoft"
            next
            edit 22
                set type wildcard-fqdn
                set wildcard-fqdn "g-skype"
            next
            edit 23
                set type wildcard-fqdn
                set wildcard-fqdn "g-softwareupdate.vmware.com"
            next
            edit 24
                set type wildcard-fqdn
                set wildcard-fqdn "g-verisign"
            next
            edit 25
                set type wildcard-fqdn
                set wildcard-fqdn "g-Windows update 2"
            next
            edit 26
                set type wildcard-fqdn
                set wildcard-fqdn "g-live.com"
            next
            edit 27
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play"
            next
            edit 28
                set type wildcard-fqdn
                set wildcard-fqdn "g-update.microsoft.com"
            next
            edit 29
                set type wildcard-fqdn
                set wildcard-fqdn "g-swscan.apple.com"
            next
            edit 30
                set type wildcard-fqdn
                set wildcard-fqdn "g-autoupdate.opera.com"
            next
            edit 31
                set type wildcard-fqdn
                set wildcard-fqdn "g-cdn-apple"
            next
            edit 32
                set type wildcard-fqdn
                set wildcard-fqdn "g-mzstatic-apple"
            next
        end
    next
    edit "no-inspection"
        set comment "Read-only profile that does no inspection."
        config https
            set status disable
        end
        config ftps
            set status disable
        end
        config imaps
            set status disable
        end
        config pop3s
            set status disable
        end
        config smtps
            set status disable
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
    next
    edit "certificate-inspection"
        set comment "Read-only SSL handshake inspection profile."
        config https
            set ports 443
            set status certificate-inspection
        end
        config ftps
            set status disable
        end
        config imaps
            set status disable
        end
        config pop3s
            set status disable
        end
        config smtps
            set status disable
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
    next
end
config waf profile
    edit "default"
        config signature
            config main-class 100000000
                set action block
                set severity high
            end
            config main-class 20000000
            end
            config main-class 30000000
                set status enable
                set action block
                set severity high
            end
            config main-class 40000000
            end
            config main-class 50000000
                set status enable
                set action block
                set severity high
            end
            config main-class 60000000
            end
            config main-class 70000000
                set status enable
                set action block
                set severity high
            end
            config main-class 80000000
                set status enable
                set severity low
            end
            config main-class 110000000
                set status enable
                set severity high
            end
            config main-class 90000000
                set status enable
                set action block
                set severity high
            end
            set disabled-signature 80080005 80200001 60030001 60120001 80080003 90410001 90410002
        end
        config constraint
            config header-length
                set status enable
                set log enable
                set severity low
            end
            config content-length
                set status enable
                set log enable
                set severity low
            end
            config param-length
                set status enable
                set log enable
                set severity low
            end
            config line-length
                set status enable
                set log enable
                set severity low
            end
            config url-param-length
                set status enable
                set log enable
                set severity low
            end
            config version
                set log enable
            end
            config method
                set action block
                set log enable
            end
            config hostname
                set action block
                set log enable
            end
            config malformed
                set log enable
            end
            config max-cookie
                set status enable
                set log enable
                set severity low
            end
            config max-header-line
                set status enable
                set log enable
                set severity low
            end
            config max-url-param
                set status enable
                set log enable
                set severity low
            end
            config max-range-segment
                set status enable
                set log enable
                set severity high
            end
        end
    next
end
config switch-controller security-policy 802-1X
    edit "802-1X-policy-default"
        set user-group "SSO_Guest_Users"
        set mac-auth-bypass disable
        set open-auth disable
        set eap-passthru enable
        set eap-auto-untagged-vlans enable
        set guest-vlan disable
        set auth-fail-vlan disable
        set framevid-apply enable
        set radius-timeout-overwrite disable
        set authserver-timeout-vlan disable
    next
end
config switch-controller security-policy local-access
    edit "default"
        set mgmt-allowaccess https ping ssh
        set internal-allowaccess https ping ssh
    next
end
config switch-controller lldp-profile
    edit "default"
        set med-tlvs inventory-management network-policy location-identification
        set auto-isl disable
        config med-network-policy
            edit "voice"
            next
            edit "voice-signaling"
            next
            edit "guest-voice"
            next
            edit "guest-voice-signaling"
            next
            edit "softphone-voice"
            next
            edit "video-conferencing"
            next
            edit "streaming-video"
            next
            edit "video-signaling"
            next
        end
        config med-location-service
            edit "coordinates"
            next
            edit "address-civic"
            next
            edit "elin-number"
            next
        end
    next
    edit "default-auto-isl"
    next
    edit "default-auto-mclag-icl"
        set auto-mclag-icl enable
    next
end
config switch-controller qos dot1p-map
    edit "voice-dot1p"
        set priority-0 queue-4
        set priority-1 queue-4
        set priority-2 queue-3
        set priority-3 queue-2
        set priority-4 queue-3
        set priority-5 queue-1
        set priority-6 queue-2
        set priority-7 queue-2
    next
end
config switch-controller qos ip-dscp-map
    edit "voice-dscp"
        config map
            edit "1"
                set cos-queue 1
                set value 46
            next
            edit "2"
                set cos-queue 2
                set value 24,26,48,56
            next
            edit "5"
                set cos-queue 3
                set value 34
            next
        end
    next
end
config switch-controller qos queue-policy
    edit "default"
        set schedule round-robin
        set rate-by kbps
        config cos-queue
            edit "queue-0"
            next
            edit "queue-1"
            next
            edit "queue-2"
            next
            edit "queue-3"
            next
            edit "queue-4"
            next
            edit "queue-5"
            next
            edit "queue-6"
            next
            edit "queue-7"
            next
        end
    next
    edit "voice-egress"
        set schedule weighted
        set rate-by kbps
        config cos-queue
            edit "queue-0"
            next
            edit "queue-1"
                set weight 0
            next
            edit "queue-2"
                set weight 6
            next
            edit "queue-3"
                set weight 37
            next
            edit "queue-4"
                set weight 12
            next
            edit "queue-5"
            next
            edit "queue-6"
            next
            edit "queue-7"
            next
        end
    next
end
config switch-controller qos qos-policy
    edit "default"
    next
    edit "voice-qos"
        set trust-dot1p-map "voice-dot1p"
        set trust-ip-dscp-map "voice-dscp"
        set queue-policy "voice-egress"
    next
end
config switch-controller storm-control-policy
    edit "default"
        set description "default storm control on all port"
    next
    edit "auto-config"
        set description "storm control policy for fortilink-isl-icl port"
        set storm-control-mode disabled
    next
end
config switch-controller auto-config policy
    edit "default"
    next
    edit "default-icl"
        set poe-status disable
        set igmp-flood-report enable
        set igmp-flood-traffic enable
    next
end
config switch-controller initial-config template
    edit "_default"
        set vlanid 1
    next
    edit "quarantine"
        set vlanid 4093
        set dhcp-server enable
    next
    edit "rspan"
        set vlanid 4092
        set dhcp-server enable
    next
    edit "voice"
        set vlanid 4091
    next
    edit "video"
        set vlanid 4090
    next
    edit "onboarding"
        set vlanid 4089
    next
    edit "nac_segment"
        set vlanid 4088
        set dhcp-server enable
    next
end
config switch-controller switch-profile
    edit "default"
    next
end
config switch-controller ptp settings
    set mode disable
end
config switch-controller ptp policy
    edit "default"
        set status enable
    next
end
config switch-controller remote-log
    edit "syslogd"
    next
    edit "syslogd2"
    next
end
config wireless-controller setting
    set darrp-optimize-schedules "default-darrp-optimize"
end
config wireless-controller arrp-profile
    edit "arrp-default"
    next
end
config wireless-controller wids-profile
    edit "default"
        set comment "Default WIDS profile."
        set ap-scan enable
        set wireless-bridge enable
        set deauth-broadcast enable
        set null-ssid-probe-resp enable
        set long-duration-attack enable
        set invalid-mac-oui enable
        set weak-wep-iv enable
        set auth-frame-flood enable
        set assoc-frame-flood enable
        set spoofed-deauth enable
        set asleap-attack enable
        set eapol-start-flood enable
        set eapol-logoff-flood enable
        set eapol-succ-flood enable
        set eapol-fail-flood enable
        set eapol-pre-succ-flood enable
        set eapol-pre-fail-flood enable
    next
    edit "default-wids-apscan-enabled"
        set ap-scan enable
    next
end
config wireless-controller ble-profile
    edit "fortiap-discovery"
        set advertising ibeacon eddystone-uid eddystone-url
        set ibeacon-uuid "wtp-uuid"
    next
end
config router rip
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "ospf"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router ripng
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "ospf"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router ospf
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "rip"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router ospf6
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "rip"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router bgp
    config redistribute "connected"
    end
    config redistribute "rip"
    end
    config redistribute "ospf"
    end
    config redistribute "static"
    end
    config redistribute "isis"
    end
    config redistribute6 "connected"
    end
    config redistribute6 "rip"
    end
    config redistribute6 "ospf"
    end
    config redistribute6 "static"
    end
    config redistribute6 "isis"
    end
end
config router isis
    config redistribute "connected"
    end
    config redistribute "rip"
    end
    config redistribute "ospf"
    end
    config redistribute "bgp"
    end
    config redistribute "static"
    end
    config redistribute6 "connected"
    end
    config redistribute6 "rip"
    end
    config redistribute6 "ospf"
    end
    config redistribute6 "bgp"
    end
    config redistribute6 "static"
    end
end
config router multicast
end
end

config vdom
edit HQ_VDOM
config system object-tagging
    edit "default"
    next
end
config switch-controller traffic-policy
    edit "quarantine"
        set description "Rate control for quarantined traffic"
        set guaranteed-bandwidth 163840
        set guaranteed-burst 8192
        set maximum-burst 163840
        set cos-queue 0
        set id 1
    next
    edit "sniffer"
        set description "Rate control for sniffer mirrored traffic"
        set guaranteed-bandwidth 50000
        set guaranteed-burst 8192
        set maximum-burst 163840
        set cos-queue 0
        set id 2
    next
end
config system settings
end
config system replacemsg-group
    edit "default"
        set comment "Default replacement message group."
    next
end
config firewall address
    edit "none"
        set uuid 2e4de7f8-c84a-51ee-1105-15e4bfb7f5d4
        set subnet 0.0.0.0 255.255.255.255
    next
    edit "login.microsoftonline.com"
        set uuid 2e4e1c50-c84a-51ee-a805-22b1715d246a
        set type fqdn
        set fqdn "login.microsoftonline.com"
    next
    edit "login.microsoft.com"
        set uuid 2e4e4d56-c84a-51ee-b898-e58d81f2da2a
        set type fqdn
        set fqdn "login.microsoft.com"
    next
    edit "login.windows.net"
        set uuid 2e4e7d8a-c84a-51ee-be5d-a9f420f352da
        set type fqdn
        set fqdn "login.windows.net"
    next
    edit "gmail.com"
        set uuid 2e4ead00-c84a-51ee-cac7-7fa862288140
        set type fqdn
        set fqdn "gmail.com"
    next
    edit "wildcard.google.com"
        set uuid 2e4eddc0-c84a-51ee-4939-6466e1dbdebb
        set type fqdn
        set fqdn "*.google.com"
    next
    edit "wildcard.dropbox.com"
        set uuid 2e4f0d4a-c84a-51ee-f72f-e819558b4377
        set type fqdn
        set fqdn "*.dropbox.com"
    next
    edit "SSLVPN_TUNNEL_ADDR1"
        set uuid 2e65f8b6-c84a-51ee-67e4-47efde997511
        set type iprange
        set start-ip 10.212.134.200
        set end-ip 10.212.134.210
    next
    edit "all"
        set uuid 2e6786a4-c84a-51ee-753a-b591fc30a0ab
    next
    edit "FIREWALL_AUTH_PORTAL_ADDRESS"
        set uuid 2e679162-c84a-51ee-5817-52fd2ddeb254
    next
    edit "FABRIC_DEVICE"
        set uuid 2e679a72-c84a-51ee-de62-3a8732e02a44
        set comment "IPv4 addresses of Fabric Devices."
    next
    edit "CORP-WIFI_VLAN address"
        set uuid b7137b7a-c84a-51ee-84a0-e31968cfed56
        set type interface-subnet
        set subnet 10.100.20.1 255.255.255.0
        set interface "CORP-WIFI_VLAN"
    next
    edit "Servers_VLAN address"
        set uuid ef596c9c-c84a-51ee-a28b-d8911fbb79dd
        set type interface-subnet
        set subnet 10.100.10.1 255.255.255.0
        set interface "Servers_VLAN"
    next
    edit "VoIP_VLAN address"
        set uuid 0d40f89c-c84b-51ee-3754-08bcc7ec42cd
        set type interface-subnet
        set subnet 10.100.40.1 255.255.255.0
        set interface "VoIP_VLAN"
    next
    edit "FCTEMS_ALL_FORTICLOUD_SERVERS"
        set uuid 1467e838-c84b-51ee-4000-5bcb53877915
        set type dynamic
        set sub-type ems-tag
        set dirty clean
    next
    edit "Accounting_VLAN address"
        set uuid 1a943630-c84b-51ee-cded-16336344be02
        set type interface-subnet
        set subnet 10.100.60.1 255.255.255.0
        set interface "Accounting_VLAN"
    next
    edit "Engineer_VLAN address"
        set uuid 2df3761e-c84b-51ee-dd9c-0bdf7a8f5891
        set type interface-subnet
        set subnet 10.100.70.1 255.255.255.0
        set interface "Engineer_VLAN"
    next
    edit "IT_VLAN address"
        set uuid 3fc1d020-c84b-51ee-cb1f-20c9e66bfc19
        set type interface-subnet
        set subnet 10.100.80.1 255.255.255.0
        set interface "IT_VLAN"
    next
    edit "Logistics_VLAN address"
        set uuid 4c729fc0-c84b-51ee-1f64-3395996bd659
        set type interface-subnet
        set subnet 10.100.90.1 255.255.255.0
        set interface "Logistics_VLAN"
    next
    edit "MGMTeam_VLAN address"
        set uuid 6609843a-c84b-51ee-a6da-111632f10d41
        set type interface-subnet
        set subnet 10.100.100.1 255.255.255.0
        set interface "MGMTeam_VLAN"
    next
    edit "MANUSecure_VLAN address"
        set uuid 72480fdc-c84b-51ee-f28d-508da9dcfe37
        set type interface-subnet
        set subnet 10.100.110.1 255.255.255.0
        set interface "MANUSecure_VLAN"
    next
    edit "Operations_VLAN address"
        set uuid 7b5358ca-c84b-51ee-a53d-f77c78ba8b60
        set type interface-subnet
        set subnet 10.100.120.1 255.255.255.0
        set interface "Operations_VLAN"
    next
    edit "QA_VLAN address"
        set uuid 8724461e-c84b-51ee-3d87-2f71128c7218
        set type interface-subnet
        set subnet 10.100.130.1 255.255.255.0
        set interface "QA_VLAN"
    next
    edit "Sales_VLAN address"
        set uuid 969a4ef4-c84b-51ee-2b12-d9ad620c5f33
        set type interface-subnet
        set subnet 10.100.140.1 255.255.255.0
        set interface "Sales_VLAN"
    next
    edit "Students_VLAN address"
        set uuid a2a548e8-c84b-51ee-437f-d87f47667b70
        set type interface-subnet
        set subnet 10.100.150.1 255.255.255.0
        set interface "Students_VLAN"
    next
    edit "ServerMan_VLAN address"
        set uuid e37413b4-cac0-51ee-6030-90c9c226e021
        set type interface-subnet
        set subnet 10.100.15.1 255.255.255.0
        set interface "ServerMan_VLAN"
    next
    edit "Management1 address"
        set uuid 64fbef3c-cb80-51ee-5cdb-7241e4e2651f
        set type interface-subnet
        set subnet 10.1.1.1 255.255.255.255
        set interface "Management1"
    next
    edit "AdminUsers"
        set uuid 789868ea-cb80-51ee-2adb-d882f642b220
        set comment "This is basically a backdoor. Should be used ONLY for VPN access to firewall."
        set associated-interface "IT_VLAN"
        set subnet 10.100.80.16 255.255.255.248
    next
    edit "Cluster_VLAN12 address"
        set uuid abd0cede-ccdc-51ee-8312-df9c3959f16c
        set type interface-subnet
        set subnet 10.100.12.1 255.255.255.0
        set interface "Cluster_VLAN12"
    next
end
config firewall multicast-address
    edit "all_hosts"
        set start-ip 224.0.0.1
        set end-ip 224.0.0.1
    next
    edit "all_routers"
        set start-ip 224.0.0.2
        set end-ip 224.0.0.2
    next
    edit "Bonjour"
        set start-ip 224.0.0.251
        set end-ip 224.0.0.251
    next
    edit "EIGRP"
        set start-ip 224.0.0.10
        set end-ip 224.0.0.10
    next
    edit "OSPF"
        set start-ip 224.0.0.5
        set end-ip 224.0.0.6
    next
    edit "all"
        set start-ip 224.0.0.0
        set end-ip 239.255.255.255
    next
end
config firewall address6
    edit "all"
        set uuid 2e5038b4-c84a-51ee-3185-de55881920a3
    next
    edit "none"
        set uuid 2e505b32-c84a-51ee-b6d6-2a8e4581b55e
        set ip6 ::/128
    next
    edit "SSLVPN_TUNNEL_IPv6_ADDR1"
        set uuid 2e660428-c84a-51ee-9099-b96d027bcf34
        set ip6 fdff:ffff::/120
    next
end
config firewall multicast-address6
    edit "all"
        set ip6 ff00::/8
    next
end
config firewall addrgrp
    edit "G Suite"
        set uuid 2e4f417a-c84a-51ee-0c34-5adfaef75e41
        set member "gmail.com" "wildcard.google.com"
    next
    edit "Microsoft Office 365"
        set uuid 2e4fabe2-c84a-51ee-f13c-152ae1558910
        set member "login.microsoftonline.com" "login.microsoft.com" "login.windows.net"
    next
end
config firewall service category
    edit "General"
        set comment "General services."
    next
    edit "Web Access"
        set comment "Web access."
    next
    edit "File Access"
        set comment "File access."
    next
    edit "Email"
        set comment "Email services."
    next
    edit "Network Services"
        set comment "Network services."
    next
    edit "Authentication"
        set comment "Authentication service."
    next
    edit "Remote Access"
        set comment "Remote access."
    next
    edit "Tunneling"
        set comment "Tunneling service."
    next
    edit "VoIP, Messaging & Other Applications"
        set comment "VoIP, messaging, and other applications."
    next
    edit "Web Proxy"
        set comment "Explicit web proxy."
    next
end
config firewall service custom
    edit "DNS"
        set category "Network Services"
        set tcp-portrange 53
        set udp-portrange 53
    next
    edit "HTTP"
        set category "Web Access"
        set tcp-portrange 80
    next
    edit "HTTPS"
        set category "Web Access"
        set tcp-portrange 443
    next
    edit "IMAP"
        set category "Email"
        set tcp-portrange 143
    next
    edit "IMAPS"
        set category "Email"
        set tcp-portrange 993
    next
    edit "LDAP"
        set category "Authentication"
        set tcp-portrange 389
    next
    edit "DCE-RPC"
        set category "Remote Access"
        set tcp-portrange 135
        set udp-portrange 135
    next
    edit "POP3"
        set category "Email"
        set tcp-portrange 110
    next
    edit "POP3S"
        set category "Email"
        set tcp-portrange 995
    next
    edit "SAMBA"
        set category "File Access"
        set tcp-portrange 139
    next
    edit "SMTP"
        set category "Email"
        set tcp-portrange 25
    next
    edit "SMTPS"
        set category "Email"
        set tcp-portrange 465
    next
    edit "KERBEROS"
        set category "Authentication"
        set tcp-portrange 88 464
        set udp-portrange 88 464
    next
    edit "LDAP_UDP"
        set category "Authentication"
        set udp-portrange 389
    next
    edit "SMB"
        set category "File Access"
        set tcp-portrange 445
    next
    edit "FTP"
        set category "File Access"
        set tcp-portrange 21
    next
    edit "FTP_GET"
        set category "File Access"
        set tcp-portrange 21
    next
    edit "FTP_PUT"
        set category "File Access"
        set tcp-portrange 21
    next
    edit "ALL"
        set category "General"
        set protocol IP
    next
    edit "ALL_TCP"
        set category "General"
        set tcp-portrange 1-65535
    next
    edit "ALL_UDP"
        set category "General"
        set udp-portrange 1-65535
    next
    edit "ALL_ICMP"
        set category "General"
        set protocol ICMP
        unset icmptype
    next
    edit "ALL_ICMP6"
        set category "General"
        set protocol ICMP6
        unset icmptype
    next
    edit "GRE"
        set category "Tunneling"
        set protocol IP
        set protocol-number 47
    next
    edit "AH"
        set category "Tunneling"
        set protocol IP
        set protocol-number 51
    next
    edit "ESP"
        set category "Tunneling"
        set protocol IP
        set protocol-number 50
    next
    edit "AOL"
        set visibility disable
        set tcp-portrange 5190-5194
    next
    edit "BGP"
        set category "Network Services"
        set tcp-portrange 179
    next
    edit "DHCP"
        set category "Network Services"
        set udp-portrange 67-68
    next
    edit "FINGER"
        set visibility disable
        set tcp-portrange 79
    next
    edit "GOPHER"
        set visibility disable
        set tcp-portrange 70
    next
    edit "H323"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 1720 1503
        set udp-portrange 1719
    next
    edit "IKE"
        set category "Tunneling"
        set udp-portrange 500 4500
    next
    edit "Internet-Locator-Service"
        set visibility disable
        set tcp-portrange 389
    next
    edit "IRC"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 6660-6669
    next
    edit "L2TP"
        set category "Tunneling"
        set tcp-portrange 1701
        set udp-portrange 1701
    next
    edit "NetMeeting"
        set visibility disable
        set tcp-portrange 1720
    next
    edit "NFS"
        set category "File Access"
        set tcp-portrange 111 2049
        set udp-portrange 111 2049
    next
    edit "NNTP"
        set visibility disable
        set tcp-portrange 119
    next
    edit "NTP"
        set category "Network Services"
        set tcp-portrange 123
        set udp-portrange 123
    next
    edit "OSPF"
        set category "Network Services"
        set protocol IP
        set protocol-number 89
    next
    edit "PC-Anywhere"
        set category "Remote Access"
        set tcp-portrange 5631
        set udp-portrange 5632
    next
    edit "PING"
        set category "Network Services"
        set protocol ICMP
        set icmptype 8
        unset icmpcode
    next
    edit "TIMESTAMP"
        set protocol ICMP
        set visibility disable
        set icmptype 13
        unset icmpcode
    next
    edit "INFO_REQUEST"
        set protocol ICMP
        set visibility disable
        set icmptype 15
        unset icmpcode
    next
    edit "INFO_ADDRESS"
        set protocol ICMP
        set visibility disable
        set icmptype 17
        unset icmpcode
    next
    edit "ONC-RPC"
        set category "Remote Access"
        set tcp-portrange 111
        set udp-portrange 111
    next
    edit "PPTP"
        set category "Tunneling"
        set tcp-portrange 1723
    next
    edit "QUAKE"
        set visibility disable
        set udp-portrange 26000 27000 27910 27960
    next
    edit "RAUDIO"
        set visibility disable
        set udp-portrange 7070
    next
    edit "REXEC"
        set visibility disable
        set tcp-portrange 512
    next
    edit "RIP"
        set category "Network Services"
        set udp-portrange 520
    next
    edit "RLOGIN"
        set visibility disable
        set tcp-portrange 513:512-1023
    next
    edit "RSH"
        set visibility disable
        set tcp-portrange 514:512-1023
    next
    edit "SCCP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 2000
    next
    edit "SIP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 5060
        set udp-portrange 5060
    next
    edit "SIP-MSNmessenger"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 1863
    next
    edit "SNMP"
        set category "Network Services"
        set tcp-portrange 161-162
        set udp-portrange 161-162
    next
    edit "SSH"
        set category "Remote Access"
        set tcp-portrange 22
    next
    edit "SYSLOG"
        set category "Network Services"
        set udp-portrange 514
    next
    edit "TALK"
        set visibility disable
        set udp-portrange 517-518
    next
    edit "TELNET"
        set category "Remote Access"
        set tcp-portrange 23
    next
    edit "TFTP"
        set category "File Access"
        set udp-portrange 69
    next
    edit "MGCP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 2428
        set udp-portrange 2427 2727
    next
    edit "UUCP"
        set visibility disable
        set tcp-portrange 540
    next
    edit "VDOLIVE"
        set visibility disable
        set tcp-portrange 7000-7010
    next
    edit "WAIS"
        set visibility disable
        set tcp-portrange 210
    next
    edit "WINFRAME"
        set visibility disable
        set tcp-portrange 1494 2598
    next
    edit "X-WINDOWS"
        set category "Remote Access"
        set tcp-portrange 6000-6063
    next
    edit "PING6"
        set protocol ICMP6
        set visibility disable
        set icmptype 128
        unset icmpcode
    next
    edit "MS-SQL"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 1433 1434
    next
    edit "MYSQL"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 3306
    next
    edit "RDP"
        set category "Remote Access"
        set tcp-portrange 3389
    next
    edit "VNC"
        set category "Remote Access"
        set tcp-portrange 5900
    next
    edit "DHCP6"
        set category "Network Services"
        set udp-portrange 546 547
    next
    edit "SQUID"
        set category "Tunneling"
        set tcp-portrange 3128
    next
    edit "SOCKS"
        set category "Tunneling"
        set tcp-portrange 1080
        set udp-portrange 1080
    next
    edit "WINS"
        set category "Remote Access"
        set tcp-portrange 1512
        set udp-portrange 1512
    next
    edit "RADIUS"
        set category "Authentication"
        set udp-portrange 1812 1813
    next
    edit "RADIUS-OLD"
        set visibility disable
        set udp-portrange 1645 1646
    next
    edit "CVSPSERVER"
        set visibility disable
        set tcp-portrange 2401
        set udp-portrange 2401
    next
    edit "AFS3"
        set category "File Access"
        set tcp-portrange 7000-7009
        set udp-portrange 7000-7009
    next
    edit "TRACEROUTE"
        set category "Network Services"
        set udp-portrange 33434-33535
    next
    edit "RTSP"
        set category "VoIP, Messaging & Other Applications"
        set tcp-portrange 554 7070 8554
        set udp-portrange 554
    next
    edit "MMS"
        set visibility disable
        set tcp-portrange 1755
        set udp-portrange 1024-5000
    next
    edit "NONE"
        set visibility disable
        set tcp-portrange 0
    next
    edit "webproxy"
        set proxy enable
        set category "Web Proxy"
        set protocol ALL
        set tcp-portrange 0-65535:0-65535
    next
end
config firewall service group
    edit "Email Access"
        set member "DNS" "IMAP" "IMAPS" "POP3" "POP3S" "SMTP" "SMTPS"
    next
    edit "Web Access"
        set member "DNS" "HTTP" "HTTPS"
    next
    edit "Windows AD"
        set member "DCE-RPC" "DNS" "KERBEROS" "LDAP" "LDAP_UDP" "SAMBA" "SMB"
    next
    edit "Exchange Server"
        set member "DCE-RPC" "DNS" "HTTPS"
    next
end
config vpn certificate ca
end
config vpn certificate local
    edit "Fortinet_CA_SSL"
        set comments "This is the default CA certificate the SSL Inspection will use when generating new server certificates."
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_CA_Untrusted"
        set comments "This is the default CA certificate the SSL Inspection will use when generating new server certificates."
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_RSA1024"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_RSA2048"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_RSA4096"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_DSA1024"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_DSA2048"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_ECDSA256"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_ECDSA384"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_ECDSA521"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_ED25519"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
    edit "Fortinet_SSL_ED448"
        set comments "This certificate is embedded in the hardware at the factory and is unique to this unit. "
        set range global
        set source factory
        set last-updated 1707593142
    next
end
config webfilter ftgd-local-cat
    edit "custom1"
        set id 140
    next
    edit "custom2"
        set id 141
    next
end
config firewall shaper traffic-shaper
    edit "high-priority"
        set maximum-bandwidth 1048576
        set per-policy enable
    next
    edit "medium-priority"
        set maximum-bandwidth 1048576
        set priority medium
        set per-policy enable
    next
    edit "low-priority"
        set maximum-bandwidth 1048576
        set priority low
        set per-policy enable
    next
    edit "guarantee-100kbps"
        set guaranteed-bandwidth 100
        set maximum-bandwidth 1048576
        set per-policy enable
    next
    edit "shared-1M-pipe"
        set maximum-bandwidth 1024
    next
end
config web-proxy global
    set proxy-fqdn "default.fqdn"
end
config dlp filepattern
    edit 1
        set name "builtin-patterns"
        config entries
            edit "*.bat"
            next
            edit "*.com"
            next
            edit "*.dll"
            next
            edit "*.doc"
            next
            edit "*.exe"
            next
            edit "*.gz"
            next
            edit "*.hta"
            next
            edit "*.ppt"
            next
            edit "*.rar"
            next
            edit "*.scr"
            next
            edit "*.tar"
            next
            edit "*.tgz"
            next
            edit "*.vb?"
            next
            edit "*.wps"
            next
            edit "*.xl?"
            next
            edit "*.zip"
            next
            edit "*.pif"
            next
            edit "*.cpl"
            next
        end
    next
    edit 2
        set name "all_executables"
        config entries
            edit "bat"
                set filter-type type
                set file-type bat
            next
            edit "exe"
                set filter-type type
                set file-type exe
            next
            edit "elf"
                set filter-type type
                set file-type elf
            next
            edit "hta"
                set filter-type type
                set file-type hta
            next
        end
    next
end
config dlp sensitivity
    edit "Private"
    next
    edit "Critical"
    next
    edit "Warning"
    next
end
config webfilter ips-urlfilter-setting
end
config webfilter ips-urlfilter-setting6
end
config log threat-weight
    config web
        edit 1
            set category 26
            set level high
        next
        edit 2
            set category 61
            set level high
        next
        edit 3
            set category 86
            set level high
        next
        edit 4
            set category 1
            set level medium
        next
        edit 5
            set category 3
            set level medium
        next
        edit 6
            set category 4
            set level medium
        next
        edit 7
            set category 5
            set level medium
        next
        edit 8
            set category 6
            set level medium
        next
        edit 9
            set category 12
            set level medium
        next
        edit 10
            set category 59
            set level medium
        next
        edit 11
            set category 62
            set level medium
        next
        edit 12
            set category 83
            set level medium
        next
        edit 13
            set category 72
        next
        edit 14
            set category 14
        next
        edit 15
            set category 96
            set level medium
        next
    end
    config application
        edit 1
            set category 2
        next
        edit 2
            set category 6
            set level medium
        next
    end
end
config icap profile
    edit "default"
        config icap-headers
            edit 1
                set name "X-Authenticated-User"
                set content "$user"
            next
            edit 2
                set name "X-Authenticated-Groups"
                set content "$local_grp"
            next
        end
    next
end
config user setting
    set auth-cert "Fortinet_Factory"
end
config user group
    edit "SSO_Guest_Users"
    next
end
config vpn ssl web host-check-software
    edit "FortiClient-AV"
        set guid "1A0271D5-3D4F-46DB-0C2C-AB37BA90D9F7"
    next
    edit "FortiClient-FW"
        set type fw
        set guid "528CB157-D384-4593-AAAA-E42DFF111CED"
    next
    edit "FortiClient-AV-Vista"
        set guid "385618A6-2256-708E-3FB9-7E98B93F91F9"
    next
    edit "FortiClient-FW-Vista"
        set type fw
        set guid "006D9983-6839-71D6-14E6-D7AD47ECD682"
    next
    edit "FortiClient5-AV"
        set guid "5EEDDB8C-C27A-6714-3657-DBD811D1F1B7"
    next
    edit "AVG-Internet-Security-AV"
        set guid "17DDD097-36FF-435F-9E1B-52D74245D6BF"
    next
    edit "AVG-Internet-Security-FW"
        set type fw
        set guid "8DECF618-9569-4340-B34A-D78D28969B66"
    next
    edit "AVG-Internet-Security-AV-Vista-Win7"
        set guid "0C939084-9E57-CBDB-EA61-0B0C7F62AF82"
    next
    edit "AVG-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "34A811A1-D438-CA83-C13E-A23981B1E8F9"
    next
    edit "CA-Anti-Virus"
        set guid "17CFD1EA-56CF-40B5-A06B-BD3A27397C93"
    next
    edit "CA-Internet-Security-AV"
        set guid "6B98D35F-BB76-41C0-876B-A50645ED099A"
    next
    edit "CA-Internet-Security-FW"
        set type fw
        set guid "38102F93-1B6E-4922-90E1-A35D8DC6DAA3"
    next
    edit "CA-Internet-Security-AV-Vista-Win7"
        set guid "3EED0195-0A4B-4EF3-CC4F-4F401BDC245F"
    next
    edit "CA-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "06D680B0-4024-4FAB-E710-E675E50F6324"
    next
    edit "CA-Personal-Firewall"
        set type fw
        set guid "14CB4B80-8E52-45EA-905E-67C1267B4160"
    next
    edit "F-Secure-Internet-Security-AV"
        set guid "E7512ED5-4245-4B4D-AF3A-382D3F313F15"
    next
    edit "F-Secure-Internet-Security-FW"
        set type fw
        set guid "D4747503-0346-49EB-9262-997542F79BF4"
    next
    edit "F-Secure-Internet-Security-AV-Vista-Win7"
        set guid "15414183-282E-D62C-CA37-EF24860A2F17"
    next
    edit "F-Secure-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "2D7AC0A6-6241-D774-E168-461178D9686C"
    next
    edit "Kaspersky-AV"
        set guid "2C4D4BC6-0793-4956-A9F9-E252435469C0"
    next
    edit "Kaspersky-FW"
        set type fw
        set guid "2C4D4BC6-0793-4956-A9F9-E252435469C0"
    next
    edit "Kaspersky-AV-Vista-Win7"
        set guid "AE1D740B-8F0F-D137-211D-873D44B3F4AE"
    next
    edit "Kaspersky-FW-Vista-Win7"
        set type fw
        set guid "9626F52E-C560-D06F-0A42-2E08BA60B3D5"
    next
    edit "McAfee-Internet-Security-Suite-AV"
        set guid "84B5EE75-6421-4CDE-A33A-DD43BA9FAD83"
    next
    edit "McAfee-Internet-Security-Suite-FW"
        set type fw
        set guid "94894B63-8C7F-4050-BDA4-813CA00DA3E8"
    next
    edit "McAfee-Internet-Security-Suite-AV-Vista-Win7"
        set guid "86355677-4064-3EA7-ABB3-1B136EB04637"
    next
    edit "McAfee-Internet-Security-Suite-FW-Vista-Win7"
        set type fw
        set guid "BE0ED752-0A0B-3FFF-80EC-B2269063014C"
    next
    edit "McAfee-Virus-Scan-Enterprise"
        set guid "918A2B0B-2C60-4016-A4AB-E868DEABF7F0"
    next
    edit "Norton-360-2.0-AV"
        set guid "A5F1BC7C-EA33-4247-961C-0217208396C4"
    next
    edit "Norton-360-2.0-FW"
        set type fw
        set guid "371C0A40-5A0C-4AD2-A6E5-69C02037FBF3"
    next
    edit "Norton-360-3.0-AV"
        set guid "E10A9785-9598-4754-B552-92431C1C35F8"
    next
    edit "Norton-360-3.0-FW"
        set type fw
        set guid "7C21A4C9-F61F-4AC4-B722-A6E19C16F220"
    next
    edit "Norton-Internet-Security-AV"
        set guid "E10A9785-9598-4754-B552-92431C1C35F8"
    next
    edit "Norton-Internet-Security-FW"
        set type fw
        set guid "7C21A4C9-F61F-4AC4-B722-A6E19C16F220"
    next
    edit "Norton-Internet-Security-AV-Vista-Win7"
        set guid "88C95A36-8C3B-2F2C-1B8B-30FCCFDC4855"
    next
    edit "Norton-Internet-Security-FW-Vista-Win7"
        set type fw
        set guid "B0F2DB13-C654-2E74-30D4-99C9310F0F2E"
    next
    edit "Symantec-Endpoint-Protection-AV"
        set guid "FB06448E-52B8-493A-90F3-E43226D3305C"
    next
    edit "Symantec-Endpoint-Protection-FW"
        set type fw
        set guid "BE898FE3-CD0B-4014-85A9-03DB9923DDB6"
    next
    edit "Symantec-Endpoint-Protection-AV-Vista-Win7"
        set guid "88C95A36-8C3B-2F2C-1B8B-30FCCFDC4855"
    next
    edit "Symantec-Endpoint-Protection-FW-Vista-Win7"
        set type fw
        set guid "B0F2DB13-C654-2E74-30D4-99C9310F0F2E"
    next
    edit "Panda-Antivirus+Firewall-2008-AV"
        set guid "EEE2D94A-D4C1-421A-AB2C-2CE8FE51747A"
    next
    edit "Panda-Antivirus+Firewall-2008-FW"
        set type fw
        set guid "7B090DC0-8905-4BAF-8040-FD98A41C8FB8"
    next
    edit "Panda-Internet-Security-AV"
        set guid "4570FB70-5C9E-47E9-B16C-A3A6A06C4BF0"
    next
    edit "Panda-Internet-Security-2006~2007-FW"
        set type fw
        set guid "4570FB70-5C9E-47E9-B16C-A3A6A06C4BF0"
    next
    edit "Panda-Internet-Security-2008~2009-FW"
        set type fw
        set guid "7B090DC0-8905-4BAF-8040-FD98A41C8FB8"
    next
    edit "Sophos-Anti-Virus"
        set guid "3F13C776-3CBE-4DE9-8BF6-09E5183CA2BD"
    next
    edit "Sophos-Enpoint-Secuirty-and-Control-FW"
        set type fw
        set guid "0786E95E-326A-4524-9691-41EF88FB52EA"
    next
    edit "Sophos-Enpoint-Secuirty-and-Control-AV-Vista-Win7"
        set guid "479CCF92-4960-B3E0-7373-BF453B467D2C"
    next
    edit "Sophos-Enpoint-Secuirty-and-Control-FW-Vista-Win7"
        set type fw
        set guid "7FA74EB7-030F-B2B8-582C-1670C5953A57"
    next
    edit "Trend-Micro-AV"
        set guid "7D2296BC-32CC-4519-917E-52E652474AF5"
    next
    edit "Trend-Micro-FW"
        set type fw
        set guid "3E790E9E-6A5D-4303-A7F9-185EC20F3EB6"
    next
    edit "Trend-Micro-AV-Vista-Win7"
        set guid "48929DFC-7A52-A34F-8351-C4DBEDBD9C50"
    next
    edit "Trend-Micro-FW-Vista-Win7"
        set type fw
        set guid "70A91CD9-303D-A217-A80E-6DEE136EDB2B"
    next
    edit "ZoneAlarm-AV"
        set guid "5D467B10-818C-4CAB-9FF7-6893B5B8F3CF"
    next
    edit "ZoneAlarm-FW"
        set type fw
        set guid "829BDA32-94B3-44F4-8446-F8FCFF809F8B"
    next
    edit "ZoneAlarm-AV-Vista-Win7"
        set guid "D61596DF-D219-341C-49B3-AD30538CBC5B"
    next
    edit "ZoneAlarm-FW-Vista-Win7"
        set type fw
        set guid "EE2E17FA-9876-3544-62EC-0405AD5FFB20"
    next
    edit "ESET-Smart-Security-AV"
        set guid "19259FAE-8396-A113-46DB-15B0E7DFA289"
    next
    edit "ESET-Smart-Security-FW"
        set type fw
        set guid "211E1E8B-C9F9-A04B-6D84-BC85190CE5F2"
    next
end
config vpn ssl web portal
    edit "full-access"
        set tunnel-mode enable
        set ipv6-tunnel-mode enable
        set web-mode enable
        set ip-pools "SSLVPN_TUNNEL_ADDR1"
        set ipv6-pools "SSLVPN_TUNNEL_IPv6_ADDR1"
    next
    edit "web-access"
        set web-mode enable
    next
    edit "tunnel-access"
        set tunnel-mode enable
        set ipv6-tunnel-mode enable
        set ip-pools "SSLVPN_TUNNEL_ADDR1"
        set ipv6-pools "SSLVPN_TUNNEL_IPv6_ADDR1"
    next
end
config vpn ssl settings
    set servercert ''
    set port 443
end
config voip profile
    edit "default"
        set comment "Default VoIP profile."
    next
    edit "strict"
        config sip
            set malformed-request-line discard
            set malformed-header-via discard
            set malformed-header-from discard
            set malformed-header-to discard
            set malformed-header-call-id discard
            set malformed-header-cseq discard
            set malformed-header-rack discard
            set malformed-header-rseq discard
            set malformed-header-contact discard
            set malformed-header-record-route discard
            set malformed-header-route discard
            set malformed-header-expires discard
            set malformed-header-content-type discard
            set malformed-header-content-length discard
            set malformed-header-max-forwards discard
            set malformed-header-allow discard
            set malformed-header-p-asserted-identity discard
            set malformed-header-sdp-v discard
            set malformed-header-sdp-o discard
            set malformed-header-sdp-s discard
            set malformed-header-sdp-i discard
            set malformed-header-sdp-c discard
            set malformed-header-sdp-b discard
            set malformed-header-sdp-z discard
            set malformed-header-sdp-k discard
            set malformed-header-sdp-a discard
            set malformed-header-sdp-t discard
            set malformed-header-sdp-r discard
            set malformed-header-sdp-m discard
        end
    next
end
config system sdwan
    config zone
        edit "virtual-wan-link"
        next
    end
    config health-check
        edit "Default_DNS"
            set system-dns enable
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_Office_365"
            set server "www.office.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_Gmail"
            set server "gmail.com"
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 2
                next
            end
        next
        edit "Default_AWS"
            set server "aws.amazon.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_Google Search"
            set server "www.google.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
        edit "Default_FortiGuard"
            set server "fortiguard.com"
            set protocol http
            set interval 1000
            set probe-timeout 1000
            set recoverytime 10
            config sla
                edit 1
                    set latency-threshold 250
                    set jitter-threshold 50
                    set packetloss-threshold 5
                next
            end
        next
    end
end
config dnsfilter profile
    edit "default"
        set comment "Default dns filtering."
        config ftgd-dns
            config filters
                edit 1
                    set category 2
                next
                edit 2
                    set category 7
                next
                edit 3
                    set category 8
                next
                edit 4
                    set category 9
                next
                edit 5
                    set category 11
                next
                edit 6
                    set category 12
                next
                edit 7
                    set category 13
                next
                edit 8
                    set category 14
                next
                edit 9
                    set category 15
                next
                edit 10
                    set category 16
                next
                edit 11
                next
                edit 12
                    set category 57
                next
                edit 13
                    set category 63
                next
                edit 14
                    set category 64
                next
                edit 15
                    set category 65
                next
                edit 16
                    set category 66
                next
                edit 17
                    set category 67
                next
                edit 18
                    set category 26
                    set action block
                next
                edit 19
                    set category 61
                    set action block
                next
                edit 20
                    set category 86
                    set action block
                next
                edit 21
                    set category 88
                    set action block
                next
                edit 22
                    set category 90
                    set action block
                next
                edit 23
                    set category 91
                    set action block
                next
                edit 24
                    set category 96
                    set action block
                next
                edit 25
                    set category 98
                    set action block
                next
                edit 26
                    set category 99
                    set action block
                next
            end
        end
        set block-botnet enable
    next
end
config antivirus settings
    set machine-learning-detection enable
    set grayware enable
end
config emailfilter profile
    edit "default"
        set comment "Malware and phishing URL filtering."
        config imap
        end
        config pop3
        end
        config smtp
        end
    next
    edit "sniffer-profile"
        set comment "Malware and phishing URL monitoring."
        config imap
        end
        config pop3
        end
        config smtp
        end
    next
end
config log memory setting
    set status enable
end
config log null-device setting
    set status disable
end
config firewall schedule recurring
    edit "always"
        set day sunday monday tuesday wednesday thursday friday saturday
    next
    edit "none"
    next
    edit "default-darrp-optimize"
        set start 01:00
        set end 01:30
        set day sunday monday tuesday wednesday thursday friday saturday
    next
end
config firewall ssh setting
    set caname "g-Fortinet_SSH_CA"
    set untrusted-caname "g-Fortinet_SSH_CA_Untrusted"
    set hostkey-rsa2048 "g-Fortinet_SSH_RSA2048"
    set hostkey-dsa1024 "g-Fortinet_SSH_DSA1024"
    set hostkey-ecdsa256 "g-Fortinet_SSH_ECDSA256"
    set hostkey-ecdsa384 "g-Fortinet_SSH_ECDSA384"
    set hostkey-ecdsa521 "g-Fortinet_SSH_ECDSA521"
    set hostkey-ed25519 "g-Fortinet_SSH_ED25519"
end
config firewall profile-protocol-options
    edit "default"
        set comment "All default services."
        config http
            set ports 80
            unset options
            unset post-lang
        end
        config ftp
            set ports 21
            set options splice
        end
        config imap
            set ports 143
            set options fragmail
        end
        config mapi
            set ports 135
            set options fragmail
        end
        config pop3
            set ports 110
            set options fragmail
        end
        config smtp
            set ports 25
            set options fragmail splice
        end
        config nntp
            set ports 119
            set options splice
        end
        config ssh
            unset options
        end
        config dns
            set ports 53
        end
        config cifs
            set ports 445
            unset options
        end
    next
end
config firewall ssl-ssh-profile
    edit "certificate-inspection"
        set comment "Read-only SSL handshake inspection profile."
        config https
            set ports 443
            set status certificate-inspection
        end
        config ftps
            set status disable
        end
        config imaps
            set status disable
        end
        config pop3s
            set status disable
        end
        config smtps
            set status disable
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
    next
    edit "deep-inspection"
        set comment "Read-only deep inspection profile."
        config https
            set ports 443
            set status deep-inspection
        end
        config ftps
            set ports 990
            set status deep-inspection
        end
        config imaps
            set ports 993
            set status deep-inspection
        end
        config pop3s
            set ports 995
            set status deep-inspection
        end
        config smtps
            set ports 465
            set status deep-inspection
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
        config ssl-exempt
            edit 1
                set fortiguard-category 31
            next
            edit 2
                set fortiguard-category 33
            next
            edit 3
                set type wildcard-fqdn
                set wildcard-fqdn "g-adobe"
            next
            edit 4
                set type wildcard-fqdn
                set wildcard-fqdn "g-Adobe Login"
            next
            edit 5
                set type wildcard-fqdn
                set wildcard-fqdn "g-android"
            next
            edit 6
                set type wildcard-fqdn
                set wildcard-fqdn "g-apple"
            next
            edit 7
                set type wildcard-fqdn
                set wildcard-fqdn "g-appstore"
            next
            edit 8
                set type wildcard-fqdn
                set wildcard-fqdn "g-auth.gfx.ms"
            next
            edit 9
                set type wildcard-fqdn
                set wildcard-fqdn "g-citrix"
            next
            edit 10
                set type wildcard-fqdn
                set wildcard-fqdn "g-dropbox.com"
            next
            edit 11
                set type wildcard-fqdn
                set wildcard-fqdn "g-eease"
            next
            edit 12
                set type wildcard-fqdn
                set wildcard-fqdn "g-firefox update server"
            next
            edit 13
                set type wildcard-fqdn
                set wildcard-fqdn "g-fortinet"
            next
            edit 14
                set type wildcard-fqdn
                set wildcard-fqdn "g-googleapis.com"
            next
            edit 15
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-drive"
            next
            edit 16
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play2"
            next
            edit 17
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play3"
            next
            edit 18
                set type wildcard-fqdn
                set wildcard-fqdn "g-Gotomeeting"
            next
            edit 19
                set type wildcard-fqdn
                set wildcard-fqdn "g-icloud"
            next
            edit 20
                set type wildcard-fqdn
                set wildcard-fqdn "g-itunes"
            next
            edit 21
                set type wildcard-fqdn
                set wildcard-fqdn "g-microsoft"
            next
            edit 22
                set type wildcard-fqdn
                set wildcard-fqdn "g-skype"
            next
            edit 23
                set type wildcard-fqdn
                set wildcard-fqdn "g-softwareupdate.vmware.com"
            next
            edit 24
                set type wildcard-fqdn
                set wildcard-fqdn "g-verisign"
            next
            edit 25
                set type wildcard-fqdn
                set wildcard-fqdn "g-Windows update 2"
            next
            edit 26
                set type wildcard-fqdn
                set wildcard-fqdn "g-live.com"
            next
            edit 27
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play"
            next
            edit 28
                set type wildcard-fqdn
                set wildcard-fqdn "g-update.microsoft.com"
            next
            edit 29
                set type wildcard-fqdn
                set wildcard-fqdn "g-swscan.apple.com"
            next
            edit 30
                set type wildcard-fqdn
                set wildcard-fqdn "g-autoupdate.opera.com"
            next
            edit 31
                set type wildcard-fqdn
                set wildcard-fqdn "g-cdn-apple"
            next
            edit 32
                set type wildcard-fqdn
                set wildcard-fqdn "g-mzstatic-apple"
            next
        end
    next
    edit "custom-deep-inspection"
        set comment "Customizable deep inspection profile."
        config https
            set ports 443
            set status deep-inspection
        end
        config ftps
            set ports 990
            set status deep-inspection
        end
        config imaps
            set ports 993
            set status deep-inspection
        end
        config pop3s
            set ports 995
            set status deep-inspection
        end
        config smtps
            set ports 465
            set status deep-inspection
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
        config ssl-exempt
            edit 1
                set fortiguard-category 31
            next
            edit 2
                set fortiguard-category 33
            next
            edit 3
                set type wildcard-fqdn
                set wildcard-fqdn "g-adobe"
            next
            edit 4
                set type wildcard-fqdn
                set wildcard-fqdn "g-Adobe Login"
            next
            edit 5
                set type wildcard-fqdn
                set wildcard-fqdn "g-android"
            next
            edit 6
                set type wildcard-fqdn
                set wildcard-fqdn "g-apple"
            next
            edit 7
                set type wildcard-fqdn
                set wildcard-fqdn "g-appstore"
            next
            edit 8
                set type wildcard-fqdn
                set wildcard-fqdn "g-auth.gfx.ms"
            next
            edit 9
                set type wildcard-fqdn
                set wildcard-fqdn "g-citrix"
            next
            edit 10
                set type wildcard-fqdn
                set wildcard-fqdn "g-dropbox.com"
            next
            edit 11
                set type wildcard-fqdn
                set wildcard-fqdn "g-eease"
            next
            edit 12
                set type wildcard-fqdn
                set wildcard-fqdn "g-firefox update server"
            next
            edit 13
                set type wildcard-fqdn
                set wildcard-fqdn "g-fortinet"
            next
            edit 14
                set type wildcard-fqdn
                set wildcard-fqdn "g-googleapis.com"
            next
            edit 15
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-drive"
            next
            edit 16
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play2"
            next
            edit 17
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play3"
            next
            edit 18
                set type wildcard-fqdn
                set wildcard-fqdn "g-Gotomeeting"
            next
            edit 19
                set type wildcard-fqdn
                set wildcard-fqdn "g-icloud"
            next
            edit 20
                set type wildcard-fqdn
                set wildcard-fqdn "g-itunes"
            next
            edit 21
                set type wildcard-fqdn
                set wildcard-fqdn "g-microsoft"
            next
            edit 22
                set type wildcard-fqdn
                set wildcard-fqdn "g-skype"
            next
            edit 23
                set type wildcard-fqdn
                set wildcard-fqdn "g-softwareupdate.vmware.com"
            next
            edit 24
                set type wildcard-fqdn
                set wildcard-fqdn "g-verisign"
            next
            edit 25
                set type wildcard-fqdn
                set wildcard-fqdn "g-Windows update 2"
            next
            edit 26
                set type wildcard-fqdn
                set wildcard-fqdn "g-live.com"
            next
            edit 27
                set type wildcard-fqdn
                set wildcard-fqdn "g-google-play"
            next
            edit 28
                set type wildcard-fqdn
                set wildcard-fqdn "g-update.microsoft.com"
            next
            edit 29
                set type wildcard-fqdn
                set wildcard-fqdn "g-swscan.apple.com"
            next
            edit 30
                set type wildcard-fqdn
                set wildcard-fqdn "g-autoupdate.opera.com"
            next
            edit 31
                set type wildcard-fqdn
                set wildcard-fqdn "g-cdn-apple"
            next
            edit 32
                set type wildcard-fqdn
                set wildcard-fqdn "g-mzstatic-apple"
            next
        end
    next
    edit "no-inspection"
        set comment "Read-only profile that does no inspection."
        config https
            set status disable
        end
        config ftps
            set status disable
        end
        config imaps
            set status disable
        end
        config pop3s
            set status disable
        end
        config smtps
            set status disable
        end
        config ssh
            set ports 22
            set status disable
        end
        config dot
            set status disable
        end
    next
end
config waf profile
    edit "default"
        config signature
            config main-class 100000000
                set action block
                set severity high
            end
            config main-class 20000000
            end
            config main-class 30000000
                set status enable
                set action block
                set severity high
            end
            config main-class 40000000
            end
            config main-class 50000000
                set status enable
                set action block
                set severity high
            end
            config main-class 60000000
            end
            config main-class 70000000
                set status enable
                set action block
                set severity high
            end
            config main-class 80000000
                set status enable
                set severity low
            end
            config main-class 110000000
                set status enable
                set severity high
            end
            config main-class 90000000
                set status enable
                set action block
                set severity high
            end
            set disabled-signature 80080005 80200001 60030001 60120001 80080003 90410001 90410002
        end
        config constraint
            config header-length
                set status enable
                set log enable
                set severity low
            end
            config content-length
                set status enable
                set log enable
                set severity low
            end
            config param-length
                set status enable
                set log enable
                set severity low
            end
            config line-length
                set status enable
                set log enable
                set severity low
            end
            config url-param-length
                set status enable
                set log enable
                set severity low
            end
            config version
                set log enable
            end
            config method
                set action block
                set log enable
            end
            config hostname
                set action block
                set log enable
            end
            config malformed
                set log enable
            end
            config max-cookie
                set status enable
                set log enable
                set severity low
            end
            config max-header-line
                set status enable
                set log enable
                set severity low
            end
            config max-url-param
                set status enable
                set log enable
                set severity low
            end
            config max-range-segment
                set status enable
                set log enable
                set severity high
            end
        end
    next
end
config firewall policy
    edit 1
        set name "IT_VLAN to Servers_VLAN"
        set uuid 4e1d45b6-c858-51ee-562c-edb42f9cbd9c
        set srcintf "IT_VLAN"
        set dstintf "Servers_VLAN"
        set action accept
        set srcaddr "IT_VLAN address"
        set dstaddr "Servers_VLAN address"
        set schedule "always"
        set service "ALL_ICMP" "DNS" "FTP" "HTTP" "HTTPS" "RDP" "SSH" "Windows AD"
    next
    edit 2
        set name "Servers_VLAN to IT_VLAN"
        set uuid 767a25c4-c858-51ee-39c5-fd75584c3b6d
        set srcintf "Servers_VLAN"
        set dstintf "IT_VLAN"
        set action accept
        set srcaddr "Servers_VLAN address"
        set dstaddr "IT_VLAN address"
        set schedule "always"
        set service "ALL_ICMP" "DNS" "FTP" "HTTP" "HTTPS" "RDP" "SSH" "Windows AD"
    next
    edit 5
        set name "IT In"
        set uuid 9bf4d598-c85c-51ee-6041-5658098dc7f5
        set srcintf "wan1"
        set dstintf "IT_VLAN"
        set action accept
        set srcaddr "all"
        set dstaddr "IT_VLAN address"
        set schedule "always"
        set service "ALL_ICMP" "Web Access"
        set nat enable
    next
    edit 6
        set name "IT Out"
        set uuid b002362a-c85c-51ee-352f-095147347980
        set srcintf "IT_VLAN"
        set dstintf "wan1"
        set action accept
        set srcaddr "IT_VLAN address"
        set dstaddr "all"
        set schedule "always"
        set service "ALL_ICMP" "Web Access"
        set nat enable
    next
    edit 7
        set name "Servers Out"
        set uuid 1919699e-c85d-51ee-91fe-f5df899fa67d
        set srcintf "Servers_VLAN"
        set dstintf "wan1"
        set action accept
        set srcaddr "Servers_VLAN address"
        set dstaddr "all"
        set schedule "always"
        set service "ALL_ICMP" "Web Access"
        set nat enable
    next
    edit 8
        set name "Servers In"
        set uuid 46b9112e-c85d-51ee-1cd6-527a75cf0b8f
        set srcintf "wan1"
        set dstintf "Servers_VLAN"
        set action accept
        set srcaddr "all"
        set dstaddr "Servers_VLAN address"
        set schedule "always"
        set service "ALL_ICMP" "Web Access"
        set nat enable
    next
    edit 9
        set name "IT_VLAN to Cluster_VLAN"
        set uuid 17507c90-cac1-51ee-c1b2-671ca61d644d
        set srcintf "IT_VLAN"
        set dstintf "Cluster_VLAN12"
        set action accept
        set srcaddr "IT_VLAN address"
        set dstaddr "Cluster_VLAN12 address"
        set schedule "always"
        set service "ALL"
    next
    edit 10
        set name "Cluster_VLAN to IT_VLAN"
        set uuid 443710e8-cac1-51ee-d636-158c68aa4b16
        set srcintf "Cluster_VLAN12"
        set dstintf "IT_VLAN"
        set action accept
        set srcaddr "Cluster_VLAN12 address"
        set dstaddr "IT_VLAN address"
        set schedule "always"
        set service "ALL"
    next
    edit 11
        set name "Servers_VLAN to ServMan_VLAN"
        set uuid c15e9a1a-cb79-51ee-2d2c-9f8870d2c1be
        set srcintf "Servers_VLAN"
        set dstintf "ServerMan_VLAN"
        set action accept
        set srcaddr "Servers_VLAN address"
        set dstaddr "ServerMan_VLAN address"
        set schedule "always"
        set service "ALL"
    next
    edit 12
        set name "ServMan_VLAN to Servers_VLAN"
        set uuid e42d2f52-cb79-51ee-1d3a-3827a3cb9043
        set srcintf "ServerMan_VLAN"
        set dstintf "Servers_VLAN"
        set action accept
        set srcaddr "ServerMan_VLAN address"
        set dstaddr "Servers_VLAN address"
        set schedule "always"
        set service "ALL"
    next
    edit 13
        set name "AdminIT-to-FG"
        set uuid 87653060-cb80-51ee-b6f8-aaa02b4056c6
        set srcintf "IT_VLAN"
        set dstintf "Management1"
        set action accept
        set srcaddr "AdminUsers"
        set dstaddr "Management1 address"
        set schedule "always"
        set service "ALL"
        set nat enable
    next
    edit 14
        set name "Cluster_VLAN to Servers_VLAN"
        set uuid fe2a2d56-ccdc-51ee-cec1-66a60969e8ef
        set srcintf "Cluster_VLAN12"
        set dstintf "Servers_VLAN"
        set action accept
        set srcaddr "Cluster_VLAN12 address"
        set dstaddr "Servers_VLAN address"
        set schedule "always"
        set service "ALL"
    next
    edit 15
        set name "Servers_VLAN to Cluster_VLAN"
        set uuid 1a416842-ccdd-51ee-a500-ddf5ec0a4399
        set srcintf "Servers_VLAN"
        set dstintf "Cluster_VLAN12"
        set action accept
        set srcaddr "Servers_VLAN address"
        set dstaddr "Cluster_VLAN12 address"
        set schedule "always"
        set service "ALL"
    next
    edit 16
        set name "Cluster to INTERNET"
        set uuid 0a6d5864-cce6-51ee-6675-f316f9cf53dc
        set srcintf "Cluster_VLAN12"
        set dstintf "wan1"
        set action accept
        set srcaddr "Cluster_VLAN12 address"
        set dstaddr "all"
        set schedule "always"
        set service "ALL_ICMP" "Web Access"
        set nat enable
    next
    edit 17
        set name "Internet to CLUSTER"
        set uuid 231d2da8-cce6-51ee-b8c5-ca1a391c1614
        set srcintf "wan1"
        set dstintf "Cluster_VLAN12"
        set action accept
        set srcaddr "all"
        set dstaddr "Cluster_VLAN12 address"
        set schedule "always"
        set service "ALL_ICMP" "Web Access"
        set nat enable
    next
end
config switch-controller security-policy 802-1X
    edit "802-1X-policy-default"
        set user-group "SSO_Guest_Users"
        set mac-auth-bypass disable
        set open-auth disable
        set eap-passthru enable
        set eap-auto-untagged-vlans enable
        set guest-vlan disable
        set auth-fail-vlan disable
        set framevid-apply enable
        set radius-timeout-overwrite disable
        set authserver-timeout-vlan disable
    next
end
config switch-controller security-policy local-access
    edit "default"
        set mgmt-allowaccess https ping ssh
        set internal-allowaccess https ping ssh
    next
end
config switch-controller lldp-profile
    edit "default"
        set med-tlvs inventory-management network-policy location-identification
        set auto-isl disable
        config med-network-policy
            edit "voice"
            next
            edit "voice-signaling"
            next
            edit "guest-voice"
            next
            edit "guest-voice-signaling"
            next
            edit "softphone-voice"
            next
            edit "video-conferencing"
            next
            edit "streaming-video"
            next
            edit "video-signaling"
            next
        end
        config med-location-service
            edit "coordinates"
            next
            edit "address-civic"
            next
            edit "elin-number"
            next
        end
    next
    edit "default-auto-isl"
    next
    edit "default-auto-mclag-icl"
        set auto-mclag-icl enable
    next
end
config switch-controller qos dot1p-map
    edit "voice-dot1p"
        set priority-0 queue-4
        set priority-1 queue-4
        set priority-2 queue-3
        set priority-3 queue-2
        set priority-4 queue-3
        set priority-5 queue-1
        set priority-6 queue-2
        set priority-7 queue-2
    next
end
config switch-controller qos ip-dscp-map
    edit "voice-dscp"
        config map
            edit "1"
                set cos-queue 1
                set value 46
            next
            edit "2"
                set cos-queue 2
                set value 24,26,48,56
            next
            edit "5"
                set cos-queue 3
                set value 34
            next
        end
    next
end
config switch-controller qos queue-policy
    edit "default"
        set schedule round-robin
        set rate-by kbps
        config cos-queue
            edit "queue-0"
            next
            edit "queue-1"
            next
            edit "queue-2"
            next
            edit "queue-3"
            next
            edit "queue-4"
            next
            edit "queue-5"
            next
            edit "queue-6"
            next
            edit "queue-7"
            next
        end
    next
    edit "voice-egress"
        set schedule weighted
        set rate-by kbps
        config cos-queue
            edit "queue-0"
            next
            edit "queue-1"
                set weight 0
            next
            edit "queue-2"
                set weight 6
            next
            edit "queue-3"
                set weight 37
            next
            edit "queue-4"
                set weight 12
            next
            edit "queue-5"
            next
            edit "queue-6"
            next
            edit "queue-7"
            next
        end
    next
end
config switch-controller qos qos-policy
    edit "default"
    next
    edit "voice-qos"
        set trust-dot1p-map "voice-dot1p"
        set trust-ip-dscp-map "voice-dscp"
        set queue-policy "voice-egress"
    next
end
config switch-controller storm-control-policy
    edit "default"
        set description "default storm control on all port"
    next
    edit "auto-config"
        set description "storm control policy for fortilink-isl-icl port"
        set storm-control-mode disabled
    next
end
config switch-controller auto-config policy
    edit "default"
    next
    edit "default-icl"
        set poe-status disable
        set igmp-flood-report enable
        set igmp-flood-traffic enable
    next
end
config switch-controller initial-config template
    edit "_default"
        set vlanid 1
    next
    edit "quarantine"
        set vlanid 4093
        set dhcp-server enable
    next
    edit "rspan"
        set vlanid 4092
        set dhcp-server enable
    next
    edit "voice"
        set vlanid 4091
    next
    edit "video"
        set vlanid 4090
    next
    edit "onboarding"
        set vlanid 4089
    next
    edit "nac_segment"
        set vlanid 4088
        set dhcp-server enable
    next
end
config switch-controller switch-profile
    edit "default"
    next
end
config switch-controller ptp settings
    set mode disable
end
config switch-controller ptp policy
    edit "default"
        set status enable
    next
end
config switch-controller remote-log
    edit "syslogd"
    next
    edit "syslogd2"
    next
end
config wireless-controller setting
    set country CA
    set darrp-optimize-schedules "default-darrp-optimize"
end
config wireless-controller arrp-profile
    edit "arrp-default"
    next
end
config wireless-controller wids-profile
    edit "default"
        set comment "Default WIDS profile."
        set ap-scan enable
        set wireless-bridge enable
        set deauth-broadcast enable
        set null-ssid-probe-resp enable
        set long-duration-attack enable
        set invalid-mac-oui enable
        set weak-wep-iv enable
        set auth-frame-flood enable
        set assoc-frame-flood enable
        set spoofed-deauth enable
        set asleap-attack enable
        set eapol-start-flood enable
        set eapol-logoff-flood enable
        set eapol-succ-flood enable
        set eapol-fail-flood enable
        set eapol-pre-succ-flood enable
        set eapol-pre-fail-flood enable
    next
    edit "default-wids-apscan-enabled"
        set ap-scan enable
    next
end
config wireless-controller ble-profile
    edit "fortiap-discovery"
        set advertising ibeacon eddystone-uid eddystone-url
        set ibeacon-uuid "wtp-uuid"
    next
end
config router rip
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "ospf"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router ripng
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "ospf"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router static
    edit 1
        set gateway 10.10.79.254
        set device "wan1"
    next
end
config router ospf
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "rip"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router ospf6
    config redistribute "connected"
    end
    config redistribute "static"
    end
    config redistribute "rip"
    end
    config redistribute "bgp"
    end
    config redistribute "isis"
    end
end
config router bgp
    config redistribute "connected"
    end
    config redistribute "rip"
    end
    config redistribute "ospf"
    end
    config redistribute "static"
    end
    config redistribute "isis"
    end
    config redistribute6 "connected"
    end
    config redistribute6 "rip"
    end
    config redistribute6 "ospf"
    end
    config redistribute6 "static"
    end
    config redistribute6 "isis"
    end
end
config router isis
    config redistribute "connected"
    end
    config redistribute "rip"
    end
    config redistribute "ospf"
    end
    config redistribute "bgp"
    end
    config redistribute "static"
    end
    config redistribute6 "connected"
    end
    config redistribute6 "rip"
    end
    config redistribute6 "ospf"
    end
    config redistribute6 "bgp"
    end
    config redistribute6 "static"
    end
end
config router multicast
end
end
```