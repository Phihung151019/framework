.class Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;
.super Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;
.source "SatelliteServiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->registerCallbackSatelliteSubscriptionChanged()V
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

    .line 479
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-direct {p0}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSelectedNbIotSatelliteSubscriptionChanged(I)V
    .locals 4

    .line 482
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    const-string p0, "SatelliteServiceCommandHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectedNbIotSatelliteSubscriptionChanged - newPhone is null, selectedSubId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 487
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmPhoneIdLock(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 490
    const-string p0, "SatelliteServiceCommandHandler"

    const-string p1, "onSelectedNbIotSatelliteSubscriptionChanged - same phoneId"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 494
    :cond_1
    const-string v1, "SatelliteServiceCommandHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedNbIotSatelliteSubscriptionChanged newPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$mregisterUnsolMgs(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;I)V

    .line 496
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$3;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fputmPhoneId(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;I)V

    .line 497
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
