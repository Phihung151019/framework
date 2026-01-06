.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist TAG:Ljava/lang/String; = "EnterpriseDeviceAdminInfo"

.field public static final greylist USES_POLICY_KNOX_ACCESS_GRANT:I = 0x81

.field public static final greylist USES_POLICY_KNOX_ACCESS_GRANT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_API_ACCESS_GRANT"

.field public static final greylist USES_POLICY_KNOX_ADVANCED_APP_MGMT:I = 0x50

.field public static final greylist USES_POLICY_KNOX_ADVANCED_APP_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

.field public static final greylist USES_POLICY_KNOX_ADVANCED_SECURITY:I = 0x51

.field public static final greylist USES_POLICY_KNOX_ADVANCED_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

.field public static final greylist USES_POLICY_KNOX_ANALYTICS_DEVELOPER:I = 0x83

.field public static final greylist USES_POLICY_KNOX_ANALYTICS_DEVELOPER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ANALYTICS_DEVELOPER"

.field public static final greylist USES_POLICY_KNOX_APP_SEPARATION:I = 0x70

.field public static final greylist USES_POLICY_KNOX_APP_SEPARATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

.field public static final greylist USES_POLICY_KNOX_AUTHENTICATION_MANAGER:I = 0x7b

.field public static final greylist USES_POLICY_KNOX_AUTHENTICATION_MANAGER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUTH_MGMT"

.field public static final greylist USES_POLICY_KNOX_AUTHORIZATION:I = 0x80

.field public static final greylist USES_POLICY_KNOX_AUTHORIZATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

.field public static final greylist USES_POLICY_KNOX_CAPTURE:I = 0x71

.field public static final greylist USES_POLICY_KNOX_CAPTURE_ADVANCED:I = 0x78

.field public static final greylist USES_POLICY_KNOX_CAPTURE_ADVANCED_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

.field public static final greylist USES_POLICY_KNOX_CAPTURE_BASIC:I = 0x77

.field public static final greylist USES_POLICY_KNOX_CAPTURE_BASIC_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

.field public static final greylist USES_POLICY_KNOX_CAPTURE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN"

.field public static final greylist USES_POLICY_KNOX_CCM:I = 0x3d

.field public static final greylist USES_POLICY_KNOX_CCM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field public static final greylist USES_POLICY_KNOX_CERTENROL:I = 0x42

.field public static final greylist USES_POLICY_KNOX_CERTENROL_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

.field public static final greylist USES_POLICY_KNOX_CERT_PROVISIONING:I = 0x4e

.field public static final greylist USES_POLICY_KNOX_CERT_PROVISIONING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

.field public static final greylist USES_POLICY_KNOX_CLIPBOARD:I = 0x4f

.field public static final greylist USES_POLICY_KNOX_CLIPBOARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

.field public static final greylist USES_POLICY_KNOX_CONTAINER_VPN:I = 0x37

.field public static final greylist USES_POLICY_KNOX_CONTAINER_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

.field public static final greylist USES_POLICY_KNOX_CRITICAL_COMMUNICATIONS:I = 0x6c

.field public static final greylist USES_POLICY_KNOX_CRITICAL_COMMUNICATIONS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_DEX:I = 0x55

.field public static final greylist USES_POLICY_KNOX_CUSTOM_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_PROKIOSK:I = 0x46

.field public static final greylist USES_POLICY_KNOX_CUSTOM_PROKIOSK_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SEALEDMODE:I = 0x41

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SEALEDMODE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SETTING:I = 0x3f

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SETTING_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SYSTEM:I = 0x40

.field public static final greylist USES_POLICY_KNOX_CUSTOM_SYSTEM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final greylist USES_POLICY_KNOX_DEACTIVATE_LICENSE:I = 0x6f

.field public static final greylist USES_POLICY_KNOX_DEACTIVATE_LICENSE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field public static final greylist USES_POLICY_KNOX_DEVICE_CONFIGURATION:I = 0x6d

.field public static final greylist USES_POLICY_KNOX_DEVICE_CONFIGURATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

