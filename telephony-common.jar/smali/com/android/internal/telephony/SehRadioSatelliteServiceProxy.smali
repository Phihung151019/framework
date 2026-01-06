.class public Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioSatelliteServiceProxy.java"


# instance fields
.field private volatile blacklist mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->abortSendingSatelliteDatagrams(I)V

    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 68
    sget-object v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SEH_SATELLITE_SERVICE_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    return-void
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(II)V

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    return-object p0
.end method

.method public blacklist getHalversion()Lcom/android/internal/telephony/HalVersion;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist isEmpty()Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist requestIsSatelliteEnabled(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->requestIsSatelliteEnabled(I)V

    return-void
.end method

.method public blacklist requestIsSatelliteSupported(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->requestIsSatelliteSupported(I)V

    return-void
.end method

.method public blacklist requestNtnSignalStrength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->requestNtnSignalStrength(I)V

    return-void
.end method

.method public blacklist requestSatelliteCapabilities(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->requestSatelliteCapabilities(I)V

    return-void
.end method

.method public blacklist requestSatelliteEnabled(IZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface/range {p0 .. p6}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->requestSatelliteEnabled(IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist requestSatelliteModemState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->requestNtnSignalStrength(I)V

    return-void
.end method

.method public blacklist sendSatelliteDatagram(I[BZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->sendSatelliteDatagram(I[BI)V

    return-void
.end method

.method public blacklist setAidl(Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;)Lcom/android/internal/telephony/HalVersion;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/internal/telephony/SatelliteServiceRIL;->SEH_SATELLITE_SERVICE_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AIDL initialized mHalVersion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SehRadioSatelliteServiceProxy"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist startSendingSatellitePointingInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->startSendingSatellitePointingInfo(I)V

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSatelliteServiceProxy;->mSehRadioSatelliteServiceProxy:Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteService;->stopSendingSatellitePointingInfo(I)V

    return-void
.end method
