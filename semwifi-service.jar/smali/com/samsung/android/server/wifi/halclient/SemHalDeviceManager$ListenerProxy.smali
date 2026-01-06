.class abstract Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LISTENER:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LISTENER;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1WG-QyL5tuFVhnr75nnjjZvaGrc(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->lambda$trigger$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$34N-ZJG7gusn4cpELC7XWF1d44Q(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->lambda$trigger$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$QWg9GUtmxoAc2_Hqou6hP35RNfw(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->lambda$trigger$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$trigger$0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->action()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$trigger$1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->action()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$trigger$2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->action()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 0

    .line 1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p0, p1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public requestedToRunInCurrentThread()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmp-long p0, v2, v4

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method trigger(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->requestedToRunInCurrentThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->action()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->runAtFront(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    instance-of v0, p1, Lcom/samsung/android/server/wifi/SemRunnerHandler;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    check-cast p1, Lcom/samsung/android/server/wifi/SemRunnerHandler;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemRunnerHandler;->postToFront(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
