.class public final Lcom/samsung/android/server/wifi/stdp/StandardPlusService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "StandardPlusService"


# instance fields
.field final mImpl:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusService;->mImpl:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "StandardPlusService"

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p0, "onBootPhase(PHASE_SYSTEM_SERVICES_READY): NULL injector!"

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusService;->mImpl:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->start(Landroid/os/HandlerThread;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/16 v0, 0x3e8

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusService;->mImpl:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->startLate()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "StandardPlusService"

    .line 2
    .line 3
    const-string v1, "Registering stdp_service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "stdp_service"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusService;->mImpl:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
