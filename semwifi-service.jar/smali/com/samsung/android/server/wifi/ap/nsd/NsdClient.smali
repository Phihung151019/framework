.class public Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;
    }
.end annotation


# static fields
.field private static final MOBILE_SAMSUNG_OUI:I = 0x321600

.field private static final NO_OF_RETRY_INFO_FETCH:I = 0x8

.field private static final PROCESS_WIFI_CONNECTED:I = 0x8

.field private static final START_SERVICE:I = 0x1

.field private static final STOP_SERVICE:I = 0x2

.field private static TAG:Ljava/lang/String; = "SemWifiApNsd:Client"


# instance fields
.field private isServiceStarted:Z

.field private mClientHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

.field mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

.field private mRetryWifiInfoFetch:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private processWifiConnected_mac:Ljava/lang/String;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->isServiceStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientHandler(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mClientHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRetryWifiInfoFetch:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisServiceStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->isServiceStarted:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkProperties(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryWifiInfoFetch(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRetryWifiInfoFetch:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprocessWifiConnected(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->processWifiConnected()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstartNsdServer(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->startNsdServer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopNsdServer(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->stopNsdServer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRetryWifiInfoFetch:I

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mClientHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 22
    .line 23
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 32
    .line 33
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->registerBR()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private initializeRegistrationListner()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$2;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 7
    .line 8
    return-void
.end method

.method private processWifiConnected()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getWlanMacFromInterface(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->processWifiConnected_mac:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "mac address is:"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->processWifiConnected_mac:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",mRetryWifiInfoFetch"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRetryWifiInfoFetch:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz v0, :cond_7

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getInformationElements()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    sget-object v4, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v5, "try to get InformationElements from scan results"

    .line 69
    .line 70
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-lez v5, :cond_1

    .line 92
    .line 93
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 108
    .line 109
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_0

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    sget-object v4, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    const-string v5, "got the ies info the bssid"

    .line 124
    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_1
    if-nez v3, :cond_2

    .line 133
    .line 134
    sget-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string v0, "ScanResult.InformationElement is null"

    .line 137
    .line 138
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_5

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Landroid/net/wifi/ScanResult$InformationElement;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    const/16 v5, 0xdd

    .line 163
    .line 164
    if-ne v4, v5, :cond_3

    .line 165
    .line 166
    sget-object v4, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 167
    .line 168
    const-string v5, "checking for Samsung MobileHotspot or not"

    .line 169
    .line 170
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 184
    .line 185
    .line 186
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    const v4, 0xffffff

    .line 188
    .line 189
    .line 190
    and-int/2addr v4, v3

    .line 191
    const v5, 0x321600

    .line 192
    .line 193
    .line 194
    if-ne v4, v5, :cond_4

    .line 195
    .line 196
    ushr-int/lit8 v3, v3, 0x18

    .line 197
    .line 198
    const/16 v4, 0x80

    .line 199
    .line 200
    if-ne v3, v4, :cond_4

    .line 201
    .line 202
    :try_start_1
    sget-object v2, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    const-string v3, "connected to Samsung MobileHotspot "

    .line 205
    .line 206
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    .line 208
    .line 209
    move v2, v1

    .line 210
    goto :goto_1

    .line 211
    :catch_0
    move-exception v2

    .line 212
    move v3, v1

    .line 213
    goto :goto_0

    .line 214
    :catch_1
    move-exception v3

    .line 215
    move-object v7, v3

    .line 216
    move v3, v2

    .line 217
    move-object v2, v7

    .line 218
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    move v2, v3

    .line 222
    :cond_4
    :goto_1
    if-eqz v2, :cond_3

    .line 223
    .line 224
    :cond_5
    if-eqz v2, :cond_6

    .line 225
    .line 226
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mClientHandler:Lcom/samsung/android/server/wifi/ap/nsd/NsdClient$ClientHandler;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    .line 230
    .line 231
    :cond_6
    return v1

    .line 232
    :cond_7
    sget-object p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 233
    .line 234
    const-string v0, "wifiInfo is null"

    .line 235
    .line 236
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    return v2
.end method

.method private registerBR()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private registerService(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "paarams"

    .line 8
    .line 9
    const-string v4, "IPV4"

    .line 10
    .line 11
    const-string v5, "IPV6"

    .line 12
    .line 13
    const-string v6, "ISCAH"

    .line 14
    .line 15
    const-string v7, "dhcp_name"

    .line 16
    .line 17
    const-string v8, "IS_STATIC_IP"

    .line 18
    .line 19
    const-string v9, "DEVICENAME"

    .line 20
    .line 21
    const-string v10, "MAC"

    .line 22
    .line 23
    const-string v11, "IP"

    .line 24
    .line 25
    const-string v12, "VERSION"

    .line 26
    .line 27
    const-string v13, "deviceType"

    .line 28
    .line 29
    const-string v14, "servicediscovery"

    .line 30
    .line 31
    move-object/from16 v15, p1

    .line 32
    .line 33
    invoke-virtual {v15, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    check-cast v14, Landroid/net/nsd/NsdManager;

    .line 38
    .line 39
    iput-object v14, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 40
    .line 41
    new-instance v14, Landroid/net/nsd/NsdServiceInfo;

    .line 42
    .line 43
    invoke-direct {v14}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v15, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 52
    .line 53
    .line 54
    move-result-object v16

    .line 55
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 56
    .line 57
    .line 58
    move-result-object v16

    .line 59
    move-object/from16 v17, v3

    .line 60
    .line 61
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object/from16 v16, v4

    .line 66
    .line 67
    const/16 p1, 0x1

    .line 68
    .line 69
    const-string v4, ""

    .line 70
    .line 71
    const/16 v18, 0x0

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    invoke-static/range {v19 .. v19}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v19

    .line 83
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v20

    .line 87
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 88
    .line 89
    .line 90
    move-result-object v21

    .line 91
    move-object/from16 v22, v5

    .line 92
    .line 93
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    move-object/from16 v21, v3

    .line 112
    .line 113
    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 114
    .line 115
    if-ne v5, v3, :cond_0

    .line 116
    .line 117
    move/from16 v3, p1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    move/from16 v3, v18

    .line 121
    .line 122
    :goto_0
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->isSendDhcpHostnameEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    xor-int/lit8 v5, v5, 0x1

    .line 127
    .line 128
    move/from16 v21, v3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move/from16 v5, v18

    .line 132
    .line 133
    move/from16 v21, v5

    .line 134
    .line 135
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mLinkProperties:Landroid/net/LinkProperties;

    .line 136
    .line 137
    if-eqz v3, :cond_5

    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object/from16 v23, v4

    .line 148
    .line 149
    move-object/from16 v24, v23

    .line 150
    .line 151
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v25

    .line 155
    if-eqz v25, :cond_4

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v25

    .line 161
    check-cast v25, Landroid/net/LinkAddress;

    .line 162
    .line 163
    move-object/from16 v26, v3

    .line 164
    .line 165
    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    instance-of v3, v3, Ljava/net/Inet4Address;

    .line 170
    .line 171
    if-eqz v3, :cond_2

    .line 172
    .line 173
    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v24

    .line 181
    goto :goto_3

    .line 182
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    instance-of v3, v3, Ljava/net/Inet6Address;

    .line 187
    .line 188
    if-eqz v3, :cond_3

    .line 189
    .line 190
    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v23

    .line 198
    :cond_3
    :goto_3
    move-object/from16 v3, v26

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    move-object/from16 v3, v19

    .line 202
    .line 203
    move-object/from16 v19, v13

    .line 204
    .line 205
    move-object v13, v3

    .line 206
    move/from16 v3, v21

    .line 207
    .line 208
    move-object/from16 v21, v23

    .line 209
    .line 210
    move-object/from16 v23, v24

    .line 211
    .line 212
    move-object/from16 v24, v6

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_5
    sget-object v3, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 216
    .line 217
    move/from16 v23, v5

    .line 218
    .line 219
    const-string v5, "registerService: Link properties are null"

    .line 220
    .line 221
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-object/from16 v3, v19

    .line 225
    .line 226
    move-object/from16 v19, v13

    .line 227
    .line 228
    move-object v13, v3

    .line 229
    move-object/from16 v24, v6

    .line 230
    .line 231
    move/from16 v3, v21

    .line 232
    .line 233
    move/from16 v5, v23

    .line 234
    .line 235
    move-object/from16 v21, v4

    .line 236
    .line 237
    move-object/from16 v23, v21

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_6
    move-object/from16 v22, v5

    .line 241
    .line 242
    move-object/from16 v20, v4

    .line 243
    .line 244
    move-object/from16 v21, v20

    .line 245
    .line 246
    move-object/from16 v23, v21

    .line 247
    .line 248
    move-object/from16 v24, v6

    .line 249
    .line 250
    move-object/from16 v19, v13

    .line 251
    .line 252
    move/from16 v3, v18

    .line 253
    .line 254
    move v5, v3

    .line 255
    move-object/from16 v13, v23

    .line 256
    .line 257
    :goto_4
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getWlanMacFromInterface(Landroid/content/Context;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    move-object/from16 v25, v7

    .line 264
    .line 265
    if-eqz v6, :cond_7

    .line 266
    .line 267
    sget-object v7, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 268
    .line 269
    move-object/from16 v27, v8

    .line 270
    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    move-object/from16 v28, v9

    .line 274
    .line 275
    const-string v9, "registerService: macLength"

    .line 276
    .line 277
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    const/16 v8, 0x9

    .line 299
    .line 300
    if-le v7, v8, :cond_8

    .line 301
    .line 302
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    goto :goto_5

    .line 307
    :cond_7
    move-object/from16 v27, v8

    .line 308
    .line 309
    move-object/from16 v28, v9

    .line 310
    .line 311
    sget-object v7, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 312
    .line 313
    const-string v8, "registerService: mac is null"

    .line 314
    .line 315
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    :cond_8
    move-object v7, v4

    .line 319
    :goto_5
    invoke-static {v7}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    new-instance v8, Ljava/util/Random;

    .line 324
    .line 325
    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 326
    .line 327
    .line 328
    const/16 v9, 0x63

    .line 329
    .line 330
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    new-instance v8, Ljava/util/Random;

    .line 341
    .line 342
    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 343
    .line 344
    .line 345
    const/16 v9, 0x9

    .line 346
    .line 347
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    if-eqz v8, :cond_9

    .line 363
    .line 364
    invoke-static {v2, v4}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v8, "_"

    .line 377
    .line 378
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v14, v4}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v14, v2}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 392
    .line 393
    .line 394
    sget-object v2, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 395
    .line 396
    const-string v4, "processWifiConnected_mac service:"

    .line 397
    .line 398
    const-string v9, " mac: "

    .line 399
    .line 400
    invoke-static {v4, v0, v8, v7, v9}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->processWifiConnected_mac:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v4, ",mac:"

    .line 414
    .line 415
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 433
    .line 434
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v5, :cond_a

    .line 439
    .line 440
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-nez v2, :cond_a

    .line 445
    .line 446
    move-object/from16 v2, v20

    .line 447
    .line 448
    goto :goto_6

    .line 449
    :cond_a
    move-object v2, v0

    .line 450
    :goto_6
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 451
    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v7, "processWifiConnected_mac service: Device_name: "

    .line 455
    .line 456
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v7, ",is_static_ip:"

    .line 463
    .line 464
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v7, ",client_mac:"

    .line 471
    .line 472
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v7, ",is_dhcp_name_disabled:"

    .line 483
    .line 484
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 498
    .line 499
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getWifiSecurityTypeSupportBitCode(Landroid/content/Context;)B

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 504
    .line 505
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getWifiBandSupportedBitCode(Landroid/content/Context;)B

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isConnectedToAutoHotspot()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_b

    .line 522
    .line 523
    :goto_7
    move/from16 v7, v18

    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_b
    const/16 v18, -0x1

    .line 527
    .line 528
    goto :goto_7

    .line 529
    :goto_8
    sget-object v8, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 530
    .line 531
    new-instance v9, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v1, "supportedWifiSecurityTypeBitCode = "

    .line 534
    .line 535
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v1, ", supportedWifiBandTypeBitCode = "

    .line 542
    .line 543
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    const/4 v9, 0x2

    .line 557
    :try_start_0
    invoke-virtual {v15, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v15, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v15, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    .line 564
    .line 565
    .line 566
    move-object/from16 v9, v28

    .line 567
    .line 568
    :try_start_1
    invoke-virtual {v15, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    .line 570
    .line 571
    const-string v1, "SECURITYTYPE"

    .line 572
    .line 573
    invoke-virtual {v15, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 574
    .line 575
    .line 576
    const-string v0, "BANDTYPE"

    .line 577
    .line 578
    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 579
    .line 580
    .line 581
    move-object/from16 v1, v27

    .line 582
    .line 583
    :try_start_2
    invoke-virtual {v15, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 584
    .line 585
    .line 586
    move-object/from16 v4, v25

    .line 587
    .line 588
    :try_start_3
    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 589
    .line 590
    .line 591
    move-object/from16 v8, v24

    .line 592
    .line 593
    :try_start_4
    invoke-virtual {v15, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 594
    .line 595
    .line 596
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->isWatch()Z

    .line 597
    .line 598
    .line 599
    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 600
    if-eqz v0, :cond_c

    .line 601
    .line 602
    move/from16 v20, v7

    .line 603
    .line 604
    move-object/from16 v24, v8

    .line 605
    .line 606
    move-object/from16 v7, v19

    .line 607
    .line 608
    const/4 v8, 0x7

    .line 609
    :try_start_5
    invoke-virtual {v15, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 610
    .line 611
    .line 612
    goto :goto_9

    .line 613
    :catch_0
    move-exception v0

    .line 614
    move-object/from16 v27, v1

    .line 615
    .line 616
    move/from16 v25, v3

    .line 617
    .line 618
    move-object/from16 v26, v4

    .line 619
    .line 620
    move-object/from16 v19, v7

    .line 621
    .line 622
    goto/16 :goto_f

    .line 623
    .line 624
    :cond_c
    move/from16 v20, v7

    .line 625
    .line 626
    move-object/from16 v24, v8

    .line 627
    .line 628
    move-object/from16 v7, v19

    .line 629
    .line 630
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->isTablet()Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-eqz v0, :cond_d

    .line 635
    .line 636
    const/4 v8, 0x3

    .line 637
    invoke-virtual {v15, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 638
    .line 639
    .line 640
    goto :goto_9

    .line 641
    :cond_d
    move/from16 v8, p1

    .line 642
    .line 643
    invoke-virtual {v15, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 644
    .line 645
    .line 646
    :goto_9
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 651
    .line 652
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    array-length v0, v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 657
    move-object/from16 v19, v7

    .line 658
    .line 659
    :try_start_6
    sget-object v7, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 660
    .line 661
    move-object/from16 v27, v1

    .line 662
    .line 663
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 666
    .line 667
    .line 668
    move/from16 v25, v3

    .line 669
    .line 670
    :try_start_8
    const-string v3, "usedBytes:"

    .line 671
    .line 672
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    const/16 v1, 0xff

    .line 686
    .line 687
    if-ge v0, v1, :cond_10

    .line 688
    .line 689
    new-instance v3, Lorg/json/JSONObject;

    .line 690
    .line 691
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 692
    .line 693
    .line 694
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 695
    .line 696
    .line 697
    move-result v7

    .line 698
    if-nez v7, :cond_e

    .line 699
    .line 700
    move-object/from16 v1, v21

    .line 701
    .line 702
    move-object/from16 v7, v22

    .line 703
    .line 704
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 705
    .line 706
    .line 707
    move/from16 v22, v0

    .line 708
    .line 709
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    array-length v0, v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    .line 718
    add-int v0, v22, v0

    .line 719
    .line 720
    move-object/from16 v26, v4

    .line 721
    .line 722
    const/16 v4, 0xff

    .line 723
    .line 724
    if-ge v0, v4, :cond_f

    .line 725
    .line 726
    :try_start_9
    invoke-virtual {v15, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    .line 728
    .line 729
    goto :goto_b

    .line 730
    :catch_1
    move-exception v0

    .line 731
    goto/16 :goto_f

    .line 732
    .line 733
    :catch_2
    move-exception v0

    .line 734
    :goto_a
    move-object/from16 v26, v4

    .line 735
    .line 736
    goto/16 :goto_f

    .line 737
    .line 738
    :cond_e
    move/from16 v22, v0

    .line 739
    .line 740
    move-object/from16 v26, v4

    .line 741
    .line 742
    :cond_f
    :goto_b
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    if-nez v0, :cond_11

    .line 747
    .line 748
    move-object/from16 v0, v16

    .line 749
    .line 750
    move-object/from16 v4, v23

    .line 751
    .line 752
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    array-length v1, v1

    .line 764
    add-int v1, v22, v1

    .line 765
    .line 766
    const/16 v3, 0xff

    .line 767
    .line 768
    if-ge v1, v3, :cond_11

    .line 769
    .line 770
    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    .line 771
    .line 772
    .line 773
    goto :goto_10

    .line 774
    :cond_10
    move-object/from16 v26, v4

    .line 775
    .line 776
    goto :goto_10

    .line 777
    :catch_3
    move-exception v0

    .line 778
    :goto_c
    move/from16 v25, v3

    .line 779
    .line 780
    goto :goto_a

    .line 781
    :catch_4
    move-exception v0

    .line 782
    move-object/from16 v27, v1

    .line 783
    .line 784
    goto :goto_c

    .line 785
    :catch_5
    move-exception v0

    .line 786
    move-object/from16 v27, v1

    .line 787
    .line 788
    move/from16 v25, v3

    .line 789
    .line 790
    move-object/from16 v26, v4

    .line 791
    .line 792
    move/from16 v20, v7

    .line 793
    .line 794
    move-object/from16 v24, v8

    .line 795
    .line 796
    goto :goto_f

    .line 797
    :catch_6
    move-exception v0

    .line 798
    move-object/from16 v27, v1

    .line 799
    .line 800
    move/from16 v25, v3

    .line 801
    .line 802
    move-object/from16 v26, v4

    .line 803
    .line 804
    move/from16 v20, v7

    .line 805
    .line 806
    goto :goto_f

    .line 807
    :catch_7
    move-exception v0

    .line 808
    move-object/from16 v27, v1

    .line 809
    .line 810
    :goto_d
    move/from16 v20, v7

    .line 811
    .line 812
    move-object/from16 v26, v25

    .line 813
    .line 814
    :goto_e
    move/from16 v25, v3

    .line 815
    .line 816
    goto :goto_f

    .line 817
    :catch_8
    move-exception v0

    .line 818
    goto :goto_d

    .line 819
    :catch_9
    move-exception v0

    .line 820
    move/from16 v20, v7

    .line 821
    .line 822
    move-object/from16 v26, v25

    .line 823
    .line 824
    move-object/from16 v9, v28

    .line 825
    .line 826
    goto :goto_e

    .line 827
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 828
    .line 829
    .line 830
    :cond_11
    :goto_10
    :try_start_a
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 834
    move-object/from16 v1, v17

    .line 835
    .line 836
    :try_start_b
    invoke-virtual {v14, v1, v0}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 837
    .line 838
    .line 839
    goto :goto_12

    .line 840
    :catch_a
    move-object/from16 v1, v17

    .line 841
    .line 842
    :catch_b
    sget-object v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->TAG:Ljava/lang/String;

    .line 843
    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    .line 845
    .line 846
    const-string v4, "json.toString:"

    .line 847
    .line 848
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .line 864
    .line 865
    new-instance v0, Lorg/json/JSONObject;

    .line 866
    .line 867
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 868
    .line 869
    .line 870
    const/4 v3, 0x2

    .line 871
    :try_start_c
    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    .line 882
    .line 883
    move-object/from16 v4, v26

    .line 884
    .line 885
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 886
    .line 887
    .line 888
    move/from16 v3, v25

    .line 889
    .line 890
    move-object/from16 v2, v27

    .line 891
    .line 892
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 893
    .line 894
    .line 895
    move/from16 v2, v20

    .line 896
    .line 897
    move-object/from16 v8, v24

    .line 898
    .line 899
    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 900
    .line 901
    .line 902
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->isWatch()Z

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    if-eqz v2, :cond_12

    .line 907
    .line 908
    move-object/from16 v7, v19

    .line 909
    .line 910
    const/4 v8, 0x7

    .line 911
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 912
    .line 913
    .line 914
    goto :goto_11

    .line 915
    :cond_12
    move-object/from16 v7, v19

    .line 916
    .line 917
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->isTablet()Z

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-eqz v2, :cond_13

    .line 922
    .line 923
    const/4 v8, 0x3

    .line 924
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 925
    .line 926
    .line 927
    goto :goto_11

    .line 928
    :cond_13
    const/4 v8, 0x1

    .line 929
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 930
    .line 931
    .line 932
    :goto_11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-virtual {v14, v1, v0}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 937
    .line 938
    .line 939
    :catch_c
    :goto_12
    const-string v0, "_hotspot._tcp."

    .line 940
    .line 941
    invoke-virtual {v14, v0}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    move-object/from16 v1, p0

    .line 945
    .line 946
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 947
    .line 948
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 949
    .line 950
    const/4 v8, 0x1

    .line 951
    invoke-virtual {v0, v14, v8, v1}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 952
    .line 953
    .line 954
    return-void
.end method

.method private startNsdServer()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->initializeRegistrationListner()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "HotspotDeviceNameService"

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->getLocalPort()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->registerService(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private stopNsdServer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdUtils;->closeSocketPort()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdClient;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 21
    .line 22
    return-void
.end method
