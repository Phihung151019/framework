.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;
.super Ljava/lang/Object;
.source "SatelliteSessionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatelliteGatewayServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1694
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1718
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "onBindingDied: Unbinding and rebinding service."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1719
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1720
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    .line 1721
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    .line 1722
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$munbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1724
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmExponentialBackoff(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void

    :catchall_0
    move-exception p0

    .line 1722
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1698
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    .line 1700
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    .line 1701
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p2}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteGateway;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmSatelliteGatewayService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/stub/ISatelliteGateway;)V

    .line 1703
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmExponentialBackoff(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void

    :catchall_0
    move-exception p0

    .line 1701
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1708
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "onServiceDisconnected: Waiting for reconnect."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1709
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1710
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    .line 1712
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmSatelliteGatewayService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/stub/ISatelliteGateway;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1712
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
