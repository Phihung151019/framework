.class public Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.super Ljava/lang/Object;
.source "MmTelInterfaceAdapter.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "MmTelInterfaceAdapter"


# instance fields
.field protected blacklist mBinder:Landroid/os/IBinder;

.field protected blacklist mSlotId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    return-void
.end method

.method private blacklist getInterface()Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 133
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Binder not Available"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsMMTelFeature;->acknowledgeSms(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsMMTelFeature;->acknowledgeSmsReport(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const-string v0, "MmTelInterfaceAdapter"

    const-string v1, "acknowledgeSmsWithPdu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsMMTelFeature;->acknowledgeSmsWithPdu(III[B)V

    return-void
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->changeAudioPath(II)V

    return-void
.end method

.method public blacklist createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

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

    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->endSession(I)V

    return-void
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

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

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getFeatureStatus()I

    move-result p0

    return p0
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

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

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->getSmsFormat(I)Ljava/lang/String;

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

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

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

    .line 219
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isConnected(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->isConnected(II)Z

    move-result p0

    return p0
.end method

.method public blacklist isOpened()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->isOpened()Z

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

    .line 0
    return-void
.end method

.method public blacklist onMemoryAvailable(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const-string v0, "MmTelInterfaceAdapter"

    const-string v1, "onMemoryAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->onMemoryAvailable(II)V

    return-void
.end method

.method public blacklist onSmsReady(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmsReady["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->onSmsReady(I)V

    return-void
.end method

.method public blacklist queryCapabilityConfiguration(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist sendDtmfEvent(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->sendDtmfEvent(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendMmsProcType(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface/range {p0 .. p7}, Lcom/android/ims/internal/IImsMMTelFeature;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method public blacklist setRetryCount(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRetryCount["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->setRetryCount(III)V

    return-void
.end method

.method public blacklist setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmsListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method public blacklist setSmsc(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string v0, "MmTelInterfaceAdapter"

    const-string v1, "setSmsc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setSmsc(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setTtyMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public blacklist startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p0

    return p0
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->stopLocalRingBackTone()I

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

    .line 0
    return-void
.end method

.method public blacklist turnOffIms()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOffIms()V

    return-void
.end method

.method public blacklist turnOnIms()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOnIms()V

    return-void
.end method
