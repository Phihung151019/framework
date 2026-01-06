.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_MH_ALLOWED:Ljava/lang/String; = "mh_all"

.field private static final KEY_MH_AP_TIMEOUT:Ljava/lang/String; = "mh_apt"

.field private static final KEY_MH_CHANNEL:Ljava/lang/String; = "mh_chn"

.field private static final KEY_MH_CONNECTED_MAX_CLIENT:Ljava/lang/String; = "mh_max"

.field private static final KEY_MH_CONNECTED_MAX_CLIENT_PER_SESSION:Ljava/lang/String; = "mh_psmax"

.field private static final KEY_MH_HIDDEN:Ljava/lang/String; = "mh_hdd"

.field private static final KEY_MH_IFACE:Ljava/lang/String; = "mh_ifa"

.field private static final KEY_MH_PMF:Ljava/lang/String; = "mh_pmf"

.field private static final KEY_MH_POWER_SAVE_MODE:Ljava/lang/String; = "mh_psm"

.field private static final KEY_MH_SSID_TYPE:Ljava/lang/String; = "mh_typ"

.field private static final KEY_MH_WIFI_AP_WIFI_SHARING:Ljava/lang/String; = "mh_swi"

.field private static final MHSH_SALOGGING:[[Ljava/lang/String;

.field private static final MHSI:[[Ljava/lang/String;

.field private static final MHSI_11AX:Ljava/lang/String; = "mhs_11ax"

.field private static final MHSI_AP_TIMEOUT:Ljava/lang/String; = "mhs_timeout"

.field private static final MHSI_BAND_CHANNEL:Ljava/lang/String; = "mhs_channel"

.field private static final MHSI_CLIENT_DATA_LIMIT:Ljava/lang/String; = "mh_cdl"

.field private static final MHSI_CLIENT_TIME_LIMIT:Ljava/lang/String; = "mh_ctl"

.field private static final MHSI_HIDDEN:Ljava/lang/String; = "mhs_hidden"

.field private static final MHSI_IFACE:Ljava/lang/String; = "mhs_iface"

.field private static final MHSI_LOCK_NETWORK:Ljava/lang/String; = "mh_ln"

.field private static final MHSI_MAX_DEVICE_CONNECTED:Ljava/lang/String; = "mhs_max_connected"

.field private static final MHSI_ONE_TIME_PASSWORD:Ljava/lang/String; = "mh_otp"

.field private static final MHSI_PMF:Ljava/lang/String; = "mhs_pmf"

.field private static final MHSI_POWER_SAVING:Ljava/lang/String; = "mhs_psm"

.field private static final MHSI_PRIORITIZE_TRAFFIC:Ljava/lang/String; = "mh_tp"

.field private static final MHSI_SALOGGING:[[Ljava/lang/String;

.field private static final MHSI_SSID_CHANGED:Ljava/lang/String; = "mhs_ssid"

.field private static final MHSI_TOTAL_DATA_LIMIT:Ljava/lang/String; = "mh_tdl"

.field private static final MHSI_WIFI_SHRING:Ljava/lang/String; = "mhs_swi"

.field private static final TAG:Ljava/lang/String; = "SaLoggingMHSI"

.field private static final mLogMessages:Z = true


# direct methods
.method public static synthetic $r8$lambda$LUlE1XUwX_CWvVHMyijktjd5haU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$WnyxbsVgUVhk8jwxM79P29KSAAI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->lambda$sendEvent$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "mh_ifa"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "mh_typ"

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "mh_hdd"

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v0, "mh_chn"

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v0, "mh_all"

    .line 28
    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v0, "mh_max"

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v0, "mh_swi"

    .line 40
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v0, "mh_apt"

    .line 46
    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v0, "mh_pmf"

    .line 52
    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v0, "mh_psmax"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const-string v12, "mh_psm"

    .line 64
    .line 65
    filled-new-array {v12, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    filled-new-array/range {v2 .. v12}, [[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sput-object v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->MHSI:[[Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "mhs_iface"

    .line 76
    .line 77
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v2, "mhs_ssid"

    .line 82
    .line 83
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v2, "mhs_hidden"

    .line 88
    .line 89
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v2, "mhs_channel"

    .line 94
    .line 95
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const-string v2, "mhs_11ax"

    .line 100
    .line 101
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v2, "mhs_max_connected"

    .line 106
    .line 107
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    const-string v2, "mhs_swi"

    .line 112
    .line 113
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    const-string v2, "mhs_timeout"

    .line 118
    .line 119
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    const-string v2, "mhs_pmf"

    .line 124
    .line 125
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    const-string v0, "mhs_psm"

    .line 134
    .line 135
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    filled-new-array/range {v3 .. v13}, [[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->MHSI_SALOGGING:[[Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "mh_tdl"

    .line 146
    .line 147
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const-string v0, "mh_cdl"

    .line 152
    .line 153
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v0, "mh_ctl"

    .line 158
    .line 159
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const-string v0, "mh_otp"

    .line 164
    .line 165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const-string v0, "mh_tp"

    .line 170
    .line 171
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v0, "mh_ln"

    .line 176
    .line 177
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    filled-new-array/range {v2 .. v7}, [[Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->MHSH_SALOGGING:[[Ljava/lang/String;

    .line 186
    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$sendEvent$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sendEvent:MHS_CONFIG "

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "SaLoggingMHSI"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static synthetic lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sendEvent: MHS_smart_hotspot"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "SaLoggingMHSI"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    const-string v0, "\\s+"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SaLoggingMHSI"

    .line 20
    .line 21
    if-eqz p1, :cond_c

    .line 22
    .line 23
    array-length v1, p1

    .line 24
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->MHSI:[[Ljava/lang/String;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    array-length v1, p1

    .line 32
    const/4 v3, 0x1

    .line 33
    sub-int/2addr v1, v3

    .line 34
    aget-object v1, p1, v1

    .line 35
    .line 36
    const-string v4, "-"

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    const-string p0, "can\'t parse bigdata extra in subarray"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "array.length = "

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    array-length v5, p1

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, "subarray.length = "

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    array-length v5, v1

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    new-instance v4, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 78
    .line 79
    invoke-direct {v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v5, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-virtual {v4, v6}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 89
    .line 90
    .line 91
    array-length v7, v2

    .line 92
    move v8, v6

    .line 93
    move v9, v8

    .line 94
    :goto_0
    if-ge v8, v7, :cond_6

    .line 95
    .line 96
    aget-object v10, v2, v8

    .line 97
    .line 98
    aget-object v11, v10, v6

    .line 99
    .line 100
    const-string v12, "mh_chn"

    .line 101
    .line 102
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eq v11, v3, :cond_4

    .line 107
    .line 108
    const-string v11, "mh_all"

    .line 109
    .line 110
    aget-object v12, v10, v6

    .line 111
    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eq v11, v3, :cond_4

    .line 117
    .line 118
    const-string v11, "mh_max"

    .line 119
    .line 120
    aget-object v12, v10, v6

    .line 121
    .line 122
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-ne v11, v3, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    const-string v11, "mh_psmax"

    .line 130
    .line 131
    aget-object v10, v10, v6

    .line 132
    .line 133
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-ne v10, v3, :cond_5

    .line 138
    .line 139
    new-instance v10, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v11, "sendEvent: Builder_value_MHS_CONFIG "

    .line 142
    .line 143
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    aget-object v11, p1, v9

    .line 147
    .line 148
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    aget-object v10, p1, v9

    .line 163
    .line 164
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    invoke-virtual {v4, v10}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    :goto_1
    sget-object v10, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->MHSI_SALOGGING:[[Ljava/lang/String;

    .line 173
    .line 174
    aget-object v10, v10, v9

    .line 175
    .line 176
    aget-object v10, v10, v6

    .line 177
    .line 178
    aget-object v11, p1, v9

    .line 179
    .line 180
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v11, "array"

    .line 186
    .line 187
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    aget-object v11, p1, v9

    .line 191
    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 203
    .line 204
    add-int/lit8 v8, v8, 0x1

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_6
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    invoke-direct {p1, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI$$ExternalSyntheticLambda0;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 217
    .line 218
    .line 219
    const-string p1, "mhs_config"

    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_d

    .line 241
    .line 242
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 243
    .line 244
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 245
    .line 246
    .line 247
    new-instance v2, Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v6}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 253
    .line 254
    .line 255
    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI;->MHSH_SALOGGING:[[Ljava/lang/String;

    .line 256
    .line 257
    array-length v5, v4

    .line 258
    move v7, v6

    .line 259
    move v8, v7

    .line 260
    :goto_3
    if-ge v7, v5, :cond_b

    .line 261
    .line 262
    aget-object v9, v4, v7

    .line 263
    .line 264
    aget-object v10, v9, v6

    .line 265
    .line 266
    const-string v11, "mh_tdl"

    .line 267
    .line 268
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    if-eq v10, v3, :cond_9

    .line 273
    .line 274
    const-string v10, "mh_cdl"

    .line 275
    .line 276
    aget-object v11, v9, v6

    .line 277
    .line 278
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-eq v10, v3, :cond_9

    .line 283
    .line 284
    const-string v10, "mh_tp"

    .line 285
    .line 286
    aget-object v11, v9, v6

    .line 287
    .line 288
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    if-ne v10, v3, :cond_7

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_7
    const-string v10, "mh_ln"

    .line 296
    .line 297
    aget-object v9, v9, v6

    .line 298
    .line 299
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    if-eqz v9, :cond_a

    .line 304
    .line 305
    aget-object v9, v1, v8

    .line 306
    .line 307
    const-string v10, "lock_on"

    .line 308
    .line 309
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-eqz v9, :cond_8

    .line 314
    .line 315
    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 316
    .line 317
    .line 318
    const-string v9, "sendEvent: Builder_value_MHS_smart_hotspot 1"

    .line 319
    .line 320
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_8
    const-string v9, "sendEvent: Builder_value_MHS_smart_hotspot 0"

    .line 325
    .line 326
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_9
    :goto_4
    aget-object v9, v9, v6

    .line 331
    .line 332
    aget-object v10, v1, v8

    .line 333
    .line 334
    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 338
    .line 339
    add-int/lit8 v7, v7, 0x1

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_b
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI$$ExternalSyntheticLambda0;

    .line 343
    .line 344
    const/4 v1, 0x1

    .line 345
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHSI$$ExternalSyntheticLambda0;-><init>(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 352
    .line 353
    .line 354
    const-string v0, "mhs_smart_hotspot"

    .line 355
    .line 356
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :cond_c
    :goto_6
    const-string p0, "can\'t parse bigdata extra"

    .line 365
    .line 366
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    :cond_d
    :goto_7
    return-void
.end method
