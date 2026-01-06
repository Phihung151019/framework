.class public Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;
.super Lcom/android/internal/telephony/data/PhoneSwitcher;
.source "PhoneSwitcherForSingleSim.java"


# direct methods
.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1

    .line 136
    const-string v0, "PhoneSwitcherForSingleSim"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected blacklist abortIfDdsIsChanging(Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist ddsChangeFailedOperation(Landroid/os/AsyncResult;)V
    .locals 4

    .line 39
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDdsSwitchResponse: DDS switch failed. with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    .line 41
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    .line 42
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 43
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 44
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v1, :cond_0

    .line 46
    const-string p1, "onDdsSwitchResponse: Wait for call end indication"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v1, :cond_1

    .line 51
    const-string p1, "onDdsSwitchResponse: Wait for SIM to get READY"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_1
    const-string p1, "onDdsSwitchResponse: Scheduling DDS switch retry"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    const/16 p1, 0x71

    .line 56
    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected blacklist ddsChangeSuccessOperation(I)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchResponse: DDS switch success on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLastSwitchPreferredDataReason:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->displayAutoDataSwitchNotification(IZ)V

    return-void
.end method

.method protected blacklist evaluateDiffDetectedWithRequestOverride(Z)Z
    .locals 0

    .line 0
    return p1
.end method

.method protected blacklist getLastSentPhoneIdForDataCross()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method protected blacklist handlePreferredDataPhoneIdUpdate()V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mImsRegTechProvider:Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegTechProvider;->get(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->shouldSwitchDataDueToInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS call on cross-SIM, skip switching data to phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return-void

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    return-void
.end method

.method protected blacklist handleRilCommands(Landroid/os/Message;I)V
    .locals 2

    .line 91
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p2, v0, :cond_2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilCommands: setPreferredDataModem - phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcherForSingleSim;->log(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    return-void

    .line 93
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-le v0, v1, :cond_2

    .line 94
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    :cond_2
    return-void
.end method

.method protected blacklist isNotUpdatePhoneIdForSpecificOperators()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist setCommandReason(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist setCommandReasonAndAutoDataSubId()V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist setFallbackSubIdWithRequestSubId(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method protected blacklist setIsDataEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist setMobileDataSetting()V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist setPreferredDataReasonEmergency()V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist setPreferredDataReasonNoCard()V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist updatePreferredDataPhoneIdWithinDataEnable(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
