.class public final Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;,
        Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;
    }
.end annotation


# static fields
.field private static final BATTERY_HIGH:I = 0x2

.field private static final BATTERY_LOW:I = 0x1

.field private static final BATTERY_NONE:I = 0x0

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1388

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiIntelligentTrainingManager history:"

.field private static final TAG:Ljava/lang/String; = "SemWifiIntelligentTrainingManager"

.field private static final THERMAL_LEVEL_LOW:I = 0x0

.field private static final THERMAL_LEVEL_MID:I = 0x1

.field private static final TR_CONDITION_CHECK:I = 0x0

.field private static final TR_CONDITION_CHECK_INTERVAL_MS:I = 0x7530

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIntelligentTrainingManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/BatteryManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntelligentTrainingManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mIntelligentTrainingManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/PowerManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->addEvent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBatteryLevel(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->getBatteryLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misCharging(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->isCharging()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mIntelligentTrainingManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

    .line 25
    .line 26
    const-string p2, "batterymanager"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/os/BatteryManager;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 35
    .line 36
    const-string p2, "power"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/PowerManager;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 45
    .line 46
    return-void
.end method

.method private addEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/Date;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "SemWifiIntelligentTrainingManager"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/16 v0, 0x1388

    .line 61
    .line 62
    if-le p0, v0, :cond_0

    .line 63
    .line 64
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    monitor-exit p1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string p1, "SemWifiIntelligentTrainingManager"

    .line 78
    .line 79
    const-string v0, "out of memory error: "

    .line 80
    .line 81
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catch_1
    move-exception p0

    .line 86
    const-string p1, "SemWifiIntelligentTrainingManager"

    .line 87
    .line 88
    const-string v0, "format problem: "

    .line 89
    .line 90
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private getBatteryLevel()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 v1, 0x50

    .line 12
    .line 13
    if-le p0, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_0
    const/16 v1, 0x14

    .line 18
    .line 19
    if-le p0, v1, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v0
.end method

.method private isCharging()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiIntelligentTrainingManager history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public registerCallback(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;)V
    .locals 6

    .line 1
    const-string v0, "Callback registered: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mIntelligentTrainingManagerHandler:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-wide/16 v4, 0x7530

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->addEvent(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Callback unregistered: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->mCallbackMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->addEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
