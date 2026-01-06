.class public Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemWifiApConfiguration"
.end annotation


# static fields
.field public static final KEY_CURR_BAND:Ljava/lang/String; = "CURR_BAND"

.field public static final KEY_CURR_CHANNEL:Ljava/lang/String; = "CURR_CHANNEL"

.field public static final KEY_CURR_IS_HIDDEN:Ljava/lang/String; = "CURR_IS_HIDDEN"

.field public static final KEY_CURR_PASSWORD:Ljava/lang/String; = "CURR_PASSWORD"

.field public static final KEY_CURR_SECURITY:Ljava/lang/String; = "CURR_SECURITY_TYPE"

.field public static final KEY_CURR_SSID:Ljava/lang/String; = "CURR_SSID"

.field public static final KEY_IS_DUAL_AP:Ljava/lang/String; = "CURR_DUAL_AP"

.field public static final KEY_OPEN_INDEX:Ljava/lang/String; = "open_index"

.field public static final KEY_WPA_INDEX:Ljava/lang/String; = "wpa_index"

.field private static final TAG2:Ljava/lang/String; = "SemWifiApConfigStore:SemWifiApConfiguration"

.field public static final WPA2_INDEX:Ljava/lang/String; = "wpa2_index"

.field public static final WPA3_INDEX:Ljava/lang/String; = "wpa3_index"

.field public static final WPA3_OWE_INDEX:Ljava/lang/String; = "wpa3_owe_index"

.field public static final WPA3_OWE_TRANSITION_INDEX:Ljava/lang/String; = "wpa3_owe_transition_index"

.field public static final WPA3_TRANSITION_INDEX:Ljava/lang/String; = "wpa3_transition_index"

.field private static gband:I

.field private static gchannel:I

.field private static isExceptionOccured:Z

.field private static final mDualAp5GHzChannels:Landroid/util/SparseIntArray;

.field private static mInnerSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;


# direct methods
.method static bridge synthetic -$$Nest$sfgetgchannel()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gchannel:I

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gband:I

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gchannel:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->isExceptionOccured:Z

    .line 16
    .line 17
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

