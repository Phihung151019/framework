.class public Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdCallback;
    }
.end annotation


# static fields
.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static TAG:Ljava/lang/String; = "SemHostapdHalV4"


# instance fields
.field private final BUFFER_SIZE:I

.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private final HOSTAPD_DENY:Ljava/lang/String;

.field private MHSDBG:Z

.field private isRegisteredVar:Z

.field private final mContext:Landroid/content/Context;

.field private mDeathRecipientCookie:J

.field private mEventHandler:Landroid/os/Handler;

.field private mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

.field private mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

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

.field private mSehHostapdDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;

.field private mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;

.field private final mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegisteredVar:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mEventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLocalHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegisteredVar:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmISehHostapd(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIServiceManager(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitSehHostapdService(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->initSehHostapdService()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$minitialize(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->initialize()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->MHSDBG:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mDeathRecipientCookie:J

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    const-string v0, "/data/misc/wifi_hostapd/hostapd.accept"

    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->HOSTAPD_ACCEPT:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "/data/misc/wifi_hostapd/hostapd.deny"

    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->HOSTAPD_DENY:Ljava/lang/String;

    .line 29
    .line 30
    const/16 v0, 0x40

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->BUFFER_SIZE:I

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegisteredVar:Z

    .line 36
    .line 37
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$2;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mMHSDumpLogs:Ljava/util/List;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mEventHandler:Landroid/os/Handler;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 56
    .line 57
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;I)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;

    .line 63
    .line 64
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;

    .line 65
    .line 66
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;I)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mSehHostapdDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;

    .line 70
    .line 71
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$1;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLocalHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->serviceDeclared()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->initialize()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_0

    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLocalHandler:Landroid/os/Handler;

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    const-wide/16 p2, 0x12c

    .line 98
    .line 99
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    .line 101
    .line 102
    :cond_0
    return-void
.end method

.method private getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->getService()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "Failed to get ISehHostapd"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method private initSehHostapdService()Z
    .locals 8

    .line 1
    const-string v0, "ISehHostapd.getService exception: "

    .line 2
    .line 3
    const-string v1, "ISehHostapd.getService exception: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    :try_start_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Got null ISehHostapd service. Stopping hostapd HIDL startup"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    monitor-exit v2

    .line 25
    return v3

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mSehHostapdDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdDeathRecipient;

    .line 29
    .line 30
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mDeathRecipientCookie:J

    .line 31
    .line 32
    const-wide/16 v6, 0x1

    .line 33
    .line 34
    add-long/2addr v4, v6

    .line 35
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mDeathRecipientCookie:J

    .line 36
    .line 37
    invoke-direct {p0, v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->linkToSehHostapdDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "Fail to link to SehHostapd Death, Stopping hostapd HIDL startup"

    .line 47
    .line 48
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 52
    .line 53
    monitor-exit v2

    .line 54
    return v3

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isSamsungV4_0()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdCallback;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$SehHostapdCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapdCallback;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string v4, "Fail to regiester sehRegisterCallback, Stopping hostapd HIDL startup"

    .line 75
    .line 76
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 80
    .line 81
    monitor-exit v2

    .line 82
    return v3

    .line 83
    :cond_2
    monitor-exit v2

    .line 84
    const/4 p0, 0x1

    .line 85
    return p0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :catch_1
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :goto_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    monitor-exit v2

    .line 108
    return v3

    .line 109
    :goto_1
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    monitor-exit v2

    .line 127
    return v3

    .line 128
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0
.end method

.method private initialize()Z
    .locals 9

    .line 1
    const-string v0, "Exception while trying to register a listener for ISehHostapd service: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "Registering ISehHostapd service ready callback."

    .line 9
    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return v4

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v5, "Failed to get HIDL Service Manager"

    .line 37
    .line 38
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    return v3

    .line 43
    :catch_0
    move-exception v4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->linkToServiceManagerDeath()Z

    .line 46
    .line 47
    .line 48
    move-result v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    return v3

    .line 53
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 54
    .line 55
    const-string v6, "vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 56
    .line 57
    const-string v7, "default"

    .line 58
    .line 59
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 60
    .line 61
    invoke-interface {v5, v6, v7, v8}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v5, "Failed to register for notifications to vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 70
    .line 71
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    .line 76
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    return v3

    .line 78
    :cond_3
    :try_start_7
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v6, "registerForNotifications successful"

    .line 81
    .line 82
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_8
    monitor-exit v1

    .line 86
    return v4

    .line 87
    :goto_0
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 105
    .line 106
    monitor-exit v1

    .line 107
    return v3

    .line 108
    :goto_1
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 109
    throw p0
.end method

.method private linkToSehHostapdDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v1

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "Error on linkToDeath on ISehHostapd"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_2
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x1

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_0
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string p2, "ISehHostapd.linkToDeath exception"

    .line 36
    .line 37
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method private linkToServiceManagerDeath()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;

    .line 15
    .line 16
    invoke-interface {v1, v4}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "Error on linkToDeath on IServiceManager"

    .line 25
    .line 26
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    :try_start_2
    monitor-exit v0

    .line 32
    return v2

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    monitor-exit v0

    .line 37
    return p0

    .line 38
    :goto_0
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v5, "IServiceManager.linkToDeath exception"

    .line 41
    .line 42
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return v2

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public static serviceDeclared()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "android.hardware.wifi.hostapd@1.0::IHostapd"

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;)B

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "no existence of hostapd HIDL service. no initialize v4"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catch_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Unable to check for existence of HIDL service."

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v0
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->MHSDBG:Z

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
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mMHSDumpLogs:Ljava/util/List;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mMHSDumpLogs:Ljava/util/List;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mMHSDumpLogs:Ljava/util/List;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mMHSDumpLogs:Ljava/util/List;

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

.method public declared-synchronized getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "--SemHostapdHalV4 history \n"

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mMHSDumpLogs:Ljava/util/List;

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

.method getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method

.method public isRegistered()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegisteredVar:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSamsungV4_0()Z
    .locals 5

    .line 1
    const-string v0, "Exception while operating on IServiceManager: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "isV1_1: called but mServiceManager is null!?"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return v2

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    const-string v3, "vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 23
    .line 24
    invoke-interface {p0, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;)B

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 32
    return v2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return v2

    .line 53
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p0
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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

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
    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;
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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

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
    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;
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

.method public sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapdCallback;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sehRegisterCallback "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "mISehHostapd is null "

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "mISehHostapd exception: "

    .line 30
    .line 31
    invoke-static {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    :goto_0
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->code:I

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string p1, "sehRegisterCallback successful "

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "sehRegisterCallback failed "

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ISehHostapd command: "

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "  sendHostapdCommand:"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",wifiApState:"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegisteredVar:Z

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->addMHSDumpLog(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;

    .line 53
    .line 54
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "mISehHostapd exception: "

    .line 63
    .line 64
    invoke-static {v2, p0, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    move-object p0, v1

    .line 68
    :goto_0
    if-eqz p0, :cond_1

    .line 69
    .line 70
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->code:I

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->debugMessage:Ljava/lang/String;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_2

    .line 83
    .line 84
    const-string p0, "NUM_STA"

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_2

    .line 91
    .line 92
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    const-string p1, "ISehHostapd command NUM_STA abnormal "

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const-string p0, "0"

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_2
    return-object v1
.end method
