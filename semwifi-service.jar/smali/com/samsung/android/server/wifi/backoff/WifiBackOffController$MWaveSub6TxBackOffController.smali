.class Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWaveSub6TxBackOffController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.5G"


# instance fields
.field private lastNrFrequencyRange:I

.field private final listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final txBackOffStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/backoff/BackOffMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$f5X5vMuSRYDOnCEB6kmnVHXcMdE(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V

    return-void
.end method

.method private getTxBackOffModeString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    if-eq p1, p0, :cond_4

    .line 3
    .line 4
    const/4 p0, 0x4

    .line 5
    if-eq p1, p0, :cond_3

    .line 6
    .line 7
    const/4 p0, 0x5

    .line 8
    if-eq p1, p0, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x6

    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x7

    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string p0, "SAR_BACKOFF_DISABLE_ALL"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "SUB6_BACKOFF_ENABLED"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "SUB6_BACKOFF_DISABLED"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    const-string p0, "mmWAVE_BACKOFF_ENABLED"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    const-string p0, "mmWAVE_BACKOFF_DISABLED"

    .line 34
    .line 35
    return-object p0
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - txBackOffMode("

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
    const-string p1, "): "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private reportBackOffState(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->add(I)I

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    .line 21
    .line 22
    invoke-interface {p3, p1, v1, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStarted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->remove(I)I

    .line 27
    .line 28
    .line 29
    iget-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    .line 30
    .line 31
    invoke-interface {p3, p1, v1, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStopped(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private restoreTxBackoffMode(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "restore back off mode, current: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "SemWifiBackOff.5G"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_0
    const/4 v1, 0x4

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->setSub6TxBackoffEnabled(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne p2, v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x3

    .line 28
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "setPowerBackoff(mWave) mode="

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->getTxBackOffModeString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "SemWifiBackOff.5G"

    .line 40
    .line 41
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->reportBackOffState(Ljava/lang/String;IZ)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private setSub6TxBackoffEnabled(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne p2, v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x5

    .line 27
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "setPowerBackoff(sub6) mode="

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->getTxBackOffModeString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "SemWifiBackOff.5G"

    .line 39
    .line 40
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->reportBackOffState(Ljava/lang/String;IZ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method checkAndSetup(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$mgetServiceState(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Landroid/telephony/ServiceState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->restoreTxBackoffMode(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "checkAndSetup nrFrequencyRange="

    .line 18
    .line 19
    const-string v2, " / prevNrFrequencyRange="

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lastNrFrequencyRange:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "SemWifiBackOff.5G"

    .line 35
    .line 36
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-eq v0, v2, :cond_2

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq v0, v3, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v0, v3, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    if-eq v0, v3, :cond_1

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->restoreTxBackoffMode(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->setSub6TxBackoffEnabled(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->setSub6TxBackoffEnabled(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lastNrFrequencyRange:I

    .line 70
    .line 71
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - lastNrFrequencyRange: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lastNrFrequencyRange:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method forceEnableMWaveBackoff(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "forceEnable5GmmWaveBackoff by app iface="

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
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SemWifiBackOff.5G"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    xor-int/lit8 v0, p2, 0x1

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->reportBackOffState(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method getCurrentBackOffMode(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method resetState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method
