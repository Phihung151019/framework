.class public Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;,
        Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;,
        Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;
    }
.end annotation


# static fields
.field private static final CARRIER_WIFI_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.carrier.carrierwifi"

.field public static final CURRENT_IS_CARRIER_NETWORK:I = 0x2

.field public static final CURRENT_IS_FORCED_CONNECTION_BY_USER:I = 0x0

.field public static final CURRENT_IS_MAYBE_HIGH_SCORED_NETWORK:I = 0x4

.field public static final CURRENT_IS_SILENT_ROAMING_NETWORK:I = 0x1

.field public static final CURRENT_IS_USER_CONNECT_CHOICE_NETWORK:I = 0x3

.field private static final DBG:Z = false

.field public static final DISCONNECT_REASON_STRINGS:[Ljava/lang/String;

.field private static final EVENT_REPORT_DAILY_LIMIT:I = 0xf

.field public static final FEATURE_NAME_FOR_ABNORMAL_ASSOC:Ljava/lang/String; = "abnormal_assoc"

.field public static final FEATURE_NAME_FOR_MANUAL_CONNECT_REASON:Ljava/lang/String; = "manual_connect_reason"

.field public static final FEATURE_NAME_FOR_NETWORK_MANUAL_CONNECTION_DURATION:Ljava/lang/String; = "connection_duration"

.field public static final FEATURE_NAME_FOR_NETWORK_NOT_FOUND_EVENT:Ljava/lang/String; = "network_not_found"

.field private static final HIGH_SCORED_RSSI_POW_SCALE:D = 1.0

.field private static final MAX_SEND_EVENT_NUM:I = 0x3

.field private static final MEANINGLESS_RSSI:I = 0x0

.field private static final MINIMUM_ASSOCIATION_COUNT:I = 0x3

.field private static final MINIMUM_CONNECTION_DURATION_SEC:I = 0x258

.field private static final MINIMUM_LAST_SELECTION_INTERVAL_SEC:I = 0xe10

.field private static final NEGATIVE_INT:I = -0x1

.field private static final NETWORK_NOT_FOUND_REPORT_COUNT:I = 0x2

.field public static final NEW_IS_DISABLED_NETWORK:I = 0x5

.field public static final NEW_IS_NOT_ALLOW_AUTO_JOIN:I = 0x7

.field public static final NEW_IS_NO_SEEN_IN_LAST_QUALIFIED_NETWORK_SELECTION:I = 0x6

.field private static final NO_SEEN_RSSI_POW_SCALE:D = 2.0

.field private static final ONE_HOUR_SEC:I = 0xe10

.field private static final ONE_MINUTE_SEC:I = 0x3c

.field private static final SECOND_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SemUserConnectionSaLogging"

.field private static final UNKNOWN_VERSION:Ljava/lang/String; = "unknown"

.field private static final UNWANTED_CONNECT_CHOICE_RSSI_POW_SCALE:D

.field static mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;


# instance fields
.field final mAbnormalNetworkInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

.field private mFirmwareVersion:Ljava/lang/String;

.field private mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mLastSelectedNetworkId:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNotFoundEventCount:I

.field private mNotFoundNetworkName:Ljava/lang/String;

.field private mProductModel:Ljava/lang/String;

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private mSilentRoamingConnectionNetworkId:I

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 8
    .line 9
    const-string v6, "high_scored"

    .line 10
    .line 11
    const-string v7, "disabled"

    .line 12
    .line 13
    const-string v2, "user_connection"

    .line 14
    .line 15
    const-string v3, "silent_roaming"

    .line 16
    .line 17
    const-string v4, "carrier_network"

    .line 18
    .line 19
    const-string v5, "connect_choice"

    .line 20
    .line 21
    const-string v8, "no_seen"

    .line 22
    .line 23
    const-string v9, "not_allow_autojoin"

    .line 24
    .line 25
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->DISCONNECT_REASON_STRINGS:[Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mAbnormalNetworkInfoMap:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSilentRoamingConnectionNetworkId:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mFirmwareVersion:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mProductModel:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 44
    .line 45
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 46
    .line 47
    return-void
.end method

.method private clearInternalData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 8
    .line 9
    return-void
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getAllVersions()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p0, "unknown"

    .line 27
    .line 28
    :cond_1
    return-object p0
.end method

.method private handleDisconnectionForAutoConnection(II)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_7

    .line 5
    .line 6
    if-eq p1, v0, :cond_7

    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSilentRoamingConnectionNetworkId:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetrequestingPackageName(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "com.google.android.apps.carrier.carrierwifi"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 36
    .line 37
    if-eqz p1, :cond_6

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x5

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 51
    .line 52
    .line 53
    move p1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move p1, v0

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 57
    .line 58
    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 59
    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x7

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 64
    .line 65
    .line 66
    move p1, v2

    .line 67
    :cond_3
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    mul-int/lit8 v0, p2, -0x1

    .line 84
    .line 85
    int-to-double v5, v0

    .line 86
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 87
    .line 88
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    mul-double/2addr v7, v5

    .line 93
    double-to-int v0, v7

    .line 94
    const/4 v5, 0x6

    .line 95
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 96
    .line 97
    .line 98
    move v0, v2

    .line 99
    :cond_4
    if-nez p1, :cond_5

    .line 100
    .line 101
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    mul-int/2addr v6, v1

    .line 134
    int-to-double v6, v6

    .line 135
    const-wide/16 v8, 0x0

    .line 136
    .line 137
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    mul-double/2addr v8, v6

    .line 142
    double-to-int v6, v8

    .line 143
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 144
    .line 145
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetconfigKey(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_5

    .line 154
    .line 155
    const/4 p1, 0x3

    .line 156
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    move v2, p1

    .line 161
    :goto_1
    if-nez v2, :cond_7

    .line 162
    .line 163
    if-nez v0, :cond_7

    .line 164
    .line 165
    mul-int/2addr p2, v1

    .line 166
    int-to-double p1, p2

    .line 167
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 168
    .line 169
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 170
    .line 171
    .line 172
    move-result-wide v0

    .line 173
    mul-double/2addr v0, p1

    .line 174
    double-to-int p1, v0

    .line 175
    const/4 p2, 0x4

    .line 176
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_6
    const-string p0, "SemUserConnectionSaLogging"

    .line 181
    .line 182
    const-string p1, "handleDisconnectionForAutoConnection : mLastSelectedConfig is null"

    .line 183
    .line 184
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :cond_7
    return-void
.end method

.method private handleDisconnectionForUserManualConnection(I)V
    .locals 1

    .line 1
    const/16 v0, 0xe10

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendConnectionDurationEventToSaLoggingManager(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetconfigKey(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1, p1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendManualConnectionReasonEventToSaLoggingManager(II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private handleSaLoggingStatsOfNetworkDisconnectionByUser(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "Unknown Network Disconnection reason: "

    .line 5
    .line 6
    const-string v0, "SemUserConnectionSaLogging"

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 13
    .line 14
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNotAllowedNetwork:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNotAllowedNetwork:I

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNoSeenNetwork:I

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNoSeenNetwork:I

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 31
    .line 32
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentDisabledNetwork:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentDisabledNetwork:I

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 40
    .line 41
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentMaybeHighScoredNetwork:I

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentMaybeHighScoredNetwork:I

    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 49
    .line 50
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedConnectChoiceNetwork:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedConnectChoiceNetwork:I

    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_5
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 58
    .line 59
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedCarrierNetwork:I

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedCarrierNetwork:I

    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_6
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 67
    .line 68
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedSilentRoaming:I

    .line 69
    .line 70
    add-int/lit8 p1, p1, 0x1

    .line 71
    .line 72
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedSilentRoaming:I

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_7
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 76
    .line 77
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsPrevForcedUserConnect:I

    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsPrevForcedUserConnect:I

    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEventReportOverDailyLimit()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 2
    .line 3
    iget v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 4
    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->isElapsed24h(J)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->reset()V

    .line 23
    .line 24
    .line 25
    const-string p0, "SemUserConnectionSaLogging"

    .line 26
    .line 27
    const-string v0, "isEventReportOverDailyLimit: mSaLoggingStats reset "

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    return v2
.end method

.method private sendAbnormalAssocEventToSaLoggingManager(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mFirmwareVersion:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mProductModel:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    move v1, p1

    .line 27
    move-object v5, p2

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->-$$Nest$fgetmApName(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->-$$Nest$fgetmWifiFwVersion(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "_"

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->-$$Nest$fgetmProductModel(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance v1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "network_info"

    .line 69
    .line 70
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string p1, "device_info"

    .line 74
    .line 75
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sget-object p1, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 79
    .line 80
    iget p1, p1, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalManyAssocNetworkCount:I

    .line 81
    .line 82
    const/4 p2, 0x3

    .line 83
    if-ge p1, p2, :cond_1

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->isEventReportOverDailyLimit()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 93
    .line 94
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 95
    .line 96
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->-$$Nest$fgetmAssocNum(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "abnormal_assoc"

    .line 116
    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 118
    .line 119
    .line 120
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 121
    .line 122
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalManyAssocNetworkCount:I

    .line 123
    .line 124
    add-int/lit8 p1, p1, 0x1

    .line 125
    .line 126
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalManyAssocNetworkCount:I

    .line 127
    .line 128
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 129
    .line 130
    add-int/lit8 p1, p1, 0x1

    .line 131
    .line 132
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 133
    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method private sendConnectionDurationEventToSaLoggingManager(I)V
    .locals 2

    .line 1
    div-int/lit16 p1, p1, 0xe10

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 4
    .line 5
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->isEventReportOverDailyLimit()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "connection_duration"

    .line 33
    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 38
    .line 39
    iget v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalConnectionDuration:I

    .line 40
    .line 41
    add-int/2addr v0, p1

    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalConnectionDuration:I

    .line 43
    .line 44
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 49
    .line 50
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method private sendManualConnectionReasonEventToSaLoggingManager(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->isEventReportOverDailyLimit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->DISCONNECT_REASON_STRINGS:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v1, v1, p1

    .line 16
    .line 17
    const-string v2, "reason"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "rssi"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "manual_connect_reason"

    .line 47
    .line 48
    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->handleSaLoggingStatsOfNetworkDisconnectionByUser(I)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 55
    .line 56
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfDisconnectByUser:I

    .line 57
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfDisconnectByUser:I

    .line 61
    .line 62
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 67
    .line 68
    return-void
.end method

.method private sendNetworkNotFoundEventToSaLoggingManager(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 2
    .line 3
    const-string v1, "SemUserConnectionSaLogging"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "handle NetworkNotFoundEvent : mCurrentSession is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetconfigKey(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string v0, "<none>"

    .line 30
    .line 31
    :cond_1
    const-string v2, "MESSAGE_NETWORK_NOT_FOUND : count "

    .line 32
    .line 33
    const-string v3, " network : "

    .line 34
    .line 35
    invoke-static {v2, p1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetssid(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, " apName : "

    .line 46
    .line 47
    const-string v5, ", mConnectionCountAfterNotFoundNetwork = "

    .line 48
    .line 49
    invoke-static {v2, v3, v4, v0, v5}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 53
    .line 54
    iget v3, v3, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    sget-object v1, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 67
    .line 68
    iget v1, v1, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 69
    .line 70
    const/4 v2, 0x3

    .line 71
    if-ge v1, v2, :cond_4

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->isEventReportOverDailyLimit()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "network_info"

    .line 86
    .line 87
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v0, "count"

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 100
    .line 101
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "network_not_found"

    .line 115
    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 120
    .line 121
    iget v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mMaxNotFoundNetworkCount:I

    .line 122
    .line 123
    if-le p1, v0, :cond_3

    .line 124
    .line 125
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mMaxNotFoundNetworkCount:I

    .line 126
    .line 127
    :cond_3
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 128
    .line 129
    add-int/lit8 p1, p1, 0x1

    .line 130
    .line 131
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 132
    .line 133
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 134
    .line 135
    add-int/lit8 p1, p1, 0x1

    .line 136
    .line 137
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 138
    .line 139
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public clearLastSelectedNetwork()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 6
    .line 7
    return-void
.end method

.method public clearNetworkNotFoundData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 11
    .line 12
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Dump of SemUserConnectionSaLogging"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "SemUserConnectionSaLogging Log Begin ----"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "mSaLoggingStats elapsed time diff="

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->-$$Nest$fgetmStatCreatedTime(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    sub-long/2addr v0, v3

    .line 32
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "mProductModel = "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mProductModel:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "mWifiFirmwareVersion = "

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mFirmwareVersion:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "mAbnormalNetworkInfoMap = "

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mAbnormalNetworkInfoMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 100
    .line 101
    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v0, "mSaLoggingStats.mNumOfSaLoggingEvent = "

    .line 105
    .line 106
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 110
    .line 111
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfSaLoggingEvent:I

    .line 112
    .line 113
    const-string v1, "mSaLoggingStats.totalUserManualConnectCount = "

    .line 114
    .line 115
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 120
    .line 121
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalUserManualConnectCount:I

    .line 122
    .line 123
    const-string v1, "mSaLoggingStats.totalOverOneHourConnectionCount = "

    .line 124
    .line 125
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 130
    .line 131
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 132
    .line 133
    const-string v1, "mSaLoggingStats.totalConnectionDuration = "

    .line 134
    .line 135
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 140
    .line 141
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalConnectionDuration:I

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 154
    .line 155
    iget v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalOverOneHourConnectionCount:I

    .line 156
    .line 157
    if-lez v0, :cond_0

    .line 158
    .line 159
    iget p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalConnectionDuration:I

    .line 160
    .line 161
    div-int/2addr p0, v0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v1, "mSaLoggingStats: Mean Connection duration (hour) = "

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v0, "mSaLoggingStats.totalNotFoundNetworkCount = "

    .line 182
    .line 183
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 187
    .line 188
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mMaxNotFoundNetworkCount:I

    .line 189
    .line 190
    const-string v1, "mSaLoggingStats.totalManyAssocNetworkCount = "

    .line 191
    .line 192
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 197
    .line 198
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalManyAssocNetworkCount:I

    .line 199
    .line 200
    const-string v1, "mSaLoggingStats.connectionCountAfterNotFoundNetwork = "

    .line 201
    .line 202
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 207
    .line 208
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mConnectionCountAfterNotFoundNetwork:I

    .line 209
    .line 210
    const-string v1, "mSaLoggingStats.mNumOfDisconnectByUser = "

    .line 211
    .line 212
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 217
    .line 218
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mNumOfDisconnectByUser:I

    .line 219
    .line 220
    const-string v1, "mSaLoggingStats.disconnectCountAsForcedUserConnect = "

    .line 221
    .line 222
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 227
    .line 228
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsPrevForcedUserConnect:I

    .line 229
    .line 230
    const-string v1, "mSaLoggingStats.disconnectCountAsUnwantedConnectChoiceNetwork = "

    .line 231
    .line 232
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 237
    .line 238
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedConnectChoiceNetwork:I

    .line 239
    .line 240
    const-string v1, "mSaLoggingStats.disconnectCountAsUnwantedSilentRoaming = "

    .line 241
    .line 242
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 247
    .line 248
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedSilentRoaming:I

    .line 249
    .line 250
    const-string v1, "mSaLoggingStats.disconnectCountAsUnwantedCarrierNetwork = "

    .line 251
    .line 252
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 257
    .line 258
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsUnwantedCarrierNetwork:I

    .line 259
    .line 260
    const-string v1, "mSaLoggingStats.disconnectCountAsCurrentNoSeenNetwork = "

    .line 261
    .line 262
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 267
    .line 268
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNoSeenNetwork:I

    .line 269
    .line 270
    const-string v1, "mSaLoggingStats.disconnectCountAsCurrentDisabledNetwork = "

    .line 271
    .line 272
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 277
    .line 278
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentDisabledNetwork:I

    .line 279
    .line 280
    const-string v1, "mSaLoggingStats.disconnectCountAsCurrentNotAllowedNetwork = "

    .line 281
    .line 282
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 287
    .line 288
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentNotAllowedNetwork:I

    .line 289
    .line 290
    const-string v1, "mSaLoggingStats.disconnectCountAsCurrentMaybeHighScoredNetwork = "

    .line 291
    .line 292
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    sget-object v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 297
    .line 298
    iget v0, v0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mDisconnectCountAsCurrentMaybeHighScoredNetwork:I

    .line 299
    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string p0, "SemUserConnectionSaLogging - Log End ----"

    .line 311
    .line 312
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public getSaLoggingStats()Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 2
    .line 3
    return-object p0
.end method

.method public reportNetworkConnect(Landroid/net/wifi/WifiInfo;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "SemUserConnectionSaLogging"

    .line 4
    .line 5
    const-string p1, "reportNetworkConnect : WifiInfo is Null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mFirmwareVersion:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->getWifiFirmwareVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mFirmwareVersion:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mProductModel:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "ro.product.model"

    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mProductModel:Ljava/lang/String;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    move-object v8, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const-string v0, "null"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    new-instance v1, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget v7, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 83
    .line 84
    if-ne v0, v7, :cond_4

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    :goto_2
    move v7, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/4 v0, 0x0

    .line 90
    goto :goto_2

    .line 91
    :goto_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRequestingPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;-><init>(Ljava/lang/String;JIIZLjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 113
    .line 114
    const/4 v0, 0x2

    .line 115
    if-le p1, v0, :cond_5

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendNetworkNotFoundEventToSaLoggingManager(I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public reportNetworkDisconnect(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fputsessionEndTimeMillis(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;J)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetsessionEndTimeMillis(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetsessionStartTimeMillis(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    sub-long/2addr v1, v3

    .line 30
    long-to-int v1, v1

    .line 31
    div-int/lit16 v1, v1, 0x3e8

    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetnetworkId(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne p1, v2, :cond_1

    .line 40
    .line 41
    const/16 v2, 0x258

    .line 42
    .line 43
    if-le v1, v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetisForcedConnectionByUser(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->handleDisconnectionForUserManualConnection(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mCurrentSession:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->handleDisconnectionForAutoConnection(II)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const/4 v0, -0x1

    .line 70
    if-eq p1, v0, :cond_3

    .line 71
    .line 72
    iget v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 73
    .line 74
    if-ne p1, v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->clearLastSelectedNetwork()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSilentRoamingConnectionNetworkId:I

    .line 81
    .line 82
    if-ne p1, v1, :cond_3

    .line 83
    .line 84
    iput v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSilentRoamingConnectionNetworkId:I

    .line 85
    .line 86
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->clearInternalData()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method

.method public reportNetworkNotFound(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 11
    .line 12
    iput v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 24
    .line 25
    add-int/2addr p1, v1

    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNetworkNotFoundEventCount:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string v0, "reportNetworkNotFound : Unknown case - networkName = "

    .line 30
    .line 31
    const-string v1, " mNotFoundNetworkName = "

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mNotFoundNetworkName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "SemUserConnectionSaLogging"

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public reportSilentRoamingNetworkConnection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSilentRoamingConnectionNetworkId:I

    .line 2
    .line 3
    return-void
.end method

.method public reportUserManualConnect(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedNetworkId:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Unknown Key for user ForcedConnection  : "

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "("

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ")"

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "SemUserConnectionSaLogging"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    sget-object p2, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 55
    .line 56
    iget v1, p2, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalUserManualConnectCount:I

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    iput v1, p2, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->mTotalUserManualConnectCount:I

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 81
    .line 82
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 83
    .line 84
    const/4 v1, 0x3

    .line 85
    if-le v0, v1, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mAbnormalNetworkInfoMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Ljava/lang/CharSequence;

    .line 98
    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    const-string p2, "<none>"

    .line 124
    .line 125
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mAbnormalNetworkInfoMap:Ljava/util/Map;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mLastSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->sendAbnormalAssocEventToSaLoggingManager(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_0
    return-void
.end method

.method public resetSaLoggingStats()V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->mSaLoggingStats:Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SaLoggingStats;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
