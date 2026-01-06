.class public Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;
.super Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SatelliteModemStateListener"
.end annotation


# instance fields
.field private blacklist mSatelliteNbIotConnected:Z

.field private blacklist mUpdateSatelliteCarrierDisplay:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 730
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;-><init>()V

    const/4 p1, 0x0

    .line 735
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mSatelliteNbIotConnected:Z

    .line 740
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    return-void
.end method


# virtual methods
.method public blacklist doneForUpdateSatelliteCarrierDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    return-void
.end method

.method public blacklist isInConnectedState()Z
    .locals 4

    .line 769
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 773
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    if-ne v2, p0, :cond_2

    .line 776
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getNtnOnlySubscriptionId()I

    move-result p0

    if-ne v2, p0, :cond_1

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInConnectedState()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist needToUpdateSatelliteCarrierDisplay()Z
    .locals 0

    .line 787
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    return p0
.end method

.method public blacklist onEmergencyModeChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 3

    .line 744
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->isInConnectedState()Z

    move-result p1

    .line 745
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mSatelliteNbIotConnected:Z

    if-eq p1, v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Satellite connection state is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 747
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mSatelliteNbIotConnected:Z

    const/4 p1, 0x1

    .line 748
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->mUpdateSatelliteCarrierDisplay:Z

    .line 750
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_0
    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method
