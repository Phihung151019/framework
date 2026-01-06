.class Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;
.super Ljava/lang/Object;
.source "SatelliteServiceCommandHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteServiceCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enablePositionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmEnableSendingSatellitePositionInfo(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$smlogd(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmLocationRequestLock(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fputmLastFineLocation(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;Landroid/location/Location;)V

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmEnableSendingSatellitePositionInfo(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$1;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$mupdateSatellitePosition(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    return-void

    :catchall_0
    move-exception p0

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
