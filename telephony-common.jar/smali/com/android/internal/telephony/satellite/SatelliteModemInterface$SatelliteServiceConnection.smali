.class Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;
.super Ljava/lang/Object;
.source "SatelliteModemInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatelliteServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Lcom/android/internal/telephony/satellite/SatelliteModemInterface-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v1, "onBindingDied"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$msLogFrom(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v0, "onBindingDied: Unbinding and rebinding service."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 435
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unbindService()V

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void

    :catchall_0
    move-exception p0

    .line 435
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v1, "onServiceConnected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$msLogFrom(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 395
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatellite;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/telephony/satellite/stub/ISatellite;)V

    .line 397
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 403
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Landroid/telephony/satellite/stub/ISatellite;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteListenerProxy(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    .line 405
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmDemoSimulator(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/DemoSimulator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmDemoListener(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/DemoSimulator;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteListener: RemoteException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 410
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSatelliteServiceConnected()V

    return-void

    :catchall_0
    move-exception p0

    .line 395
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v1, "onServiceDisconnected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$msLogFrom(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v0, "onServiceDisconnected: Waiting for reconnect."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 421
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mdisconnectSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    return-void

    :catchall_0
    move-exception p0

    .line 421
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
