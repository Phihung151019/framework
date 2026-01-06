.class Lcom/android/internal/telephony/satellite/SatelliteController$20;
.super Ljava/lang/Object;
.source "SatelliteController.java"

# interfaces
.implements Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteCommunicationAccessStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9028
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAccessAllowedStateChanged(Z)V
    .locals 4

    .line 9031
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccessStateChanged: isAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 9033
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string v1, "onAccessStateChanged"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msLog(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9035
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 9038
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteController;->mSatelliteAccessConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9039
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    iput-boolean p1, v1, Lcom/android/internal/telephony/satellite/SatelliteController;->mSatelliteAccessAllowed:Z

    .line 9040
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9041
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->evaluateESOSProfilesPrioritization()V

    .line 9043
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mselectBindingSatelliteSubscription(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 9045
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateCarrierRoamingNtnEligibilityChange(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    .line 9046
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mhandleCarrierRoamingNtnAvailableServicesChanged(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    return-void

    :catchall_0
    move-exception p0

    .line 9040
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .locals 3

    .line 9053
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccessConfigurationChanged: satelliteAccessConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 9055
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$20;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mhandleSatelliteAccessConfigUpdateResult(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    return-void
.end method