.field public static final greylist USES_POLICY_KNOX_DEX:I = 0x54

.field public static final greylist USES_POLICY_KNOX_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEX"

.field public static final greylist USES_POLICY_KNOX_DUAL_DAR:I = 0x57

.field public static final greylist USES_POLICY_KNOX_DUAL_DAR_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

.field public static final greylist USES_POLICY_KNOX_EBILLING_NOMDM:I = 0x53

.field public static final greylist USES_POLICY_KNOX_EBILLING_NOMDM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

.field public static final greylist USES_POLICY_KNOX_ENHANCED_ATTESTATION:I = 0x6b

.field public static final greylist USES_POLICY_KNOX_ENHANCED_ATTESTATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

.field public static final greylist USES_POLICY_KNOX_ENTERPRISE_BILLING:I = 0x44

.field public static final greylist USES_POLICY_KNOX_ENTERPRISE_BILLING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING"

.field public static final greylist USES_POLICY_KNOX_FORESIGHT:I = 0x7a

.field public static final greylist USES_POLICY_KNOX_FORESIGHT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_FORESIGHT"

.field public static final greylist USES_POLICY_KNOX_GENERIC_VPN:I = 0x36

.field public static final greylist USES_POLICY_KNOX_GENERIC_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final greylist USES_POLICY_KNOX_HDM:I = 0x6e

.field public static final greylist USES_POLICY_KNOX_HDM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HDM"

.field public static final greylist USES_POLICY_KNOX_KEYSTORE:I = 0x3e

.field public static final greylist USES_POLICY_KNOX_KEYSTORE_PER_APP:I = 0x4b

.field public static final greylist USES_POLICY_KNOX_KEYSTORE_PER_APP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field public static final greylist USES_POLICY_KNOX_KEYSTORE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field public static final greylist USES_POLICY_KNOX_MPOS:I = 0x79

.field public static final greylist USES_POLICY_KNOX_MPOS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MPOS"

.field public static final greylist USES_POLICY_KNOX_NDA_AI:I = 0x76

.field public static final greylist USES_POLICY_KNOX_NDA_AI_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_AI"

.field public static final greylist USES_POLICY_KNOX_NDA_DATA_ANALYTICS:I = 0x75

.field public static final greylist USES_POLICY_KNOX_NDA_DATA_ANALYTICS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

.field public static final greylist USES_POLICY_KNOX_NDA_DEVICE_SETTINGS:I = 0x74

.field public static final greylist USES_POLICY_KNOX_NDA_DEVICE_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

.field public static final greylist USES_POLICY_KNOX_NDA_PERIPHERAL:I = 0x73

.field public static final greylist USES_POLICY_KNOX_NDA_PERIPHERAL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

.field public static final greylist USES_POLICY_KNOX_NETWORK_FILTER_MGMT:I = 0x7c

.field public static final greylist USES_POLICY_KNOX_NETWORK_FILTER_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_MGMT"

.field public static final greylist USES_POLICY_KNOX_NETWORK_FILTER_SP:I = 0x7d

.field public static final greylist USES_POLICY_KNOX_NETWORK_FILTER_SP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

.field public static final greylist USES_POLICY_KNOX_NPA:I = 0x52

.field public static final greylist USES_POLICY_KNOX_NPA_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NPA"

.field public static final greylist USES_POLICY_KNOX_RC_ACCESS_GRANT:I = 0x82

.field public static final greylist USES_POLICY_KNOX_RC_ACCESS_GRANT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RC_API_ACCESS_GRANT"

.field public static final greylist USES_POLICY_KNOX_RESTRICTION_PERM:I = 0x3c

.field public static final greylist USES_POLICY_KNOX_RESTRICTION_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

.field public static final greylist USES_POLICY_KNOX_SDP:I = 0x47

.field public static final greylist USES_POLICY_KNOX_SDP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field public static final greylist USES_POLICY_KNOX_SEAMS_PERM:I = 0x3a

.field public static final greylist USES_POLICY_KNOX_SEAMS_PERM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY:I = 0x72

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM:I = 0x3b

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

