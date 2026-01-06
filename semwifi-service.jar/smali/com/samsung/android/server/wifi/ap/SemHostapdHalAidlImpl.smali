.class public Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40

.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;

.field private static final HOSTAPD_ACCEPT:Ljava/lang/String; = "/data/misc/wifi_hostapd/hostapd.accept"

.field private static final HOSTAPD_DENY:Ljava/lang/String; = "/data/misc/wifi_hostapd/hostapd.deny"

.field private static final TAG:Ljava/lang/String; = "SemHostapdHalAidlImpl"

.field public static final WAIT_FOR_DEATH_TIMEOUT_MS:J = 0x32L


# instance fields
.field private MHSDBG:Z

.field private isRegisteredVar:Z

.field private final mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

.field private mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

.field private final mISehHostapdCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Landroid/os/IServiceCallback;

.field private mServiceDeclared:Z

.field private mVerboseLoggingEnabled:Z

.field private mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetMHSDBG(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mEventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForDeathLatch(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetHAL_INSTANCE_NAME()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/default"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 3

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    .line 14
    .line 15
    const-string v0, "eng"

    .line 16
    .line 17
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v0, v1

    .line 37
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceDeclared:Z

    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 47
    .line 48
    new-instance v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapdCallbacks:Ljava/util/Map;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 65
    .line 66
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mEventHandler:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;

    .line 69
    .line 70
    invoke-direct {p1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;I)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 74
    .line 75
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLocalHandler:Landroid/os/Handler;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->initialize()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLocalHandler:Landroid/os/Handler;

    .line 93
    .line 94
    const-wide/16 p1, 0x3e8

    .line 95
    .line 96
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method private checkHostapdAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Can\'t call "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHostapdHalAidlImpl"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", mISehHostapd is null"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    monitor-exit v1

    .line 39
    return p0

    .line 40
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "IHostapd."

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "SemHostapdHalAidlImpl"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " failed with exception"

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "IHostapd/ISehHostapd."

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "SemHostapdHalAidlImpl"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " failed: "

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method private initSehHostapdService()I
    .locals 5

    .line 1
    const-string v0, "ISehHostapd.getService exception: "

    .line 2
    .line 3
    const-string v1, "ISehHostapd.getService exception: "

    .line 4
    .line 5
    const-string v2, "Connected to hostapd aidl service "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    :try_start_1
    const-string p0, "SemHostapdHalAidlImpl"

    .line 19
    .line 20
    const-string v0, "Got null ISehHostapd service. Stopping hostapd HIDL startup"

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/16 p0, -0xd

    .line 26
    .line 27
    monitor-exit v3

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const-string v0, "SemHostapdHalAidlImpl"

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const-string v1, "with extension"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v1, ""

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    const-string v0, "SemHostapdHalAidlImpl"

    .line 59
    .line 60
    const-string v1, "Fail to regiester sehRegisterCallback, Stopping hostapd HIDL startup"

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 67
    .line 68
    const/16 p0, -0xf

    .line 69
    .line 70
    monitor-exit v3

    .line 71
    return p0

    .line 72
    :cond_2
    monitor-exit v3

    .line 73
    const/4 p0, 0x0

    .line 74
    return p0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    const-string v0, "SemHostapdHalAidlImpl"

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    monitor-exit v3

    .line 97
    const/16 p0, -0xc

    .line 98
    .line 99
    return p0

    .line 100
    :goto_2
    const-string v1, "SemHostapdHalAidlImpl"

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    monitor-exit v3

    .line 118
    const/16 p0, -0xb

    .line 119
    .line 120
    return p0

    .line 121
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0
.end method

.method private registerNotification()Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static serviceDeclared()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemHostapdHalAidlImpl"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, " Not atlest T SDK "

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v2, " serviceDeclared  "

    .line 23
    .line 24
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    const/16 v1, 0x11

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
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
    const-string v1, "SemHostapdHalAidlImpl"

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :catch_0
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    throw p1
.end method

.method public attachDaemon()I
    .locals 6

    .line 1
    const-string v0, "SemHostapdHalAidlImpl init ISehHostapd ret : "

    .line 2
    .line 3
    const-string v1, "init ISehHostapd ret : "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getHostapdMockable()Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const-string v3, "SemHostapdHalAidlImpl"

    .line 17
    .line 18
    const-string v4, "Service hostapd wasn\'t found."

    .line 19
    .line 20
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 28
    :try_start_1
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;

    .line 38
    .line 39
    invoke-direct {v4, p0, v3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v3

    .line 48
    :try_start_2
    const-string v4, "attachDaemon"

    .line 49
    .line 50
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    const-string v3, "SemHostapdHalAidlImpl"

    .line 54
    .line 55
    const-string v4, "init sucess IHostapd, next registerCallback."

    .line 56
    .line 57
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->initSehHostapdService()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    const-string v4, "SemHostapdHalAidlImpl"

    .line 67
    .line 68
    const-string v5, "initalizing ISehHostapd failed."

    .line 69
    .line 70
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const-string v4, "SemHostapdHalAidlImpl"

    .line 75
    .line 76
    const-string v5, "Completed initialization of ISehHostapd."

    .line 77
    .line 78
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 83
    .line 84
    :goto_2
    const-string v4, "SemHostapdHalAidlImpl"

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "isRegisteredVar"

    .line 95
    .line 96
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 100
    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, "isRegisteredVar"

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 139
    .line 140
    .line 141
    :cond_3
    monitor-exit v2

    .line 142
    return v3

    .line 143
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    throw p0
.end method

.method public clearState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SemHostapdHalAidlImpl clearState mISehHostapd"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "SemHostapdHalAidlImpl"

    .line 10
    .line 11
    const-string v2, " clearState mISehHostapd to null"

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceDeclared:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public declared-synchronized getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "--SemHostapdHalAidl history \n"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method protected getHostapdMockable()Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method protected getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;
    .locals 4

    .line 1
    const-string v0, "Unable to get ISehHostapd service, "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string v2, "SemHostapdHalAidlImpl"

    .line 19
    .line 20
    const-string v3, "obtaining ISehHostapd binder extension"

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_2
    const-string p0, "SemHostapdHalAidlImpl"

    .line 36
    .line 37
    const-string v2, "could not get extension of IHostapd binder"

    .line 38
    .line 39
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "SemHostapdHalAidlImpl"

    .line 44
    .line 45
    const-string v2, "could not get IHostapd binder"

    .line 46
    .line 47
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :goto_0
    :try_start_3
    const-string v2, "SemHostapdHalAidlImpl"

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_1
    monitor-exit v1

    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0

    .line 71
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    throw p0
.end method

.method protected getServiceBinderMockable()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    monitor-exit v0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public initialize()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "SemHostapdHalAidlImpl"

    .line 10
    .line 11
    const-string v1, "Service is already initialized, skipping initialize method"

    .line 12
    .line 13
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return v2

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, "SemHostapdHalAidlImpl"

    .line 25
    .line 26
    const-string v3, "Checking for mIHostapd service."

    .line 27
    .line 28
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->registerNotification()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceDeclared:Z

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return v2

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public isRegistered()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    .line 2
    .line 3
    return p0
.end method

.method public readAllowList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 8
    .line 9
    new-instance v3, Ljava/io/FileReader;

    .line 10
    .line 11
    const-string v4, "/data/misc/wifi_hostapd/hostapd.accept"

    .line 12
    .line 13
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v3, v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    const/16 v4, 0x40

    .line 19
    .line 20
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v3, "#"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "ADD_ALLOW_LIST "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    move-object v1, v2

    .line 70
    goto :goto_4

    .line 71
    :catch_0
    move-exception p0

    .line 72
    move-object v1, v2

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p0

    .line 75
    move-object v1, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :catch_2
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_4

    .line 88
    :catch_3
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :catch_4
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_3
    return-object v0

    .line 110
    :goto_4
    if-eqz v1, :cond_3

    .line 111
    .line 112
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :catch_5
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_5
    throw p0
.end method

.method public readDenyList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 8
    .line 9
    new-instance v3, Ljava/io/FileReader;

    .line 10
    .line 11
    const-string v4, "/data/misc/wifi_hostapd/hostapd.deny"

    .line 12
    .line 13
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v3, v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    const/16 v4, 0x40

    .line 19
    .line 20
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v3, "#"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "ADD_DENY_LIST "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    move-object v1, v2

    .line 70
    goto :goto_4

    .line 71
    :catch_0
    move-exception p0

    .line 72
    move-object v1, v2

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p0

    .line 75
    move-object v1, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :catch_2
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_4

    .line 88
    :catch_3
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :catch_4
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_3
    return-object v0

    .line 110
    :goto_4
    if-eqz v1, :cond_3

    .line 111
    .line 112
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :catch_5
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_5
    throw p0
.end method

.method public sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;)Z
    .locals 5

    .line 1
    const-string v0, "sehRegisterCallback ret :"

    .line 2
    .line 3
    const-string v1, "sehRegisterCallback "

    .line 4
    .line 5
    const-string v2, "SemHostapdHalAidlImpl"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v1, "sehRegisterCallback"

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string p0, "mISehHostapd is null "

    .line 20
    .line 21
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v4

    .line 25
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 26
    .line 27
    invoke-interface {v3, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    return v4
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "SemHostapdHalAidlImpl  sendHostapdCommand:"

    .line 2
    .line 3
    const-string v1, "SemHostapdHalAidlImpl"

    .line 4
    .line 5
    const-string v2, "ISehHostapd command: "

    .line 6
    .line 7
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    const-string v2, "sendHostapdCommand"

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string p0, "SemHostapdHalAidlImpl"

    .line 27
    .line 28
    const-string p1, "mISehHostapd is null "

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    return-object v3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 38
    .line 39
    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " msg : "

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :goto_0
    :try_start_2
    const-string v0, "sendHostapdCommand"

    .line 76
    .line 77
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_1
    const-string v0, "sendHostapdCommand"

    .line 82
    .line 83
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_2
    monitor-exit v1

    .line 87
    return-object v3

    .line 88
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public terminate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SemHostapdHalAidlImpl"

    .line 5
    .line 6
    const-string v2, "terminate: terminating"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v1, "terminate"

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 20
    .line 21
    .line 22
    const-string p0, "SemHostapdHalAidlImpl"

    .line 23
    .line 24
    const-string v1, "Terminated semHostApdHal"

    .line 25
    .line 26
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v1, "SemHostapdHalAidlImpl"

    .line 34
    .line 35
    const-string v2, "Terminate HostApd Service."

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    const-wide/16 v3, 0x32

    .line 51
    .line 52
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    const-string v1, "SemHostapdHalAidlImpl"

    .line 59
    .line 60
    const-string v2, "Timed out waiting for confirmation of hostapd death"

    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "SemHostapdHalAidlImpl"

    .line 67
    .line 68
    const-string v2, "Got service death confirmation"

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    :try_start_2
    const-string v1, "SemHostapdHalAidlImpl"

    .line 75
    .line 76
    const-string v2, "Failed to wait for hostapd death"

    .line 77
    .line 78
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 82
    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p0
.end method
