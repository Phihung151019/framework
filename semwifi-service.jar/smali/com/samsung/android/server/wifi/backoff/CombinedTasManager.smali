.class Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# static fields
.field public static final AVERAGE:Ljava/lang/String; = "average"

.field private static final DEFAULT_IFACE:Ljava/lang/String; = "wlan0"

.field static final DEFAULT_WINDOW_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.Tas"

.field static final TAS_HIGH_MODE:I = 0x14

.field static final TAS_LOW_MODE:I = 0x12

.field static final TAS_MID_MODE:I = 0x13

.field static final TAS_UNDER_HIGH_MODE:I = 0x1a

.field static final TAS_UNDER_LOW_MODE:I = 0x18

.field static final TAS_UNDER_MID_MODE:I = 0x19

.field public static final WINDOW:Ljava/lang/String; = "window"


# instance fields
.field public currentTasLevel:I

.field public lastWindowSize:I

.field private mDbsModeProvider:Lcom/samsung/android/server/wifi/DbsModeProvider;

.field private final mLooper:Landroid/os/Looper;

.field private final mTasListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/wifi/SemTasPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseEnhancedTasOp:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field public requestTasLevel:I


# direct methods
.method public static synthetic $r8$lambda$y_8Jun6LWAzZGHkgu_9sVvmnClY(Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lambda$notifyForClients$0(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->requestTasLevel:I

    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    const/16 p1, 0x1e

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mLooper:Landroid/os/Looper;

    .line 8
    iput-boolean p6, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mUseEnhancedTasOp:Z

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mTasListeners:Ljava/util/Set;

    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 11
    iput-object p5, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->isEnhancedCombinedTasSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->registerTasEventCallback()V

    :cond_0
    return-void
.end method

.method private calculateCurrentTasLevel(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mDbsModeProvider:Lcom/samsung/android/server/wifi/DbsModeProvider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/DbsModeProvider;->getDbsMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->getPowerBackOffModeIndex(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v2, "requestTasLevel = "

    .line 17
    .line 18
    invoke-static {p1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "SemWifiBackOff.Tas"

    .line 23
    .line 24
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    const/16 v4, 0x12

    .line 29
    .line 30
    if-lt p1, v4, :cond_1

    .line 31
    .line 32
    const/16 v5, 0x14

    .line 33
    .line 34
    if-gt p1, v5, :cond_1

    .line 35
    .line 36
    move v5, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v5, 0x18

    .line 39
    .line 40
    if-lt p1, v5, :cond_a

    .line 41
    .line 42
    const/16 v6, 0x1a

    .line 43
    .line 44
    if-gt p1, v6, :cond_a

    .line 45
    .line 46
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 47
    .line 48
    const-string v6, "wlan0"

    .line 49
    .line 50
    invoke-interface {p1, v6, v0, v5}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->getAverageTxPower(Ljava/lang/String;ZI)[I

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    aget v0, p1, v1

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    aget p1, p1, v6

    .line 58
    .line 59
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 60
    .line 61
    if-gez v0, :cond_2

    .line 62
    .line 63
    const-string p0, "failed to get tx average power value."

    .line 64
    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_2
    const/4 p0, 0x2

    .line 70
    if-ne v5, v4, :cond_5

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    return v1

    .line 75
    :cond_3
    if-ne v0, v6, :cond_4

    .line 76
    .line 77
    return v6

    .line 78
    :cond_4
    if-ne v0, p0, :cond_9

    .line 79
    .line 80
    return p0

    .line 81
    :cond_5
    const/4 p1, 0x3

    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    return p1

    .line 85
    :cond_6
    if-ne v0, v6, :cond_7

    .line 86
    .line 87
    const/4 p0, 0x4

    .line 88
    return p0

    .line 89
    :cond_7
    if-ne v0, p0, :cond_8

    .line 90
    .line 91
    const/4 p0, 0x5

    .line 92
    return p0

    .line 93
    :cond_8
    if-ne v0, p1, :cond_9

    .line 94
    .line 95
    return p0

    .line 96
    :cond_9
    return v2

    .line 97
    :cond_a
    const-string p0, "Invalid backOffModeIndex for TAS"

    .line 98
    .line 99
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return v2
.end method

.method private getCurrentState()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->getCurrentState(II)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentState(II)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "average"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getPowerBackOffModeIndex(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    if-eq p1, p0, :cond_3

    .line 5
    .line 6
    const/4 p0, 0x3

    .line 7
    if-eq p1, p0, :cond_2

    .line 8
    .line 9
    const/4 p0, 0x4

    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x5

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x13

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    const/16 p0, 0x1a

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    const/16 p0, 0x19

    .line 22
    .line 23
    return p0

    .line 24
    :cond_2
    const/16 p0, 0x18

    .line 25
    .line 26
    return p0

    .line 27
    :cond_3
    const/16 p0, 0x14

    .line 28
    .line 29
    return p0

    .line 30
    :cond_4
    const/16 p0, 0x12

    .line 31
    .line 32
    return p0
.end method

.method private isEnhancedCombinedTasSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mUseEnhancedTasOp:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic lambda$notifyForClients$0(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 4
    .line 5
    invoke-interface {p1, v0, p0}, Lcom/samsung/android/wifi/SemTasPolicyListener;->onTasPolicyChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private registerTasEventCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mLooper:Landroid/os/Looper;

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    const-string p0, "wlan0"

    .line 11
    .line 12
    const v2, 0x24073

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - combined tas req:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->requestTasLevel:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " cur:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " ("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " sec.)"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->isEnhancedCombinedTasSupported()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    const-string p0, " [enhanced]"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p0, ""

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public getTasAverage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->requestTasLevel:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->calculateCurrentTasLevel(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "getTasStatus "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " ("

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "SemWifiBackOff.Tas"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->getCurrentState()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method notifyForClients()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mTasListeners:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public register(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mTasListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "registered tas listener, total="

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mTasListeners:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SemWifiBackOff.Tas"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setDbsProvider(Lcom/samsung/android/server/wifi/DbsModeProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mDbsModeProvider:Lcom/samsung/android/server/wifi/DbsModeProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setTasPolicy(II)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->requestTasLevel:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->calculateCurrentTasLevel(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 8
    .line 9
    const-string v0, "setTasPolicy "

    .line 10
    .line 11
    const-string v1, " (cur:"

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "), window:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "SemWifiBackOff.Tas"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    if-lez p2, :cond_0

    .line 40
    .line 41
    const/16 v0, 0x1e

    .line 42
    .line 43
    if-eq p2, v0, :cond_0

    .line 44
    .line 45
    const-string v0, "could not set C-TAS window size to "

    .line 46
    .line 47
    const-string v2, ", current is "

    .line 48
    .line 49
    invoke-static {v0, p2, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 66
    .line 67
    const-string v0, "wlan0"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->getPowerBackOffModeIndex(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-interface {p2, v0, p1}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->getCurrentState()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "tas_notify"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "average"

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->currentTasLevel:I

    .line 17
    .line 18
    const-string v0, "window"

    .line 19
    .line 20
    const/16 v1, 0x1e

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->lastWindowSize:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public unregister(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mTasListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "unregistered tas listener, remain="

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/CombinedTasManager;->mTasListeners:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SemWifiBackOff.Tas"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method
