---

excalidraw-plugin: parsed
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
ISP ^LzGH6dCU

2620:fc:0:d307:10:10:79:254 ^xF85QmH7

WAN ^NzBipEAu

2620:fc:0:d307::98/64
FE80::98 ^WP7stJ0Q

Mngt ^19njM7Rn

HQ ^PwTl3Imn

IT
Vlan ^bOpW4OAB

Servers
Vlan ^1baavzhM

FE80::1 ^ifxbLWpw

FE80::2 ^IzkSEeMc

FE80::2 ^gmGPGEfv

FE80::3 ^9WhIxPih

fdf4:2e23:224f::2/64 ^WULBXo4i

2620:fc:0:d3e1::/64 ^7QaqXLsI

OSPFv3 ^kUwBXgY9

2620:fc:0:d3e2::/64 ^qIaY3Fiy

2620:fc:0:d3e3::/64 ^j09cdlt6

2620:fc:0:d3e3::1/64 ^ySsiIVZx

2620:fc:0:d3e2::1/64 ^cXCacPua

2620:fc:0:d3e1::1/64 ^GzA4Ohz2

Fortigate 70f ^iINYZFRY

VDOM ^wo9K9fOR

VLAN ^kFZtG7dA

Firewall ^zym0mMZ3

fdf4:2e23:224f::1/64 ^KZbR6u73

Guest ^j2joqcSS

FE80::3 ^LVaYyCh8

FE80::1 ^GN1nO4Sf

fdb8:58a6:d283::1/64 ^xU3yoAeW

fdb8:58a6:d283::2/64 ^0Qk1k68V

fdba:ddfb:f46b::/64 ^UmCm6MRj

config router ospf6
    set router-id 6.6.6.254
    config area
        edit 0.0.0.0
        next
    end
    config ospf6-interface
        edit HQ-WAN
            set interface "HQ-WAN_L1"
            set priority 255
            set dead-interval 40
            set hello-interval 10
        next
        edit "HQ-Man"
            set interface "Man-HQ_L1"
            set dead-interval 40
            set hello-interval 10
        next
        edit "IT_VLAN"
            set interface "IT_VLAN"
            #set passive-interface enable
        next
        edit "Servers_VLAN"
            set interface "Servers_VLAN"
            #set passive-interface enable
        next
end ^3VPo42cG

config router ospf6
    set router-id 6.6.6.253
    config area
        edit 0.0.0.0
        next
    end
    config ospf6-interface
        edit Man-WAN
            set interface "Man-WAN_L1"
            set dead-interval 40
            set hello-interval 10
        next
        edit "HQ-Man"
            set interface "Man-HQ_L0"
            set dead-interval 40
            set hello-interval 10
        next
        edit "Management"
            set interface "internal5"
            #set passive-interface enable
        next
end
set passive-interface internal5 ^gHHIxwVZ

MAN_VDOM ^Agyf5Orr

HQ_VDOM ^HUPIhYcH

config router ospf6
    set router-id 6.6.6.252
    set default-originate always
    config area
        edit 0.0.0.0
        next
    end
    config ospf6-interface
        edit HQ-WAN
            set interface "HQ-WAN_L0"
            set dead-interval 40
            set hello-interval 10
        next
        edit "Man-WAN"
            set interface "Man-WAN_L0"
            set dead-interval 40
            set hello-interval 10
        next
 end
 ^JRbneAh8

