.class final enum Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SqeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum API_LEVEL:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum CHIPSET_INFO:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field private static final CMD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DRIVER_FW_VER:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum MODE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SQE_ALL_COMMANDS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum STEERING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_6E:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_ADPS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_APE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_AUTO_CONNECTION_HOTSPOT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_AUTO_HOTSPOT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_AUTO_PROFILE_SHARE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_AUTO_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_AWARE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_DETECT_SUSPICIOUS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_DIRECT_CONCURRENT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_DUAL_SOFT_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_EAP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_EAP_FEATURE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_HS20:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_MHS_6E:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_MHS_PMF_ONOFF:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_MHS_POWER_SAVING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_MHS_SECURITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_MIMO:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_PROFILE_REQUEST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_QR:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_RSDB:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_SECURE_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_SECURITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_SHOW_NETWORK_QUALITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_SWITCH_TO_MOBILE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_TDLS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_TOGETHER:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_TWT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

.field public static final enum SUPPORT_WIFI_SHARING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;


# instance fields
.field private final cmd:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;
    .locals 37

    .line 1
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SQE_ALL_COMMANDS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 2
    .line 3
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->CHIPSET_INFO:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 4
    .line 5
    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->DRIVER_FW_VER:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 6
    .line 7
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->MODE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 8
    .line 9
    sget-object v5, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_6E:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 10
    .line 11
    sget-object v6, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->API_LEVEL:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 12
    .line 13
    sget-object v7, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MIMO:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 14
    .line 15
    sget-object v8, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->STEERING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 16
    .line 17
    sget-object v9, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_HS20:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 18
    .line 19
    sget-object v10, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_EAP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 20
    .line 21
    sget-object v11, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_EAP_FEATURE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 22
    .line 23
    sget-object v12, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SECURITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 24
    .line 25
    sget-object v13, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_QR:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 26
    .line 27
    sget-object v14, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_DIRECT_CONCURRENT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 28
    .line 29
    sget-object v15, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_TDLS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 30
    .line 31
    sget-object v16, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AWARE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 32
    .line 33
    sget-object v17, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SWITCH_TO_MOBILE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 34
    .line 35
    sget-object v18, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_DETECT_SUSPICIOUS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 36
    .line 37
    sget-object v19, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_PROFILE_REQUEST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 38
    .line 39
    sget-object v20, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_TOGETHER:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 40
    .line 41
    sget-object v21, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_PROFILE_SHARE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 42
    .line 43
    sget-object v22, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SHOW_NETWORK_QUALITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 44
    .line 45
    sget-object v23, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 46
    .line 47
    sget-object v24, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_ADPS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 48
    .line 49
    sget-object v25, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_SECURITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 50
    .line 51
    sget-object v26, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_PMF_ONOFF:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 52
    .line 53
    sget-object v27, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_WIFI_SHARING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 54
    .line 55
    sget-object v28, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_RSDB:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 56
    .line 57
    sget-object v29, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_DUAL_SOFT_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 58
    .line 59
    sget-object v30, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_6E:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 60
    .line 61
    sget-object v31, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_POWER_SAVING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 62
    .line 63
    sget-object v32, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_HOTSPOT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 64
    .line 65
    sget-object v33, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_CONNECTION_HOTSPOT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 66
    .line 67
    sget-object v34, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SECURE_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 68
    .line 69
    sget-object v35, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_TWT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 70
    .line 71
    sget-object v36, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_APE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 72
    .line 73
    filled-new-array/range {v1 .. v36}, [Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 2
    .line 3
    const-string v1, "sqe_all_commands"

    .line 4
    .line 5
    const-string v2, "SQE_ALL_COMMANDS"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SQE_ALL_COMMANDS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "chipset_info"

    .line 17
    .line 18
    const-string v4, "CHIPSET_INFO"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->CHIPSET_INFO:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "driver_fw_ver"

    .line 29
    .line 30
    const-string v4, "DRIVER_FW_VER"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->DRIVER_FW_VER:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "mode"

    .line 41
    .line 42
    const-string v4, "MODE"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->MODE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 48
    .line 49
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "support_6e"

    .line 53
    .line 54
    const-string v4, "SUPPORT_6E"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_6E:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "api_level"

    .line 65
    .line 66
    const-string v4, "API_LEVEL"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->API_LEVEL:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 72
    .line 73
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "support_mimo"

    .line 77
    .line 78
    const-string v4, "SUPPORT_MIMO"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MIMO:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 84
    .line 85
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "steering"

    .line 89
    .line 90
    const-string v4, "STEERING"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->STEERING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 96
    .line 97
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "support_hs20"

    .line 102
    .line 103
    const-string v4, "SUPPORT_HS20"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_HS20:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 109
    .line 110
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "support_eap"

    .line 115
    .line 116
    const-string v4, "SUPPORT_EAP"

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_EAP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 122
    .line 123
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "support_eap_feature"

    .line 128
    .line 129
    const-string v4, "SUPPORT_EAP_FEATURE"

    .line 130
    .line 131
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_EAP_FEATURE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 135
    .line 136
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "support_security"

    .line 141
    .line 142
    const-string v4, "SUPPORT_SECURITY"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SECURITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 148
    .line 149
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "support_qr"

    .line 154
    .line 155
    const-string v4, "SUPPORT_QR"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_QR:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 161
    .line 162
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-string v2, "support_direct_concurrent"

    .line 167
    .line 168
    const-string v4, "SUPPORT_DIRECT_CONCURRENT"

    .line 169
    .line 170
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_DIRECT_CONCURRENT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 174
    .line 175
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-string v2, "support_tdls"

    .line 180
    .line 181
    const-string v4, "SUPPORT_TDLS"

    .line 182
    .line 183
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_TDLS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 187
    .line 188
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-string v2, "support_aware"

    .line 193
    .line 194
    const-string v4, "SUPPORT_AWARE"

    .line 195
    .line 196
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AWARE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 200
    .line 201
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-string v2, "support_switch_to_mobile"

    .line 206
    .line 207
    const-string v4, "SUPPORT_SWITCH_TO_MOBILE"

    .line 208
    .line 209
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SWITCH_TO_MOBILE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 213
    .line 214
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 215
    .line 216
    const/16 v1, 0x11

    .line 217
    .line 218
    const-string v2, "support_detect_suspicious"

    .line 219
    .line 220
    const-string v4, "SUPPORT_DETECT_SUSPICIOUS"

    .line 221
    .line 222
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_DETECT_SUSPICIOUS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 226
    .line 227
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 228
    .line 229
    const/16 v1, 0x12

    .line 230
    .line 231
    const-string v2, "support_profile_request"

    .line 232
    .line 233
    const-string v4, "SUPPORT_PROFILE_REQUEST"

    .line 234
    .line 235
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_PROFILE_REQUEST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 239
    .line 240
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 241
    .line 242
    const/16 v1, 0x13

    .line 243
    .line 244
    const-string v2, "support_together"

    .line 245
    .line 246
    const-string v4, "SUPPORT_TOGETHER"

    .line 247
    .line 248
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_TOGETHER:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 252
    .line 253
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 254
    .line 255
    const/16 v1, 0x14

    .line 256
    .line 257
    const-string v2, "support_auto_profile_share"

    .line 258
    .line 259
    const-string v4, "SUPPORT_AUTO_PROFILE_SHARE"

    .line 260
    .line 261
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_PROFILE_SHARE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 265
    .line 266
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 267
    .line 268
    const/16 v1, 0x15

    .line 269
    .line 270
    const-string v2, "support_show_network_quality"

    .line 271
    .line 272
    const-string v4, "SUPPORT_SHOW_NETWORK_QUALITY"

    .line 273
    .line 274
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SHOW_NETWORK_QUALITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 278
    .line 279
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 280
    .line 281
    const/16 v1, 0x16

    .line 282
    .line 283
    const-string v2, "support_auto_wifi"

    .line 284
    .line 285
    const-string v4, "SUPPORT_AUTO_WIFI"

    .line 286
    .line 287
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 291
    .line 292
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 293
    .line 294
    const/16 v1, 0x17

    .line 295
    .line 296
    const-string v2, "support_adps"

    .line 297
    .line 298
    const-string v4, "SUPPORT_ADPS"

    .line 299
    .line 300
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_ADPS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 304
    .line 305
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 306
    .line 307
    const/16 v1, 0x18

    .line 308
    .line 309
    const-string v2, "support_mhs_security"

    .line 310
    .line 311
    const-string v4, "SUPPORT_MHS_SECURITY"

    .line 312
    .line 313
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_SECURITY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 317
    .line 318
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 319
    .line 320
    const/16 v1, 0x19

    .line 321
    .line 322
    const-string v2, "support_mhs_pmf_onoff"

    .line 323
    .line 324
    const-string v4, "SUPPORT_MHS_PMF_ONOFF"

    .line 325
    .line 326
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_PMF_ONOFF:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 330
    .line 331
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 332
    .line 333
    const/16 v1, 0x1a

    .line 334
    .line 335
    const-string v2, "support_wifi_sharing"

    .line 336
    .line 337
    const-string v4, "SUPPORT_WIFI_SHARING"

    .line 338
    .line 339
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_WIFI_SHARING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 343
    .line 344
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 345
    .line 346
    const/16 v1, 0x1b

    .line 347
    .line 348
    const-string v2, "support_rsdb"

    .line 349
    .line 350
    const-string v4, "SUPPORT_RSDB"

    .line 351
    .line 352
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_RSDB:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 356
    .line 357
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 358
    .line 359
    const/16 v1, 0x1c

    .line 360
    .line 361
    const-string v2, "support_dual_soft_wifi"

    .line 362
    .line 363
    const-string v4, "SUPPORT_DUAL_SOFT_WIFI"

    .line 364
    .line 365
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_DUAL_SOFT_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 369
    .line 370
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 371
    .line 372
    const/16 v1, 0x1d

    .line 373
    .line 374
    const-string v2, "support_mhs_6e"

    .line 375
    .line 376
    const-string v4, "SUPPORT_MHS_6E"

    .line 377
    .line 378
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_6E:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 382
    .line 383
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 384
    .line 385
    const/16 v1, 0x1e

    .line 386
    .line 387
    const-string v2, "support_mhs_power_saving"

    .line 388
    .line 389
    const-string v4, "SUPPORT_MHS_POWER_SAVING"

    .line 390
    .line 391
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_MHS_POWER_SAVING:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 395
    .line 396
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 397
    .line 398
    const/16 v1, 0x1f

    .line 399
    .line 400
    const-string v2, "support_auto_hotspot"

    .line 401
    .line 402
    const-string v4, "SUPPORT_AUTO_HOTSPOT"

    .line 403
    .line 404
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_HOTSPOT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 408
    .line 409
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 410
    .line 411
    const/16 v1, 0x20

    .line 412
    .line 413
    const-string v2, "support_auto_connection_hotspot"

    .line 414
    .line 415
    const-string v4, "SUPPORT_AUTO_CONNECTION_HOTSPOT"

    .line 416
    .line 417
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_AUTO_CONNECTION_HOTSPOT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 421
    .line 422
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 423
    .line 424
    const/16 v1, 0x21

    .line 425
    .line 426
    const-string v2, "support_secure_wifi"

    .line 427
    .line 428
    const-string v4, "SUPPORT_SECURE_WIFI"

    .line 429
    .line 430
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_SECURE_WIFI:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 434
    .line 435
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 436
    .line 437
    const/16 v1, 0x22

    .line 438
    .line 439
    const-string v2, "support_twt"

    .line 440
    .line 441
    const-string v4, "SUPPORT_TWT"

    .line 442
    .line 443
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_TWT:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 447
    .line 448
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 449
    .line 450
    const/16 v1, 0x23

    .line 451
    .line 452
    const-string v2, "support_ape"

    .line 453
    .line 454
    const-string v4, "SUPPORT_APE"

    .line 455
    .line 456
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    .line 458
    .line 459
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->SUPPORT_APE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 460
    .line 461
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->$values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->$VALUES:[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 466
    .line 467
    new-instance v0, Ljava/util/HashMap;

    .line 468
    .line 469
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 470
    .line 471
    .line 472
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->CMD_MAP:Ljava/util/Map;

    .line 473
    .line 474
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    array-length v1, v0

    .line 479
    :goto_0
    if-ge v3, v1, :cond_0

    .line 480
    .line 481
    aget-object v2, v0, v3

    .line 482
    .line 483
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->CMD_MAP:Ljava/util/Map;

    .line 484
    .line 485
    iget-object v5, v2, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->cmd:Ljava/lang/String;

    .line 486
    .line 487
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    add-int/lit8 v3, v3, 0x1

    .line 491
    .line 492
    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->cmd:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->CMD_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->$VALUES:[Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->cmd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
