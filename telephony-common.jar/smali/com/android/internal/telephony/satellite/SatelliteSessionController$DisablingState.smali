.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisablingState"
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

    .line 909
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventSatelliteModemStateChanged(Landroid/os/Message;)V
    .locals 2

    .line 978
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 980
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Modem OFF state will be processed after getting the confirmation of the disable request"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 984
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method private blacklist handleSatelliteEnabledStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 970
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 971
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Enable request has succeeded. Set mPreviousState to NOT_CONNECTED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 973
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering DisablingState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 918
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$munregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method public blacklist exit()V
    .locals 1

    .line 923
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "Exiting DisablingState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisablingState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 929
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 934
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 940
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 941
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Enable request has failed. Set mPreviousState to OFF"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_1

    .line 944
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 948
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 949
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmEnablingState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 950
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 951
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 953
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 947
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 957
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->handleEventSatelliteModemStateChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 931
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->handleSatelliteEnabledStateChanged(Z)V

    :goto_1
    return v2
.end method
