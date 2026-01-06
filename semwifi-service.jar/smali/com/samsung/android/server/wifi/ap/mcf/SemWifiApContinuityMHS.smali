.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;
    }
.end annotation


# static fields
.field private static final CMD_AH_START_ADVERTISE:I = 0x2

.field private static final CMD_AH_STOP_ADVERTISE:I = 0x3

.field private static final CMD_MHS_ENABLED_TIMEOUT:I = 0x4

.field private static final CMD_START_ADVERTISE:I = 0x1

.field private static final MHS_ENABLED_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MHSMcf:MHS"

.field private static final TIMEOUT_SEND_MESSAGE:I = 0x1388


# instance fields
.field private isAdvertisementGoingon:Z

.field private isMHSEnabledSmartly:Z

.field private isServiceBinded:Z

.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mObject:Ljava/lang/Object;

.field private mStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private mWaitingToEnableSmartly:Z

.field private mWaitingdeviceId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$5tNVaSf6nMTDxRyi4CfGc_UmgOg(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->lambda$startAdvertisement$2(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$7ewoSEOr-jwRDUHge5Y48trAmm8(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->lambda$startAdvertisement$1(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LCpBWHdAbw5pDWYrVqQ7tYZAzS8(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->lambda$new$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isMHSEnabledSmartly:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isServiceBinded:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isMHSEnabledSmartly:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAutoHotspotDBEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msendMHSConfigMessage(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Ljava/util/Set;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mObject:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->registerContentObserver()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 39
    .line 40
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 46
    .line 47
    .line 48
    return-void
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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    .line 7
    const-string v1, "SemWifiApContinuityMHS"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkHandler:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mBleWorkHandler:Landroid/os/Handler;

    .line 31
    .line 32
    return-object p0
.end method

.method private getMHSAdvertisementData()[B
    .locals 3

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :try_start_0
    const-string v1, "version"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "messagetype"

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v1, "backhaulnetworktype"

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getNetworkType()B

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "deviceName"

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getHostNameFromSettingDeviceName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v1, "securetype"

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSecurityType()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string v1, "hiddenssid"

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isHidden()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "batteryLevel"

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getBatteryLevel()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v1, "wifimac"

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getClientMACAddress()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v1, "datasaver"

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isDataSaverEnabled()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string v1, "wifi6estandard"

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getWifi6ENetwork()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v1, "wifi6standard"

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getWifi6Network()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object p0

    .line 118
    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    new-array p0, p0, [B

    .line 124
    .line 125
    return-object p0
.end method

.method private isAutoHotspotDBEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "wifi_ap_smart_tethering_settings"

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
    const/4 v0, 0x1

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    return v1
.end method

.method private synthetic lambda$new$0(IIILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "MHSMcf:MHS"

    .line 2
    .line 3
    const-string p3, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    .line 4
    .line 5
    invoke-static {p3, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 p2, 0xd

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x4

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isMHSEnabledSmartly:Z

    .line 34
    .line 35
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 36
    .line 37
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 38
    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_0

    .line 47
    .line 48
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 49
    .line 50
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_1
    const/16 p2, 0xe

    .line 68
    .line 69
    if-eq p1, p2, :cond_2

    .line 70
    .line 71
    const/16 p2, 0xb

    .line 72
    .line 73
    if-ne p1, p2, :cond_3

    .line 74
    .line 75
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isMHSEnabledSmartly:Z

    .line 87
    .line 88
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-lez p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 99
    .line 100
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 108
    .line 109
    .line 110
    :cond_3
    return-void
.end method

.method private synthetic lambda$startAdvertisement$1(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "Please enable Bluetooth"

    .line 4
    .line 5
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$startAdvertisement$2(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "please try after sometime"

    .line 4
    .line 5
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private registerContentObserver()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "wifi_ap_smart_tethering_settings"

    .line 12
    .line 13
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$2;

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$2;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    const-string v2, "messagetype"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const-string v2, "isSuccess"

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    :try_start_1
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string p2, "ssid"

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSSID()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string p2, "password"

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getPassword()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string p2, "mhsfreq"

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getFreq()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string p2, "securetype"

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSecurityType()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string p2, "hiddenssid"

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isHidden()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string p2, "mhsbssid"

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getMHSMacFromInterface()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p2

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 p2, 0x0

    .line 90
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/String;

    .line 122
    .line 123
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->sendMessage(Ljava/lang/String;[B)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, "sendMHSConfigMessage:,message size:"

    .line 138
    .line 139
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    array-length v2, p2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, ":retvalue:"

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "MHSMcf:MHS"

    .line 159
    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_1
    return-void
.end method

.method private updateStateIntent()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

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
.method public handleBootCompleted()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceived(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 4

    .line 1
    const-string v0, "MHS_DISCOVERY_TYPE:,message size:"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p3, v1, :cond_1

    .line 5
    .line 6
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mObject:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p3

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getMHSAdvertisementData()[B

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->sendMessage(Ljava/lang/String;[B)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const-string p1, "MHSMcf:MHS"

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    array-length p2, p2

    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, ":retvalue:"

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit p3

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApState()I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 90
    .line 91
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 95
    const-string v0, "MHSMcf:MHS"

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "deviceId:"

    .line 100
    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ",wifiapState:"

    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p1, ":message:"

    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const/16 p1, 0xd

    .line 131
    .line 132
    const/4 p2, 0x4

    .line 133
    if-ne p3, p1, :cond_2

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 143
    .line 144
    monitor-enter p1

    .line 145
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 146
    .line 147
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 155
    .line 156
    .line 157
    monitor-exit p1

    .line 158
    return-void

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    throw p0

    .line 162
    :cond_2
    const/16 p1, 0xc

    .line 163
    .line 164
    if-eq p3, p1, :cond_4

    .line 165
    .line 166
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const/4 p3, 0x0

    .line 175
    invoke-virtual {p1, p3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_3

    .line 180
    .line 181
    const-string p1, "MHSMcf:MHS"

    .line 182
    .line 183
    const-string p2, "setWifiApEnabled, returned false;"

    .line 184
    .line 185
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 189
    .line 190
    monitor-enter p1

    .line 191
    :try_start_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 192
    .line 193
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->sendMHSConfigMessage(Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 196
    .line 197
    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingdeviceId:Ljava/util/Set;

    .line 199
    .line 200
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 201
    .line 202
    .line 203
    monitor-exit p1

    .line 204
    return-void

    .line 205
    :catchall_2
    move-exception p0

    .line 206
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 207
    throw p0

    .line 208
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mWaitingToEnableSmartly:Z

    .line 209
    .line 210
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-wide/16 v0, 0x2710

    .line 222
    .line 223
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    .line 225
    .line 226
    :cond_4
    return-void

    .line 227
    :catchall_3
    move-exception p0

    .line 228
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 229
    throw p0
.end method

.method public setServiceBinded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isServiceBinded:Z

    .line 2
    .line 3
    const-string v0, "MHSMcf:MHS"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "setServiceBinded,false,stopping discovery"

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAutoHotspotDBEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string p1, "setServiceBinded,starting discovery"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public startAdvertisement()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "wifi_ap_smart_tethering_settings"

    .line 6
    .line 7
    const-string v2, "MHSMcf:MHS"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "Bluetooth is not ON"

    .line 19
    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct {v2, p0, v0, v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->updateStateIntent()V

    .line 54
    .line 55
    .line 56
    const/4 p0, -0x4

    .line 57
    return p0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    const-string v0, "discoveryManager == null"

    .line 65
    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getHandler()Landroid/os/Handler;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda1;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    invoke-direct {v2, p0, v0, v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->updateStateIntent()V

    .line 100
    .line 101
    .line 102
    const/4 p0, -0x1

    .line 103
    return p0

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    const-string p0, "startAdvertisement already goingon"

    .line 109
    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return v3

    .line 114
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isServiceBinded:Z

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    const-string v0, "isServiceBinded false"

    .line 119
    .line 120
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->updateStateIntent()V

    .line 133
    .line 134
    .line 135
    const/4 p0, -0x2

    .line 136
    return p0

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->startAdvertisement()V

    .line 142
    .line 143
    .line 144
    const-string v0, "startAdvertisement return :true"

    .line 145
    .line 146
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    .line 151
    .line 152
    return v3
.end method

.method public stopAdvertisement()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "MHSMcf:MHS"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "discoveryManager == null,stopDiscovery"

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const-string p0, "isAdvertisementGoingon false"

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->isAdvertisementGoingon:Z

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->stopAdvertisement()V

    .line 38
    .line 39
    .line 40
    const-string p0, "stopAdvertisement success"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v3
.end method
