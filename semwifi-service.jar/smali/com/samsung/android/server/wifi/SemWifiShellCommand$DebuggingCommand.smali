.class final enum Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DebuggingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITHOUT_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITH_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum CHECK_UNAUTHORIZED_WIFI_RRO_WITHOUT_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum CHECK_UNAUTHORIZED_WIFI_RRO_WITH_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field private static final CMD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GET_AUTOWIFI_DEF_VAL:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_AUTOWIFI_DUMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_CANDIDATE_NETWORK_SCORES:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_CONFIGURED_NETWORK_LOCATIONS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_LAST_SELECTED_NETWORK_ID:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_LAST_SELECTED_TIMESTAMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_SAR_MANAGERS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum GET_WIFI7_DISABLED_COUNTRY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum HAS_CONFIGURED_NETWORK_LOCATIONS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum HELP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum HELP_HYPHEN:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SCAN_QOS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SET_LAST_SELECTED_NETWORK_ID:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SET_LAST_SELECTED_TIMESTAMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SET_PNO_SCAN_ENABLED:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SET_PNO_SCAN_STATE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SET_VERBOSE_ENABLED:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum SHOULD_SHOW_AUTOWIFI_BUBBLETIP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

.field public static final enum TRIGGER_BACKOFF:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;


# instance fields
.field private final cmd:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;
    .locals 24

    .line 1
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HELP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 2
    .line 3
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HELP_HYPHEN:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 4
    .line 5
    sget-object v3, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SCAN_QOS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 6
    .line 7
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_VERBOSE_ENABLED:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 8
    .line 9
    sget-object v5, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->TRIGGER_BACKOFF:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 10
    .line 11
    sget-object v6, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SHOULD_SHOW_AUTOWIFI_BUBBLETIP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 12
    .line 13
    sget-object v7, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_AUTOWIFI_DUMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 14
    .line 15
    sget-object v8, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_WIFI7_DISABLED_COUNTRY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 16
    .line 17
    sget-object v9, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_SAR_MANAGERS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 18
    .line 19
    sget-object v10, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_PNO_SCAN_ENABLED:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 20
    .line 21
    sget-object v11, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_PNO_SCAN_STATE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 22
    .line 23
    sget-object v12, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_AUTOWIFI_DEF_VAL:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 24
    .line 25
    sget-object v13, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_CONFIGURED_NETWORK_LOCATIONS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 26
    .line 27
    sget-object v14, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HAS_CONFIGURED_NETWORK_LOCATIONS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 28
    .line 29
    sget-object v15, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_CANDIDATE_NETWORK_SCORES:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 30
    .line 31
    sget-object v16, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_LAST_SELECTED_TIMESTAMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 32
    .line 33
    sget-object v17, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_LAST_SELECTED_TIMESTAMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 34
    .line 35
    sget-object v18, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_LAST_SELECTED_NETWORK_ID:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 36
    .line 37
    sget-object v19, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_LAST_SELECTED_NETWORK_ID:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 38
    .line 39
    sget-object v20, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_UNAUTHORIZED_WIFI_RRO_WITH_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 40
    .line 41
    sget-object v21, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_UNAUTHORIZED_WIFI_RRO_WITHOUT_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 42
    .line 43
    sget-object v22, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITH_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 44
    .line 45
    sget-object v23, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITHOUT_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 46
    .line 47
    filled-new-array/range {v1 .. v23}, [Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 2
    .line 3
    const-string v1, "help"

    .line 4
    .line 5
    const-string v2, "HELP"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HELP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "-h"

    .line 17
    .line 18
    const-string v4, "HELP_HYPHEN"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HELP_HYPHEN:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "scan-qos"

    .line 29
    .line 30
    const-string v4, "SCAN_QOS"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SCAN_QOS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "set_verbose_enabled"

    .line 41
    .line 42
    const-string v4, "SET_VERBOSE_ENABLED"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_VERBOSE_ENABLED:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 48
    .line 49
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "trigger_backoff"

    .line 53
    .line 54
    const-string v4, "TRIGGER_BACKOFF"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->TRIGGER_BACKOFF:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "should_show_autowifi_bubbletip"

    .line 65
    .line 66
    const-string v4, "SHOULD_SHOW_AUTOWIFI_BUBBLETIP"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SHOULD_SHOW_AUTOWIFI_BUBBLETIP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 72
    .line 73
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "get_autowifi_dump"

    .line 77
    .line 78
    const-string v4, "GET_AUTOWIFI_DUMP"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_AUTOWIFI_DUMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 84
    .line 85
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "get_wifi7_disabled_country"

    .line 89
    .line 90
    const-string v4, "GET_WIFI7_DISABLED_COUNTRY"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_WIFI7_DISABLED_COUNTRY:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 96
    .line 97
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "get_sar_managers"

    .line 102
    .line 103
    const-string v4, "GET_SAR_MANAGERS"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_SAR_MANAGERS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 109
    .line 110
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "set_pno_scan_enabled"

    .line 115
    .line 116
    const-string v4, "SET_PNO_SCAN_ENABLED"

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_PNO_SCAN_ENABLED:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 122
    .line 123
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "set_pno_scan_state"

    .line 128
    .line 129
    const-string v4, "SET_PNO_SCAN_STATE"

    .line 130
    .line 131
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_PNO_SCAN_STATE:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 135
    .line 136
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "get_autowifi_def_val"

    .line 141
    .line 142
    const-string v4, "GET_AUTOWIFI_DEF_VAL"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_AUTOWIFI_DEF_VAL:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 148
    .line 149
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "get_configured_network_locations"

    .line 154
    .line 155
    const-string v4, "GET_CONFIGURED_NETWORK_LOCATIONS"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_CONFIGURED_NETWORK_LOCATIONS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 161
    .line 162
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-string v2, "has_configured_network_locations"

    .line 167
    .line 168
    const-string v4, "HAS_CONFIGURED_NETWORK_LOCATIONS"

    .line 169
    .line 170
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->HAS_CONFIGURED_NETWORK_LOCATIONS:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 174
    .line 175
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-string v2, "get_candidate_network_scores"

    .line 180
    .line 181
    const-string v4, "GET_CANDIDATE_NETWORK_SCORES"

    .line 182
    .line 183
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_CANDIDATE_NETWORK_SCORES:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 187
    .line 188
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-string v2, "get_last_selected_timestamp"

    .line 193
    .line 194
    const-string v4, "GET_LAST_SELECTED_TIMESTAMP"

    .line 195
    .line 196
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_LAST_SELECTED_TIMESTAMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 200
    .line 201
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-string v2, "set_last_selected_timestamp"

    .line 206
    .line 207
    const-string v4, "SET_LAST_SELECTED_TIMESTAMP"

    .line 208
    .line 209
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_LAST_SELECTED_TIMESTAMP:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 213
    .line 214
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 215
    .line 216
    const/16 v1, 0x11

    .line 217
    .line 218
    const-string v2, "get_last_selected_network_id"

    .line 219
    .line 220
    const-string v4, "GET_LAST_SELECTED_NETWORK_ID"

    .line 221
    .line 222
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->GET_LAST_SELECTED_NETWORK_ID:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 226
    .line 227
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 228
    .line 229
    const/16 v1, 0x12

    .line 230
    .line 231
    const-string v2, "set_last_selected_network_id"

    .line 232
    .line 233
    const-string v4, "SET_LAST_SELECTED_NETWORK_ID"

    .line 234
    .line 235
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->SET_LAST_SELECTED_NETWORK_ID:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 239
    .line 240
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 241
    .line 242
    const/16 v1, 0x13

    .line 243
    .line 244
    const-string v2, "wifi_rro_test_with_toast"

    .line 245
    .line 246
    const-string v4, "CHECK_UNAUTHORIZED_WIFI_RRO_WITH_TOAST"

    .line 247
    .line 248
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_UNAUTHORIZED_WIFI_RRO_WITH_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 252
    .line 253
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 254
    .line 255
    const/16 v1, 0x14

    .line 256
    .line 257
    const-string v2, "wifi_rro_test_no_toast"

    .line 258
    .line 259
    const-string v4, "CHECK_UNAUTHORIZED_WIFI_RRO_WITHOUT_TOAST"

    .line 260
    .line 261
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_UNAUTHORIZED_WIFI_RRO_WITHOUT_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 265
    .line 266
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 267
    .line 268
    const/16 v1, 0x15

    .line 269
    .line 270
    const-string v2, "wifi_rro_test_get_list_with_toast"

    .line 271
    .line 272
    const-string v4, "CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITH_TOAST"

    .line 273
    .line 274
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITH_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 278
    .line 279
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 280
    .line 281
    const/16 v1, 0x16

    .line 282
    .line 283
    const-string v2, "wifi_rro_test_get_list_no_toast"

    .line 284
    .line 285
    const-string v4, "CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITHOUT_TOAST"

    .line 286
    .line 287
    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CHECK_GET_UNAUTHORIZED_WIFI_RRO_LIST_WITHOUT_TOAST:Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 291
    .line 292
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->$values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->$VALUES:[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 297
    .line 298
    new-instance v0, Ljava/util/HashMap;

    .line 299
    .line 300
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    .line 302
    .line 303
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CMD_MAP:Ljava/util/Map;

    .line 304
    .line 305
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    array-length v1, v0

    .line 310
    :goto_0
    if-ge v3, v1, :cond_0

    .line 311
    .line 312
    aget-object v2, v0, v3

    .line 313
    .line 314
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CMD_MAP:Ljava/util/Map;

    .line 315
    .line 316
    iget-object v5, v2, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->cmd:Ljava/lang/String;

    .line 317
    .line 318
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    add-int/lit8 v3, v3, 0x1

    .line 322
    .line 323
    goto :goto_0

    .line 324
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
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->cmd:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->CMD_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;
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
    const-class v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->$VALUES:[Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->cmd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
