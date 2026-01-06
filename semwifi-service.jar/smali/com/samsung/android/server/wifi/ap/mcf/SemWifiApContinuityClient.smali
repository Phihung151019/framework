.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;
    }
.end annotation


# static fields
.field private static final CMD_START_ADVERTISE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MHSMcf:Client"

.field private static final TIMEOUT_SEND_MESSAGE:I = 0x1388


# instance fields
.field private isDiscoveryGoingOn:Z

.field private isServiceBinded:Z

.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mSmartMHSDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApBleScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetisDiscoveryGoingOn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMHSDiscoverData(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getMHSDiscoverData()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mSmartMHSDevices:Ljava/util/Set;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->registerBR()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private addMcfScanDetails(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mSmartMHSDevices:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 62
    .line 63
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 64
    .line 65
    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 66
    .line 67
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 68
    .line 69
    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 70
    .line 71
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 74
    .line 75
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    .line 76
    .line 77
    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    .line 78
    .line 79
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 80
    .line 81
    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 82
    .line 83
    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    .line 84
    .line 85
    iput-boolean p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    .line 86
    .line 87
    :cond_3
    :goto_0
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :cond_4
    :goto_1
    const-string p0, "MHSMcf:Client"

    .line 90
    .line 91
    const-string p1, "SemWifiApBleScanResult is null"

    .line 92
    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method private clearMcfScanDetails()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mSmartMHSDevices:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    .line 7
    const-string v1, "SemWifiApContinuityClient"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkHandler:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkHandler:Landroid/os/Handler;

    .line 31
    .line 32
    return-object p0
.end method

.method private getMHSDiscoverData()[B
    .locals 2

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "messagetype"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    new-array p0, p0, [B

    .line 29
    .line 30
    return-object p0
.end method

.method private getWifiApBleScanResultFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .locals 21

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    :try_start_0
    const-string v1, "version"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v16

    .line 9
    const-string v1, "backhaulnetworktype"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v1, "deviceName"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    const-string v1, "securetype"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v12

    .line 26
    const-string v1, "hiddenssid"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    const-string v1, "batteryLevel"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v1, "wifimac"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-string v1, "datasaver"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    if-ne v1, v2, :cond_0

    .line 53
    .line 54
    move/from16 v17, v2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move/from16 v17, v3

    .line 58
    .line 59
    :goto_0
    const-string v1, "wifi6estandard"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ne v1, v2, :cond_1

    .line 66
    .line 67
    const/16 v3, 0x20

    .line 68
    .line 69
    :cond_1
    const-string v1, "wifi6standard"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    if-ne v0, v2, :cond_2

    .line 76
    .line 77
    const/16 v3, 0x10

    .line 78
    .line 79
    :cond_2
    move v6, v3

    .line 80
    new-instance v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v13

    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    const/16 v20, 0x2

    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    const/4 v7, 0x2

    .line 92
    const-string v9, "Galaxy"

    .line 93
    .line 94
    const/16 v15, -0x14

    .line 95
    .line 96
    const/16 v18, 0x0

    .line 97
    .line 98
    move-object/from16 v3, p1

    .line 99
    .line 100
    invoke-direct/range {v2 .. v20}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIZZZI)V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    return-object v0
.end method


# virtual methods
.method public getMcfScanDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public onReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "deviceId:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":message:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "MHSMcf:Client"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getWifiApBleScanResultFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->addMcfScanDetails(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public registerBR()V
    .locals 0

    .line 1
    return-void
.end method

.method public setServiceBinded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "MHSMcf:Client"

    .line 6
    .line 7
    const-string v0, "setServiceBinded,false,stopClientAdvertisement"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->stopDiscovery()I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getHandler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public startDiscovery()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x2

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    .line 8
    .line 9
    const/4 v1, -0x3

    .line 10
    const-string v2, "MHSMcf:Client"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string p0, "startDiscovery isServiceBinded false"

    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string p0, "startDiscovery discoveryManager == null"

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p0, -0x4

    .line 40
    return p0

    .line 41
    :cond_2
    const/4 v3, 0x1

    .line 42
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 43
    .line 44
    new-instance v4, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;

    .line 45
    .line 46
    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v4}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const-string v4, "startDiscovery return :"

    .line 54
    .line 55
    invoke-static {v4, v2, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 62
    .line 63
    return v2

    .line 64
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 65
    .line 66
    return v1
.end method

.method public stopDiscovery()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->clearMcfScanDetails()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 24
    .line 25
    const-string p0, "MHSMcf:Client"

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "stopDiscovery discoveryManager == null"

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x2

    .line 35
    return p0

    .line 36
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->stopDiscovery()Z

    .line 37
    .line 38
    .line 39
    const-string v0, "stopDiscovery discoveryManager"

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v1
.end method
