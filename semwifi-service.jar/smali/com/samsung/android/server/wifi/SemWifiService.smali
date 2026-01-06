.class public Lcom/samsung/android/server/wifi/SemWifiService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiService"


# instance fields
.field final impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;

    .line 20
    .line 21
    const-string v3, "SemWifiService"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/android/internal/util/AsyncChannel;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 30
    .line 31
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->checkAndStartWifi()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v0, 0x3e8

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleBootCompleted()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "SemWifiService"

    .line 2
    .line 3
    const-string v1, "Registering sem_wifi"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "sem_wifi"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleUserStop(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleUserSwitch(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiService;->impl:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleUserUnlock(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
