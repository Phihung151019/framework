.class public Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;
    }
.end annotation


# static fields
.field private static final FIRST_FEATURE_VALUE_INDEX:I = 0x11

.field private static final HOTSPOT_FEATURE_LENGTH:I = 0x4

.field private static final MHSDBG:Z

.field private static final MHS_FEATURE_END_INDEX:I = 0x8

.field private static final MHS_FEATURE_ID:Ljava/lang/String; = "0702"

.field private static final MHS_FEATURE_START_INDEX:I = 0x4

.field public static final SOFT_AP_11AX:I = 0x1

.field public static final SOFT_AP_POWER_SAVE:I = 0x3

.field public static final SOFT_AP_WPA3:I = 0x2

.field private static final SUPPORTED_FEATURE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "SemWifiApChipInfo"

.field private static final WIFI_HW_FEATURE_INDEX:I = 0x2

.field public static mIsReadSoftApInfo:Z = false

.field public static mSupportWifiSharing:Z = false

.field public static mSupportWifiSharingLite:Z = false


# instance fields
.field SoftAp_HalFn_getValidChannels:Ljava/lang/String;

.field SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

.field SoftAp_MaxClient:Ljava/lang/String;

.field SoftAp_PowerSave:Ljava/lang/String;

.field SoftAp_Support5g:Ljava/lang/String;

.field SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

.field SoftAp_SupportDualInterface:Ljava/lang/String;

.field SoftAp_SupportWifiSharing:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIsReady:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWifiApChipSupportInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;

.field private mSupportPowerSave:Z


