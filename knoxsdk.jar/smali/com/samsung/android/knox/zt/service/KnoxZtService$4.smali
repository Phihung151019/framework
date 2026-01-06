.class Lcom/samsung/android/knox/zt/service/KnoxZtService$4;
.super Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic blacklist this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public final synthetic blacklist val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkUrlReputation(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;->checkUrlReputation(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist onEvent(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onEventGeneralized(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;->onEventGeneralized(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onEventSimplified(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;->onEventSimplified(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onSignal(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;->onSignal(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
