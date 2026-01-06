.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;
    }
.end annotation


# static fields
.field private static final DEVICE_NAME_ME:Ljava/lang/String; = "-ME---"

.field private static final MAX_KEEP_GATT_CONNECTION_SIZE:I = 0x3

.field private static final MIN_ADVERTISE_DELAY_TIME_MS:I = 0xbb8

.field private static final MODE_PASSWORD:I = 0x1

.field private static final MODE_QOS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.McfSub"

.field private static final mFlagShowDataLog:Z = true


# instance fields
.field private mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

.field private mCountPostAdvertise:I

.field private final mHistoryLock:Ljava/lang/Object;

.field private mIsNetworkEnabled:Z

.field private mIsPasswordAdvertiseTriggered:Z

.field private mIsPasswordLowLatency:Z

.field private mIsPostAdvertiseStarted:Z

.field private mIsQosLowLatency:Z

.field private mIsScanTriggered:Z

.field private final mKeepGattDeviceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

.field private mMode:I

.field private final mPassMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private final mPasswordConfirmHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

.field private final mPasswordDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private final mQoSMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private final mQoSMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

.field private final mSubscribeCallback:Lcom/samsung/android/mcf/SubscribeCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPasswordAdvertiseTriggered(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPostAdvertiseStarted(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedPasswordMcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$maddConfirmHistory(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->addConfirmHistory(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackToClientForPassword(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->callbackToClientForPassword(Lcom/samsung/android/mcf/McfDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackToClientForQos(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->callbackToClientForQos(Lcom/samsung/android/mcf/McfDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misAlreadyConfirmed(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isAlreadyConfirmed(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->removeKeepDevice(Lcom/samsung/android/mcf/McfDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopScan(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mHistoryLock:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mSubscribeCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$4;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$4;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPassMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 57
    .line 58
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 64
    .line 65
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 71
    .line 72
    const-string p0, "WifiProfileShare.McfSub"

    .line 73
    .line 74
    const-string v0, "-ME--- SemSubscriberManager !"

    .line 75
    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private addConfirmHistory(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "startAt"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    const-string v0, "startAt"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long p2, v0, v2

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mHistoryLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/16 v0, 0x14

    .line 51
    .line 52
    if-le p1, v0, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

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
    monitor-exit p2

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    const-string p0, "WifiProfileShare.McfSub"

    .line 68
    .line 69
    const-string p1, "-ME--- can not get json:startAt"

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method private callbackToClientForPassword(Lcom/samsung/android/mcf/McfDevice;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " callbackToClient, password data"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "WifiProfileShare.McfSub"

    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsJson()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;->onPasswordDelivered(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " delivered password data is null"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private callbackToClientForQos(Lcom/samsung/android/mcf/McfDevice;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " callbackToClient, qos data"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "WifiProfileShare.McfSub"

    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsByte()[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createQoSData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;->onQoSDataDelivered(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " delivered qos data is null"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private cancelAllPasswordSessions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordCancelData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->closePasswordSessionToKeepDevices()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->waitForBroadcastingCancelData()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->clearKeepDeviceList()V

    .line 43
    .line 44
    .line 45
    :goto_1
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method private clearKeepDeviceList()V
    .locals 7

    .line 1
    const-string v0, "WifiProfileShare.McfSub"

    .line 2
    .line 3
    const-string v1, "-ME--- clearKeepDeviceList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "WifiProfileShare.McfSub"

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v6, " clear keep"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 64
    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getKeepDeviceCallback()Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-interface {v4, v3, v6, v5}, Lcom/samsung/android/mcf/McfSubscriber;->keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getAdvertiseStarted()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v3, v2}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 96
    .line 97
    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method

.method private closePasswordSessionToKeepDevices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/samsung/android/mcf/McfDevice;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/samsung/android/mcf/McfDevice;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    const-string v3, "WifiProfileShare.McfSub"

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfDevice;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, " pass me password data ! skip close start advertise"

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 84
    .line 85
    sget-object v4, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 86
    .line 87
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method private getAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPassMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 11
    .line 12
    return-object p0
.end method

.method private getDeviceDiscoverCallback()Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 11
    .line 12
    return-object p0
.end method

.method private getModeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "QoS Mode"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Password Mode"

    .line 11
    .line 12
    return-object p0
.end method

.method private isAlreadyConfirmed(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    .line 1
    const-string v0, "startAt"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    const-string v0, "startAt"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mHistoryLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    monitor-exit p2

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    monitor-exit p2

    .line 47
    goto :goto_1

    .line 48
    :goto_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    :catch_0
    const-string p0, "WifiProfileShare.McfSub"

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " json:startAt parsing error"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 73
    return p0
.end method

.method private isNetworkEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfSubscriber;->isNetworkEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 11
    .line 12
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 13
    .line 14
    return p0
.end method

.method private isOpened()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private isPasswordMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private isQoSMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private removeKeepDevice(Lcom/samsung/android/mcf/McfDevice;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "WifiProfileShare.McfSub"

    .line 8
    .line 9
    const-string p1, "-ME--- removeKeepDevice failed, subscriber is not opened"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->-$$Nest$fgetmcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;)Lcom/samsung/android/mcf/McfDevice;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, p1}, Lcom/samsung/android/mcf/McfDevice;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const-string v3, "WifiProfileShare.McfSub"

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, " removed from keep list"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getKeepDeviceCallback()Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-interface {p0, p1, v2, v1}, Lcom/samsung/android/mcf/McfSubscriber;->keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method

.method private setMode(ILcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 4
    .line 5
    return-void
.end method

.method private startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "WifiProfileShare.McfSub"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "-ME--- startAdvertise failed, subscriber is not opened"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    .line 20
    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x4

    .line 36
    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 47
    .line 48
    .line 49
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "-ME--- startAdvertise mode:"

    .line 52
    .line 53
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getModeString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, " all"

    .line 61
    .line 62
    invoke-static {p1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/mcf/McfSubscriber;->startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    .line 84
    .line 85
    return-void
.end method

.method private startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "WifiProfileShare.McfSub"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "-ME--- startAdvertiseTo failed, subscriber is not opened"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getAdvertiseStarted()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$1;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->setAdvertiseCallback(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v6, 0x4

    .line 56
    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p2, v4}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, " sending message state:"

    .line 101
    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p3, " data:"

    .line 113
    .line 114
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 128
    .line 129
    invoke-interface {p0, v3, v2}, Lcom/samsung/android/mcf/McfSubscriber;->startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 130
    .line 131
    .line 132
    const/4 p0, 0x1

    .line 133
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->setAdvertiseStarted(Z)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private startScan()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "WifiProfileShare.McfSub"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "-ME--- startScan failed, subscriber is not opened"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "-ME--- startScan already triggered."

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopScan()V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x4

    .line 41
    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setContentsFilter(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    :cond_4
    const/4 v2, 0x3

    .line 81
    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 82
    .line 83
    .line 84
    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    .line 85
    .line 86
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfScanData;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getDeviceDiscoverCallback()Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v2, v0, v3}, Lcom/samsung/android/mcf/McfSubscriber;->startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 97
    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "-ME--- start Scan mode:"

    .line 102
    .line 103
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getModeString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 114
    .line 115
    if-nez v2, :cond_6

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v3, " extend, lowLatency: "

    .line 120
    .line 121
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    .line 125
    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, " general, lowLatency: "

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    .line 142
    .line 143
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method private stopAdvertise()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "-ME--- stopAdvertise for "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getModeString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "WifiProfileShare.McfSub"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private stopScan()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "WifiProfileShare.McfSub"

    .line 9
    .line 10
    const-string v1, "-ME--- stopScan"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getDeviceDiscoverCallback()Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfSubscriber;->stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private waitForBroadcastingCancelData()V
    .locals 2

    .line 1
    const-wide/16 v0, 0xbb8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    const-string p0, "WifiProfileShare.McfSub"

    .line 8
    .line 9
    const-string v0, "-ME--- interrupt"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method closeSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "WifiProfileShare.McfSub"

    .line 6
    .line 7
    const-string p1, "-ME--- closeSubscriber, already closed"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 19
    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->closeSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 33
    .line 34
    return-void
.end method

.method isBleActivated()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isNetworkEnable()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method isLowLatencyForPasswordScan()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    .line 2
    .line 3
    return p0
.end method

.method isLowLatencyForQoSScan()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    .line 2
    .line 3
    return p0
.end method

.method openSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 3

    .line 1
    const-string v0, "WifiProfileShare.McfSub"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "-ME--- openSubscriber, adapter is null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mSubscribeCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/mcf/McfAdapter;->getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "-ME--- openSubscriber failed"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string p0, "-ME--- openSubscriber"

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method postStartScanForPassword(Z)V
    .locals 4

    .line 1
    const-string v0, "-ME--- postStartScanForPassword keep gatt device:"

    .line 2
    .line 3
    const-string v1, "WifiProfileShare.McfSub"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "-ME--- postStartScanForPassword init:"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, " cnt:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 38
    .line 39
    if-lez p1, :cond_0

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->clearKeepDeviceList()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->preStartScanForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 53
    .line 54
    add-int/2addr p1, v1

    .line 55
    iput p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter p1

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    const-string v1, "WifiProfileShare.McfSub"

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 114
    .line 115
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 116
    .line 117
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v0, "WifiProfileShare.McfSub"

    .line 124
    .line 125
    const-string v1, "-ME--- There are no keep device in list, wait to response"

    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 133
    .line 134
    return-void

    .line 135
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw p0
.end method

.method preStartScanForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->setMode(ILcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startScan()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "-ME--- preStartScanForPassword data:"

    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "WifiProfileShare.McfSub"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method setScanMode(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    .line 4
    .line 5
    return-void
.end method

.method startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->setMode(ILcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startScan()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method stopAll()V
    .locals 3

    .line 1
    const-string v0, "-ME--- closeSubscriber start"

    .line 2
    .line 3
    const-string v1, "WifiProfileShare.McfSub"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopScan()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopPostAdvertise()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->cancelAllPasswordSessions()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 45
    .line 46
    const-string p0, "-ME--- closeSubscriber done"

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method stopPostAdvertise()V
    .locals 7

    .line 1
    const-string v0, "WifiProfileShare.McfSub"

    .line 2
    .line 3
    const-string v1, "-ME--- stopPostAdvertise"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getAdvertiseStarted()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    const-string v4, "WifiProfileShare.McfSub"

    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, " stop advertise"

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v4, v5}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->setAdvertiseStarted(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method
