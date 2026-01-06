.class public Lcom/samsung/android/server/wifi/util/KnoxUtils;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxUtils"

.field static mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field static mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs auditLogEvent(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 9

    .line 1
    :try_start_0
    const-string v0, "content://com.sec.knox.provider/AuditLog"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/ContentValues;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "uid"

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "tag"

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    move v2, p1

    .line 36
    :goto_0
    array-length v3, p2

    .line 37
    if-ge v2, v3, :cond_9

    .line 38
    .line 39
    const-string v3, "param{%d}"

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aget-object v4, p2, v2

    .line 54
    .line 55
    sget-object v5, Lcom/samsung/android/server/wifi/util/KnoxUtils$$ExternalSyntheticTypeSwitch0;->switchCases:[Ljava/lang/Object;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const-class v5, Ljava/lang/Float;

    .line 61
    .line 62
    const-class v6, Ljava/lang/String;

    .line 63
    .line 64
    const-class v7, Ljava/lang/Integer;

    .line 65
    .line 66
    const-class v8, Ljava/lang/Long;

    .line 67
    .line 68
    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    sput-object v5, Lcom/samsung/android/server/wifi/util/KnoxUtils$$ExternalSyntheticTypeSwitch0;->switchCases:[Ljava/lang/Object;

    .line 73
    .line 74
    :goto_1
    if-nez v4, :cond_1

    .line 75
    .line 76
    const/4 v5, -0x1

    .line 77
    goto :goto_4

    .line 78
    :cond_1
    move v6, p1

    .line 79
    :goto_2
    array-length v7, v5

    .line 80
    if-ge v6, v7, :cond_4

    .line 81
    .line 82
    aget-object v7, v5, v6

    .line 83
    .line 84
    instance-of v8, v7, Ljava/lang/Class;

    .line 85
    .line 86
    if-eqz v8, :cond_2

    .line 87
    .line 88
    check-cast v7, Ljava/lang/Class;

    .line 89
    .line 90
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    :goto_3
    move v5, v6

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const/4 v5, -0x2

    .line 109
    :goto_4
    if-eqz v5, :cond_8

    .line 110
    .line 111
    const/4 v6, 0x1

    .line 112
    if-eq v5, v6, :cond_7

    .line 113
    .line 114
    const/4 v6, 0x2

    .line 115
    if-eq v5, v6, :cond_6

    .line 116
    .line 117
    const/4 v6, 0x3

    .line 118
    if-eq v5, v6, :cond_5

    .line 119
    .line 120
    sget-object v3, Lcom/samsung/android/server/wifi/util/KnoxUtils;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string v4, "Invalid param type during log event"

    .line 123
    .line 124
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_5
    check-cast v4, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_6
    check-cast v4, Ljava/lang/Float;

    .line 135
    .line 136
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_7
    check-cast v4, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_8
    check-cast v4, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private static checkAndGetCertificatePolicy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static checkAndGetWifiPolicy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "wifi_policy"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static isNotAllowedOpenMobileHotspot(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->checkAndGetWifiPolicy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static isSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static isWifiStateChangeAllowed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->checkAndGetWifiPolicy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public static notifyCertificateFailureAsUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->checkAndGetCertificatePolicy()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "wifi_module"

    .line 11
    .line 12
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
