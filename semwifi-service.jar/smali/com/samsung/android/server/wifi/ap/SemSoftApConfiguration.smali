.class public Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MHSDBG:Z

.field private static final SamsungHotspotVSIE:I = 0x80

.field private static final SamsungOUI:Ljava/lang/String; = "001632"

.field private static final TAG:Ljava/lang/String; = "SemSoftApConfiguration"

.field private static mContext:Landroid/content/Context;

.field private static final mDualAp5GHzChannels:Landroid/util/SparseIntArray;

.field private static final mDualAp6GHzChannels:Landroid/util/SparseIntArray;

.field private static mInternalCountries2GOnly:[Ljava/lang/String;

.field private static mInternalCountries2GOnly_BRCM:[Ljava/lang/String;

.field private static mInternalCountries2GOnly_below30:[Ljava/lang/String;

.field private static mInternalCountries6G:[Ljava/lang/String;

.field private static mInternalCountriesNo6G_BRCM:[Ljava/lang/String;

.field private static mSoftApCapability:Landroid/net/wifi/SoftApCapability;


# instance fields
.field private channel2G:I

.field private isJDMDevice:Z

.field private isResetSoftApCalled:Z

.field private mDisableRandomMac:Z

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIs11Ax:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveChecked:Z

.field private final mWifiAp11AxContentObserver:Landroid/database/ContentObserver;

.field private final mWifiApPmfContentObserver:Landroid/database/ContentObserver;

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetchannel2G(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 65

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    .line 4
    .line 5
    const-string v63, "QA"

    .line 6
    .line 7
    const-string v64, "TC"

    .line 8
    .line 9
    const-string v1, "KP"

    .line 10
    .line 11
    const-string v2, "SY"

    .line 12
    .line 13
    const-string v3, "CU"

    .line 14
    .line 15
    const-string v4, "IR"

    .line 16
    .line 17
    const-string v5, "SD"

    .line 18
    .line 19
    const-string v6, "BY"

    .line 20
    .line 21
    const-string v7, "DZ"

    .line 22
    .line 23
    const-string v8, "EG"

    .line 24
    .line 25
    const-string v9, "EH"

    .line 26
    .line 27
    const-string v10, "ER"

    .line 28
    .line 29
    const-string v11, "ET"

    .line 30
    .line 31
    const-string v12, "JP"

    .line 32
    .line 33
    const-string v13, "KZ"

    .line 34
    .line 35
    const-string v14, "MA"

    .line 36
    .line 37
    const-string v15, "MG"

    .line 38
    .line 39
    const-string v16, "MM"

    .line 40
    .line 41
    const-string v17, "OM"

    .line 42
    .line 43
    const-string v18, "QA"

    .line 44
    .line 45
    const-string v19, "RU"

    .line 46
    .line 47
    const-string v20, "SL"

    .line 48
    .line 49
    const-string v21, "SR"

    .line 50
    .line 51
    const-string v22, "TN"

    .line 52
    .line 53
    const-string v23, "UZ"

    .line 54
    .line 55
    const-string v24, "ZW"

    .line 56
    .line 57
    const-string v25, "GH"

    .line 58
    .line 59
    const-string v26, "GM"

    .line 60
    .line 61
    const-string v27, "GP"

    .line 62
    .line 63
    const-string v28, "GN"

    .line 64
    .line 65
    const-string v29, "GW"

    .line 66
    .line 67
    const-string v30, "NR"

    .line 68
    .line 69
    const-string v31, "NC"

    .line 70
    .line 71
    const-string v32, "NE"

    .line 72
    .line 73
    const-string v33, "LS"

    .line 74
    .line 75
    const-string v34, "RW"

    .line 76
    .line 77
    const-string v35, "IM"

    .line 78
    .line 79
    const-string v36, "MU"

    .line 80
    .line 81
    const-string v37, "MR"

    .line 82
    .line 83
    const-string v38, "BW"

    .line 84
    .line 85
    const-string v39, "BI"

    .line 86
    .line 87
    const-string v40, "BF"

    .line 88
    .line 89
    const-string v41, "BT"

    .line 90
    .line 91
    const-string v42, "ST"

    .line 92
    .line 93
    const-string v43, "PM"

    .line 94
    .line 95
    const-string v44, "SN"

    .line 96
    .line 97
    const-string v45, "SO"

    .line 98
    .line 99
    const-string v46, "SB"

    .line 100
    .line 101
    const-string v47, "AF"

    .line 102
    .line 103
    const-string v48, "JE"

    .line 104
    .line 105
    const-string v49, "GQ"

    .line 106
    .line 107
    const-string v50, "DJ"

    .line 108
    .line 109
    const-string v51, "KM"

    .line 110
    .line 111
    const-string v52, "CI"

    .line 112
    .line 113
    const-string v53, "CG"

    .line 114
    .line 115
    const-string v54, "CD"

    .line 116
    .line 117
    const-string v55, "KG"

    .line 118
    .line 119
    const-string v56, "TJ"

    .line 120
    .line 121
    const-string v57, "TO"

    .line 122
    .line 123
    const-string v58, "TM"

    .line 124
    .line 125
    const-string v59, "TV"

    .line 126
    .line 127
    const-string v60, "FK"

    .line 128
    .line 129
    const-string v61, "PN"

    .line 130
    .line 131
    const-string v62, "KZ"

    .line 132
    .line 133
    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly:[Ljava/lang/String;

    .line 138
    .line 139
    const-string v9, "AX"

    .line 140
    .line 141
    const-string v10, "PS"

    .line 142
    .line 143
    const-string v1, "AQ"

    .line 144
    .line 145
    const-string v2, "SS"

    .line 146
    .line 147
    const-string v3, "TL"

    .line 148
    .line 149
    const-string v4, "MH"

    .line 150
    .line 151
    const-string v5, "BV"

    .line 152
    .line 153
    const-string v6, "GS"

    .line 154
    .line 155
    const-string v7, "SH"

    .line 156
    .line 157
    const-string v8, "SJ"

    .line 158
    .line 159
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly_BRCM:[Ljava/lang/String;

    .line 164
    .line 165
    const-string v0, "WS"

    .line 166
    .line 167
    filled-new-array {v0}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly_below30:[Ljava/lang/String;

    .line 172
    .line 173
    const-string v56, "ME"

    .line 174
    .line 175
    const-string v57, "PY"

    .line 176
    .line 177
    const-string v1, "GB"

    .line 178
    .line 179
    const-string v2, "NO"

    .line 180
    .line 181
    const-string v3, "CH"

    .line 182
    .line 183
    const-string v4, "IS"

    .line 184
    .line 185
    const-string v5, "AL"

    .line 186
    .line 187
    const-string v6, "XK"

    .line 188
    .line 189
    const-string v7, "BA"

    .line 190
    .line 191
    const-string v8, "GR"

    .line 192
    .line 193
    const-string v9, "NL"

    .line 194
    .line 195
    const-string v10, "DK"

    .line 196
    .line 197
    const-string v11, "DE"

    .line 198
    .line 199
    const-string v12, "LV"

    .line 200
    .line 201
    const-string v13, "LU"

    .line 202
    .line 203
    const-string v14, "LT"

    .line 204
    .line 205
    const-string v15, "MT"

    .line 206
    .line 207
    const-string v16, "BE"

    .line 208
    .line 209
    const-string v17, "BG"

    .line 210
    .line 211
    const-string v18, "SE"

    .line 212
    .line 213
    const-string v19, "ES"

    .line 214
    .line 215
    const-string v20, "SK"

    .line 216
    .line 217
    const-string v21, "SI"

    .line 218
    .line 219
    const-string v22, "IE"

    .line 220
    .line 221
    const-string v23, "EE"

    .line 222
    .line 223
    const-string v24, "AT"

    .line 224
    .line 225
    const-string v25, "IT"

    .line 226
    .line 227
    const-string v26, "CZ"

    .line 228
    .line 229
    const-string v27, "HR"

    .line 230
    .line 231
    const-string v28, "CY"

    .line 232
    .line 233
    const-string v29, "PT"

    .line 234
    .line 235
    const-string v30, "PL"

    .line 236
    .line 237
    const-string v31, "FR"

    .line 238
    .line 239
    const-string v32, "FI"

    .line 240
    .line 241
    const-string v33, "HU"

    .line 242
    .line 243
    const-string v34, "KR"

    .line 244
    .line 245
    const-string v35, "AU"

    .line 246
    .line 247
    const-string v36, "NZ"

    .line 248
    .line 249
    const-string v37, "CR"

    .line 250
    .line 251
    const-string v38, "BR"

    .line 252
    .line 253
    const-string v39, "TL"

    .line 254
    .line 255
    const-string v40, "CK"

    .line 256
    .line 257
    const-string v41, "KI"

    .line 258
    .line 259
    const-string v42, "NC"

    .line 260
    .line 261
    const-string v43, "WF"

    .line 262
    .line 263
    const-string v44, "SG"

    .line 264
    .line 265
    const-string v45, "PH"

    .line 266
    .line 267
    const-string v46, "PK"

    .line 268
    .line 269
    const-string v47, "QA"

    .line 270
    .line 271
    const-string v48, "JO"

    .line 272
    .line 273
    const-string v49, "DO"

    .line 274
    .line 275
    const-string v50, "HN"

    .line 276
    .line 277
    const-string v51, "MX"

    .line 278
    .line 279
    const-string v52, "AD"

    .line 280
    .line 281
    const-string v53, "AZ"

    .line 282
    .line 283
    const-string v54, "LI"

    .line 284
    .line 285
    const-string v55, "ID"

    .line 286
    .line 287
    filled-new-array/range {v1 .. v57}, [Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries6G:[Ljava/lang/String;

    .line 292
    .line 293
    const-string v0, "KI"

    .line 294
    .line 295
    filled-new-array {v0}, [Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountriesNo6G_BRCM:[Ljava/lang/String;

    .line 300
    .line 301
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;

    .line 302
    .line 303
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;-><init>()V

    .line 304
    .line 305
    .line 306
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    .line 307
    .line 308
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$2;

    .line 309
    .line 310
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$2;-><init>()V

    .line 311
    .line 312
    .line 313
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp6GHzChannels:Landroid/util/SparseIntArray;

    .line 314
    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isJDMDevice:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mPowerSaveChecked:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    .line 19
    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;

    .line 21
    .line 22
    new-instance v2, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApPmfContentObserver:Landroid/database/ContentObserver;

    .line 31
    .line 32
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$4;

    .line 33
    .line 34
    new-instance v3, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;Landroid/os/Handler;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiAp11AxContentObserver:Landroid/database/ContentObserver;

    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 50
    .line 51
    sput-object p1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v3, "wifi"

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    .line 62
    .line 63
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 74
    .line 75
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "wifi_ap_pmf_checked"

    .line 82
    .line 83
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p0, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    const-string p1, "1"

    .line 101
    .line 102
    const/4 p2, 0x1

    .line 103
    if-ne p0, p2, :cond_0

    .line 104
    .line 105
    const-string p0, "vendor.wifiap.pmf"

    .line 106
    .line 107
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_1

    .line 123
    .line 124
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v1, "wifi_ap_11ax_mode_checked"

    .line 131
    .line 132
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {p0, v3, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    .line 138
    .line 139
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-ne p0, p2, :cond_1

    .line 150
    .line 151
    const-string p0, "vendor.wifiap.axmode"

    .line 152
    .line 153
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    return-void
.end method

.method private convertApMac(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "WifiChip:"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, " isDualAp = "

    .line 10
    .line 11
    const-string v5, "SemSoftApConfiguration"

    .line 12
    .line 13
    invoke-static {v4, v5, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-object/from16 v2, p0

    .line 48
    .line 49
    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isJDMDevice:Z

    .line 50
    .line 51
    const/16 v6, 0xd

    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    const/16 v8, 0xc

    .line 55
    .line 56
    const/16 v9, 0x11

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v11, 0x1

    .line 60
    const/4 v12, 0x2

    .line 61
    const/16 v13, 0x10

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    xor-int/2addr v1, v12

    .line 90
    rem-int/2addr v1, v13

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    xor-int/2addr v2, v7

    .line 96
    rem-int/2addr v2, v13

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :catch_1
    move-exception v0

    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_0
    const-string v2, "could not get wifi chip vendor,so setting to random mac"

    .line 149
    .line 150
    const-string v14, "MTK"

    .line 151
    .line 152
    const-string v15, "QCA"

    .line 153
    .line 154
    const-string v6, "Qualcomm"

    .line 155
    .line 156
    const-string v8, "S_LSI"

    .line 157
    .line 158
    const-string v9, "Broadcom"

    .line 159
    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    move/from16 v16, v12

    .line 167
    .line 168
    const/4 v12, 0x3

    .line 169
    if-nez v1, :cond_2

    .line 170
    .line 171
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_1

    .line 176
    .line 177
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_2

    .line 182
    .line 183
    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v2, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v4, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    add-int/lit8 v1, v1, 0x2

    .line 220
    .line 221
    rem-int/2addr v1, v13

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    not-int v2, v2

    .line 227
    and-int/lit8 v2, v2, 0xf

    .line 228
    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    not-int v4, v4

    .line 234
    and-int/lit8 v4, v4, 0xf

    .line 235
    .line 236
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move/from16 v1, v16

    .line 260
    .line 261
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const/16 v1, 0x11

    .line 275
    .line 276
    const/4 v2, 0x5

    .line 277
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    return-object v0

    .line 289
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_4

    .line 294
    .line 295
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_3

    .line 300
    .line 301
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_4

    .line 306
    .line 307
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-static {v2, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-static {v4, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    const/16 v6, 0xc

    .line 344
    .line 345
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-static {v6, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    const/16 v16, 0x2

    .line 358
    .line 359
    xor-int/lit8 v1, v1, 0x2

    .line 360
    .line 361
    rem-int/2addr v1, v13

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    not-int v2, v2

    .line 367
    and-int/lit8 v2, v2, 0xf

    .line 368
    .line 369
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    not-int v4, v4

    .line 374
    and-int/lit8 v4, v4, 0xf

    .line 375
    .line 376
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    xor-int/2addr v6, v7

    .line 381
    rem-int/2addr v6, v13

    .line 382
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const/4 v1, 0x2

    .line 406
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const/16 v1, 0xc

    .line 420
    .line 421
    const/4 v2, 0x5

    .line 422
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const/16 v1, 0xd

    .line 433
    .line 434
    const/16 v2, 0x11

    .line 435
    .line 436
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    return-object v0

    .line 448
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_5

    .line 453
    .line 454
    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_5

    .line 459
    .line 460
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-static {v2, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-static {v4, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    xor-int/lit8 v1, v1, 0x6

    .line 497
    .line 498
    rem-int/2addr v1, v13

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    not-int v2, v2

    .line 504
    and-int/lit8 v2, v2, 0xf

    .line 505
    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    not-int v4, v4

    .line 511
    and-int/lit8 v4, v4, 0xf

    .line 512
    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const/4 v1, 0x2

    .line 537
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const/16 v1, 0x11

    .line 551
    .line 552
    const/4 v2, 0x5

    .line 553
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    return-object v0

    .line 565
    :cond_5
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    return-object v3

    .line 569
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-nez v1, :cond_8

    .line 574
    .line 575
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-nez v1, :cond_7

    .line 580
    .line 581
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-eqz v1, :cond_8

    .line 586
    .line 587
    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    const/16 v16, 0x2

    .line 600
    .line 601
    add-int/lit8 v1, v1, 0x2

    .line 602
    .line 603
    rem-int/2addr v1, v13

    .line 604
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const/16 v1, 0x11

    .line 628
    .line 629
    const/4 v4, 0x2

    .line 630
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    return-object v0

    .line 642
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-nez v1, :cond_a

    .line 647
    .line 648
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-nez v1, :cond_9

    .line 653
    .line 654
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_a

    .line 659
    .line 660
    :cond_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    const/16 v6, 0xc

    .line 673
    .line 674
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-static {v2, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    const/16 v16, 0x2

    .line 687
    .line 688
    xor-int/lit8 v1, v1, 0x2

    .line 689
    .line 690
    rem-int/2addr v1, v13

    .line 691
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    xor-int/2addr v2, v7

    .line 696
    rem-int/2addr v2, v13

    .line 697
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 707
    .line 708
    .line 709
    move-result v6

    .line 710
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const/4 v1, 0x2

    .line 721
    const/16 v6, 0xc

    .line 722
    .line 723
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    const/16 v1, 0xd

    .line 734
    .line 735
    const/16 v2, 0x11

    .line 736
    .line 737
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    return-object v0

    .line 749
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-nez v1, :cond_b

    .line 754
    .line 755
    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    if-eqz v1, :cond_b

    .line 760
    .line 761
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-static {v1, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    xor-int/lit8 v1, v1, 0x6

    .line 774
    .line 775
    rem-int/2addr v1, v13

    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 786
    .line 787
    .line 788
    move-result v4

    .line 789
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    const/16 v1, 0x11

    .line 800
    .line 801
    const/4 v4, 0x2

    .line 802
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    return-object v0

    .line 814
    :cond_b
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 815
    .line 816
    .line 817
    return-object v3

    .line 818
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    const-string v2, "Exception is occurred. "

    .line 821
    .line 822
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    goto :goto_2

    .line 836
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    const-string v2, "NumberFormatException is occurred. "

    .line 839
    .line 840
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .line 852
    .line 853
    :goto_2
    return-object v3
.end method

.method public static getInstantHotspotFeature()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "ro.csc.countryiso_code"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "CN"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    sget-boolean v2, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v4, "vendor.wifiap.ih.enable"

    .line 27
    .line 28
    const/4 v5, -0x1

    .line 29
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ltz v2, :cond_1

    .line 34
    .line 35
    if-ne v2, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v3

    .line 39
    :goto_0
    move v0, v1

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Instant Hotspot isDeviceConfigEnabled "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " rollout:"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "wifi"

    .line 56
    .line 57
    const-string v2, "shared_connectivity_enabled"

    .line 58
    .line 59
    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method private getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-le p0, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_2
    return-object p1
.end method

.method private isSepDevice()Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    .line 3
    .line 4
    const-string v1, "SEM_INT"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Landroid/os/Build$VERSION;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move v0, p0

    .line 18
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    :cond_0
    return p0
.end method

.method private isShipBinary()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isSepDevice()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    const-string v0, "isShipBinary :"

    .line 17
    .line 18
    const-string v1, "SemSoftApConfiguration"

    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return p0
.end method

.method private saveMacAddressToSoftApConfigStore(Landroid/net/MacAddress;Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "saveMacAddressToSoftApConfigStore mac: "

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "SemSoftApConfiguration"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public static showMoreInfo()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "More Info\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "SalesCode:"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "SalesCode"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\n"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "SFF BRAND_NAME="

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "Internal6G:"

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries6G:[Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "Internal2G:"

    .line 99
    .line 100
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly:[Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "UI2G:"

    .line 125
    .line 126
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 134
    .line 135
    .line 136
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v3, "SoftApCapability:"

    .line 158
    .line 159
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApCapability()Landroid/net/wifi/SoftApCapability;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "WifiChip:"

    .line 190
    .line 191
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v3, "IH:"

    .line 226
    .line 227
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getInstantHotspotFeature()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    .line 246
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v3, "MHSDBG="

    .line 250
    .line 251
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0
.end method

.method public static showSecProductFeature()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "SPF info \nSPF_BackOff=true\nSPF_SAR_BackOff=false\nSPF_5G_BASEDON_COUNTRY=false\nSPF_POWER_SAVEMODE=true\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "SPF_SmartHotspot =TRUE with Kernel version:"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "ro.kernel.version"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "\n"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    const-string v1, "SPF_Enhanced=true\nSPF_Enhanced_Menu=d2d\nSPF_Guest=lite\nSPF_MobileAp=true\nSPF_Concurrency=false\nSPF_11ax=true\nSPF_6G=true\nSPF_Dongle=false\nSPF_DualAp=false\nSPF_MCF_AutoHotspot=false\nSPF_OWE=false\nSPF_Prio_Traffic=true\nSPF_WS_Lite=false\nSPF_wpa3=true\nSPF_JDM=in_house\n"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "SemSoftApConfiguration"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " mhs: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 46
    .line 47
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " "

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "\n"

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/16 v1, 0x64

    .line 94
    .line 95
    if-le p1, v1, :cond_0

    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p1
.end method

.method public declared-synchronized getDumpLogs()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "wifiapcust=["

    .line 2
    .line 3
    const-string v1, "--SemSoftApConfiguration \n"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "]\n"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->showSecProductFeature()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->showMoreInfo()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    const-string v0, "---MHS history: \n"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    .line 69
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "wifi_ap_guest_password"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v0, "passsword"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestPassword(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    return-object v0
.end method

.method public getWifiApMaxClientFromFramework()I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "wifi_ap_maxclient_framework"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_1
    const-string p0, "getmaxclient API:"

    .line 35
    .line 36
    const-string v1, "SemSoftApConfiguration"

    .line 37
    .line 38
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public isInternal2GCountry(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "ro.product.first_api_level"

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly:[Ljava/lang/String;

    .line 27
    .line 28
    array-length v4, v3

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ge v2, v4, :cond_1

    .line 31
    .line 32
    aget-object v3, v3, v2

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    move v2, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, v1

    .line 46
    :goto_1
    const-string v3, "Broadcom"

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    move p0, v1

    .line 55
    :goto_2
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly_BRCM:[Ljava/lang/String;

    .line 56
    .line 57
    array-length v4, v3

    .line 58
    if-ge p0, v4, :cond_3

    .line 59
    .line 60
    aget-object v3, v3, p0

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    move v2, v5

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_3
    const/16 p0, 0x1e

    .line 74
    .line 75
    if-gt v0, p0, :cond_5

    .line 76
    .line 77
    :goto_4
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly_below30:[Ljava/lang/String;

    .line 78
    .line 79
    array-length v0, p0

    .line 80
    if-ge v1, v0, :cond_5

    .line 81
    .line 82
    aget-object p0, p0, v1

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    return v5

    .line 91
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    return v2
.end method

.method public isInternal6GCountry(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "Broadcom"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    move p0, v0

    .line 27
    :goto_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountriesNo6G_BRCM:[Ljava/lang/String;

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    if-ge p0, v2, :cond_1

    .line 31
    .line 32
    aget-object v1, v1, p0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    return v0

    .line 41
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p0, v0

    .line 45
    :goto_1
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries6G:[Ljava/lang/String;

    .line 46
    .line 47
    array-length v2, v1

    .line 48
    if-ge p0, v2, :cond_3

    .line 49
    .line 50
    aget-object v1, v1, p0

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const-string p0, "SemSoftApConfiguration"

    .line 59
    .line 60
    const-string p1, " 6G supported country"

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return v0
.end method

.method public isWifiApEnabledWithDualBand()Z
    .locals 1

    .line 1
    const-string p0, "SemSoftApConfiguration"

    .line 2
    .line 3
    const-string v0, "isWifiApEnabledWithDualBand API:false"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public isWifiApGuestModeEnabled()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "wifi_ap_guest_settings_val"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-string v0, "isWifiApGuestModeEnabled:"

    .line 15
    .line 16
    const-string v2, "SemSoftApConfiguration"

    .line 17
    .line 18
    invoke-static {v0, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    return v1
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "wifi_ap_guest_isolation_settings_val"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-string v0, "isWifiApGuestModeIsolationEnabled:"

    .line 15
    .line 16
    const-string v2, "SemSoftApConfiguration"

    .line 17
    .line 18
    invoke-static {v0, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    return v1
.end method

.method public resetsoftap()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Z)Landroid/net/wifi/SoftApConfiguration;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "getUsableChannels() "

    .line 4
    .line 5
    const-string v0, "getUsableChannels(), 6Ghz size:"

    .line 6
    .line 7
    const-string v3, " mSoftApCapability 6GHZ:"

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v5, "wifi"

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    iput-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "SemSoftApConfiguration"

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const-string v4, "ro.csc.countryiso_code"

    .line 30
    .line 31
    const-string v6, "JP"

    .line 32
    .line 33
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v6, "set country code : "

    .line 44
    .line 45
    invoke-static {v6, v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string v6, "ro.product.first_api_level"

    .line 49
    .line 50
    const/4 v7, -0x1

    .line 51
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const-string v8, "ro.product.build.version.sdk"

    .line 56
    .line 57
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 64
    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    const-string v10, "mSoftAp is null only in error case and other direct cases with null softap"

    .line 68
    .line 69
    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 73
    .line 74
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const/4 v11, 0x0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object/from16 v10, p1

    .line 81
    .line 82
    move/from16 v11, p2

    .line 83
    .line 84
    :goto_0
    new-instance v12, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 85
    .line 86
    invoke-direct {v12, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_2

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isInternal2GCountry(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-nez v13, :cond_2

    .line 108
    .line 109
    const/4 v13, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/4 v13, 0x0

    .line 112
    :goto_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    const-string v7, "wlan0"

    .line 121
    .line 122
    invoke-virtual {v15, v7}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getFccBackOffStates(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    const/4 v9, 0x4

    .line 127
    if-nez v7, :cond_4

    .line 128
    .line 129
    move/from16 v18, v9

    .line 130
    .line 131
    move-object/from16 v19, v10

    .line 132
    .line 133
    :cond_3
    const/4 v14, 0x0

    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :cond_4
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isInternal6GCountry(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    const/16 v15, 0x1f

    .line 141
    .line 142
    if-lt v6, v15, :cond_6

    .line 143
    .line 144
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApCapability()Landroid/net/wifi/SoftApCapability;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    sput-object v15, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 157
    .line 158
    if-eqz v15, :cond_6

    .line 159
    .line 160
    invoke-virtual {v15, v9}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    .line 161
    .line 162
    .line 163
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 164
    move/from16 v18, v9

    .line 165
    .line 166
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v3, " "

    .line 179
    .line 180
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    array-length v3, v15

    .line 184
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v3, " bSupport6G "

    .line 188
    .line 189
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 200
    .line 201
    .line 202
    :try_start_2
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    .line 204
    move-object/from16 v19, v10

    .line 205
    .line 206
    const/16 v9, 0x8

    .line 207
    .line 208
    const/4 v10, 0x2

    .line 209
    :try_start_3
    invoke-virtual {v3, v9, v10}, Landroid/net/wifi/WifiManager;->getUsableChannels(II)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 213
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v0, " channels:"

    .line 226
    .line 227
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :catch_0
    move-exception v0

    .line 242
    goto :goto_3

    .line 243
    :catch_1
    move-exception v0

    .line 244
    :goto_2
    const/4 v3, 0x0

    .line 245
    goto :goto_3

    .line 246
    :catch_2
    move-exception v0

    .line 247
    move-object/from16 v19, v10

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :goto_3
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :goto_4
    array-length v0, v15

    .line 266
    if-gtz v0, :cond_5

    .line 267
    .line 268
    if-eqz v3, :cond_3

    .line 269
    .line 270
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 274
    if-lez v0, :cond_3

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :catch_3
    move-exception v0

    .line 278
    goto :goto_7

    .line 279
    :cond_5
    :goto_5
    const/4 v14, 0x1

    .line 280
    goto :goto_8

    .line 281
    :catch_4
    move-exception v0

    .line 282
    :goto_6
    move-object/from16 v19, v10

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :catch_5
    move-exception v0

    .line 286
    move/from16 v18, v9

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    move/from16 v18, v9

    .line 290
    .line 291
    move-object/from16 v19, v10

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v2, "bSupport5G:"

    .line 300
    .line 301
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v2, " bSupport6G:"

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v2, " first_api:"

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, " current_api:"

    .line 321
    .line 322
    const-string v3, " fccBackOffState:"

    .line 323
    .line 324
    invoke-static {v0, v6, v2, v8, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    if-eqz v19, :cond_7

    .line 338
    .line 339
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    goto :goto_9

    .line 344
    :cond_7
    const/4 v0, 0x0

    .line 345
    :goto_9
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 350
    .line 351
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    const-string v6, "wifi_ap_powersave_mode_checked"

    .line 356
    .line 357
    const/4 v7, 0x0

    .line 358
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    const/4 v6, 0x1

    .line 363
    if-ne v3, v6, :cond_8

    .line 364
    .line 365
    move v3, v6

    .line 366
    goto :goto_a

    .line 367
    :cond_8
    move v3, v7

    .line 368
    :goto_a
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mPowerSaveChecked:Z

    .line 369
    .line 370
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 371
    .line 372
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    const-string v8, "wifi_ap_11ax_mode_checked"

    .line 377
    .line 378
    invoke-static {v3, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-ne v3, v6, :cond_9

    .line 383
    .line 384
    move v3, v6

    .line 385
    goto :goto_b

    .line 386
    :cond_9
    move v3, v7

    .line 387
    :goto_b
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    .line 388
    .line 389
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 390
    .line 391
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    const-string v9, "wifi_ap_disable_random_mac"

    .line 396
    .line 397
    invoke-static {v3, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-ne v3, v6, :cond_a

    .line 402
    .line 403
    const/4 v3, 0x1

    .line 404
    goto :goto_c

    .line 405
    :cond_a
    move v3, v7

    .line 406
    :goto_c
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 407
    .line 408
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    const-string v6, "wifi_ap_last_2g_channel"

    .line 415
    .line 416
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    iput v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 421
    .line 422
    if-gez v3, :cond_b

    .line 423
    .line 424
    iput v7, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 425
    .line 426
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v6, "setSoftApConfiguration() mDisableRandomMac: "

    .line 429
    .line 430
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget-boolean v6, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 434
    .line 435
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v6, " mChannel "

    .line 439
    .line 440
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v6, " mMAXClients "

    .line 447
    .line 448
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v2, " mIs11Ax "

    .line 455
    .line 456
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-boolean v2, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    .line 460
    .line 461
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v2, ",isCustomConfig:"

    .line 465
    .line 466
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    const-string v2, "vendor.wifiap.pmf"

    .line 480
    .line 481
    const-string v3, "0"

    .line 482
    .line 483
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    sget-object v6, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 487
    .line 488
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    const-string v7, "wifi_ap_pmf_checked"

    .line 493
    .line 494
    const/4 v9, 0x0

    .line 495
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 496
    .line 497
    .line 498
    move-result v6

    .line 499
    const-string v7, "1"

    .line 500
    .line 501
    const/4 v9, 0x1

    .line 502
    if-ne v6, v9, :cond_c

    .line 503
    .line 504
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    :cond_c
    const-string v6, "vendor.wifiap.axmode"

    .line 508
    .line 509
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 513
    .line 514
    .line 515
    move-result-object v10

    .line 516
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 517
    .line 518
    .line 519
    move-result-object v10

    .line 520
    invoke-virtual {v10, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 521
    .line 522
    .line 523
    move-result v10

    .line 524
    if-eqz v10, :cond_d

    .line 525
    .line 526
    sget-object v10, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 527
    .line 528
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 529
    .line 530
    .line 531
    move-result-object v10

    .line 532
    const/4 v15, 0x0

    .line 533
    invoke-static {v10, v8, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 534
    .line 535
    .line 536
    move-result v8

    .line 537
    if-ne v8, v9, :cond_d

    .line 538
    .line 539
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    :cond_d
    const/4 v8, 0x5

    .line 543
    const/4 v9, 0x3

    .line 544
    if-nez v13, :cond_e

    .line 545
    .line 546
    if-nez v14, :cond_e

    .line 547
    .line 548
    const-string v0, " only 2G supported countries"

    .line 549
    .line 550
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;

    .line 554
    .line 555
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_d

    .line 559
    .line 560
    :cond_e
    if-eqz v0, :cond_17

    .line 561
    .line 562
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    const/4 v15, 0x1

    .line 567
    if-le v10, v15, :cond_f

    .line 568
    .line 569
    const-string v0, " SPF dualAp is not enabled"

    .line 570
    .line 571
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$6;

    .line 575
    .line 576
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 577
    .line 578
    .line 579
    :cond_f
    const/4 v10, 0x0

    .line 580
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 581
    .line 582
    .line 583
    move-result v20

    .line 584
    and-int/lit8 v10, v20, 0x4

    .line 585
    .line 586
    if-nez v10, :cond_10

    .line 587
    .line 588
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 589
    .line 590
    .line 591
    move-result v10

    .line 592
    if-le v10, v15, :cond_11

    .line 593
    .line 594
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 595
    .line 596
    .line 597
    move-result v10

    .line 598
    and-int/lit8 v10, v10, 0x4

    .line 599
    .line 600
    if-eqz v10, :cond_11

    .line 601
    .line 602
    :cond_10
    if-nez v14, :cond_11

    .line 603
    .line 604
    const-string v0, "supportWifiAp6GBasedOnCountry is false"

    .line 605
    .line 606
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$7;

    .line 610
    .line 611
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$7;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 612
    .line 613
    .line 614
    :cond_11
    const/4 v15, 0x0

    .line 615
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 616
    .line 617
    .line 618
    move-result v10

    .line 619
    const/16 v17, 0x2

    .line 620
    .line 621
    and-int/lit8 v10, v10, 0x2

    .line 622
    .line 623
    if-nez v10, :cond_12

    .line 624
    .line 625
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    const/4 v15, 0x1

    .line 630
    if-le v10, v15, :cond_13

    .line 631
    .line 632
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 633
    .line 634
    .line 635
    move-result v10

    .line 636
    and-int/lit8 v10, v10, 0x2

    .line 637
    .line 638
    if-eqz v10, :cond_13

    .line 639
    .line 640
    :cond_12
    if-nez v13, :cond_13

    .line 641
    .line 642
    const-string v0, "supportWifiAp5GBasedOnCountry is false"

    .line 643
    .line 644
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$8;

    .line 648
    .line 649
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$8;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 650
    .line 651
    .line 652
    :cond_13
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 653
    .line 654
    .line 655
    move-result v10

    .line 656
    const/4 v15, 0x1

    .line 657
    if-ne v10, v15, :cond_15

    .line 658
    .line 659
    const/4 v15, 0x0

    .line 660
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 661
    .line 662
    .line 663
    move-result v10

    .line 664
    if-ne v10, v9, :cond_14

    .line 665
    .line 666
    const-string v0, "2.4 and 5 set in  single band"

    .line 667
    .line 668
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$9;

    .line 672
    .line 673
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$9;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 674
    .line 675
    .line 676
    goto :goto_d

    .line 677
    :cond_14
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 678
    .line 679
    .line 680
    move-result v10

    .line 681
    if-ne v10, v8, :cond_18

    .line 682
    .line 683
    const-string v0, "2.4 and 6 set in single band "

    .line 684
    .line 685
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$10;

    .line 689
    .line 690
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$10;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 691
    .line 692
    .line 693
    goto :goto_d

    .line 694
    :cond_15
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 695
    .line 696
    .line 697
    move-result v10

    .line 698
    const/4 v13, 0x2

    .line 699
    if-ne v10, v13, :cond_18

    .line 700
    .line 701
    if-nez v11, :cond_16

    .line 702
    .line 703
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 712
    .line 713
    .line 714
    move-result v0

    .line 715
    if-eqz v0, :cond_16

    .line 716
    .line 717
    const-string v0, "forcing to enable in 2.4GHz in dualap because of Wi-Fi ON "

    .line 718
    .line 719
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .line 721
    .line 722
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$11;

    .line 723
    .line 724
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$11;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 725
    .line 726
    .line 727
    goto :goto_d

    .line 728
    :cond_16
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    .line 729
    .line 730
    goto :goto_d

    .line 731
    :cond_17
    const-string v10, "mChannels is null"

    .line 732
    .line 733
    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    :cond_18
    :goto_d
    const-string v10, "vendor.wifiap.owe_security"

    .line 737
    .line 738
    invoke-static {v10, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    if-eqz v19, :cond_1b

    .line 742
    .line 743
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 744
    .line 745
    .line 746
    move-result v11

    .line 747
    if-ne v11, v8, :cond_1b

    .line 748
    .line 749
    const-string v11, "OWE is set but OWE SPF not enabled"

    .line 750
    .line 751
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    if-eqz v0, :cond_19

    .line 755
    .line 756
    const/4 v15, 0x0

    .line 757
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 758
    .line 759
    .line 760
    move-result v11

    .line 761
    and-int/lit8 v11, v11, 0x4

    .line 762
    .line 763
    if-nez v11, :cond_1a

    .line 764
    .line 765
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 766
    .line 767
    .line 768
    move-result v11

    .line 769
    const/4 v15, 0x1

    .line 770
    if-le v11, v15, :cond_19

    .line 771
    .line 772
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 773
    .line 774
    .line 775
    move-result v11

    .line 776
    and-int/lit8 v11, v11, 0x4

    .line 777
    .line 778
    if-eqz v11, :cond_19

    .line 779
    .line 780
    goto :goto_e

    .line 781
    :cond_19
    const/4 v11, 0x0

    .line 782
    const/4 v15, 0x0

    .line 783
    goto :goto_f

    .line 784
    :cond_1a
    :goto_e
    const-string v0, "OWE is set but OWE is not supported, and 6GHz selected error"

    .line 785
    .line 786
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$12;

    .line 790
    .line 791
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$12;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 792
    .line 793
    .line 794
    const/4 v11, 0x0

    .line 795
    const/4 v15, 0x0

    .line 796
    invoke-virtual {v12, v11, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 797
    .line 798
    .line 799
    goto :goto_10

    .line 800
    :goto_f
    invoke-virtual {v12, v11, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 801
    .line 802
    .line 803
    goto :goto_10

    .line 804
    :cond_1b
    const/4 v15, 0x0

    .line 805
    :goto_10
    const-string v11, "vendor.wifiap.11acmode"

    .line 806
    .line 807
    invoke-static {v11, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    if-eqz v0, :cond_1d

    .line 811
    .line 812
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 813
    .line 814
    .line 815
    move-result v13

    .line 816
    const/4 v14, 0x1

    .line 817
    if-ne v13, v14, :cond_1c

    .line 818
    .line 819
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 820
    .line 821
    .line 822
    move-result v13

    .line 823
    and-int/2addr v13, v14

    .line 824
    if-nez v13, :cond_1d

    .line 825
    .line 826
    :cond_1c
    invoke-static {v11, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    :cond_1d
    const-string v13, "SemSoftApConfiguration country:"

    .line 830
    .line 831
    const-string v14, " powersave:"

    .line 832
    .line 833
    invoke-static {v13, v4, v14}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    iget-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mPowerSaveChecked:Z

    .line 838
    .line 839
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    const-string v13, " mDisableRandomMac:"

    .line 843
    .line 844
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    iget-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 848
    .line 849
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    const-string v13, " config_channels:"

    .line 853
    .line 854
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v13, " mIs11Ax:"

    .line 861
    .line 862
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    iget-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    .line 866
    .line 867
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v13, " last2Gch:"

    .line 871
    .line 872
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    iget v13, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 876
    .line 877
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v13, " requirePMF:"

    .line 881
    .line 882
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v13

    .line 889
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const-string v13, " owe_security:"

    .line 893
    .line 894
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-static {v10, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v10

    .line 901
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    const-string v10, " 11acmode:"

    .line 905
    .line 906
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-static {v11, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v10

    .line 913
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    const-string v10, " axmode:"

    .line 917
    .line 918
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v10

    .line 925
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->addMHSDumpLog(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    const-string v4, "maxClient = 10"

    .line 936
    .line 937
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    sget-boolean v4, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    .line 941
    .line 942
    const/16 v10, 0xa

    .line 943
    .line 944
    if-eqz v4, :cond_21

    .line 945
    .line 946
    const-string v11, "vendor.wifiap.debug.channel"

    .line 947
    .line 948
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v11

    .line 952
    const-string v13, "vendor.wifiap.debug.maxclient"

    .line 953
    .line 954
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v13

    .line 958
    if-eqz v11, :cond_20

    .line 959
    .line 960
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 961
    .line 962
    .line 963
    move-result v14

    .line 964
    if-nez v14, :cond_20

    .line 965
    .line 966
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result v14

    .line 970
    if-nez v14, :cond_20

    .line 971
    .line 972
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    const/16 v11, 0x3e7

    .line 977
    .line 978
    if-ne v0, v11, :cond_1e

    .line 979
    .line 980
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$13;

    .line 981
    .line 982
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$13;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 983
    .line 984
    .line 985
    goto :goto_11

    .line 986
    :cond_1e
    const/16 v11, 0x95

    .line 987
    .line 988
    if-ne v0, v11, :cond_1f

    .line 989
    .line 990
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$14;

    .line 991
    .line 992
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$14;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 993
    .line 994
    .line 995
    goto :goto_11

    .line 996
    :cond_1f
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$15;

    .line 997
    .line 998
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$15;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 999
    .line 1000
    .line 1001
    :goto_11
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    const-string v14, "channel is changed "

    .line 1004
    .line 1005
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    const-string v14, " apBand(1:2g , 2:5g , 4:6g, -1:any) :"

    .line 1012
    .line 1013
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v11

    .line 1020
    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    .line 1022
    .line 1023
    :cond_20
    if-eqz v13, :cond_21

    .line 1024
    .line 1025
    const-string v11, ""

    .line 1026
    .line 1027
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v11

    .line 1031
    if-nez v11, :cond_21

    .line 1032
    .line 1033
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1034
    .line 1035
    .line 1036
    move-result v11

    .line 1037
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    const-string v14, "maxclient is changed "

    .line 1040
    .line 1041
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v13

    .line 1051
    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    goto :goto_12

    .line 1055
    :cond_21
    move v11, v10

    .line 1056
    :goto_12
    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1057
    .line 1058
    if-eqz v13, :cond_24

    .line 1059
    .line 1060
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v13

    .line 1064
    if-eqz v13, :cond_24

    .line 1065
    .line 1066
    const/4 v15, 0x0

    .line 1067
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v13

    .line 1071
    and-int/lit8 v13, v13, 0x4

    .line 1072
    .line 1073
    if-nez v13, :cond_22

    .line 1074
    .line 1075
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 1076
    .line 1077
    .line 1078
    move-result v13

    .line 1079
    const/4 v15, 0x1

    .line 1080
    if-le v13, v15, :cond_24

    .line 1081
    .line 1082
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1083
    .line 1084
    .line 1085
    move-result v13

    .line 1086
    and-int/lit8 v13, v13, 0x4

    .line 1087
    .line 1088
    if-eqz v13, :cond_24

    .line 1089
    .line 1090
    goto :goto_13

    .line 1091
    :cond_22
    const/4 v15, 0x1

    .line 1092
    :goto_13
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    if-eqz v19, :cond_23

    .line 1099
    .line 1100
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    if-ne v2, v15, :cond_23

    .line 1105
    .line 1106
    const-string v2, "6GHz selected, but WPA2 is set, error"

    .line 1107
    .line 1108
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    invoke-virtual {v12, v2, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1116
    .line 1117
    .line 1118
    goto :goto_14

    .line 1119
    :cond_23
    if-eqz v19, :cond_24

    .line 1120
    .line 1121
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    if-nez v2, :cond_24

    .line 1126
    .line 1127
    const-string v0, "6GHz selected, but OPEN type is set, error"

    .line 1128
    .line 1129
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .line 1131
    .line 1132
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$16;

    .line 1133
    .line 1134
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$16;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 1135
    .line 1136
    .line 1137
    :cond_24
    :goto_14
    const-string v2, "vendor.wifiap.maxclient"

    .line 1138
    .line 1139
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v6

    .line 1143
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    const-string v6, "DD05001632"

    .line 1149
    .line 1150
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    const/16 v6, 0x80

    .line 1154
    .line 1155
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v6

    .line 1159
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    .line 1162
    const-string v6, "00"

    .line 1163
    .line 1164
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v2

    .line 1171
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isShipBinary()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v6

    .line 1175
    if-nez v6, :cond_25

    .line 1176
    .line 1177
    const-string v6, "Add Vendor specific IE DD040000F0FE"

    .line 1178
    .line 1179
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    .line 1181
    .line 1182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    const-string v2, "DD040000F0FE"

    .line 1191
    .line 1192
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    :cond_25
    const-string v6, "DD080050F21102000000"

    .line 1200
    .line 1201
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    const-string v6, "vendor.wifiap.vendorie"

    .line 1206
    .line 1207
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    const-string v6, "vendor.wifiap.5gindoor"

    .line 1211
    .line 1212
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    .line 1214
    .line 1215
    const/4 v13, 0x2

    .line 1216
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 1217
    .line 1218
    .line 1219
    move-result v14

    .line 1220
    const/4 v13, -0x1

    .line 1221
    if-le v14, v13, :cond_26

    .line 1222
    .line 1223
    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1224
    .line 1225
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v13

    .line 1229
    if-eqz v13, :cond_26

    .line 1230
    .line 1231
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    :cond_26
    invoke-virtual {v12, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1235
    .line 1236
    .line 1237
    const-string v0, "2"

    .line 1238
    .line 1239
    if-eqz v4, :cond_28

    .line 1240
    .line 1241
    const-string v4, "vendor.wifiap.debug.dualap"

    .line 1242
    .line 1243
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v4

    .line 1247
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v6

    .line 1251
    if-eqz v6, :cond_27

    .line 1252
    .line 1253
    const-string v6, "Enabling in  2.4+ 5GHz  DualApMode"

    .line 1254
    .line 1255
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    .line 1257
    .line 1258
    sget-object v6, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    .line 1259
    .line 1260
    invoke-virtual {v12, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1261
    .line 1262
    .line 1263
    :cond_27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v4

    .line 1267
    if-eqz v4, :cond_28

    .line 1268
    .line 1269
    const-string v4, "Enabling in 2.4+ 6GHz DualApMode"

    .line 1270
    .line 1271
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .line 1273
    .line 1274
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp6GHzChannels:Landroid/util/SparseIntArray;

    .line 1275
    .line 1276
    invoke-virtual {v12, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1277
    .line 1278
    .line 1279
    :cond_28
    iget-boolean v4, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 1280
    .line 1281
    if-nez v4, :cond_29

    .line 1282
    .line 1283
    const-string v4, "setSoftApConfiguration() setBssid(null). randomMac will be set in WifiApConfigStore randomizeBssidIfUnset()"

    .line 1284
    .line 1285
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    const/4 v15, 0x1

    .line 1289
    invoke-virtual {v12, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1290
    .line 1291
    .line 1292
    const/4 v4, 0x0

    .line 1293
    invoke-virtual {v12, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1294
    .line 1295
    .line 1296
    const/4 v15, 0x0

    .line 1297
    goto/16 :goto_17

    .line 1298
    .line 1299
    :cond_29
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v4

    .line 1303
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v4

    .line 1307
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getFactoryMacAddresses()[Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v4

    .line 1311
    array-length v6, v4

    .line 1312
    if-lez v6, :cond_2a

    .line 1313
    .line 1314
    const/4 v15, 0x0

    .line 1315
    aget-object v4, v4, v15

    .line 1316
    .line 1317
    const-string v6, ":"

    .line 1318
    .line 1319
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v6

    .line 1323
    if-nez v6, :cond_2b

    .line 1324
    .line 1325
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1326
    .line 1327
    .line 1328
    move-result v6

    .line 1329
    const/16 v13, 0xc

    .line 1330
    .line 1331
    if-ne v6, v13, :cond_2b

    .line 1332
    .line 1333
    const/4 v6, 0x6

    .line 1334
    new-array v13, v6, [Ljava/lang/CharSequence;

    .line 1335
    .line 1336
    const/4 v14, 0x2

    .line 1337
    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v16

    .line 1341
    aput-object v16, v13, v15

    .line 1342
    .line 1343
    move/from16 v15, v18

    .line 1344
    .line 1345
    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v16

    .line 1349
    const/16 v17, 0x1

    .line 1350
    .line 1351
    aput-object v16, v13, v17

    .line 1352
    .line 1353
    invoke-virtual {v4, v15, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v16

    .line 1357
    aput-object v16, v13, v14

    .line 1358
    .line 1359
    const/16 v14, 0x8

    .line 1360
    .line 1361
    invoke-virtual {v4, v6, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v6

    .line 1365
    aput-object v6, v13, v9

    .line 1366
    .line 1367
    invoke-virtual {v4, v14, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v6

    .line 1371
    aput-object v6, v13, v15

    .line 1372
    .line 1373
    const/16 v6, 0xc

    .line 1374
    .line 1375
    invoke-virtual {v4, v10, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v4

    .line 1379
    aput-object v4, v13, v8

    .line 1380
    .line 1381
    const-string v4, ":"

    .line 1382
    .line 1383
    invoke-static {v4, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v4

    .line 1387
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v4

    .line 1391
    goto :goto_15

    .line 1392
    :cond_2a
    const/4 v4, 0x0

    .line 1393
    :cond_2b
    :goto_15
    iget-boolean v6, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isJDMDevice:Z

    .line 1394
    .line 1395
    if-eqz v6, :cond_2c

    .line 1396
    .line 1397
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v4

    .line 1401
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v4

    .line 1405
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    const-string v8, "JDM staMac:"

    .line 1408
    .line 1409
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1410
    .line 1411
    .line 1412
    invoke-direct {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v8

    .line 1416
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v6

    .line 1423
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    .line 1425
    .line 1426
    :cond_2c
    if-eqz v4, :cond_2d

    .line 1427
    .line 1428
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1429
    .line 1430
    .line 1431
    move-result v6

    .line 1432
    if-gtz v6, :cond_2e

    .line 1433
    .line 1434
    :cond_2d
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v4

    .line 1438
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v4

    .line 1442
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v4

    .line 1446
    const-string v6, "getMacAddressFromFile from mac file is null, hence try fetch from driver "

    .line 1447
    .line 1448
    invoke-static {v6, v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    :cond_2e
    if-eqz v4, :cond_2f

    .line 1452
    .line 1453
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1454
    .line 1455
    .line 1456
    move-result v6

    .line 1457
    const/16 v8, 0x11

    .line 1458
    .line 1459
    if-eq v6, v8, :cond_30

    .line 1460
    .line 1461
    :cond_2f
    const/4 v4, 0x0

    .line 1462
    const/4 v14, 0x1

    .line 1463
    const/4 v15, 0x0

    .line 1464
    goto :goto_16

    .line 1465
    :cond_30
    const/4 v15, 0x0

    .line 1466
    invoke-direct {v1, v4, v15}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->convertApMac(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v6

    .line 1470
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v8

    .line 1474
    if-nez v8, :cond_31

    .line 1475
    .line 1476
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    const-string v9, "setSoftApConfiguration() staMac: "

    .line 1479
    .line 1480
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    invoke-direct {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v4

    .line 1487
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    const-string v4, ", apMac: "

    .line 1491
    .line 1492
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    invoke-direct {v1, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v4

    .line 1499
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v4

    .line 1506
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    .line 1508
    .line 1509
    invoke-static {v6}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v4

    .line 1513
    invoke-virtual {v12, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1514
    .line 1515
    .line 1516
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1517
    .line 1518
    invoke-direct {v1, v4, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->saveMacAddressToSoftApConfigStore(Landroid/net/MacAddress;Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 1519
    .line 1520
    .line 1521
    const/4 v15, 0x0

    .line 1522
    invoke-virtual {v12, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1523
    .line 1524
    .line 1525
    goto :goto_17

    .line 1526
    :cond_31
    const/4 v4, 0x0

    .line 1527
    const/4 v15, 0x0

    .line 1528
    invoke-virtual {v12, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1529
    .line 1530
    .line 1531
    const/4 v14, 0x1

    .line 1532
    invoke-virtual {v12, v14}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1533
    .line 1534
    .line 1535
    goto :goto_17

    .line 1536
    :goto_16
    const-string v6, "setSoftApConfiguration() SemWifiChipInfo.getMacAddress is invalid, randomMac will be set in WifiApConfigStore randomizeBssidIfUnset()"

    .line 1537
    .line 1538
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v12, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v12, v14}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1545
    .line 1546
    .line 1547
    :goto_17
    invoke-virtual {v12, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1548
    .line 1549
    .line 1550
    const-string v4, "vendor.wifiap.MacAclMode"

    .line 1551
    .line 1552
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1556
    .line 1557
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v6

    .line 1561
    if-eqz v6, :cond_33

    .line 1562
    .line 1563
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v6

    .line 1567
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    .line 1568
    .line 1569
    .line 1570
    move-result v6

    .line 1571
    if-eqz v6, :cond_33

    .line 1572
    .line 1573
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v6

    .line 1577
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    .line 1578
    .line 1579
    .line 1580
    move-result v6

    .line 1581
    const/4 v15, 0x1

    .line 1582
    if-ne v6, v15, :cond_32

    .line 1583
    .line 1584
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    const/4 v14, 0x1

    .line 1588
    goto :goto_18

    .line 1589
    :cond_32
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v6

    .line 1593
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    .line 1594
    .line 1595
    .line 1596
    move-result v6

    .line 1597
    const/4 v13, 0x2

    .line 1598
    if-ne v6, v13, :cond_33

    .line 1599
    .line 1600
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    move v14, v13

    .line 1604
    goto :goto_18

    .line 1605
    :cond_33
    const/4 v14, 0x0

    .line 1606
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1607
    .line 1608
    const-string v4, "SemSoftApConfiguration softap "

    .line 1609
    .line 1610
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v4

    .line 1617
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v4

    .line 1621
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    const-string v4, "\nmMAXClients:"

    .line 1625
    .line 1626
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    const-string v4, ",mMacAclMode:"

    .line 1633
    .line 1634
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    const-string v4, "\nvendorIE "

    .line 1641
    .line 1642
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    .line 1647
    .line 1648
    const-string v2, " isDualApfalse"

    .line 1649
    .line 1650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1658
    .line 1659
    .line 1660
    const-string v0, "vendor.wifiap.guest_mode_enabled"

    .line 1661
    .line 1662
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    const-string v0, "vendor.wifiap.guest_mode_isolation"

    .line 1666
    .line 1667
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v0

    .line 1674
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v0

    .line 1678
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    .line 1679
    .line 1680
    .line 1681
    move-result v0

    .line 1682
    if-eqz v0, :cond_35

    .line 1683
    .line 1684
    invoke-virtual {v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v0

    .line 1688
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 1689
    .line 1690
    .line 1691
    move-result v0

    .line 1692
    const/4 v15, 0x1

    .line 1693
    if-ne v0, v15, :cond_35

    .line 1694
    .line 1695
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeEnabled()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v0

    .line 1699
    if-eqz v0, :cond_35

    .line 1700
    .line 1701
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    .line 1702
    .line 1703
    if-nez v0, :cond_34

    .line 1704
    .line 1705
    const-string v0, "addsfsd"

    .line 1706
    .line 1707
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestPassword(Ljava/lang/String;)V

    .line 1708
    .line 1709
    .line 1710
    :goto_19
    const/4 v15, 0x0

    .line 1711
    goto :goto_1a

    .line 1712
    :cond_34
    const-string v0, "Dont reset OTP when resetConfiguration is called"

    .line 1713
    .line 1714
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    .line 1716
    .line 1717
    goto :goto_19

    .line 1718
    :goto_1a
    iput-boolean v15, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    .line 1719
    .line 1720
    const-string v0, "vendor.wifiap.guest_mode_enabled"

    .line 1721
    .line 1722
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    .line 1724
    .line 1725
    const-string v0, "vendor.wifiap.guest_mode_passsword"

    .line 1726
    .line 1727
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApGuestPassword()Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v2

    .line 1731
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeIsolationEnabled()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v0

    .line 1738
    if-eqz v0, :cond_35

    .line 1739
    .line 1740
    const-string v0, "vendor.wifiap.guest_mode_isolation"

    .line 1741
    .line 1742
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    :cond_35
    invoke-virtual {v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v0

    .line 1749
    return-object v0
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .locals 1

    .line 1
    const-string p0, "setWifiApGuestModeEnabled:"

    .line 2
    .line 3
    const-string v0, "SemSoftApConfiguration"

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string p1, "wifi_ap_guest_settings_val"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .locals 1

    .line 1
    const-string p0, "setWifiApGuestModeIsolationEnabled:"

    .line 2
    .line 3
    const-string v0, "SemSoftApConfiguration"

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string p1, "wifi_ap_guest_isolation_settings_val"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "SemSoftApConfiguration"

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "setWifiApGuestPassword is called"

    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v0, "wifi_ap_guest_password"

    .line 29
    .line 30
    invoke-static {p1, v0, p0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const-string v0, "Error in setWifiApGuestPassword:"

    .line 35
    .line 36
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setWifiApMaxClientToFramework(I)V
    .locals 2

    .line 1
    const-string p0, "setmaxclient API:"

    .line 2
    .line 3
    const-string v0, "SemSoftApConfiguration"

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "wifi_ap_maxclient_framework"

    .line 25
    .line 26
    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
