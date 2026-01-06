.class Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;
.super Landroid/telephony/satellite/stub/ISatelliteListener$Stub;
.source "SatelliteModemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatelliteListener"
.end annotation


# instance fields
.field private final blacklist mIsDemoListener:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-direct {p0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;-><init>()V

    .line 124
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->mIsDemoListener:Z

    return-void
.end method

.method private blacklist notifyModemStateChanged(I)Z
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->notifyResultIfExpectedListener()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist notifyResultIfExpectedListener()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->mIsDemoListener:Z

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDemoModeEnabled()Z

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->notifyResultIfExpectedListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmNtnSignalStrengthChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    .line 185
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromNtnSignalStrength(Landroid/telephony/satellite/stub/NtnSignalStrength;)Landroid/telephony/satellite/NtnSignalStrength;

    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist onPendingDatagrams()V
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->notifyResultIfExpectedListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v1, "onPendingDatagrams"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmPendingDatagramsRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteRegistrationFailureRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteCapabilitiesChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    .line 193
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromSatelliteCapabilities(Landroid/telephony/satellite/stub/SatelliteCapabilities;)Landroid/telephony/satellite/SatelliteCapabilities;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V
    .locals 3

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->notifyResultIfExpectedListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSatelliteDatagramReceived: pendingCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteDatagramsReceivedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    .line 133
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;)Landroid/telephony/satellite/SatelliteDatagram;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->notifyModemStateChanged(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteModemStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v0

    .line 156
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromSatelliteModemState(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 176
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmDatagramTransferStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public blacklist onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatellitePositionInfoChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    .line 149
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromPointingInfo(Landroid/telephony/satellite/stub/PointingInfo;)Landroid/telephony/satellite/PointingInfo;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteSupportedStateChanged(Z)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteSupportedStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmTerrestrialNetworkAvailableChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method
