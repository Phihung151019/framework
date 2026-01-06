.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# instance fields
.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "telephony_registry"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyRegistryManager;

    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public static blacklist convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 1

    .line 420
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 443
    const-string p0, "DefaultPhoneNotifier"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist clearPreciseDataConnectionStates(I)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->clearPreciseDataConnectionStates(I)V

    return-void
.end method

.method public blacklist notifyAllowedNetworkTypesChanged(Lcom/android/internal/telephony/Phone;IJ)V
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyAllowedNetworkTypesChanged(IIIJ)V

    return-void
.end method

.method public blacklist notifyBarringInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V
    .locals 1

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    return-void
.end method

.method public blacklist notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCallForwardingChanged: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCFActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "DefaultPhoneNotifier"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result p1

    .line 137
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyCallForwardingChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V
    .locals 1

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyCallQualityChanged(IILandroid/telephony/CallQuality;I)V

    return-void
.end method

.method public blacklist notifyCallbackModeRestarted(Lcom/android/internal/telephony/Phone;IJ)V
    .locals 6

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 339
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 338
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyCallbackModeRestarted(IIIJ)V

    return-void
.end method

.method public blacklist notifyCallbackModeStarted(Lcom/android/internal/telephony/Phone;IJ)V
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 330
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    .line 329
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyRegistryManager;->notifyCallbackModeStarted(IIIJ)V

    return-void
.end method

.method public blacklist notifyCallbackModeStopped(Lcom/android/internal/telephony/Phone;II)V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 348
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 347
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyCallbackModeStopped(IIII)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnAvailableServicesChanged(Lcom/android/internal/telephony/Phone;[I)V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 366
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 365
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnEligibleStateChanged(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 358
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnEligibleStateChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnModeChanged(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnModeChanged(IZ)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnSignalStrengthChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 372
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method public blacklist notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellInfoChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCellLocation - subId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellIdentity: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellLocation(ILandroid/telephony/CellIdentity;)V

    return-void
.end method

.method public blacklist notifyCellularIdentifierDisclosedChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellularIdentifierDisclosure;)V
    .locals 1

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 390
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 389
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method public blacklist notifyCpaiDataGathering(Lcom/android/internal/telephony/Phone;I[B)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyCpaiDataGathering(II[B)V

    return-void
.end method

.method public blacklist notifyCpaiDevAppMessage(Lcom/android/internal/telephony/Phone;II[B)V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyRegistryManager;->notifyCpaiDevAppMessage(III[B)V

    return-void
.end method

.method public blacklist notifyCpaiFeatureInfo(Lcom/android/internal/telephony/Phone;I)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCpaiFeatureInfo(II)V

    return-void
.end method

.method public blacklist notifyCpaiModelUpdate(Lcom/android/internal/telephony/Phone;I)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyCpaiModelUpdate(II)V

    return-void
.end method

.method public blacklist notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 222
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDataActivationStateChanged(III)V

    return-void
.end method

.method public blacklist notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 148
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataActivityState()I

    move-result p1

    .line 147
    invoke-virtual {p0, v1, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyDataActivityChanged(III)V

    return-void
.end method

.method public blacklist notifyDataConnection(Lcom/android/internal/telephony/Phone;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 153
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public blacklist notifyDataEnabled(Lcom/android/internal/telephony/Phone;ZI)V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyDataEnabled(IIZI)V

    return-void
.end method

.method public blacklist notifyDisconnectCause(Lcom/android/internal/telephony/Phone;II)V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->notifyDisconnectCause(IIII)V

    return-void
.end method

.method public blacklist notifyDisplayInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public blacklist notifyEmergencyNumberList(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyEmergencyNumberList(II)V

    return-void
.end method

.method public blacklist notifyImsDisconnectCause(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 315
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyMediaQualityStatusChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 275
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method public blacklist notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 128
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result p1

    .line 127
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyMessageWaitingChanged(IIZ)V

    return-void
.end method

.method public blacklist notifyOutgoingEmergencySms(Lcom/android/internal/telephony/Phone;Landroid/telephony/emergency/EmergencyNumber;)V
    .locals 1

    .line 262
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 263
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 262
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method public blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public blacklist notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 77
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPhoneState - state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result p1

    .line 88
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyCallStateChanged(IIILjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyPhysicalChannelConfig(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 295
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    return-void
.end method

.method public blacklist notifyPreciseCallState(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;[I[I)V
    .locals 10

    .line 186
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 187
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 188
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    .line 192
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    .line 193
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreciseCallState - RingingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ForegroundCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BackgroundCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/telephony/TelephonyRegistryManager;->notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V

    :cond_0
    return-void
.end method

.method public blacklist notifyRadioPowerStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyRadioPowerStateChanged(III)V

    return-void
.end method

.method public blacklist notifyRegistrationFailed(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 8

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyRegistryManager;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public blacklist notifySecurityAlgorithmsChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .locals 1

    .line 380
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 381
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 380
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method public blacklist notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 94
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public blacklist notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServiceStateForSubId: mRegistryMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " phondId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DefaultPhoneNotifier"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 104
    new-instance p2, Landroid/telephony/ServiceState;

    invoke-direct {p2}, Landroid/telephony/ServiceState;-><init>()V

    .line 105
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, v0, p3, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    return-void
.end method

.method public blacklist notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 119
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    return-void
.end method

.method public blacklist notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyRegistryManager;->notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V

    return-void
.end method

.method public blacklist notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySrvccStateChanged(II)V

    return-void
.end method

.method public blacklist notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 235
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 234
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyUserMobileDataStateChanged(IIZ)V

    return-void
.end method

.method public blacklist notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 228
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifyVoiceActivationStateChanged(III)V

    return-void
.end method
