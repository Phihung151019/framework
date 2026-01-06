.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState$1;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "SatelliteSessionController.java"


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;


# virtual methods
.method public blacklist accept(I)V
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState$1;->this$1:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSatelliteEnabled result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1129
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState$1;->this$1:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSessionMetricsStats(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfAutoExitDueToTnNetwork()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 1131
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState$1;->this$1:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->setEndCauseforSatelliteBigdata(I)V

    :cond_0
    return-void
.end method