# direct methods
.method public static synthetic $r8$lambda$6Om6k6LhPDlOYIKqOMW0H22K398(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->lambda$readBufferValueAndSetFieldValues$0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$D3f5wVpGPrGjYUwaQNElFfN7Jtc(Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->processLine(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSemWifiApChipSupportInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;

    .line 6
    .line 7
    const-string v0, "na"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportPowerSave:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    return-void
.end method

.method private addMHSDumpLog(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " mhs: "

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "SemWifiApChipInfo"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string v2, "MM-dd HH:mm:ss.SSS"

    .line 33
    .line 34
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, "\n"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/16 v1, 0x64

    .line 74
    .line 75
    if-le p1, v1, :cond_0

    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private checkWhichFeatureSupportsBasedOnVendorFile()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "readBufferValueAndSetFieldValues() %s "

    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "SemWifiApChipInfo"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    if-ge v1, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_a

    .line 41
    .line 42
    :cond_0
    const/16 v1, 0x11

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x6

    .line 49
    move v4, v1

    .line 50
    :goto_0
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x2

    .line 52
    const/16 v7, 0x10

    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    if-lez v4, :cond_3

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v7, 0x1

    .line 70
    if-eq v5, v7, :cond_2

    .line 71
    .line 72
    if-eq v5, v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_4

    .line 79
    :catch_0
    move-exception v5

    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v5

    .line 82
    goto :goto_2

    .line 83
    :catch_2
    move-exception v5

    .line 84
    goto :goto_3

    .line 85
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_4

    .line 90
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_4

    .line 95
    :goto_1
    const-string v6, "chipInformationStr exception : "

    .line 96
    .line 97
    invoke-static {v6, v5, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v7, "chipInformationStr NumberFormatException : "

    .line 104
    .line 105
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v7, "chipInformationStr IndexOutOfBoundsException : "

    .line 122
    .line 123
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v4, "0702"

    .line 144
    .line 145
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_4

    .line 150
    .line 151
    const-string p0, "this is no MHS_FEATURE_ID so return"

    .line 152
    .line 153
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_4
    :try_start_1
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    div-int/2addr v1, v6

    .line 166
    new-array v3, v1, [B

    .line 167
    .line 168
    move v4, v5

    .line 169
    :goto_5
    if-ge v4, v1, :cond_5

    .line 170
    .line 171
    mul-int/lit8 v6, v4, 0x2

    .line 172
    .line 173
    add-int/lit8 v8, v6, 0x2

    .line 174
    .line 175
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    int-to-byte v6, v6

    .line 184
    aput-byte v6, v3, v4

    .line 185
    .line 186
    add-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :catch_3
    move-exception p0

    .line 190
    goto :goto_6

    .line 191
    :catch_4
    move-exception p0

    .line 192
    goto :goto_7

    .line 193
    :catch_5
    move-exception p0

    .line 194
    goto :goto_8

    .line 195
    :cond_5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;

    .line 196
    .line 197
    invoke-direct {v0, v3, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;-><init>([BI)V

    .line 198
    .line 199
    .line 200
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSemWifiApChipSupportInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :goto_6
    const-string v0, "checkWhichFeatureSupportsBasedOnVendorFile exception : "

    .line 204
    .line 205
    invoke-static {v0, p0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v1, "checkWhichFeatureSupportsBasedOnVendorFile NumberFormatException : "

    .line 212
    .line 213
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_9

    .line 227
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v1, "checkWhichFeatureSupportsBasedOnVendorFile IndexOutOfBoundsException : "

    .line 230
    .line 231
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :goto_9
    return-void

    .line 245
    :cond_6
    :goto_a
    const-string p0, "chipInformationStr is not valid so return"

    .line 246
    .line 247
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method private getFirstApiLevel()I
    .locals 1

    .line 1
    const-string p0, "ro.product.first_api_level"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private isKoreaModelForWifiSharingLite()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KOR"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "isKoreaModelForWifiSharingLite() region : "

    .line 12
    .line 13
    const-string v3, ", first_api_level : "

    .line 14
    .line 15
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->getFirstApiLevel()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", in_house? : true, regionSupported : "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "SemWifiApChipInfo"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->getFirstApiLevel()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const/16 v0, 0x23

    .line 50
    .line 51
    if-lt p0, v0, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method private static isValueYesOrA125Model(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "A125U"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "A125W"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private static synthetic lambda$readBufferValueAndSetFieldValues$0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method private processLine(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const-string v1, "]"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "#"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->setFieldValuesOnSoftApInfo(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private readBufferValueAndSetFieldValues(Ljava/io/BufferedReader;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkWhichFeatureSupportsBasedOnVendorFile()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private set5GBasedFieldValueBasedOnHalFunctions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "true"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "na"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private setDefaultMaxClient(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p0, "SemWifiApChipInfo"

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const-string v1, "na"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "exception : "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move p1, v0

    .line 40
    :goto_0
    if-ge p1, v0, :cond_1

    .line 41
    .line 42
    move v1, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v0

    .line 45
    :goto_1
    if-ge v1, v0, :cond_2

    .line 46
    .line 47
    move v0, v1

    .line 48
    :cond_2
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "featureNum:10 chipNum:"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " rInt:"

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_2
    const-string p0, "vendor.wifiap.defaultmaxclient"

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private setFieldValuesOnSoftApInfo(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x3d

    .line 4
    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    add-int/2addr v2, v0

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "setFieldValuesOnSoftApInfo attr : %s  values : %s"

    .line 23
    .line 24
    filled-new-array {v4, p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v2, v5}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v5, "SemWifiApChipInfo"

    .line 33
    .line 34
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string v2, "yes"

    .line 41
    .line 42
    const-string v5, "false"

    .line 43
    .line 44
    const-string v6, "true"

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    sparse-switch v7, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    :goto_0
    move v1, v3

    .line 54
    goto :goto_1

    .line 55
    :sswitch_0
    const-string v1, "HalFn_setCountryCodeHal"

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x6

    .line 65
    goto :goto_1

    .line 66
    :sswitch_1
    const-string v1, "DualBandConcurrency"

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x5

    .line 76
    goto :goto_1

    .line 77
    :sswitch_2
    const-string v1, "5G"

    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v1, 0x4

    .line 87
    goto :goto_1

    .line 88
    :sswitch_3
    const-string v1, "DualInterface"

    .line 89
    .line 90
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const/4 v1, 0x3

    .line 98
    goto :goto_1

    .line 99
    :sswitch_4
    const-string v1, "HalFn_getValidChannels"

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    const/4 v1, 0x2

    .line 109
    goto :goto_1

    .line 110
    :sswitch_5
    const-string v1, "maxClient"

    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_6

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    move v1, v0

    .line 120
    goto :goto_1

    .line 121
    :sswitch_6
    const-string v7, "PowerSave"

    .line 122
    .line 123
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_7

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    move-object v5, v6

    .line 141
    :cond_8
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_9

    .line 149
    .line 150
    move-object v5, v6

    .line 151
    :cond_9
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isValueYesOrA125Model(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    move-object v5, v6

    .line 161
    :cond_a
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_b

    .line 169
    .line 170
    move-object v5, v6

    .line 171
    :cond_b
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_c

    .line 179
    .line 180
    move-object v5, v6

    .line 181
    :cond_c
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :pswitch_5
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :pswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_d

    .line 192
    .line 193
    move-object v5, v6

    .line 194
    :cond_d
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    .line 195
    .line 196
    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    .line 197
    .line 198
    return-void

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x562e2bfe -> :sswitch_6
        -0x3e2715b1 -> :sswitch_5
        -0x2b2faea6 -> :sswitch_4
        -0x11f6b003 -> :sswitch_3
        0x6b2 -> :sswitch_2
        0x2a87ade2 -> :sswitch_1
        0x33e2d54e -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSettingsDataBaseValues()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi_ap_chip_maxclient"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "wifi_ap_chip_support5g"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "wifi_ap_chip_support5g_baseon_country"

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public checkWifiSharingAndPowerSave()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->getFirstApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "vendor.wifiap.first_api_level"

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "true"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 40
    .line 41
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    .line 45
    .line 46
    const-string v6, "false"

    .line 47
    .line 48
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 63
    .line 64
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 76
    .line 77
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 78
    .line 79
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "Support power save mode, SEC_PRODUCT_FEATURE_WLAN_SUPPORT_MOBILEAP_POWER_SAVEMODE : true SoftAp_PowerSave : "

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportPowerSave:Z

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isKoreaModelForWifiSharingLite()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 107
    .line 108
    const-string v3, "146"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 117
    .line 118
    const-string v3, "166"

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    :cond_4
    const-string v2, "Disable wifisharing"

    .line 127
    .line 128
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 132
    .line 133
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 134
    .line 135
    :cond_5
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 136
    .line 137
    const-string v3, "vendor.wifi.dualconcurrent.interface"

    .line 138
    .line 139
    if-nez v2, :cond_7

    .line 140
    .line 141
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 142
    .line 143
    if-eqz v2, :cond_6

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const-string v2, "wlan0"

    .line 147
    .line 148
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    :goto_1
    const-string v2, "swlan0"

    .line 153
    .line 154
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v4, ""

    .line 160
    .line 161
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 165
    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const-string v4, "vendor.wifiap.wifisharinglite"

    .line 174
    .line 175
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v2, " "

    .line 179
    .line 180
    if-eqz v1, :cond_8

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v5, "vendor.wifi.dualconcurrent.interface "

    .line 185
    .line 186
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v5, "aaaa"

    .line 190
    .line 191
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v1, " checkWifiSharing() "

    .line 218
    .line 219
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 223
    .line 224
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 231
    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    const-string v0, "SemWifiApChipInfo"

    .line 246
    .line 247
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--WifiApChipInfo\nWifiSharing:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nmaxClient:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n5g:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n5gBasedOnCountry:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\nPowerSave:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " mSupportPowerSave : "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportPowerSave:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\nDualInterface:"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\n---softap.info:\n"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public isReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    .line 2
    .line 3
    return p0
.end method

.method public readSoftApInfoAndSetDBValues(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 11
    .line 12
    new-instance v1, Ljava/io/StringReader;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->readBufferValueAndSetFieldValues(Ljava/io/BufferedReader;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->set5GBasedFieldValueBasedOnHalFunctions()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->setSettingsDataBaseValues()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->setDefaultMaxClient(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Exception "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "SemWifiApChipInfo"

    .line 64
    .line 65
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    :goto_1
    const-string v0, "softap.info path is null or value is empty"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v0, 0x0

    .line 81
    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    .line 82
    .line 83
    return-void
.end method

.method public supportSoftApPowerSave()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "supportSoftApPowerSave() !!! try to use before init !!!! :"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportPowerSave:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSemWifiApChipSupportInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->-$$Nest$misSupportedSoftApPowerSave(Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public supportThisSoftApFeature(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportPowerSave:Z

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSemWifiApChipSupportInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;->-$$Nest$misSupportedSoftApPowerSave(Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo$SemWifiApChipSupportInfo;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v2

    .line 28
    :cond_2
    :goto_0
    return v0
.end method

.method public supportWifiSharing()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "supportWifiSharing() !!! try to use before init !!!! :"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "vendor.wifiap.first_api_level"

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkWifiSharingAndPowerSave()V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 48
    .line 49
    return p0
.end method

.method public supportWifiSharingLite()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "supportWifiSharingLite() !!! try to use before init !!!! :"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "vendor.wifiap.first_api_level"

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkWifiSharingAndPowerSave()V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 48
    .line 49
    return p0
.end method