.field public static final greylist USES_POLICY_KNOX_SEAMS_SEPOLICY_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

.field public static final greylist USES_POLICY_KNOX_SECURE_TIMER:I = 0x58

.field public static final greylist USES_POLICY_KNOX_SECURE_TIMER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURE_TIMER"

.field public static final greylist USES_POLICY_KNOX_SIM_RESTRICTION:I = 0x59

.field public static final greylist USES_POLICY_KNOX_SIM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

.field public static final greylist USES_POLICY_KNOX_UCM_MGMT:I = 0x56

.field public static final greylist USES_POLICY_KNOX_UCM_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCM_PRIVILEGED:I = 0x4c

.field public static final greylist USES_POLICY_KNOX_UCM_PRIVILEGED_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCSM_ESE:I = 0x48

.field public static final greylist USES_POLICY_KNOX_UCSM_ESE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCSM_OTHER:I = 0x49

.field public static final greylist USES_POLICY_KNOX_UCSM_OTHER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

.field public static final greylist USES_POLICY_KNOX_UCS_PLUGIN:I = 0x4a

.field public static final greylist USES_POLICY_KNOX_UCS_PLUGIN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

.field public static final greylist USES_POLICY_MDM_APN_SETTINGS:I = 0x22

.field public static final greylist USES_POLICY_MDM_APN_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APN"

.field public static final greylist USES_POLICY_MDM_APPLICATION:I = 0x16

.field public static final greylist USES_POLICY_MDM_APPLICATION_PERMISSION:I = 0x5a

.field public static final greylist USES_POLICY_MDM_APPLICATION_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

.field public static final greylist USES_POLICY_MDM_APPLICATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final greylist USES_POLICY_MDM_AUDIT_LOG_PERMISSION:I = 0x2b

.field public static final greylist USES_POLICY_MDM_AUDIT_LOG_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

.field public static final greylist USES_POLICY_MDM_BLUETOOTH:I = 0x17

.field public static final greylist USES_POLICY_MDM_BLUETOOTH_SECURE_MODE:I = 0x33

.field public static final greylist USES_POLICY_MDM_BLUETOOTH_SECURE_MODE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

.field public static final greylist USES_POLICY_MDM_BLUETOOTH_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

.field public static final greylist USES_POLICY_MDM_BROWSER_PROXY:I = 0x35

.field public static final greylist USES_POLICY_MDM_BROWSER_PROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

.field public static final greylist USES_POLICY_MDM_BROWSER_SETTINGS:I = 0x24

.field public static final greylist USES_POLICY_MDM_BROWSER_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

.field public static final greylist USES_POLICY_MDM_CERTIFICATE_PERMISSION:I = 0x2a

.field public static final greylist USES_POLICY_MDM_CERTIFICATE_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

.field public static final greylist USES_POLICY_MDM_DATE_TIME:I = 0x25

.field public static final greylist USES_POLICY_MDM_DATE_TIME_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DATE_TIME"

.field public static final greylist USES_POLICY_MDM_DEVICE_INVENTORY:I = 0x18

.field public static final greylist USES_POLICY_MDM_DEVICE_INVENTORY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_INVENTORY"

.field public static final greylist USES_POLICY_MDM_DUAL_SIM:I = 0x2f

.field public static final greylist USES_POLICY_MDM_DUAL_SIM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

.field public static final greylist USES_POLICY_MDM_EMAIL_ACCOUNT:I = 0x20

.field public static final greylist USES_POLICY_MDM_EMAIL_ACCOUNT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_CONTAINER:I = 0x30

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_CONTAINER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN:I = 0x27

.field public static final greylist USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

.field public static final greylist USES_POLICY_MDM_EXCHANGE_ACCOUNT:I = 0x19

.field public static final greylist USES_POLICY_MDM_EXCHANGE_ACCOUNT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EXCHANGE"

.field public static final greylist USES_POLICY_MDM_FIREWALL:I = 0x26

.field public static final greylist USES_POLICY_MDM_FIREWALL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_FIREWALL"

