.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListeningState"
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

    .line 1250
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V
    .locals 2

    .line 1315
    iget v0, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1318
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmTransferringState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist handleEventSatelliteModemStateChange(Landroid/os/Message;)V
    .locals 1

    .line 1323
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1325
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_0
    return-void
.end method

.method private blacklist updateListeningMode(Z)J
    .locals 4

    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteStayAtListeningFromSendingMillis(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)J

    move-result-wide v0

    goto :goto_0

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteStayAtListeningFromReceivingMillis(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)J

    move-result-wide v0

    .line 1308
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    long-to-int v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->requestSatelliteListeningEnabled(ZILandroid/os/Message;)V

    return-wide v0
.end method


# virtual methods
.method public blacklist enter()V
    .locals 5

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering ListeningState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1257
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->updateListeningMode(Z)J

    move-result-wide v2

    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1259
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1260
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void
.end method

.method public blacklist exit()V
    .locals 2

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Exiting ListeningState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->access$100(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    const/4 v0, 0x0

    .line 1268
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->updateListeningMode(Z)J

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListeningState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1274
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_0

    .line 1288
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1285
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    goto :goto_0

    .line 1294
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->handleEventSatelliteModemStateChange(Landroid/os/Message;)V

    goto :goto_0

    .line 1282
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "ListeningState"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V

    goto :goto_0

    .line 1276
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_0

    .line 1279
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;->handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V

    :goto_0
    return v1
.end method
