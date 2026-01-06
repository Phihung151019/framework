.class final Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NrConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1939
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 3

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering NrConnectedState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNrSA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessTmoEnterForNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    .line 2079
    const-string p0, "connected"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1960
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NrConnectedState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "5G UC: Skip updating mRetainUC until EVENT_PHYSICAL_CHANNEL_CONFIGS_CHANGED is received"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1969
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1971
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/16 v3, 0xb

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    return v1

    .line 2053
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2054
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2055
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 2058
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "CHN"

    const-string v1, "HKG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 2059
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2060
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2064
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2065
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessTmoPhysicalLinkStatusChangedForNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_8

    .line 1973
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_3

    .line 2025
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2026
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_8

    .line 2030
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2031
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetUWBitValue(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 2032
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2035
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: mRetainUC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRetainCtr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2038
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2040
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2041
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2043
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 2044
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_2

    .line 2045
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2046
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2049
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_8

    .line 1976
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleInterRatTransition(Lcom/android/internal/telephony/NetworkTypeController;I)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_d

    .line 1983
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_d
    const/16 v0, 0x14

    if-eq p1, v0, :cond_11

    .line 1987
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1988
    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    .line 2005
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2007
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetTimerAndUpdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2009
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2010
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v4

    goto :goto_4

    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v4

    .line 2009
    :goto_4
    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_7

    .line 2013
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetTimerAndUpdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2015
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_7

    .line 1989
    :cond_11
    :goto_5
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1990
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_7

    .line 1991
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1992
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_7

    .line 1999
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    if-ne p1, v0, :cond_14

    move v4, v2

    goto :goto_6

    :cond_14
    move v4, v1

    :goto_6
    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2000
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v3

    if-eq p1, v3, :cond_15

    .line 2001
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2019
    :cond_15
    :goto_7
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2021
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    if-ne p1, v0, :cond_16

    move v1, v2

    :cond_16
    invoke-static {v3, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2071
    :goto_8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 2072
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_17
    return v2
.end method
