.class public Lcom/android/internal/telephony/SehRadioMessagingProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioMessagingProxy.java"


# instance fields
.field private volatile blacklist mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-void
.end method

.method private static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 34
    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 74
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 76
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-object p0
.end method

.method public blacklist getCellBroadcastConfig(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getCellBroadcastConfig(I)V

    return-void

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getCellBroadcastConfig(I)V

    return-void
.end method

.method public blacklist getImsRegistrationState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getImsRegistrationState(I)V

    return-void

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getImsRegistrationState(I)V

    return-void
.end method

.method public blacklist getStoredMsgCountFromSim(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getStoredMsgCountFromSim(I)V

    return-void

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getStoredMsgCountFromSim(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist readSmsFromSim(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->readSmsFromSim(II)V

    return-void

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->readSmsFromSim(II)V

    return-void
.end method

.method public blacklist sendCdmaSms(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2}, Lcom/android/internal/telephony/SemRIL;->convertToHalSehCdmaSmsMessageAidl([B)Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendCdmaSms(ILvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;)V

    return-void

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMore(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2}, Lcom/android/internal/telephony/SemRIL;->convertToHalSehCdmaSmsMessageAidl([B)Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendCdmaSmsExpectMore(ILvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;)V

    return-void

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void
.end method

.method public blacklist sendSMSExpectMore(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SemRIL;->convertToHalSehGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendSMSExpectMore(ILvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;)V

    return-void

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void
.end method

.method public blacklist sendSms(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SemRIL;->convertToHalSehGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->sendSms(ILvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;)V

    return-void

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;)Lcom/android/internal/telephony/HalVersion;
    .locals 4

    .line 46
    const-string v0, "SehRadioMessagingProxy"

    .line 49
    :try_start_0
    invoke-interface {p2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist writeSmsToSim(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;-><init>()V

    .line 164
    iput p2, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->index:I

    .line 165
    iput p3, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->status:I

    .line 166
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->smsc:Ljava/lang/String;

    .line 167
    invoke-static {p5}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->pdu:Ljava/lang/String;

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioMessagingProxy;->mSehMessagingProxy:Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->writeSmsToSim(ILvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V

    return-void

    .line 170
    :cond_1
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 171
    iput p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->index:I

    .line 172
    iput p3, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->status:I

    .line 173
    invoke-static {p4}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->smsc:Ljava/lang/String;

    .line 174
    invoke-static {p5}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->writeSmsToSim(ILvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    return-void
.end method
