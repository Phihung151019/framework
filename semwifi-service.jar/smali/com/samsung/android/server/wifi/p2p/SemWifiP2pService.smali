.class public final Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiP2pService"


# instance fields
.field final mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

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
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

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
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "SemWifiP2pService"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleP2pServiceReady(Landroid/os/HandlerThread;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/16 v0, 0x3e8

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleBootCompleted()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "SemWifiP2pService"

    .line 2
    .line 3
    const-string v1, "Registering sem_wifi_p2p"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "sem_wifi_p2p"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pService;->mImpl:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