WAN_VDOM ^LGs27ASe

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/2.0.20",
	"elements": [
		{
			"type": "line",
			"version": 2093,
			"versionNonce": 460118310,
			"isDeleted": false,
			"id": "wobwRDY3FMHDayxw6SGID",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 20.04910880635039,
			"y": -256.32874780805076,
			"strokeColor": "transparent",
			"backgroundColor": "#4c6ef5",
			"width": 273.4832270629673,
			"height": 137.80441232997487,
			"seed": 1203107712,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951572369,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					11.501222638339996,
					-3.260512826832226
				],
				[
					18.798127269062633,
					-10.080880012624243
				],
				[
					22.275941465198585,
					-19.74442262595258
				],
				[
					18.99922920202731,
					-31.029213735353373
				],
				[
					14.583067200401985,
					-34.735127843402346
				],
				[
					7.894335864983631,
					-38.10146898020626
				],
				[
					-0.11394257606391989,
					-39.364176853371205
				],
				[
					3.6407434478939678,
					-42.51783105288858
				],
				[
					5.733934748956884,
					-50.85951085872997
				],
				[
					5.152688539704954,
					-58.12995009769497
				],
				[
					0.6391046764324813,
					-66.77314491463085
				],
				[
					-4.361420650372388,
					-72.50869587598083
				],
				[
					-12.15449820333621,
					-77.96164060262149
				],
				[
					-20.342993900632962,
					-81.8755267195435
				],
				[
					-32.739044610549044,
					-84.43321102380975
				],
				[
					-42.42615373461235,
					-83.64987546655067
				],
				[
					-46.11245405983347,
					-84.63176975708569
				],
				[
					-43.69278180291538,
					-89.80015368992666
				],
				[
					-44.30889175492768,
					-103.011115713136
				],
				[
					-49.39947775422755,
					-113.87662653910783
				],
				[
					-58.041633708074976,
					-124.97499889720196
				],
				[
					-69.8133021198631,
					-132.28726902030323
				],
				[
					-86.593888093646,
					-137.24598032992986
				],
				[
					-102.76661248371755,
					-137.80441232997487
				],
				[
					-117.99058269666426,
					-135.65723098662767
				],
				[
					-128.4008387381332,
					-130.70402451537797
				],
				[
					-136.6005200860473,
					-125.0718094772836
				],
				[
					-142.37690755615773,
					-119.67687161706829
				],
				[
					-148.1441834566334,
					-112.11461706885449
				],
				[
					-149.08834125062168,
					-106.93720294837097
				],
				[
					-152.6798269095479,
					-110.59406492112993
				],
				[
					-164.67819357162986,
					-115.93850741897963
				],
				[
					-173.05019148580735,
					-117.06417327294537
				],
				[
					-183.50592145309807,
					-115.61850066471013
				],
				[
					-195.2067713887908,
					-111.79858439576613
				],
				[
					-204.03390419513107,
					-103.48524812941051
				],
				[
					-207.36556162098128,
					-95.58949457600383
				],
				[
					-208.64354318460556,
					-88.7260012499869
				],
				[
					-206.3533503468817,
					-83.53375555023946
				],
				[
					-210.97314375096778,
					-82.55306585760522
				],
				[
					-224.57160994107687,
					-78.69108320341819
				],
				[
					-238.21175959013522,
					-70.51606994127349
				],
				[
					-246.82836592605423,
					-58.9460049969407
				],
				[
					-251.2072855977687,
					-48.939143071082526
				],
				[
					-251.0462641192185,
					-37.293050121098304
				],
				[
					-246.05040764314674,
					-22.908897391057288
				],
				[
					-235.70891425325772,
					-11.88677265188138
				],
				[
					-223.1074045615935,
					-5.015908714047299
				],
				[
					-211.36807423043177,
					-1.133478066091076
				],
				[
					-183.34192736525029,
					-0.9275248256218447
				],
				[
					0,
					0
				]
			]
		},
		{
			"type": "text",
			"version": 98,
			"versionNonce": 138986618,
			"isDeleted": false,
			"id": "LzGH6dCU",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -115.68837546577606,
			"y": -331.414736195827,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 32.236328125,
			"height": 23,
			"seed": 956969088,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "ISP",
			"rawText": "ISP",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "ISP",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 1531,
			"versionNonce": 284121126,
			"isDeleted": false,
			"id": "kJgNDtq0IVEs2ivLeRJRc",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -379.08616796139347,
			"y": -180.50252525738966,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 53.418584825234575,
			"height": 92.69394714407463,
			"seed": 191029376,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					38.77450980392132,
					22.053376906318135
				],
				[
					52.89215686274474,
					13.622004357298465
				],
				[
					53.36956521739103,
					-47.72070664014382
				],
				[
					14.06862745098033,
					-70.64057023775649
				],
				[
					-0.04901960784354742,
					-61.620962394619255
				],
				[
					0,
					0
				]
			]
		},
		{
			"type": "line",
			"version": 1340,
			"versionNonce": 980297018,
			"isDeleted": false,
			"id": "1zdBEdTj67ZWnL_ujNmyi",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -379.03587856689535,
			"y": -242.02773230777353,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 39.53125,
			"height": 83.16576086956502,
			"seed": 1295175808,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					39.53125,
					23.28125
				],
				[
					39.09646739130403,
					83.16576086956502
				]
			]
		},
		{
			"type": "line",
			"version": 1239,
			"versionNonce": 115172198,
			"isDeleted": false,
			"id": "GIoZkGvVYBALQT2m05pVp",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -339.28723726254736,
			"y": -218.99784100342555,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 13.379934210526699,
			"height": 8.51151315789457,
			"seed": 797229184,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					13.379934210526699,
					-8.51151315789457
				]
			]
		},
		{
			"type": "line",
			"version": 1599,
			"versionNonce": 1789488634,
			"isDeleted": false,
			"id": "vHtfLan98LfigIsVktApF",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -379.29331563783387,
			"y": -189.89314992791066,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 52.58903705167927,
			"height": 23.01809210526335,
			"seed": 1377349760,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					39.13651315789457,
					23.01809210526335
				],
				[
					52.58903705167927,
					14.39406109751144
				]
			]
		},
		{
			"type": "line",
			"version": 1640,
			"versionNonce": 23594662,
			"isDeleted": false,
			"id": "DHNeSr3yWuRGrnuMTqGpo",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -378.5553293678107,
			"y": -209.5270172047995,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 52.69773270385326,
			"height": 23.01809210526335,
			"seed": 1554948224,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					39.13651315789457,
					23.01809210526335
				],
				[
					52.69773270385326,
					14.39406109751144
				]
			]
		},
		{
			"type": "line",
			"version": 1663,
			"versionNonce": 771595962,
			"isDeleted": false,
			"id": "iieGXuF73vIGTwOwv6u5z",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -379.0759243334859,
			"y": -220.3851407745929,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 52.371645747331286,
			"height": 23.01809210526335,
			"seed": 2131136640,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					39.13651315789457,
					23.01809210526335
				],
				[
					52.371645747331286,
					14.611452401859424
				]
			]
		},
		{
			"type": "line",
			"version": 1668,
			"versionNonce": 1899774438,
			"isDeleted": false,
			"id": "AJtJIny7OH0u-frQ4-1eC",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -379.0759243334859,
			"y": -230.6780469530823,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 52.48034139950528,
			"height": 23.01809210526335,
			"seed": 1893761152,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					39.13651315789457,
					23.01809210526335
				],
				[
					52.48034139950528,
					14.502756749685432
				]
			]
		},
		{
			"type": "line",
			"version": 1291,
			"versionNonce": 17676154,
			"isDeleted": false,
			"id": "gc7lvpzzDD_y1d42n1aoE",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -366.3705396263748,
			"y": -224.42296314964284,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 13.89830508474597,
			"height": 18.559322033898297,
			"seed": 1912369280,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-0.12159174649968918,
					-10.593220338982974
				],
				[
					13.776713338246282,
					-18.559322033898297
				]
			]
		},
		{
			"type": "line",
			"version": 1272,
			"versionNonce": 694621478,
			"isDeleted": false,
			"id": "9jtjCyI6aob7T1loRPnJn",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -349.28505694398643,
			"y": -214.1613566647498,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 14.263080324244129,
			"height": 19.333087693442394,
			"seed": 1243242624,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-0.16949152542383672,
					-10.736919675755416
				],
				[
					14.093588798820292,
					-19.333087693442394
				]
			]
		},
		{
			"type": "line",
			"version": 1235,
			"versionNonce": 1411168314,
			"isDeleted": false,
			"id": "xMSoW75_bXszwzl5zerbm",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -371.7942684399344,
			"y": -225.82679513195768,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.79882092851858,
			"seed": 1224364160,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.79882092851858
				]
			]
		},
		{
			"type": "line",
			"version": 1306,
			"versionNonce": 324370534,
			"isDeleted": false,
			"id": "pb826jryLGmxYvVLtn-4G",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -354.4029640921075,
			"y": -215.60940382760924,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.79882092851858,
			"seed": 1180450944,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.79882092851858
				]
			]
		},
		{
			"type": "line",
			"version": 1662,
			"versionNonce": 386769146,
			"isDeleted": false,
			"id": "Z7OydmXK7nappA2l78BX0",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -378.7727206721587,
			"y": -199.09223459610308,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 52.69773270385326,
			"height": 23.01809210526335,
			"seed": 570437760,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					39.13651315789457,
					23.01809210526335
				],
				[
					52.69773270385326,
					14.39406109751144
				]
			]
		},
		{
			"type": "line",
			"version": 1418,
			"versionNonce": 1658094502,
			"isDeleted": false,
			"id": "IR4Qqar6zPDeVOa9Ell3G",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -350.05513800515143,
			"y": -202.78331687108727,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.79882092851858,
			"seed": 1134960768,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.79882092851858
				]
			]
		},
		{
			"type": "line",
			"version": 1458,
			"versionNonce": 1164145082,
			"isDeleted": false,
			"id": "Knki-IFv1WrHS6phU_5yG",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -355.7073119181945,
			"y": -196.26157774065274,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.79882092851858,
			"seed": 536346752,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.79882092851858
				]
			]
		},
		{
			"type": "line",
			"version": 1547,
			"versionNonce": 1242636006,
			"isDeleted": false,
			"id": "_g6dcxc4Jp50Nac4r4ugb",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -372.8812249616725,
			"y": -205.3920125232608,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.79882092851858,
			"seed": 1378087040,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.79882092851858
				]
			]
		},
		{
			"type": "line",
			"version": 1496,
			"versionNonce": 1916873338,
			"isDeleted": false,
			"id": "kUxFYi7qyjgjb83mIhJyN",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -366.5768771355855,
			"y": -191.04418643630476,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.79882092851858,
			"seed": 961667200,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.79882092851858
				]
			]
		},
		{
			"type": "line",
			"version": 1536,
			"versionNonce": 764957222,
			"isDeleted": false,
			"id": "WOYlbAgeDNQ3qjouKylHn",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -351.14209452689045,
			"y": -182.56592556673974,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 8.146647015475537,
			"seed": 1698812032,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					8.146647015475537
				]
			]
		},
		{
			"type": "line",
			"version": 1573,
			"versionNonce": 1416219450,
			"isDeleted": false,
			"id": "-0LBnvKHBA12CE0XkcHZk",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -356.14209452689045,
			"y": -176.26157774065229,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 7.7118644067795685,
			"seed": 1840496768,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					7.7118644067795685
				]
			]
		},
		{
			"type": "line",
			"version": 1602,
			"versionNonce": 1482104166,
			"isDeleted": false,
			"id": "3Vyf-EyuNoYraXgwJJ09Z",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -372.22905104862946,
			"y": -184.7398386102173,
			"strokeColor": "#495057",
			"backgroundColor": "#ced4da",
			"width": 0.04789977892414754,
			"height": 7.7118644067795685,
			"seed": 1919398016,
			"groupIds": [
				"SeDt8ebu0fNTVpE2NRpZo"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.04789977892414754,
					7.7118644067795685
				]
			]
		},
		{
			"type": "text",
			"version": 374,
			"versionNonce": 899164293,
			"isDeleted": false,
			"id": "xF85QmH7",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -223.20646799550764,
			"y": -299.08313452053045,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 254.66796875,
			"height": 23,
			"seed": 1364572032,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1713888722819,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "2620:fc:0:d307:10:10:79:254",
			"rawText": "2620:fc:0:d307:10:10:79:254",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d307:10:10:79:254",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 1080,
			"versionNonce": 798654630,
			"isDeleted": false,
			"id": "jsOuoThyNsco72OksgGws",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -429.5443108041369,
			"y": -171.55233280345044,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 678.3025920472169,
			"height": 626.5231349083527,
			"seed": 603807872,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "diamond",
			"version": 251,
			"versionNonce": 231195834,
			"isDeleted": false,
			"id": "pQuRWqYAfG1B-e5hMNZgx",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -168.0273743751547,
			"y": -47.88045271019121,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 124.51596354190872,
			"height": 158,
			"seed": 1511438208,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "NzBipEAu"
				}
			],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 225,
			"versionNonce": 1729068006,
			"isDeleted": false,
			"id": "NzBipEAu",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -128.8573678646775,
			"y": 19.619547289808793,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 45.91796875,
			"height": 23,
			"seed": 1157236608,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "WAN",
			"rawText": "WAN",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "pQuRWqYAfG1B-e5hMNZgx",
			"originalText": "WAN",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 608,
			"versionNonce": 1889738106,
			"isDeleted": false,
			"id": "WP7stJ0Q",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -103.94575786078116,
			"y": -124.20186212782596,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 193.49609375,
			"height": 46,
			"seed": 1636583296,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "2620:fc:0:d307::98/64\nFE80::98",
			"rawText": "2620:fc:0:d307::98/64\nFE80::98",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d307::98/64\nFE80::98",
			"lineHeight": 1.15,
			"baseline": 41
		},
		{
			"type": "line",
			"version": 144,
			"versionNonce": 885198630,
			"isDeleted": false,
			"id": "2DAPb6qGZObvDDrXsIgWk",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -106.46977827917186,
			"y": -44.843477989656776,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 211.57590553056036,
			"seed": 726601856,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0,
					-211.57590553056036
				]
			]
		},
		{
			"type": "diamond",
			"version": 407,
			"versionNonce": 940924474,
			"isDeleted": false,
			"id": "z7_RpkpGefrXRrwXRxoRU",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -302.82985559214166,
			"y": 121.8099404933709,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 124.51596354190872,
			"height": 158,
			"seed": 187342976,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "19njM7Rn"
				}
			],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 400,
			"versionNonce": 86129254,
			"isDeleted": false,
			"id": "19njM7Rn",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -262.93231001916445,
			"y": 189.3099404933709,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 44.462890625,
			"height": 23,
			"seed": 2114097280,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "Mngt",
			"rawText": "Mngt",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "z7_RpkpGefrXRrwXRxoRU",
			"originalText": "Mngt",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "diamond",
			"version": 405,
			"versionNonce": 16877306,
			"isDeleted": false,
			"id": "9NfBHbW5DbqxIL8Kn_gZS",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -46.236446321907295,
			"y": 134.29937325576367,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 124.51596354190872,
			"height": 158,
			"seed": 573441920,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "PwTl3Imn"
				}
			],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 382,
			"versionNonce": 788135334,
			"isDeleted": false,
			"id": "PwTl3Imn",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 0.892544563569885,
			"y": 201.79937325576367,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 30,
			"height": 23,
			"seed": 1308694400,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "HQ",
			"rawText": "HQ",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "9NfBHbW5DbqxIL8Kn_gZS",
			"originalText": "HQ",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 190,
			"versionNonce": 1407883194,
			"isDeleted": false,
			"id": "Q3HFusz01XzutiYBMM5Lv",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 75.74870495288985,
			"y": 208.23774872153956,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 234.85937838799043,
			"height": 66.81344385175578,
			"seed": 1113638784,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					234.85937838799043,
					-66.81344385175578
				]
			]
		},
		{
			"type": "line",
			"version": 280,
			"versionNonce": 662132966,
			"isDeleted": false,
			"id": "a8A7pBJlyr1wxcWnlPT6N",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 70.68708041866603,
			"y": 209.25007362838448,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 240.93332782905918,
			"height": 89.08459180234121,
			"seed": 604987520,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					240.93332782905918,
					89.08459180234121
				]
			]
		},
		{
			"type": "rectangle",
			"version": 314,
			"versionNonce": 821268602,
			"isDeleted": false,
			"id": "PbfGZfyyOPHy_rZxB-h6F",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 314.6573829682592,
			"y": 90.80805952754434,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 101.23249068447859,
			"height": 96.17086615025471,
			"seed": 943097728,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "bOpW4OAB"
				}
			],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 224,
			"versionNonce": 908545062,
			"isDeleted": false,
			"id": "bOpW4OAB",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 345.25897987299845,
			"y": 115.8934926026717,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 40.029296875,
			"height": 46,
			"seed": 1065142144,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "IT\nVlan",
			"rawText": "IT\nVlan",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "PbfGZfyyOPHy_rZxB-h6F",
			"originalText": "IT\nVlan",
			"lineHeight": 1.15,
			"baseline": 41
		},
		{
			"type": "rectangle",
			"version": 338,
			"versionNonce": 467628346,
			"isDeleted": false,
			"id": "4S3hFf2ID627P9MgwagDg",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 315.66970787510377,
			"y": 240.1259832871504,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 101.23249068447859,
			"height": 96.17086615025471,
			"seed": 777914240,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "1baavzhM"
				}
			],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 258,
			"versionNonce": 687265638,
			"isDeleted": false,
			"id": "1baavzhM",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 331.83282821734304,
			"y": 265.21141636227776,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 68.90625,
			"height": 46,
			"seed": 1412503424,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "Servers\nVlan",
			"rawText": "Servers\nVlan",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "4S3hFf2ID627P9MgwagDg",
			"originalText": "Servers\nVlan",
			"lineHeight": 1.15,
			"baseline": 41
		},
		{
			"type": "line",
			"version": 195,
			"versionNonce": 672217594,
			"isDeleted": false,
			"id": "TOVtb-Brx1oBS0tJRW4rE",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -44.717958961639624,
			"y": 213.29937325576384,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 140.71316205142534,
			"height": 3.0369747205345448,
			"seed": 707856256,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-140.71316205142534,
					-3.0369747205345448
				]
			]
		},
		{
			"type": "line",
			"version": 210,
			"versionNonce": 2046580858,
			"isDeleted": false,
			"id": "er3HTBGm8Ou5hymO6RjeR",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 11.959910914823695,
			"y": 140.37500524240477,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 61.67786987646326,
			"height": 110.22016577763384,
			"seed": 813758336,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951584119,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-61.67786987646326,
					-110.22016577763384
				]
			]
		},
		{
			"type": "line",
			"version": 194,
			"versionNonce": 76278458,
			"isDeleted": false,
			"id": "yCp2BPeQUEr-8Kl5XlVhj",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -237.47929894339597,
			"y": 126.5391510394312,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 73.30700097407151,
			"height": 94.44593610888421,
			"seed": 356710272,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					73.30700097407151,
					-94.44593610888421
				]
			]
		},
		{
			"type": "text",
			"version": 233,
			"versionNonce": 1250473446,
			"isDeleted": false,
			"id": "ifxbLWpw",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -102.42047865179245,
			"y": 232.53354648581455,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.0390625,
			"height": 23,
			"seed": 571291520,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "FE80::1",
			"rawText": "FE80::1",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FE80::1",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 337,
			"versionNonce": 133333882,
			"isDeleted": false,
			"id": "IzkSEeMc",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -197.16717940563484,
			"y": 232.16912046110747,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.0390625,
			"height": 23,
			"seed": 1917433728,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "FE80::2",
			"rawText": "FE80::2",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FE80::2",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 373,
			"versionNonce": 151324966,
			"isDeleted": false,
			"id": "gmGPGEfv",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -303.64784880676933,
			"y": 90.38368954837341,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.0390625,
			"height": 23,
			"seed": 407840640,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "FE80::2",
			"rawText": "FE80::2",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FE80::2",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 321,
			"versionNonce": 1015546938,
			"isDeleted": false,
			"id": "9WhIxPih",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -243.73412512049504,
			"y": 14.519265489478244,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.0390625,
			"height": 23,
			"seed": 230745984,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "FE80::3",
			"rawText": "FE80::3",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FE80::3",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 385,
			"versionNonce": 857011302,
			"isDeleted": false,
			"id": "WULBXo4i",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 9.582533611349845,
			"y": 107.07048725455127,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 177.9296875,
			"height": 23,
			"seed": 929529984,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "fdf4:2e23:224f::2/64",
			"rawText": "fdf4:2e23:224f::2/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "fdf4:2e23:224f::2/64",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 651,
			"versionNonce": 1815047418,
			"isDeleted": false,
			"id": "7QaqXLsI",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0.837324954763008,
			"x": -414.6029704468068,
			"y": 228.12404965803603,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 148.55914306640625,
			"height": 19.96302527946562,
			"seed": 508485760,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 17.359152416926626,
			"fontFamily": 2,
			"text": "2620:fc:0:d3e1::/64",
			"rawText": "2620:fc:0:d3e1::/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d3e1::/64",
			"lineHeight": 1.15,
			"baseline": 15
		},
		{
			"type": "text",
			"version": 50,
			"versionNonce": 1935616038,
			"isDeleted": false,
			"id": "kUwBXgY9",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -138.90412530670625,
			"y": 131.35035542871594,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 75.576171875,
			"height": 23,
			"seed": 913715328,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951561669,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "OSPFv3",
			"rawText": "OSPFv3",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "OSPFv3",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 205,
			"versionNonce": 745258426,
			"isDeleted": false,
			"id": "qIaY3Fiy",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 296.4355346450544,
			"y": 343.08342932740493,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 147.95989990234375,
			"height": 19.872876638126154,
			"seed": 340158336,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 17.280762294022743,
			"fontFamily": 2,
			"text": "2620:fc:0:d3e2::/64",
			"rawText": "2620:fc:0:d3e2::/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d3e2::/64",
			"lineHeight": 1.15,
			"baseline": 15
		},
		{
			"type": "text",
			"version": 292,
			"versionNonce": 1870893798,
			"isDeleted": false,
			"id": "j09cdlt6",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 286.3122855766063,
			"y": 188.9723683938422,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 153.0116424560547,
			"height": 20.552686064620488,
			"seed": 22656896,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 17.871900925756947,
			"fontFamily": 2,
			"text": "2620:fc:0:d3e3::/64",
			"rawText": "2620:fc:0:d3e3::/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d3e3::/64",
			"lineHeight": 1.15,
			"baseline": 16
		},
		{
			"type": "text",
			"version": 179,
			"versionNonce": 1784673914,
			"isDeleted": false,
			"id": "ySsiIVZx",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 6.008774182410807,
			"x": 72.97550290851198,
			"y": 159.28635708403337,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 143.6187744140625,
			"height": 18.122444526820775,
			"seed": 79058816,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 15.758647414626761,
			"fontFamily": 2,
			"text": "2620:fc:0:d3e3::1/64",
			"rawText": "2620:fc:0:d3e3::1/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d3e3::1/64",
			"lineHeight": 1.15,
			"baseline": 14
		},
		{
			"type": "text",
			"version": 268,
			"versionNonce": 1687963174,
			"isDeleted": false,
			"id": "cXCacPua",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0.35695233665371884,
			"x": 69.44576086699804,
			"y": 248.66485512927702,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 139.69761657714844,
			"height": 17.623465920029894,
			"seed": 1553270656,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 15.32475297393904,
			"fontFamily": 2,
			"text": "2620:fc:0:d3e2::1/64",
			"rawText": "2620:fc:0:d3e2::1/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d3e2::1/64",
			"lineHeight": 1.15,
			"baseline": 14
		},
		{
			"type": "text",
			"version": 1787,
			"versionNonce": 1993283386,
			"isDeleted": false,
			"id": "GzA4Ohz2",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0.8722627441293227,
			"x": -400.24205745892596,
			"y": 198.92272602470518,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 158.2083740234375,
			"height": 19.96302527946562,
			"seed": 2092107648,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 17.359152416926626,
			"fontFamily": 2,
			"text": "2620:fc:0:d3e1::1/64",
			"rawText": "2620:fc:0:d3e1::1/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2620:fc:0:d3e1::1/64",
			"lineHeight": 1.15,
			"baseline": 15
		},
		{
			"type": "text",
			"version": 160,
			"versionNonce": 1924960614,
			"isDeleted": false,
			"id": "iINYZFRY",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -413.00672453709603,
			"y": -151.00308213142927,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 112.28515625,
			"height": 23,
			"seed": 1890105216,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "Fortigate 70f",
			"rawText": "Fortigate 70f",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Fortigate 70f",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "diamond",
			"version": 59,
			"versionNonce": 303833082,
			"isDeleted": false,
			"id": "8CiytVwEeMdIbrnq0Q-1Q",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -705.430508727537,
			"y": -328.8444855778608,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.42042149892245,
			"height": 66.83972210067219,
			"seed": 22083456,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 42,
			"versionNonce": 1160869030,
			"isDeleted": false,
			"id": "wo9K9fOR",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -700.6562428632035,
			"y": -254.84336468068798,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 60,
			"height": 23,
			"seed": 1385076608,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "VDOM",
			"rawText": "VDOM",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "VDOM",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "rectangle",
			"version": 137,
			"versionNonce": 2018119866,
			"isDeleted": false,
			"id": "7-jeldEphbSXWi_vT1dJA",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -698.2691099310365,
			"y": -195.1650413765164,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 51.32335804158765,
			"height": 58.48475683808823,
			"seed": 1076742016,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 38,
			"versionNonce": 363327462,
			"isDeleted": false,
			"id": "kFZtG7dA",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -697.0755434649531,
			"y": -122.35748694542701,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 52.24609375,
			"height": 23,
			"seed": 1107945344,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "VLAN",
			"rawText": "VLAN",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "VLAN",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 136,
			"versionNonce": 1828448634,
			"isDeleted": false,
			"id": "JCuGOBT2rfwOgOTF28Tvp",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -704.2369422614535,
			"y": -61.48559717517196,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 68.03328856675557,
			"height": 66.83972210067219,
			"seed": 330811264,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 55,
			"versionNonce": 1613562662,
			"isDeleted": false,
			"id": "zym0mMZ3",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -705.4305087275371,
			"y": 17.28978958633462,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 68.896484375,
			"height": 23,
			"seed": 201504640,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "Firewall",
			"rawText": "Firewall",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Firewall",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 72,
			"versionNonce": 1198828090,
			"isDeleted": false,
			"id": "KZbR6u73",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -28.615361290972487,
			"y": 26.265277765148994,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 177.9296875,
			"height": 23,
			"seed": 823395498,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "fdf4:2e23:224f::1/64",
			"rawText": "fdf4:2e23:224f::1/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "fdf4:2e23:224f::1/64",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 384,
			"versionNonce": 388869734,
			"isDeleted": false,
			"id": "S8RuV3jDs4D17afFw4Plk",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -47.76621479582843,
			"y": 23.85218150836124,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 390.9215935996227,
			"height": 182.18876738747844,
			"seed": 89778166,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					390.9215935996227,
					-182.18876738747844
				]
			]
		},
		{
			"type": "diamond",
			"version": 162,
			"versionNonce": 2123846394,
			"isDeleted": false,
			"id": "bXwTxlujJilnwDQs5AUPw",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 339.5357344186127,
			"y": -227.1098291975693,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 162.883997333176,
			"height": 135.13339038011645,
			"seed": 308256298,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "j2joqcSS"
				}
			],
			"updated": 1712951556226,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 44,
			"versionNonce": 1467412902,
			"isDeleted": false,
			"id": "j2joqcSS",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 394.0770462519067,
			"y": -170.82648160254018,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 53.359375,
			"height": 23,
			"seed": 1531575146,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "Guest",
			"rawText": "Guest",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "bXwTxlujJilnwDQs5AUPw",
			"originalText": "Guest",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 375,
			"versionNonce": 887546810,
			"isDeleted": false,
			"id": "LVaYyCh8",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -21.251791497739646,
			"y": 50.96172161696609,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.0390625,
			"height": 23,
			"seed": 1591298986,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "FE80::3",
			"rawText": "FE80::3",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FE80::3",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 330,
			"versionNonce": 473287910,
			"isDeleted": false,
			"id": "GN1nO4Sf",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 27.010133638016327,
			"y": 131.800446219357,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.0390625,
			"height": 23,
			"seed": 1422540534,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556226,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "FE80::1",
			"rawText": "FE80::1",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FE80::1",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 113,
			"versionNonce": 1149656186,
			"isDeleted": false,
			"id": "xU3yoAeW",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -338.41015039263607,
			"y": -19.831750628490795,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 189.0625,
			"height": 23,
			"seed": 1164354218,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "fdb8:58a6:d283::1/64",
			"rawText": "fdb8:58a6:d283::1/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "fdb8:58a6:d283::1/64",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 145,
			"versionNonce": 1928806438,
			"isDeleted": false,
			"id": "0Qk1k68V",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -403.4175908688265,
			"y": 65.81110651436643,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 189.0625,
			"height": 23,
			"seed": 1298690614,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "fdb8:58a6:d283::2/64",
			"rawText": "fdb8:58a6:d283::2/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "fdb8:58a6:d283::2/64",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 34,
			"versionNonce": 1262009658,
			"isDeleted": false,
			"id": "UmCm6MRj",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -190.79110277358836,
			"y": 280.1682493715092,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 166.806640625,
			"height": 23,
			"seed": 2052415594,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "fdba:ddfb:f46b::/64",
			"rawText": "fdba:ddfb:f46b::/64",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "fdba:ddfb:f46b::/64",
			"lineHeight": 1.15,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 277,
			"versionNonce": 1950022950,
			"isDeleted": false,
			"id": "3VPo42cG",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2019.5962064167813,
			"y": -246.9194677608087,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 327.65625,
			"height": 621,
			"seed": 740860150,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "config router ospf6\n    set router-id 6.6.6.254\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit HQ-WAN\n            set interface \"HQ-WAN_L1\"\n            set priority 255\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"HQ-Man\"\n            set interface \"Man-HQ_L1\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"IT_VLAN\"\n            set interface \"IT_VLAN\"\n            #set passive-interface enable\n        next\n        edit \"Servers_VLAN\"\n            set interface \"Servers_VLAN\"\n            #set passive-interface enable\n        next\nend",
			"rawText": "config router ospf6\n    set router-id 6.6.6.254\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit HQ-WAN\n            set interface \"HQ-WAN_L1\"\n            set priority 255\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"HQ-Man\"\n            set interface \"Man-HQ_L1\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"IT_VLAN\"\n            set interface \"IT_VLAN\"\n            #set passive-interface enable\n        next\n        edit \"Servers_VLAN\"\n            set interface \"Servers_VLAN\"\n            #set passive-interface enable\n        next\nend",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "config router ospf6\n    set router-id 6.6.6.254\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit HQ-WAN\n            set interface \"HQ-WAN_L1\"\n            set priority 255\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"HQ-Man\"\n            set interface \"Man-HQ_L1\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"IT_VLAN\"\n            set interface \"IT_VLAN\"\n            #set passive-interface enable\n        next\n        edit \"Servers_VLAN\"\n            set interface \"Servers_VLAN\"\n            #set passive-interface enable\n        next\nend",
			"lineHeight": 1.15,
			"baseline": 616
		},
		{
			"type": "text",
			"version": 590,
			"versionNonce": 1054560314,
			"isDeleted": false,
			"id": "gHHIxwVZ",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1646.2883909813195,
			"y": -238.89076186482015,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 326.8359375,
			"height": 529,
			"seed": 607423862,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "config router ospf6\n    set router-id 6.6.6.253\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit Man-WAN\n            set interface \"Man-WAN_L1\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"HQ-Man\"\n            set interface \"Man-HQ_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"Management\"\n            set interface \"internal5\"\n            #set passive-interface enable\n        next\nend\nset passive-interface internal5",
			"rawText": "config router ospf6\n    set router-id 6.6.6.253\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit Man-WAN\n            set interface \"Man-WAN_L1\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"HQ-Man\"\n            set interface \"Man-HQ_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"Management\"\n            set interface \"internal5\"\n            #set passive-interface enable\n        next\nend\nset passive-interface internal5",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "config router ospf6\n    set router-id 6.6.6.253\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit Man-WAN\n            set interface \"Man-WAN_L1\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"HQ-Man\"\n            set interface \"Man-HQ_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"Management\"\n            set interface \"internal5\"\n            #set passive-interface enable\n        next\nend\nset passive-interface internal5",
			"lineHeight": 1.15,
			"baseline": 524
		},
		{
			"type": "text",
			"version": 102,
			"versionNonce": 728524902,
			"isDeleted": false,
			"id": "Agyf5Orr",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1620.2287759184014,
			"y": -314.0337779237158,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 208.01953125,
			"height": 41.4,
			"seed": 1180765174,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 2,
			"text": "MAN_VDOM",
			"rawText": "MAN_VDOM",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "MAN_VDOM",
			"lineHeight": 1.15,
			"baseline": 33
		},
		{
			"type": "text",
			"version": 165,
			"versionNonce": 1580808442,
			"isDeleted": false,
			"id": "HUPIhYcH",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2008.9838998443613,
			"y": -332.77306669407926,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 182.021484375,
			"height": 41.4,
			"seed": 680918838,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 2,
			"text": "HQ_VDOM",
			"rawText": "HQ_VDOM",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "HQ_VDOM",
			"lineHeight": 1.15,
			"baseline": 33
		},
		{
			"type": "text",
			"version": 821,
			"versionNonce": 667839398,
			"isDeleted": false,
			"id": "JRbneAh8",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1207.9266755318731,
			"y": -260.8623830581753,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 320.234375,
			"height": 460,
			"seed": 219585194,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 2,
			"text": "config router ospf6\n    set router-id 6.6.6.252\n    set default-originate always\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit HQ-WAN\n            set interface \"HQ-WAN_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"Man-WAN\"\n            set interface \"Man-WAN_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n end\n",
			"rawText": "config router ospf6\n    set router-id 6.6.6.252\n    set default-originate always\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit HQ-WAN\n            set interface \"HQ-WAN_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"Man-WAN\"\n            set interface \"Man-WAN_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n end\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "config router ospf6\n    set router-id 6.6.6.252\n    set default-originate always\n    config area\n        edit 0.0.0.0\n        next\n    end\n    config ospf6-interface\n        edit HQ-WAN\n            set interface \"HQ-WAN_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n        edit \"Man-WAN\"\n            set interface \"Man-WAN_L0\"\n            set dead-interval 40\n            set hello-interval 10\n        next\n end\n",
			"lineHeight": 1.15,
			"baseline": 455
		},
		{
			"type": "text",
			"version": 226,
			"versionNonce": 1398540730,
			"isDeleted": false,
			"id": "LGs27ASe",
			"fillStyle": "solid",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1204.5694516082622,
			"y": -323.939917833132,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 210.673828125,
			"height": 41.4,
			"seed": 1568781674,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1712951556227,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 2,
			"text": "WAN_VDOM",
			"rawText": "WAN_VDOM",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "WAN_VDOM",
			"lineHeight": 1.15,
			"baseline": 33
		}
	],
	"appState": {
		"theme": "dark",
		"viewBackgroundColor": "#f5faff",
		"currentItemStrokeColor": "#1e1e1e",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "solid",
		"currentItemStrokeWidth": 1,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 0,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 2,
		"currentItemFontSize": 36,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": 2178.1336918779507,
		"scrollY": 836.5049108016508,
		"zoom": {
			"value": 0.55
		},
		"currentItemRoundness": "round",
		"gridSize": null,
		"gridColor": {
			"Bold": "#8AC4FFFF",
			"Regular": "#D1E8FFFF"
		},
		"currentStrokeOptions": null,
		"previousGridSize": null,
		"frameRendering": {
			"enabled": true,
			"clip": true,
			"name": true,
			"outline": true
		}
	},
	"files": {}
}
```
%%