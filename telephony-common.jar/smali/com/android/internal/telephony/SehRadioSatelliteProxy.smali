.class public Lcom/android/internal/telephony/SehRadioSatelliteProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioSatelliteProxy.java"


# instance fields
.field private volatile blacklist mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    return-void
.end method


# virtual methods
.method public blacklist answer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->answer(I)V

    return-void
.end method

.method public blacklist cleanupNetworkInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->cleanupNetworkInfo(I)V

    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 76
    sget-object v0, Lcom/android/internal/telephony/SatelliteRIL;->SEH_SATELLITE_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    return-void
.end method

.method public blacklist dial(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->dial(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist disableIotMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->disableIotMode(I)V

    return-void
.end method

.method public blacklist enableIotMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->enableIotMode(I)V

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    return-object p0
.end method

.method public blacklist getArfcn(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getAbsoluteRfChannelNumber(I)V

    return-void
.end method

.method public blacklist getCallEndReason(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getCallEndReason(I)V

    return-void
.end method

.method public blacklist getCallState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getCallState(I)V

    return-void
.end method

.method public blacklist getHalversion()Lcom/android/internal/telephony/HalVersion;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getIotMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getIotMode(I)V

    return-void
.end method

.method public blacklist getIotRegistrationState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getIotRegistrationState(I)V

    return-void
.end method

.method public blacklist getRegistrationState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getRegistrationState(I)V

    return-void
.end method

.method public blacklist getSatelliteId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getSatelliteId(I)V

    return-void
.end method

.method public blacklist getSerialNumber(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getSerialNumber(I)V

    return-void
.end method

.method public blacklist getSignalStrength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getSignalStrength(I)V

    return-void
.end method

.method public blacklist getTxPower(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->getTxPower(I)V

    return-void
.end method

.method public blacklist hangup(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->hangup(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist sendIccSimAuthentication(ILandroid/telephony/satellite/SemSatSimAuthResultData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-virtual {p2}, Landroid/telephony/satellite/SemSatSimAuthResultData;->toSimAuthRespDataAidl()Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->sendIccSimAuthentication(ILvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist sendLocationData(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->sendLocationData(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendLocationUserPermit(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->sendLocationUserPermit(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendRawAtCommand(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->sendRawAtCommand(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendSMSExpectMore(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;-><init>()V

    .line 204
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;->smsc:Ljava/lang/String;

    .line 205
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;->pdu:Ljava/lang/String;

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->sendSMSExpectMore(ILvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;)V

    return-void
.end method

.method public blacklist sendSms(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;-><init>()V

    .line 213
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;->smsc:Ljava/lang/String;

    .line 214
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;->pdu:Ljava/lang/String;

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->sendSms(ILvendor/samsung/hardware/radio/satellite/SehSatSmsMessage;)V

    return-void
.end method

.method public blacklist setAidl(Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;)Lcom/android/internal/telephony/HalVersion;
    .locals 3

    .line 52
    sget-object v0, Lcom/android/internal/telephony/SatelliteRIL;->SEH_SATELLITE_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAidl: setting HAL version to version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SehRadioSatelliteProxy"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AIDL initialized mHalVersion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setCombinedConfigMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setCombinedConfigMode(II)V

    return-void
.end method

.method public blacklist setDsiConfig(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setDsiConfig(III)V

    return-void
.end method

.method public blacklist setGpsInfo(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setGpsInfo(III)V

    return-void
.end method

.method public blacklist setImei(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setImei(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setImsi(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setImsi(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setNetworkQueryMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setNetworkQueryMode(II)V

    return-void
.end method

.method public blacklist setPower(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setPower(II)V

    return-void
.end method

.method public blacklist setSignalStrengthReport(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setSignalStrengthReport(IZ)V

    return-void
.end method

.method public blacklist setSignalThresholdReport(IILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 152
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2, v0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setSignalThresholdReport(II[I)V

    return-void
.end method

.method public blacklist setSmscAddress(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->setSmscAddress(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->startDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist startNetworkSearch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->startNetworkSearch(I)V

    return-void
.end method

.method public blacklist stopDtmf(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteProxy;->mSehRadioSatelliteProxy:Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatellite;->stopDtmf(I)V

    return-void
.end method