.field public static final greylist USES_POLICY_MDM_GEOFENCING:I = 0x2d

.field public static final greylist USES_POLICY_MDM_GEOFENCING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GEOFENCING"

.field public static final greylist USES_POLICY_MDM_GLOBALPROXY:I = 0x4d

.field public static final greylist USES_POLICY_MDM_GLOBALPROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

.field public static final greylist USES_POLICY_MDM_HARDWARE_CONTROL:I = 0x1d

.field public static final greylist USES_POLICY_MDM_HARDWARE_CONTROL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

.field public static final greylist USES_POLICY_MDM_KIOSK_MODE:I = 0x29

.field public static final greylist USES_POLICY_MDM_KIOSK_MODE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

.field public static final greylist USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS:I = 0x38

.field public static final greylist USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field public static final greylist USES_POLICY_MDM_KNOX_MOBILE_THREAT_DEFENSE:I = 0x6a

.field public static final greylist USES_POLICY_MDM_KNOX_MOBILE_THREAT_DEFENSE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final greylist USES_POLICY_MDM_LDAP_SETTINGS:I = 0x2c

.field public static final greylist USES_POLICY_MDM_LDAP_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LDAP"

.field public static final greylist USES_POLICY_MDM_LICENSE_LOG:I = 0x31

.field public static final greylist USES_POLICY_MDM_LICENSE_LOG_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

.field public static final greylist USES_POLICY_MDM_LOCATION:I = 0x1f

.field public static final greylist USES_POLICY_MDM_LOCATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCATION"

.field public static final greylist USES_POLICY_MDM_LOCKSCREEN:I = 0x2e

.field public static final greylist USES_POLICY_MDM_LOCKSCREEN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

.field public static final greylist USES_POLICY_MDM_MULTI_USER_MGMT:I = 0x32

.field public static final greylist USES_POLICY_MDM_MULTI_USER_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

.field public static final greylist USES_POLICY_MDM_PHONE_RESTRICTION:I = 0x23

.field public static final greylist USES_POLICY_MDM_PHONE_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

.field public static final greylist USES_POLICY_MDM_RCP_SYNC_MGMT:I = 0x39

.field public static final greylist USES_POLICY_MDM_RCP_SYNC_MGMT_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field public static final greylist USES_POLICY_MDM_REMOTE_CONTROL:I = 0x28

.field public static final greylist USES_POLICY_MDM_REMOTE_CONTROL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

.field public static final greylist USES_POLICY_MDM_RESTRICTION:I = 0x1e

.field public static final greylist USES_POLICY_MDM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field public static final greylist USES_POLICY_MDM_ROAMING:I = 0x1a

.field public static final greylist USES_POLICY_MDM_ROAMING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ROAMING"

.field public static final greylist USES_POLICY_MDM_SECURITY:I = 0x1c

.field public static final greylist USES_POLICY_MDM_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURITY"

.field public static final greylist USES_POLICY_MDM_SMARTCARD:I = 0x5b

.field public static final greylist USES_POLICY_MDM_SMARTCARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SMARTCARD"

.field public static final greylist USES_POLICY_MDM_SSO:I = 0x43

.field public static final greylist USES_POLICY_MDM_SSO_TAG:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

.field public static final greylist USES_POLICY_MDM_VPN:I = 0x21

.field public static final greylist USES_POLICY_MDM_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN"

.field public static final greylist USES_POLICY_MDM_WIFI:I = 0x1b

.field public static final greylist USES_POLICY_MDM_WIFI_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_WIFI"

.field public static final greylist USES_POLICY_RAPID_TEST_ATTESTATION:I = 0x7f

.field public static final greylist USES_POLICY_RAPID_TEST_ATTESTATION_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ATTESTATION"

.field public static final greylist USES_POLICY_RAPID_TEST_SPD:I = 0x7e

.field public static final greylist USES_POLICY_RAPID_TEST_SPD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

.field public static greylist sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static greylist sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist timaversion:Z


# instance fields
.field public greylist mAuthorized:Z

.field public greylist mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field public greylist mIsPseudoAdmin:Z

