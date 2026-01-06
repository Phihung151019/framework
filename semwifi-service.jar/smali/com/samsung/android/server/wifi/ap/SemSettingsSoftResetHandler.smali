.class public Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final SOFT_AP_POWER_SAVE:I = 0x3


# instance fields
.field private DEFAULT_TIMEOUT_MOBILEAP:I

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private final semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$IoIEFs9o89iQ6MXZOGPuTFQGxP0(Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->lambda$regiterCallbacks$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemSettingsSoftResetHandler"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->regiterCallbacks()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic lambda$regiterCallbacks$0()V
    .locals 2

    .line 1
    const-string v0, "SemSettingsSoftResetHandler"

    .line 2
    .line 3
    const-string v1, " Setting soft reset rcvd,"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->resetHotspotSettings()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private regiterCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public resetHotspotSettings()V
    .locals 5

    .line 1
    const-string v0, "disabling traffic priority"

    .line 2
    .line 3
    const-string v1, "SemSettingsSoftResetHandler"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "wifi_ap_smart_priority_enable"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "TMO"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    const-string v2, "NEWCO"

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    :cond_0
    const-string v2, "disabling autohotspot"

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "wifi_ap_smart_tethering_settings"

    .line 50
    .line 51
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    const-string v2, "disabling guest mode also"

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestModeEnabled(Z)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "wifi_ap_last_2g_channel"

    .line 91
    .line 92
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "wifi_ap_disable_random_mac"

    .line 102
    .line 103
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    const-string v1, "SBM"

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const-string v1, "wifi_ap_11ax_mode_checked"

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSharingEnabled(Z)Z

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSharingEnabled(Z)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_1
    const/16 v0, 0x4b0

    .line 188
    .line 189
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 190
    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 198
    .line 199
    div-int/lit8 v1, v1, 0x3c

    .line 200
    .line 201
    const-string v4, "wifi_ap_timeout_setting"

    .line 202
    .line 203
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string v1, "wifi_ap_mobile_data_limit"

    .line 213
    .line 214
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, "wifi_ap_mobile_data_limit_value"

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v1, "wifi_ap_pmf_checked"

    .line 236
    .line 237
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/4 v1, 0x3

    .line 249
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_7

    .line 254
    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSettingsSoftResetHandler;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    const-string v0, "wifi_ap_powersave_mode_checked"

    .line 262
    .line 263
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    if-eqz p0, :cond_8

    .line 275
    .line 276
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->factoryReset()V

    .line 285
    .line 286
    .line 287
    :cond_8
    return-void
.end method
