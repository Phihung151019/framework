.class public Lcom/android/internal/telephony/RadioMessagingProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioMessagingProxy.java"


# instance fields
.field private volatile blacklist mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/messaging/IRadioMessaging;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    return-void

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsAck;-><init>()V

    .line 116
    iput-boolean p2, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->errorClass:Z

    .line 117
    iput p3, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->smsCauseCode:I

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsAck;)V

    return-void

    .line 120
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    xor-int/lit8 p2, p2, 0x1

    .line 122
    iput p2, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 123
    iput p3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 124
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/messaging/IRadioMessaging;->acknowledgeLastIncomingGsmSms(IZI)V

    return-void

    .line 141
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->acknowledgeLastIncomingGsmSms(IZI)V

    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    return-void
.end method

.method public blacklist deleteSmsOnRuim(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->deleteSmsOnRuim(II)V

    return-void

    .line 157
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->deleteSmsOnRuim(II)V

    return-void
.end method

.method public blacklist deleteSmsOnSim(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->deleteSmsOnSim(II)V

    return-void

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->deleteSmsOnSim(II)V

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/messaging/IRadioMessaging;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    return-object p0
.end method

.method public blacklist getCdmaBroadcastConfig(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getGsmBroadcastConfig(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1}, Landroid/hardware/radio/messaging/IRadioMessaging;->getGsmBroadcastConfig(I)V

    return-void

    .line 201
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getGsmBroadcastConfig(I)V

    return-void
.end method

.method public blacklist getSmscAddress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1}, Landroid/hardware/radio/messaging/IRadioMessaging;->getSmscAddress(I)V

    return-void

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getSmscAddress(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist reportSmsMemoryStatus(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->reportSmsMemoryStatus(IZ)V

    return-void

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->reportSmsMemoryStatus(IZ)V

    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0}, Landroid/hardware/radio/messaging/IRadioMessaging;->responseAcknowledgement()V

    return-void

    .line 244
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist sendCdmaSms(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 261
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    .line 260
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->sendCdmaSms_1_6(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void

    .line 263
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMore(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    .line 278
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p2

    .line 277
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 281
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    .line 280
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->sendCdmaSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 284
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    .line 283
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadio;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void

    .line 286
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    return-void
.end method

.method public blacklist sendImsSms(ILjava/lang/String;Ljava/lang/String;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 306
    new-instance v0, Landroid/hardware/radio/messaging/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/ImsSmsMessage;-><init>()V

    .line 308
    iput v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    int-to-byte p5, p5

    if-lt p5, v1, :cond_1

    move p5, v1

    goto :goto_0

    :cond_1
    move p5, v2

    .line 309
    :goto_0
    iput-boolean p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->retry:Z

    .line 310
    iput p6, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->messageRef:I

    if-eqz p3, :cond_2

    .line 312
    new-array p5, v1, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 313
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    aput-object p2, p5, v2

    iput-object p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 314
    new-array p2, v2, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    iput-object p2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    :cond_2
    if-eqz p4, :cond_3

    .line 317
    new-array p2, v2, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    iput-object p2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 318
    new-array p2, v1, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 319
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p3

    aput-object p3, p2, v2

    iput-object p2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 321
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendImsSms(ILandroid/hardware/radio/messaging/ImsSmsMessage;)V

    return-void

    .line 323
    :cond_4
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 325
    iput v2, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte p5, p5

    if-lt p5, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 326
    :goto_1
    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 327
    iput p6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    if-eqz p3, :cond_6

    .line 329
    iget-object p5, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p4, :cond_7

    .line 332
    iget-object p2, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    return-void
.end method

.method public blacklist sendSms(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 352
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    .line 351
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->sendSms_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void

    .line 354
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void
.end method

.method public blacklist sendSmsExpectMore(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    .line 370
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    .line 369
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendSmsExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 373
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    .line 372
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->sendSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void

    .line 375
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/messaging/IRadioMessaging;)Lcom/android/internal/telephony/HalVersion;
    .locals 4

    .line 45
    const-string v0, "RadioMessagingProxy"

    .line 47
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setCdmaBroadcastActivation(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig(I[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setGsmBroadcastActivation(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->setGsmBroadcastActivation(IZ)V

    return-void

    .line 452
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setGsmBroadcastActivation(IZ)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfig(I[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 466
    array-length v0, p2

    new-array v0, v0, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    .line 470
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 471
    new-instance v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    invoke-direct {v2}, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 472
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 473
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->toServiceId:I

    .line 474
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 475
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    .line 476
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->selected:Z

    .line 477
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->setGsmBroadcastConfig(I[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    return-void

    .line 481
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 485
    new-instance v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 486
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 487
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    .line 488
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 489
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    .line 490
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    .line 491
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 493
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setSmscAddress(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->setSmscAddress(ILjava/lang/String;)V

    return-void

    .line 508
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setSmscAddress(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist writeSmsToRuim(II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;-><init>()V

    .line 529
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSmsWriteArgsStatusAidl(I)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;->status:I

    .line 530
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;->message:Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 531
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->writeSmsToRuim(ILandroid/hardware/radio/messaging/CdmaSmsWriteArgs;)V

    return-void

    .line 533
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 535
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSmsWriteArgsStatus(I)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->status:I

    .line 536
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->message:Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 537
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    return-void
.end method

.method public blacklist writeSmsToSim(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    new-instance v0, Landroid/hardware/radio/messaging/SmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/SmsWriteArgs;-><init>()V

    .line 559
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSmsWriteArgsStatusAidl(I)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/messaging/SmsWriteArgs;->status:I

    .line 560
    iput-object p3, v0, Landroid/hardware/radio/messaging/SmsWriteArgs;->smsc:Ljava/lang/String;

    .line 561
    iput-object p4, v0, Landroid/hardware/radio/messaging/SmsWriteArgs;->pdu:Ljava/lang/String;

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->writeSmsToSim(ILandroid/hardware/radio/messaging/SmsWriteArgs;)V

    return-void

    .line 564
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 566
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSmsWriteArgsStatus(I)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->status:I

    .line 567
    iput-object p3, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->smsc:Ljava/lang/String;

    .line 568
    iput-object p4, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->pdu:Ljava/lang/String;

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    return-void
.end method