.field public greylist mLicenseExpiryTime:J

.field public final greylist mReceiver:Landroid/content/pm/ResolveInfo;

.field public greylist mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mUsesPolicies:Ljava/util/BitSet;

.field public greylist mVisible:Z


# direct methods
.method static constructor greylist <clinit>()V
    .locals 13

    const-string v0, "ro.config.timaversion"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b96

    const v2, 0x1040a3e

    const/16 v3, 0x16

    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b99

    const v2, 0x1040a41

    const/16 v3, 0x17

    const-string v4, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba5

    const v2, 0x1040a4d

    const/16 v3, 0x18

    const-string v4, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb0

    const v2, 0x1040a58

    const/16 v3, 0x19

    const-string v4, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bc5

    const v2, 0x1040a71

    const/16 v3, 0x1a

    const-string v4, "com.samsung.android.knox.permission.KNOX_ROAMING"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bd7

    const v2, 0x1040a83

    const/16 v3, 0x1b

    const-string v4, "com.samsung.android.knox.permission.KNOX_WIFI"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bcc

    const v2, 0x1040a78

    const/16 v3, 0x1c

    const-string v4, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb4

    const v2, 0x1040a5c

    const/16 v3, 0x1d

    const-string v4, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bc4

    const v2, 0x1040a70

    const/16 v3, 0x1e

    const-string v4, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bbe

    const v2, 0x1040a6a

    const/16 v3, 0x1f

    const-string v4, "com.samsung.android.knox.permission.KNOX_LOCATION"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba9

    const v2, 0x1040a51

    const/16 v3, 0x20

    const-string v4, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bd6

    const v2, 0x1040a82

    const/16 v3, 0x21

    const-string v4, "com.samsung.android.knox.permission.KNOX_VPN"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b94

    const v2, 0x1040a3c

    const/16 v3, 0x22

    const-string v4, "com.samsung.android.knox.permission.KNOX_APN"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x23

    const-string v2, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const v3, 0x1040bc0

    const v4, 0x1040a6c

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b9c

    const v2, 0x1040a44

    const/16 v5, 0x24

    const-string v6, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b9b

    const v2, 0x1040a43

    const/16 v5, 0x35

    const-string v6, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba3

    const v2, 0x1040a4b

    const/16 v5, 0x25

    const-string v6, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b84

    const v2, 0x1040a2b

    const/16 v5, 0x36

    const-string v6, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b7c

    const v2, 0x1040a23

    const/16 v5, 0x37

    const-string v6, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb1

    const v2, 0x1040a59

    const/16 v5, 0x26

    const-string v6, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040baa

    const v2, 0x1040a52

    const/16 v5, 0x27

    const-string v6, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bc3

    const v2, 0x1040a6f

    const/16 v5, 0x28

    const-string v6, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb7

    const v2, 0x1040a5f

    const/16 v5, 0x29

    const-string v6, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba0

    const v2, 0x1040a48

    const/16 v5, 0x2a

    const-string v6, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b98

    const v2, 0x1040a40

    const/16 v5, 0x2b

    const-string v6, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bab

    const v2, 0x1040a53

    const/16 v5, 0x30

    const-string v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bbc

    const v2, 0x1040a64

    const/16 v5, 0x2c

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bbd

    const v2, 0x1040a65

    const/16 v5, 0x2e

    const-string v6, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba7

    const v2, 0x1040a4f

    const/16 v5, 0x2f

    const-string v6, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bc8

    const v2, 0x1040a74

    const/16 v5, 0x43

    const-string v6, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb2

    const v2, 0x1040a5a

    const/16 v5, 0x2d

    const-string v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba8

    const v2, 0x1040a50

    const/16 v5, 0x31

    const-string v6, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bbf

    const v2, 0x1040a6b

    const/16 v5, 0x32

    const-string v6, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b9a

    const v2, 0x1040a42

    const/16 v5, 0x33

    const-string v6, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b4f

    const v2, 0x10409f6

    const/16 v5, 0x6b

    const-string v6, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bd0

    const v2, 0x1040a7c

    const/16 v5, 0x6a

    const-string v6, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b47

    const v2, 0x10409ee

    const/16 v5, 0x6c

    const-string v6, "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bba

    const v2, 0x1040a62

    const/16 v5, 0x39

    const-string v6, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb8

    const v2, 0x1040a60

    const/16 v5, 0x38

    const-string v6, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba4

    const v2, 0x1040a4c

    const/16 v5, 0x6f

    const-string v6, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bca

    const v2, 0x1040a76

    const/16 v5, 0x3a

    const-string v6, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x3b

    const-string v2, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    const v5, 0x1040bcb

    const v6, 0x1040a77

    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bbb

    const v2, 0x1040a63

    const/16 v7, 0x3c

    const-string v8, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b7f

    const v2, 0x1040a26

    const/16 v7, 0x3f

    const-string v8, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x40

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const v7, 0x1040b80

    const v8, 0x1040a27

    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x41

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    const v9, 0x1040b7d

    const v10, 0x1040a24

    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x46

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x44

    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const v9, 0x1040b50

    const v10, 0x10409f7

    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b9e

    const v2, 0x1040a46

    const/16 v11, 0x3d

    const-string v12, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bd4

    const v2, 0x1040a80

    const/16 v11, 0x48

    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bd5

    const v2, 0x1040a81

    const/16 v11, 0x49

    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040c2b

    const v2, 0x1040ad6

    const/16 v11, 0x4a

    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bd3

    const v2, 0x1040a7f

    const/16 v11, 0x4c

    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb5

    const v2, 0x1040a5d

    const/16 v11, 0x3e

    const-string v12, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb6

    const v2, 0x1040a5e

    const/16 v11, 0x4b

    const-string v12, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bc9

    const v2, 0x1040a75

    const/16 v11, 0x42

    const-string v12, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bc6

    const v2, 0x1040a72

    const/16 v11, 0x47

    const-string v12, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bb3

    const v2, 0x1040a5b

    const/16 v11, 0x4d

    const-string v12, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b9f

    const v2, 0x1040a47

    const/16 v11, 0x4e

    const-string v12, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba1

    const v2, 0x1040a49

    const/16 v11, 0x4f

    const-string v12, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b76

    const v2, 0x1040a1d

    const/16 v11, 0x50

    const-string v12, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b77

    const v2, 0x1040a1e

    const/16 v11, 0x51

    const-string v12, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b87

    const v2, 0x1040a2e

    const/16 v11, 0x52

    const-string v12, "com.samsung.android.knox.permission.KNOX_NPA"

    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x53

    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040ba6

    const v2, 0x1040a4e

    const/16 v9, 0x54

    const-string v10, "com.samsung.android.knox.permission.KNOX_DEX"

    invoke-static {v9, v10, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x55

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040c2a

    const v2, 0x1040ad5

    const/16 v7, 0x56

    const-string v8, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b82

    const v2, 0x1040a29

    const/16 v7, 0x57

    const-string v8, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x59

    const-string v2, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b97

    const v2, 0x1040a3f

    const/16 v3, 0x5a

    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040bcf

    const v2, 0x1040a7b

    const/16 v3, 0x5b

    const-string v4, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b85

    const v2, 0x1040a2c

    const/16 v3, 0x6e

    const-string v4, "com.samsung.android.knox.permission.KNOX_HDM"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b74

    const v2, 0x1040a1b

    const/16 v3, 0x70

    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x71

    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN"

    const v3, 0x1040b7b

    const v4, 0x1040a22

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b83

    const v2, 0x1040a2a

    const/16 v7, 0x7a

    const-string v8, "com.samsung.android.knox.permission.KNOX_FORESIGHT"

    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b79

    const v2, 0x1040a20

    const/16 v7, 0x7b

    const-string v8, "com.samsung.android.knox.permission.KNOX_AUTH_MGMT"

    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x72

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b81

    const v2, 0x1040a28

    const/16 v5, 0x6d

    const-string v6, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040be6

    const v2, 0x1040a92

    const/16 v5, 0x73

    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b4c

    const v2, 0x10409f3

    const/16 v5, 0x74

    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b4b

    const v2, 0x10409f2

    const/16 v5, 0x75

    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b8d

    const v2, 0x1040a35

    const/16 v5, 0x76

    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_AI"

    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x77

    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x78

    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b86

    const v2, 0x1040a2d

    const/16 v3, 0x79

    const-string v4, "com.samsung.android.knox.permission.KNOX_MPOS"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040a2f

    const/16 v2, 0x7c

    const-string v3, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_MGMT"

    const v4, 0x1040b88

    invoke-static {v2, v3, v4, v1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x7d

    const-string v2, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    const v3, 0x1040a30

    invoke-static {v1, v2, v4, v3, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x7e

    const-string v2, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    invoke-static {v1, v2, v4, v3, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const/16 v1, 0x7f

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_ATTESTATION"

    invoke-static {v1, v2, v4, v3, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b7a

    const v2, 0x1040a21

    const/16 v3, 0x80

    const-string v4, "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b75

    const v2, 0x1040a1c

    const/16 v3, 0x81

    const-string v4, "com.samsung.android.knox.permission.KNOX_API_ACCESS_GRANT"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b8a

    const v2, 0x1040a32

    const/16 v3, 0x82

    const-string v4, "com.samsung.android.knox.permission.KNOX_RC_API_ACCESS_GRANT"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    const v1, 0x1040b78

    const v2, 0x1040a1f

    const/16 v3, 0x83

    const-string v4, "com.samsung.android.knox.permission.KNOX_ANALYTICS_DEVELOPER"

    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v5

    aget-object v2, v2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    return-void
.end method

.method public constructor greylist <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public greylist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLicenseExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    return-wide v0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NonExist"

    return-object p0
.end method

.method public greylist getReceiver()Landroid/content/pm/ResolveInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public greylist getReceiverName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getRequestedPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public greylist getTagForPolicy(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x16

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public greylist getUsedPolicies()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v6, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v7, v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v8, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v3, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public greylist isAuthorized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    return p0
.end method

.method public greylist isProxy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist isPseudo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    return p0
.end method

.method public greylist isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result p0

    return p0
.end method

.method public greylist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public greylist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public greylist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public greylist parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "EnterpriseDeviceAdminInfo"

    const-string v1, ","

    const-string v2, "Failed adding asset path:"

    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v5, v6, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to read AndroidManifest.xml of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    :cond_1
    return-object v4

    :cond_2
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v6, 0x0

    :try_start_2
    new-instance v7, Landroid/content/res/Resources;

    invoke-direct {v7, v5, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v4

    :cond_4
    :goto_4
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-eq v10, v9, :cond_a

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v3, :cond_a

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v4, v8

    goto/16 :goto_d

    :catch_2
    move-exception v3

    goto/16 :goto_8

    :cond_5
    :goto_5
    if-eq v10, v11, :cond_4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, "uses-permission"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v7, v2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_7
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_8
    move-object v11, v10

    :goto_6
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_9

    iget-object v12, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/util/BitSet;->set(I)V

    if-eqz v10, :cond_9

    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :cond_a
    if-eqz v8, :cond_b

    :goto_7
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :catch_3
    move-exception v3

    move-object v8, v4

    :goto_8
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    :goto_9
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    :cond_c
    invoke-static {v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_e
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_f
    move-object v4, v3

    :goto_b
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v8, v6

    :goto_c
    array-length v9, v7

    if-ge v8, v9, :cond_d

    aget-object v9, v7, v8

    iget-object v10, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add Granted permission : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :catch_4
    const-string p1, "Failed to get ELM permissions"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object p0

    :goto_d
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_12
    throw p0
.end method

.method public final greylist readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public greylist readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-void
.end method

.method public greylist setAuthorized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    return-void
.end method

.method public greylist setLicenseExpiry(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceAdminInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public greylist usesMDMPolicy()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/BitSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist usesPolicy(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method public final greylist writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 1

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, -0x1

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
