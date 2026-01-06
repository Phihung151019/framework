.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;,
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;
    }
.end annotation


# static fields
.field private static final GATT_CONNECTION_TIMEOUT:I = 0xafc8

.field private static final GENERATE_CONNECT_WIFI:I = 0xa

.field private static final ST_GATT_CONNECTING:I = 0x1

.field private static final ST_MHS_GATT_CLIENT_TIMEOUT:I = -0xc

.field private static final ST_MHS_WIFI_CONNECTION_TIMEOUT:I = -0xb

.field private static final ST_WIFI_CONNECTED:I = 0x3

.field private static final ST_WIFI_CONNECTING:I = 0x2

.field private static final ST_WIFI_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MHSMcf:ClientSession"

.field private static final UPDATE_CONNECTION_FAILURES:I = 0xb


# instance fields
.field private final MHS_CONNECTION_TIMEOUT:I

.field private final UPDATE_CONNECTION_FAILURES_TIMER:I

.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBssid:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFreq:I

.field private mHidden:I

.field private mPassword:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSecurity:I

.field mSmartMHSList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApContinityWifiScanner:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$cZS4Coyoe-CtHa9Ff5f6Jx34_Ds(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->lambda$new$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$eOdMu1usoVsPWVERJP0_i3F0sbA(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mFreq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHidden(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mHidden:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSSID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSecurity:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApContinityWifiScanner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mWifiApContinityWifiScanner:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 10
    .line 11
    const/16 v0, 0x3a98

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->MHS_CONNECTION_TIMEOUT:I

    .line 14
    .line 15
    const/16 v0, 0x1388

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->UPDATE_CONNECTION_FAILURES_TIMER:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mWifiApContinityWifiScanner:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 47
    .line 48
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private clearVariables()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method private getClientRequestingData()[B
    .locals 4

    .line 1
    const-string p0, "getClientRequestingData:"

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "version"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v1, "messagetype"

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "clientsupportedhighband"

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v1, "wpa3personalsupport"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "owesupport"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v1, "MHSMcf:ClientSession"

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    new-array p0, p0, [B

    .line 74
    .line 75
    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    .line 7
    const-string v1, "SemWifiApContinuityClientSession"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkHandler:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkHandler:Landroid/os/Handler;

    .line 31
    .line 32
    return-object p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "MHSMcf:ClientSession"

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const-string p1, "isconnected: true"

    .line 7
    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "\""

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSSID:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v3, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateSmartMHSListStatus(II)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    const-string p1, "isDisconnected: true"

    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateSmartMHSListStatus(II)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return-void

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->clearVariables()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private updateSmartMHSListStatus(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 21
    .line 22
    iget v3, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 23
    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const/4 v3, 0x3

    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    if-ne p2, v3, :cond_1

    .line 31
    .line 32
    const-string v1, "MHSMcf:ClientSession"

    .line 33
    .line 34
    const-string v4, "Smart wifi connected"

    .line 35
    .line 36
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    if-ne p1, v3, :cond_2

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    const-string p1, "MHSMcf:ClientSession"

    .line 47
    .line 48
    const-string v1, "Smart wifi disconnected"

    .line 49
    .line 50
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    iput p2, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 54
    .line 55
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateStateIntent()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method private updateStateIntent()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.updatemcfhotspot"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 2
    const-string p2, "MHSMcf:ClientSession"

    const-string p3, "connectToMcfMHS:"

    .line 3
    invoke-static {p3, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "connectToMcfMHS: failed -1"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter p2

    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 8
    iget p4, p4, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    if-eq p4, p6, :cond_2

    const/4 p6, 0x2

    if-ne p4, p6, :cond_1

    .line 9
    :cond_2
    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "connectToMcfMHS: failed -2"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    .line 10
    monitor-exit p2

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 11
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getClientRequestingData()[B

    move-result-object p2

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    move-result-object p3

    .line 14
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->sendMessage(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter p1

    .line 16
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 17
    iget-object p4, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p2, 0x0

    .line 18
    iput-object p2, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 20
    iput p6, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 21
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_6

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const-wide/16 p4, 0x1388

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateStateIntent()V

    .line 25
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 26
    :cond_7
    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "connectToMcfMHS: failed -3"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 27
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public connectToMcfMHS(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 8

    .line 1
    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v4, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v7, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    const/4 v2, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string v0, "MHSMcf:ClientSession"

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "getMcfConnectedStatus MAC:"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ":"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v4, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget v0, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    monitor-exit v1

    .line 74
    return v0

    .line 75
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->clientMAC:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string v0, "MHSMcf:ClientSession"

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "getMcfConnectedStatusFromScanResult client MAC:"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ":"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v4, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget v0, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    monitor-exit v1

    .line 74
    return v0

    .line 75
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public onReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string v0, "MHSMcf:ClientSession"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "deviceId:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ":message:"

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mPassword:Ljava/lang/String;

    .line 30
    .line 31
    :try_start_0
    const-string p1, "ssid"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSSID:Ljava/lang/String;

    .line 38
    .line 39
    const-string p1, "mhsfreq"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mFreq:I

    .line 46
    .line 47
    const-string p1, "securetype"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSecurity:I

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    if-eq p1, v0, :cond_0

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    const-string p1, "password"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mPassword:Ljava/lang/String;

    .line 67
    .line 68
    :cond_0
    const-string p1, "hiddenssid"

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mHidden:I

    .line 75
    .line 76
    const-string p1, "mhsbssid"

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBssid:Ljava/lang/String;

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getHandler()Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/16 p2, 0xa

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 94
    .line 95
    monitor-enter p1

    .line 96
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/4 v1, 0x1

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 114
    .line 115
    iget v2, v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 116
    .line 117
    if-ne v2, v1, :cond_1

    .line 118
    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBssid:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    const/4 p1, 0x2

    .line 128
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateSmartMHSListStatus(II)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    throw p0

    .line 134
    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    return-void
.end method
