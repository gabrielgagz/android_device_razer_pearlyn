[AID_VENDOR_QCOM_DIAG]
value:2950

[AID_VENDOR_RFS]
value:2951

[AID_VENDOR_RFS_SHARED]
value:2952

[vendor/bin/btnvtool]
mode: 0755
user: AID_BLUETOOTH
group: AID_BLUETOOTH
caps: 0

[vendor/bin/hw/android.hardware.wifi@1.0-service]
mode: 0755
user: AID_ROOT
group: AID_WIFI
caps: NET_ADMIN NET_RAW SYS_MODULE

[firmware/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[persist/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0
