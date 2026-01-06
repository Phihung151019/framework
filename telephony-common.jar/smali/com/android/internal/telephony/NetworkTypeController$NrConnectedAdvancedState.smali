.class final Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NrConnectedAdvancedState"
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

    .line 2089
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 6

    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering NrConnectedAdvancedState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "not_restricted_rrc_con"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "connected_rrc_idle"

    .line 2098
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2099
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2102
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2104
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2106
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetNrAdvBandInd(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/Set;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsPrevNrCband(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmHalVersion(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2109
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-array v4, v3, [Landroid/telephony/CellIdentity;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;Z[Landroid/telephony/CellIdentity;)[I

    move-result-object v1

    goto :goto_1

    .line 2110
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-array v1, v1, [Landroid/telephony/CellIdentity;

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;Z[Landroid/telephony/CellIdentity;)[I

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;[I)V

    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected_mmwave"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2112
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2116
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    .line 2247
    const-string p0, "connected_mmwave"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misAdditionalNrAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/Set;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NrConnectedAdvancedState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", been using advanced band is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/16 v3, 0xb

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return v2

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2217
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2218
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessTmoPhysicalLinkStatusChangedForNrConnectedAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2222
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "CHN"

    const-string v3, "HKG"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 2223
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNetworkJapan(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2224
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2225
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_0

    .line 2226
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2227
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2231
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2232
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_8

    .line 2131
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_2

    .line 2189
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2190
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_8

    .line 2194
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2195
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetUWBitValue(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 2196
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2198
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: mRetainUC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRetainCtr:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2200
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2202
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2203
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2205
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 2206
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_1

    .line 2207
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNetworkJapan(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2208
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    .line 2211
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_8

    .line 2134
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleInterRatTransition(Lcom/android/internal/telephony/NetworkTypeController;I)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_d

    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_d
    const/16 v0, 0x14

    if-eq p1, v0, :cond_11

    .line 2145
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 2146
    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    .line 2175
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2176
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2177
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v4

    goto :goto_3

    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v4

    .line 2176
    :goto_3
    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_7

    .line 2179
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_7

    .line 2148
    :cond_11
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    if-ne p1, v0, :cond_12

    move v4, v1

    goto :goto_5

    :cond_12
    move v4, v2

    :goto_5
    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2150
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2156
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v3

    if-eq p1, v3, :cond_16

    .line 2157
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_7

    .line 2172
    :cond_14
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2173
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v4

    goto :goto_6

    :cond_15
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v4

    .line 2172
    :goto_6
    invoke-static {v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    .line 2183
    :cond_16
    :goto_7
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2185
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    if-ne p1, v0, :cond_17

    move v2, v1

    :cond_17
    invoke-static {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2239
    :cond_18
    :goto_8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 2240
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_19
    return v1
.end method