.method public static getDumplog(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .line 1
    const-string v0, "CURR_CHANNEL"

    .line 2
    .line 3
    const-string v1, "CURR_PASSWORD"

    .line 4
    .line 5
    const-string v2, "\n"

    .line 6
    .line 7
    const-string v3, "\nmInnerSoftApConfiguration\n"

    .line 8
    .line 9
    const-string v4, "\nChannel : "

    .line 10
    .line 11
    const-string v5, "\nisDualAp : "

    .line 12
    .line 13
    const-string v6, "\nIsHidden : "

    .line 14
    .line 15
    const-string v7, "\nBand : "

    .line 16
    .line 17
    const-string v8, "Password : null\n"

    .line 18
    .line 19
    const-string v9, "\nSSID : "

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v10

    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v13, "SemWifiApConfiguration DB values : \nsoftap_config_migration_to_db : "

    .line 28
    .line 29
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    const-string v13, "softap_config_migration_to_db"

    .line 33
    .line 34
    invoke-static {p0, v13}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v9, "CURR_SSID"

    .line 45
    .line 46
    invoke-static {p0, v9}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_0

    .line 65
    .line 66
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_0
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-gez v1, :cond_1

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    :cond_1
    const-string v8, "Password : "

    .line 85
    .line 86
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v8, "*"

    .line 90
    .line 91
    invoke-virtual {v8, v1}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :goto_0
    const-string v1, "Security : "

    .line 102
    .line 103
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, "CURR_SECURITY_TYPE"

    .line 107
    .line 108
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, "CURR_BAND"

    .line 119
    .line 120
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "CURR_IS_HIDDEN"

    .line 141
    .line 142
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, "CURR_DUAL_AP"

    .line 153
    .line 154
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mInnerSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 175
    .line 176
    if-eqz p0, :cond_2

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    .line 198
    .line 199
    throw p0
.end method

.method static getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    add-int/lit8 v4, v2, 0x1

    .line 11
    .line 12
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    array-length v5, v5

    .line 23
    add-int/2addr v3, v5

    .line 24
    const/16 v5, 0x20

    .line 25
    .line 26
    if-le v3, v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p0
.end method

.method public static getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
    .locals 12

    .line 1
    const-string v0, "CURR_CHANNEL"

    .line 2
    .line 3
    const-string v1, "CURR_BAND"

    .line 4
    .line 5
    const-string v2, "softap_config_migration_to_db"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "SemWifiApConfigStore:SemWifiApConfiguration"

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const-string v0, "wifi"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->saveWifiApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mInnerSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 39
    .line 40
    if-nez v2, :cond_b

    .line 41
    .line 42
    const-string v2, "mInnerSoftApConfiguration is null"

    .line 43
    .line 44
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "CURR_SSID"

    .line 53
    .line 54
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 59
    .line 60
    .line 61
    const-string v3, "CURR_SECURITY_TYPE"

    .line 62
    .line 63
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v5, "CURR_PASSWORD"

    .line 68
    .line 69
    invoke-static {p0, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "wpa3_owe_index"

    .line 74
    .line 75
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/4 v7, 0x2

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x1

    .line 83
    if-eqz v6, :cond_1

    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    invoke-virtual {v2, v8, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const-string v6, "open_index"

    .line 91
    .line 92
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    invoke-virtual {v2, v8, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const-string v6, "wpa2_index"

    .line 103
    .line 104
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_3

    .line 109
    .line 110
    invoke-virtual {v2, v5, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string v6, "wpa3_index"

    .line 115
    .line 116
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    const/4 v3, 0x3

    .line 123
    invoke-virtual {v2, v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const-string v6, "wpa3_transition_index"

    .line 128
    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {v2, v5, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_0
    const-string v3, "CURR_IS_HIDDEN"

    .line 139
    .line 140
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v5, "1"

    .line 145
    .line 146
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 151
    .line 152
    .line 153
    const-string v3, "CURR_DUAL_AP"

    .line 154
    .line 155
    invoke-static {p0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_6

    .line 164
    .line 165
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_6
    sput-boolean v9, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->isExceptionOccured:Z

    .line 173
    .line 174
    :try_start_0
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    sput v5, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gband:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catch_0
    move-exception v5

    .line 186
    sput-boolean v10, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->isExceptionOccured:Z

    .line 187
    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v11, "KEY_CURR_BAND Exception"

    .line 191
    .line 192
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :goto_1
    :try_start_1
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    sput v5, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gchannel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :catch_1
    move-exception v5

    .line 224
    sput-boolean v10, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->isExceptionOccured:Z

    .line 225
    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v11, "KEY_CURR_CHANNEL Exception"

    .line 229
    .line 230
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :goto_2
    sget-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->isExceptionOccured:Z

    .line 251
    .line 252
    if-eqz v5, :cond_7

    .line 253
    .line 254
    sput v10, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gband:I

    .line 255
    .line 256
    const/4 v5, 0x6

    .line 257
    sput v5, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gchannel:I

    .line 258
    .line 259
    const-string v5, "0"

    .line 260
    .line 261
    invoke-static {p0, v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sget v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gband:I

    .line 265
    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {p0, v1, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sget v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gchannel:I

    .line 274
    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_7
    sget v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->gband:I

    .line 283
    .line 284
    and-int/lit8 v1, v0, 0x2

    .line 285
    .line 286
    if-ne v1, v7, :cond_8

    .line 287
    .line 288
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$2;

    .line 289
    .line 290
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$2;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_8
    const/4 v1, 0x4

    .line 298
    and-int/2addr v0, v1

    .line 299
    if-ne v0, v1, :cond_9

    .line 300
    .line 301
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$3;

    .line 302
    .line 303
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$3;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_9
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$4;

    .line 311
    .line 312
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$4;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 316
    .line 317
    .line 318
    :goto_3
    invoke-virtual {v2, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    const-string v0, "wifi_ap_disable_random_mac"

    .line 326
    .line 327
    invoke-static {p0, v0, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    if-ne p0, v10, :cond_a

    .line 332
    .line 333
    :try_start_2
    invoke-virtual {v2, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :catch_2
    move-exception p0

    .line 338
    goto :goto_4

    .line 339
    :cond_a
    invoke-virtual {v2, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :goto_4
    const-string v0, " setMacRandomizationSetting exception :"

    .line 347
    .line 348
    invoke-static {v0, p0, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :goto_5
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    sput-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mInnerSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 356
    .line 357
    return-object p0

    .line 358
    :cond_b
    return-object v2
.end method

.method public static saveWifiApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-boolean v2, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 10
    .line 11
    const-string v3, "SemWifiApConfigStore:SemWifiApConfiguration"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "setCurrentApConfiguration() - ssid"

    .line 18
    .line 19
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " securityTypeIndex "

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    const-string p0, "ssid is empty"

    .line 47
    .line 48
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    sput-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mInnerSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    array-length v2, v2

    .line 62
    const/16 v3, 0x20

    .line 63
    .line 64
    if-le v2, v3, :cond_2

    .line 65
    .line 66
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_2
    const-string v2, "CURR_SSID"

    .line 71
    .line 72
    invoke-static {p0, v2, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "CURR_PASSWORD"

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {p0, v0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    if-ne v1, v0, :cond_3

    .line 86
    .line 87
    const-string v1, "wpa2_index"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 v2, 0x3

    .line 91
    if-ne v1, v2, :cond_4

    .line 92
    .line 93
    const-string v1, "wpa3_index"

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const/4 v2, 0x2

    .line 97
    if-ne v1, v2, :cond_5

    .line 98
    .line 99
    const-string v1, "wpa3_transition_index"

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const/4 v2, 0x4

    .line 103
    if-ne v1, v2, :cond_6

    .line 104
    .line 105
    const-string v1, "wpa3_owe_transition_index"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const/4 v2, 0x5

    .line 109
    if-ne v1, v2, :cond_7

    .line 110
    .line 111
    const-string v1, "wpa3_owe_index"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_7
    const-string v1, "open_index"

    .line 115
    .line 116
    :goto_0
    const-string v2, "CURR_SECURITY_TYPE"

    .line 117
    .line 118
    invoke-static {p0, v2, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const-string v2, "0"

    .line 130
    .line 131
    const-string v3, "CURR_CHANNEL"

    .line 132
    .line 133
    const-string v4, "CURR_BAND"

    .line 134
    .line 135
    const-string v5, "CURR_DUAL_AP"

    .line 136
    .line 137
    const-string v6, "1"

    .line 138
    .line 139
    if-le v1, v0, :cond_8

    .line 140
    .line 141
    invoke-static {p0, v5, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {p0, v4, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-array v0, v0, [Landroid/util/SparseIntArray;

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    aput-object v4, v0, v1

    .line 163
    .line 164
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {p0, v3, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_8
    invoke-static {p0, v5, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {p0, v4, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {p0, v3, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const-string v1, "CURR_IS_HIDDEN"

    .line 202
    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-static {p0, v1, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_9
    invoke-static {p0, v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :goto_2
    sput-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->mInnerSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 213
    .line 214
    const-string p1, "softap_config_migration_to_db"

    .line 215
    .line 216
    invoke-static {p0, p1, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method
