.class public Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;
.super Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.source "ImsServiceInterfaceAdapter.java"


# instance fields
.field private blacklist SERVICE_ID:I


# direct methods
.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    const/4 p1, 0x1

    .line 53
    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    return-void
.end method

.method private blacklist getInterface()Lcom/android/ims/internal/IImsService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 184
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Binder not Available"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getRegistrationNetworkType(I)I
    .locals 0

    .line 0
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0

    :cond_1
    const/16 p0, 0x12

    return p0

    :cond_2
    const/16 p0, 0xd

    return p0
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->acknowledgeSms(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->acknowledgeSmsReport(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->acknowledgeSmsWithPdu(III[B)V

    return-void
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/ims/internal/IImsService;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->changeAudioPath(II)V

    return-void
.end method

.method public blacklist createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/ims/internal/IImsService;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist endSession(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->close(I)V

    return-void
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFeatureState()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsService;->getE911CallCount(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsService;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getRegistrationNetworkType(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getSmsFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isConnected(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z

    move-result p0

    return p0
.end method

.method public blacklist isOpened()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z

    move-result p0

    return p0
.end method

.method public blacklist notifyEpsFallbackResult(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->notifyEpsFallbackResult(II)V

    return-void
.end method

.method public blacklist onMemoryAvailable(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->onMemoryAvailable(II)V

    return-void
.end method

.method public blacklist onSmsReady(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->onSmsReady(I)V

    return-void
.end method

.method public blacklist queryCapabilityConfiguration(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->queryCapabilityConfiguration(III)Z

    move-result p0

    return p0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist sendDtmfEvent(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->sendDtmfEvent(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendMmsProcType(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->sendMmsProcType(IZ)V

    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface/range {p0 .. p7}, Lcom/android/ims/internal/IImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method public blacklist setRetryCount(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->setRetryCount(III)V

    return-void
.end method

.method public blacklist setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V

    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method public blacklist setSmsc(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setSmsc(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setTtyMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setTtyMode(II)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public blacklist startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    return p1
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsService;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public blacklist triggerAutoConfigurationForApp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->triggerAutoConfigurationForApp(I)V

    return-void
.end method

.method public blacklist turnOffIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V

    return-void
.end method

.method public blacklist turnOnIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V

    return-void
.end method
