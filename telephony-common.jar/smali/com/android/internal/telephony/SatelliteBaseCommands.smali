.class public abstract Lcom/android/internal/telephony/SatelliteBaseCommands;
.super Ljava/lang/Object;
.source "SatelliteBaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/SatelliteCommandsInterface;


# instance fields
.field protected blacklist mAvailRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mCallEndReasonUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mCallNumberDisplayInfoUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mCallStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field public greylist mContext:Landroid/content/Context;

.field protected blacklist mIotRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mOffOrNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mOnRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRadioStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRequestGpsDataRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRequestSimAuthDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist mSatNewSmsRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSimAuthFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mState:I

.field protected greylist mStateMonitor:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestSimAuthDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSimAuthFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist cancelPendingUssd(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getBasebandVersion(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCDMASubscription(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getDataCallList(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getDataRegistrationState(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getDeviceIdentity(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getHardwareConfig(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getIMSI(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getImei(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getImsRegistrationState(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getMute(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getOperator(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getRadioState()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    return p0
.end method

.method public blacklist getRilVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSimPhonebookCapacity(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getSimPhonebookRecords(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getSmscAddress(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist iccCloseLogicalChannel(IZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist nvResetConfig(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForApnUnthrottled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 168
    iget p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 169
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 171
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForCallEndReasonUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1277
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallEndReasonUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForCallNumberDisplayInfoUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1302
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallNumberDisplayInfoUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 245
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForIccSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForImeiMappingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForIotRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1421
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mIotRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 189
    iget p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 190
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 192
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOffOrNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 210
    iget p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 212
    :cond_0
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOnRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 147
    iget p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 148
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 150
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRadioStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1327
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForRequestGpsData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1352
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestGpsDataRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist registerForRequestSimAuthData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 1377
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestSimAuthDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForSimAuthFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 1399
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSimAuthFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForSlicingConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSms([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendDeviceState(IZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setDataAllowed(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setDataProfile([Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setMute(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 330
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatNewSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 396
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 367
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setPhoneType(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setRadioState(IZ)V
    .locals 3

    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    .line 1442
    iput p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    .line 1446
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1449
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRadioStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_1

    .line 1450
    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1453
    :cond_1
    iget p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    if-ne v1, p2, :cond_2

    .line 1455
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_2

    .line 1456
    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1460
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    if-ne p1, p2, :cond_3

    if-eq v1, p2, :cond_3

    .line 1462
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_3

    .line 1463
    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1467
    :cond_3
    iget p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    if-eq v1, v2, :cond_4

    .line 1469
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_4

    .line 1470
    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1474
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mState:I

    if-eqz p1, :cond_5

    if-ne p1, p2, :cond_6

    :cond_5
    if-ne v1, v2, :cond_6

    .line 1477
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOffOrNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_6

    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1481
    :cond_6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist stopNattKeepalive(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist testingEmergencyCall()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnCallRing(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatNewSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatNewSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatNewSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unSetOnSs(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unSetOnUSSD(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForApnUnthrottled(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForCallEndReasonUpdated(Landroid/os/Handler;)V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallEndReasonUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1288
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallEndReasonUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 1289
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallEndReasonUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForCallNumberDisplayInfoUpdated(Landroid/os/Handler;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallNumberDisplayInfoUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1313
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallNumberDisplayInfoUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 1314
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallNumberDisplayInfoUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForCellInfoList(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForEmergencyNumberList(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForIccSlotStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForIotRegistrationStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mIotRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1432
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mIotRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 1433
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mIotRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForModemReset(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 202
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOffOrNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOffOrNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOffOrNotAvailRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 224
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForOn(Landroid/os/Handler;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOnRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mOnRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 160
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForPcoData(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRadioStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRadioStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRadioStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 123
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForRegistrationStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1338
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 1339
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForRequestGpsData(Landroid/os/Handler;)V
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestGpsDataRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1363
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestGpsDataRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 1364
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestGpsDataRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_0
    return-void
.end method

.method public blacklist unregisterForRequestSimAuthData(Landroid/os/Handler;)V
    .locals 0

    .line 1387
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestSimAuthDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForSimAuthFailed(Landroid/os/Handler;)V
    .locals 0

    .line 1409
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSimAuthFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimPhonebookChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForSlicingConfigChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist writeSmsToRuim(I[BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method
