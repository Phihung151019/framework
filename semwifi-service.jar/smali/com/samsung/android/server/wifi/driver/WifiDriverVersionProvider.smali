.class public Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final NULL_STRING:Ljava/lang/String; = "null"

.field static final STRING_NOT_READY:Ljava/lang/String; = "not ready"

.field private static final TAG:Ljava/lang/String; = "SemWifi.DriverVersion"

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_MTK:Ljava/lang/String; = "ediatek"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SLSI:Ljava/lang/String; = "rv_ver:"

.field private static final WIFI_VER_PREFIX_SPRTRM:Ljava/lang/String; = "is 0x"

.field static final WRONG_VALUE:Ljava/lang/String; = "NG"


# instance fields
.field private mCidInfoString:Ljava/lang/String;

.field private mDriverVer:Ljava/lang/String;

.field private mFirmwareVer:Ljava/lang/String;

.field private mIsReady:Z

.field private mMacAddress:Ljava/lang/String;

.field private mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field private final mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

.field private final mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private mWifiVerInfoString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 5
    .line 6
    const-string p1, "null"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 16
    .line 17
    sget-object p1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 27
    .line 28
    return-void
.end method

.method private addCommas(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, "HW"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    add-int/lit8 p0, p0, -0x1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ","

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    const-string p0, ""

    .line 46
    .line 47
    return-object p0
.end method

.method private parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "NG"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    add-int/2addr p2, v0

    .line 17
    add-int/2addr p2, p3

    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-ltz p3, :cond_2

    .line 25
    .line 26
    add-int/2addr p3, p5

    .line 27
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_2
    return-object p0
.end method

.method private parseWifiVersion(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "error"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const-string v0, "NG"

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 16
    .line 17
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 18
    .line 19
    new-instance v3, Ljava/io/StringReader;

    .line 20
    .line 21
    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :catch_0
    move-object v4, p0

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    :try_start_3
    const-string p1, "HD_ver"

    .line 45
    .line 46
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    sget-object p1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 55
    .line 56
    const-string v6, "HD_ver:"

    .line 57
    .line 58
    const-string v8, " "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v7, 0x1

    .line 62
    move-object v4, p0

    .line 63
    :try_start_4
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    .line 69
    move-object v3, v4

    .line 70
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "version"

    .line 75
    .line 76
    const-string v7, " "

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v6, 0x1

    .line 80
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    move-object v4, v3

    .line 85
    :try_start_6
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :catchall_0
    move-exception v0

    .line 90
    :goto_0
    move-object p0, v0

    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object v4, v3

    .line 95
    goto :goto_0

    .line 96
    :catchall_2
    move-exception v0

    .line 97
    move-object v4, p0

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v4, p0

    .line 100
    const-string p0, "CNSS"

    .line 101
    .line 102
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    sget-object p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 109
    .line 110
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 111
    .line 112
    const-string v6, "v"

    .line 113
    .line 114
    const-string v8, " CNSS"

    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 123
    .line 124
    const-string v6, "CNSS-PR-"

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v7, 0x1

    .line 129
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_3
    const-string p0, "FW:"

    .line 138
    .line 139
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_4

    .line 144
    .line 145
    sget-object p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 146
    .line 147
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 148
    .line 149
    const-string v6, "SW"

    .line 150
    .line 151
    const-string v8, "FW"

    .line 152
    .line 153
    const/4 v9, -0x2

    .line 154
    const/4 v7, 0x1

    .line 155
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 160
    .line 161
    const-string v6, "FW"

    .line 162
    .line 163
    const-string v8, "HW"

    .line 164
    .line 165
    const/4 v9, -0x2

    .line 166
    const/4 v7, 0x1

    .line 167
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_4
    const-string p0, "received"

    .line 176
    .line 177
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_5

    .line 182
    .line 183
    sget-object p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 184
    .line 185
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 186
    .line 187
    const-string v6, "-GPL"

    .line 188
    .line 189
    const-string v8, "-GPL"

    .line 190
    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v7, -0x4

    .line 193
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 198
    .line 199
    const-string v6, ".p"

    .line 200
    .line 201
    const-string v8, "-"

    .line 202
    .line 203
    const/4 v9, 0x0

    .line 204
    const/4 v7, -0x1

    .line 205
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_5
    const-string p0, "is 0x"

    .line 214
    .line 215
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_6

    .line 220
    .line 221
    sget-object p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 222
    .line 223
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 224
    .line 225
    const-string v6, "cp version is "

    .line 226
    .line 227
    const-string v8, "date"

    .line 228
    .line 229
    const/4 v9, -0x2

    .line 230
    const/4 v7, 0x0

    .line 231
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 236
    .line 237
    const-string v6, "driver version is "

    .line 238
    .line 239
    const-string v8, "] ["

    .line 240
    .line 241
    const/4 v9, 0x0

    .line 242
    const/4 v7, 0x1

    .line 243
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_6
    const-string p0, "rv_ver:"

    .line 252
    .line 253
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    if-eqz p0, :cond_7

    .line 258
    .line 259
    sget-object p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 260
    .line 261
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 262
    .line 263
    const-string v6, "drv_ver:"

    .line 264
    .line 265
    const/4 v8, 0x0

    .line 266
    const/4 v9, 0x0

    .line 267
    const/4 v7, 0x1

    .line 268
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    if-eqz p0, :cond_9

    .line 279
    .line 280
    const-string p1, "_"

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-ltz p1, :cond_9

    .line 287
    .line 288
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    const-string v5, "_"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 297
    .line 298
    const/4 v7, 0x0

    .line 299
    const/4 v8, 0x0

    .line 300
    const/4 v6, 0x0

    .line 301
    move-object v3, v4

    .line 302
    move-object v4, p0

    .line 303
    :try_start_7
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 307
    move-object v4, v3

    .line 308
    :try_start_8
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_7
    const-string p0, "ediatek"

    .line 312
    .line 313
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_9

    .line 318
    .line 319
    sget-object p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 320
    .line 321
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 322
    .line 323
    const-string v6, "DRIVER_VER:"

    .line 324
    .line 325
    const/4 v8, 0x0

    .line 326
    const/4 v9, 0x0

    .line 327
    const/4 v7, 0x1

    .line 328
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 333
    .line 334
    move-object v3, v4

    .line 335
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    const-string v5, "FW_VER:"

    .line 340
    .line 341
    const/4 v7, 0x0

    .line 342
    const/4 v8, 0x0

    .line 343
    const/4 v6, 0x0

    .line 344
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 348
    move-object v4, v3

    .line 349
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    const/16 v3, 0xf

    .line 354
    .line 355
    if-le p1, v3, :cond_8

    .line 356
    .line 357
    sub-int/2addr p1, v3

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    :cond_8
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 363
    .line 364
    :cond_9
    :goto_1
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 365
    .line 366
    .line 367
    iget-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result p0

    .line 373
    xor-int/lit8 p0, p0, 0x1

    .line 374
    .line 375
    return p0

    .line 376
    :goto_2
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :catchall_3
    move-exception v0

    .line 381
    move-object p1, v0

    .line 382
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 383
    .line 384
    .line 385
    :goto_3
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 386
    :catch_1
    :goto_4
    const-string p0, "exception"

    .line 387
    .line 388
    iput-object p0, v4, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 389
    .line 390
    return v1
.end method


# virtual methods
.method public checkAndUpdate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddressFromFile()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mMacAddress:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getWifiCid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFeatureInfo()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->parse(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getWifiVersions()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseWifiVersion(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 43
    .line 44
    const-string v2, "SemWifi.DriverVersion"

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const-string v0, "vendor.wlan.firmware.version"

    .line 49
    .line 50
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->addCommas(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "vendor.wlan.firmware.version : "

    .line 59
    .line 60
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseWifiVersion(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 68
    .line 69
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const-string p0, "failed to get Wi-Fi version"

    .line 76
    .line 77
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "Wi-Fi vendor is "

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " firmware version: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "failed to parse Wi-Fi version, "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public getAllVersions()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCidInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFirmwareVersion(Z)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "not ready"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->getFactoryModeName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p1, ""

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mMacAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMacAddressFromFile()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getMacAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 2
    .line 3
    return-object p0
.end method

.method public isReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "[READY]"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "[NOT READY]"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\n - cid.info: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\n - ver.info: "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
