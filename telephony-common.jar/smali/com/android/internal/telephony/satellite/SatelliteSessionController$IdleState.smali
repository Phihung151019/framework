.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
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

    .line 989
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V
    .locals 2

    .line 1080
    iget v0, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 1088
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteAttachRequired()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1089
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1091
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Unexpected transferring state received for non-NB-IOT NTN"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 1083
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmTransferringState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist handleEventDisableCellularModemWhileSatelliteModeIsOnDone(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1141
    const-string v0, "DisableCellularModemWhileSatelliteModeIsOnDone"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I

    move-result p1

    .line 1143
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable TN scanning done with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSatelliteModemStateChanged(Landroid/os/Message;)V
    .locals 3

    .line 1147
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1149
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    :cond_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 1152
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misConcurrentTnScanningSupported(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying the new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to clients but still stay at IDLE state internally"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1155
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void

    .line 1157
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring the modem state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 5

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering IdleState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 998
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteSessionStatusInfos()Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteTerrestrialNetworkStateChange(I)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 1006
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misTnScanningAllowedDuringSatelliteSession(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/16 v4, 0xc

    .line 1009
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1010
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v4

    .line 1011
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v4, "Device does not allow cellular modem scanning"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1015
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misConcurrentTnScanningSupported(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 1023
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void

    .line 1017
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v3, "IDLE state is hidden from clients"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1020
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$msLogState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;IZ)V

    return-void
.end method

.method public blacklist exit()V
    .locals 3

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Exiting IdleState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V

    .line 1168
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->clearTerrestrialNetworkAvailableState()V

    .line 1171
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteSessionStatusInfos()Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1173
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteTerrestrialNetworkStateChange(I)V

    :cond_0
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1030
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x7

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIgnoreCellularServiceState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1058
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/os/AsyncResult;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1059
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_c

    .line 1060
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "IdleState: processing: can\'t access ServiceState"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_1

    .line 1070
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "IdleState: processing: ignore EVENT_SERVICE_STATE_CHANGED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_1

    .line 1054
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "EVENT_ENABLE_CELLULAR_MODEM_WHILE_SATELLITE_MODE_IS_ON_DONE"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_1

    .line 1048
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_1

    .line 1045
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1038
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleEventDisableCellularModemWhileSatelliteModeIsOnDone(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1051
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleSatelliteModemStateChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 1035
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "IdleState"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V

    goto :goto_1

    .line 1042
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    goto :goto_1

    .line 1032
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V

    :cond_c
    :goto_1
    return v1
.end method
