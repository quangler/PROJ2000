```
#config-version=FGT70F-7.0.14-FW-build0601-240206:opmode=0:vdom=1:user=admin
#conf_file_ver=199428216499920
#buildno=0601
#global_vdom=0:vd_name=HQ_VDOM/HQ_VDOM
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
    edit "internal"
        set vdom "HQ_VDOM"
        set type hard-switch
        set alias "HQ VLAN Switch"
        set stp enable
        set role lan
        set snmp-index 15
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
```