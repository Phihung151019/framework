.class public Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;
    }
.end annotation


# static fields
.field private static final FEATURE_VER_FIELD_LEN:I = 0x4

.field private static final HW_FEATURE_FIELD_LEN:I = 0x2

.field static final LAZY_BOOT_COMPLETE:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field private static final PROVIDER_NAME_FIELD_LEN:I = 0x3

.field private static final SW_ASSURANCE_ID:I = 0xa

.field private static final SW_BIG_DATA_ID:I = 0xe

.field private static final SW_ELEMENT_FIELD_LEN:I = 0x2

.field private static final SW_FEATURE_FIELD_LEN:I = 0x4

.field private static final SW_FRAME_PCAP_LOGGING_ID:I = 0xb

.field private static final SW_ID_FIELD_LEN:I = 0x2

.field private static final SW_NCHO_ID:I = 0x9

.field private static final SW_ROAMING_KV_ID:I = 0x8

.field private static final SW_SECURITY_ID:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SemSupportedFeatureLogger"

.field private static final VER:Ljava/lang/String; = "1.0.0"

.field private static final bigDataFeatureList:[Ljava/lang/String;

.field private static final framePcapLoggingList:[Ljava/lang/String;

.field private static final roamingFeatureList:[Ljava/lang/String;

.field private static final securityFeatureList:[Ljava/lang/String;

.field private static final swFeatureNameList:[Ljava/lang/String;


# instance fields
.field mFeatureSet:Ljava/lang/String;

.field mNotSupportedFeatureStr:Ljava/lang/String;

.field mParsedFeatureStr:Ljava/lang/String;

.field mSupportedFeatureStr:Ljava/lang/String;

.field private final mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;


# direct methods
.method static bridge synthetic -$$Nest$mparseSupportedFeature(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseSupportedFeature()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v15, "[TKIP/AES ROAMING]"

    .line 2
    .line 3
    const-string v16, "[RCL API]"

    .line 4
    .line 5
    const-string v1, "[A11R]"

    .line 6
    .line 7
    const-string v2, "[ROAM TRIGGER API]"

    .line 8
    .line 9
    const-string v3, "[REASSOC API]"

    .line 10
    .line 11
    const-string v4, "[GET CU]"

    .line 12
    .line 13
    const-string v5, ""

    .line 14
    .line 15
    const-string v6, ""

    .line 16
    .line 17
    const-string v7, ""

    .line 18
    .line 19
    const-string v8, ""

    .line 20
    .line 21
    const-string v9, "[HIGH CU]"

    .line 22
    .line 23
    const-string v10, "[EMERGENCY]"

    .line 24
    .line 25
    const-string v11, "[BTM]"

    .line 26
    .line 27
    const-string v12, "[IDLE]"

    .line 28
    .line 29
    const-string v13, "[WTC]"

    .line 30
    .line 31
    const-string v14, "[BTCOEX]"

    .line 32
    .line 33
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->roamingFeatureList:[Ljava/lang/String;

    .line 38
    .line 39
    const-string v15, "[FILS SHA256-FT]"

    .line 40
    .line 41
    const-string v16, "[FILS SHA384-FT]"

    .line 42
    .line 43
    const-string v1, "[OWE]"

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    const-string v3, ""

    .line 48
    .line 49
    const-string v4, ""

    .line 50
    .line 51
    const-string v5, ""

    .line 52
    .line 53
    const-string v6, ""

    .line 54
    .line 55
    const-string v7, ""

    .line 56
    .line 57
    const-string v8, ""

    .line 58
    .line 59
    const-string v9, "[SAE H2E]"

    .line 60
    .line 61
    const-string v10, "[SAE FT]"

    .line 62
    .line 63
    const-string v11, "[WPA3 ENTERPRISE SUITE B]"

    .line 64
    .line 65
    const-string v12, "[WPA3 ENTERPRISE SUITE B 192]"

    .line 66
    .line 67
    const-string v13, "[FILS SHA256]"

    .line 68
    .line 69
    const-string v14, "[FILS SHA384]"

    .line 70
    .line 71
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->securityFeatureList:[Ljava/lang/String;

    .line 76
    .line 77
    const-string v7, ""

    .line 78
    .line 79
    const-string v8, ""

    .line 80
    .line 81
    const-string v1, "[GETBSSIINFO API]"

    .line 82
    .line 83
    const-string v2, "[GETASSOCREJECTINFO API]"

    .line 84
    .line 85
    const-string v3, "[GETSTAINFO API]"

    .line 86
    .line 87
    const-string v4, ""

    .line 88
    .line 89
    const-string v5, ""

    .line 90
    .line 91
    const-string v6, ""

    .line 92
    .line 93
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->bigDataFeatureList:[Ljava/lang/String;

    .line 98
    .line 99
    const-string v7, ""

    .line 100
    .line 101
    const-string v8, ""

    .line 102
    .line 103
    const-string v1, "[MANAGEMENT PCAP]"

    .line 104
    .line 105
    const-string v2, "[CONTROL PCAP]"

    .line 106
    .line 107
    const-string v3, "[DATA PCAP]"

    .line 108
    .line 109
    const-string v4, ""

    .line 110
    .line 111
    const-string v5, ""

    .line 112
    .line 113
    const-string v6, ""

    .line 114
    .line 115
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->framePcapLoggingList:[Ljava/lang/String;

    .line 120
    .line 121
    const-string v16, "[STA DUMP]"

    .line 122
    .line 123
    const-string v17, "[Standard+]"

    .line 124
    .line 125
    const-string v1, ""

    .line 126
    .line 127
    const-string v2, "[PNO]"

    .line 128
    .line 129
    const-string v3, "[TWT]"

    .line 130
    .line 131
    const-string v4, "[Optimizer]"

    .line 132
    .line 133
    const-string v5, "[Scheduled PM]"

    .line 134
    .line 135
    const-string v6, "[Delayed Wakeup]"

    .line 136
    .line 137
    const-string v7, "[RFC8325]"

    .line 138
    .line 139
    const-string v8, "[MHS]"

    .line 140
    .line 141
    const-string v9, "[Roaming]"

    .line 142
    .line 143
    const-string v10, "[NCHO]"

    .line 144
    .line 145
    const-string v11, "[Assurance]"

    .line 146
    .line 147
    const-string v12, "[Pcap Logging]"

    .line 148
    .line 149
    const-string v13, "[Security]"

    .line 150
    .line 151
    const-string v14, "[P2P]"

    .line 152
    .line 153
    const-string v15, "[Bigdata]"

    .line 154
    .line 155
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->swFeatureNameList:[Ljava/lang/String;

    .line 160
    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mParsedFeatureStr:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 15
    .line 16
    new-instance p2, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;-><init>(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string p1, "SemSupportedFeatureLogger initialized: ver=1.0.0"

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private parseSupportedFeature()V
    .locals 11

    .line 1
    const-string v0, "%02X "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFeatureInfo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v2, 0x9

    .line 36
    .line 37
    const/4 v3, 0x7

    .line 38
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v8, 0x10

    .line 43
    .line 44
    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, 0xd

    .line 49
    .line 50
    const-string v2, "ID Len [Feature] Data\n-----------------------------------------------\n"

    .line 51
    .line 52
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge v1, v2, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x2

    .line 66
    .line 67
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 76
    .line 77
    move-object v9, v4

    .line 78
    add-int/lit8 v4, v1, 0x4

    .line 79
    .line 80
    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    if-lez v2, :cond_1

    .line 119
    .line 120
    sget-object v9, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->swFeatureNameList:[Ljava/lang/String;

    .line 121
    .line 122
    array-length v10, v9

    .line 123
    if-ge v2, v10, :cond_1

    .line 124
    .line 125
    aget-object v9, v9, v2

    .line 126
    .line 127
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v9, " "

    .line 131
    .line 132
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    move-object v1, p0

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 141
    .line 142
    mul-int/lit8 v3, v3, 0x2

    .line 143
    .line 144
    add-int v10, v3, v4

    .line 145
    .line 146
    invoke-virtual {v7, v9, v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v3, "\n"

    .line 150
    .line 151
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    packed-switch v2, :pswitch_data_0

    .line 155
    .line 156
    .line 157
    :goto_2
    :pswitch_0
    move-object v1, p0

    .line 158
    goto :goto_3

    .line 159
    :pswitch_1
    sget-object v3, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->bigDataFeatureList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    const/4 v2, 0x1

    .line 162
    move-object v1, p0

    .line 163
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catch_1
    move-exception v0

    .line 168
    goto :goto_4

    .line 169
    :pswitch_2
    move-object v1, p0

    .line 170
    sget-object v3, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->securityFeatureList:[Ljava/lang/String;

    .line 171
    .line 172
    const/4 v2, 0x2

    .line 173
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_3
    move-object v1, p0

    .line 178
    :try_start_2
    sget-object v3, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->framePcapLoggingList:[Ljava/lang/String;

    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .line 183
    .line 184
    move-object p0, v1

    .line 185
    goto :goto_2

    .line 186
    :catch_2
    move-exception v0

    .line 187
    move-object p0, v1

    .line 188
    goto :goto_4

    .line 189
    :pswitch_4
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 190
    .line 191
    add-int/lit8 v1, v1, 0x6

    .line 192
    .line 193
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 198
    .line 199
    .line 200
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 201
    const/4 v2, 0x1

    .line 202
    const-string v3, "[ASSURANCE DISC REASON]"

    .line 203
    .line 204
    if-ne v1, v2, :cond_2

    .line 205
    .line 206
    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :pswitch_5
    const-string v1, "NCHO"

    .line 215
    .line 216
    invoke-virtual {p0, v1, v4, v5}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->getVersion(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :pswitch_6
    const-string v2, "ROAMING"

    .line 221
    .line 222
    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->getVersion(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 223
    .line 224
    .line 225
    sget-object v3, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->roamingFeatureList:[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 226
    .line 227
    add-int/lit8 v4, v1, 0x8

    .line 228
    .line 229
    const/4 v2, 0x2

    .line 230
    move-object v1, p0

    .line 231
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 232
    .line 233
    .line 234
    :goto_3
    move-object p0, v1

    .line 235
    move v1, v10

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_3
    move-object v1, p0

    .line 239
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mParsedFeatureStr:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v2, "Parsing error: "

    .line 261
    .line 262
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    iput-object p0, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mParsedFeatureStr:Ljava/lang/String;

    .line 293
    .line 294
    sget-object p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    .line 295
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v3, "Parsing error(Supported feature): "

    .line 299
    .line 300
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v3, "Parsing error(Not supported feature): "

    .line 316
    .line 317
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    :goto_5
    sget-object p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    .line 334
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v2, "Raw value: "

    .line 338
    .line 339
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v2, "mSupportedFeatureStr: "

    .line 357
    .line 358
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    const-string v3, "None"

    .line 368
    .line 369
    if-eqz v2, :cond_4

    .line 370
    .line 371
    move-object v2, v3

    .line 372
    goto :goto_6

    .line 373
    :cond_4
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 374
    .line 375
    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v2, "mNotSupportedFeatureStr: "

    .line 388
    .line 389
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_5

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_5
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 402
    .line 403
    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Supported Feature information :-----------------------------------------------"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Raw value: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Supported: "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "None"

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Not Supported: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mParsedFeatureStr:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public getSupportedFeatureStr()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getVersion(Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x4

    .line 18
    .line 19
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const-string p2, "["

    .line 28
    .line 29
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, " %d"

    .line 44
    .line 45
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "."

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "%d"

    .line 66
    .line 67
    const-string p2, "]"

    .line 68
    .line 69
    invoke-static {p1, p0, p3, p2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 2
    .line 3
    mul-int/lit8 v0, p1, 0x2

    .line 4
    .line 5
    add-int/2addr v0, p3

    .line 6
    invoke-virtual {p0, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 p3, 0x10

    .line 11
    .line 12
    invoke-static {p0, p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 p3, 0x0

    .line 17
    const/4 v0, 0x1

    .line 18
    move v1, v0

    .line 19
    move v0, p3

    .line 20
    :goto_0
    mul-int/lit8 v2, p1, 0x8

    .line 21
    .line 22
    if-ge p3, v2, :cond_2

    .line 23
    .line 24
    array-length v2, p2

    .line 25
    if-lt v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    and-int v2, p0, v1

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    aget-object v2, p2, v0

    .line 33
    .line 34
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    aget-object v2, p2, v0

    .line 39
    .line 40
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    add-int/lit8 p3, p3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_2
    return-void
.end method
