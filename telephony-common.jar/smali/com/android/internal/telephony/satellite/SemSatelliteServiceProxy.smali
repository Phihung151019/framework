.class public Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;
.super Ljava/lang/Object;
.source "SemSatelliteServiceProxy.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemSatelliteServiceProxy"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPrimaryPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;


# direct methods
.method public static synthetic blacklist $r8$lambda$QxYydMJEAtMsAiWI_6W5boUVri8(Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;ILandroid/telephony/IIntegerConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->lambda$sendSatelliteDatagram$0(ILandroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mPrimaryPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    return-void
.end method

.method private blacklist isSimulateEmergencySos()Z
    .locals 1

    .line 327
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "ril.test.simulate.emergency.sos"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private synthetic blacklist lambda$sendSatelliteDatagram$0(ILandroid/telephony/IIntegerConsumer;)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSatelliteDatagram - Override result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->logd(Ljava/lang/String;)V

    .line 216
    :try_start_0
    invoke-interface {p2, p1}, Landroid/telephony/IIntegerConsumer;->accept(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 335
    sget-object p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs blacklist sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 340
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mPrimaryPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x7

    move-object v3, p1

    move-object v5, p2

    .line 342
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLogFromSatellite(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method blacklist abortSendingSatelliteDatagrams(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 301
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "abortSendingSatelliteDatagrams"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(Landroid/telephony/satellite/stub/ISatellite;ZLandroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->isSimulateEmergencySos()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->simulateTerrestrialNetworkScan(Z)V

    :cond_0
    return-void
.end method

.method blacklist pollPendingSatelliteDatagrams(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "pollPendingSatelliteDatagrams"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist requestIsSatelliteEnabled(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestIsSatelliteEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    return-void
.end method

.method blacklist requestIsSatelliteEnabledForCarrier(Landroid/telephony/satellite/stub/ISatellite;ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "requestIsSatelliteEnabledForCarrier"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-interface {p1, p2, p3, p4}, Landroid/telephony/satellite/stub/ISatellite;->requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    return-void
.end method

.method blacklist requestIsSatelliteSupported(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestIsSatelliteSupported"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    return-void
.end method

.method blacklist requestSatelliteCapabilities(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 163
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestSatelliteCapabilities"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V

    return-void
.end method

.method blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p2, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDemoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmergencyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p2, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "requestSatelliteEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->isSimulateEmergencySos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-boolean v0, p2, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->simulateEmergencySosStart()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->simulateEmergencySosEnd()V

    .line 129
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const-string v0, "ril.test.satellite.enable.result"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestSatelliteEnabled - Override result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->logd(Ljava/lang/String;)V

    .line 133
    invoke-interface {p3, v0}, Landroid/telephony/IIntegerConsumer;->accept(I)V

    return-void

    .line 138
    :cond_2
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist requestSatelliteListeningEnabled(Landroid/telephony/satellite/stub/ISatellite;ZILandroid/telephony/IIntegerConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "requestSatelliteListeningEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-interface {p1, p2, p3, p4}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist requestSatelliteModemState(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestSatelliteModemState"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist requestSignalStrength(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestSignalStrength"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V

    return-void
.end method

.method blacklist requestTimeForNextSatelliteVisibility(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 240
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestTimeForNextSatelliteVisibility"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datagram: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    .line 197
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 196
    const-string v1, "sendSatelliteDatagram"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "ril.test.satellite.senddatagram.result"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->isSimulateEmergencySos()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ltz v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->isSimulateEmergencySos()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->setLatestSendDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;)V

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0, p4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;ILandroid/telephony/IIntegerConsumer;)V

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 224
    :cond_2
    invoke-interface {p1, p2, p3, p4}, Landroid/telephony/satellite/stub/ISatellite;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist setSatelliteEnabledForCarrier(Landroid/telephony/satellite/stub/ISatellite;IZLandroid/telephony/IIntegerConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "satelliteEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setSatelliteEnabledForCarrier"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-interface {p1, p2, p3, p4}, Landroid/telephony/satellite/stub/ISatellite;->setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist setSatellitePlmn(Landroid/telephony/satellite/stub/ISatellite;ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/stub/ISatellite;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrierPlmnList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allSatellitePlmnList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setSatellitePlmn"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/telephony/satellite/stub/ISatellite;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist startSendingNtnSignalStrength(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 285
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startSendingNtnSignalStrength"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist startSendingSatellitePointingInfo(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startSendingSatellitePointingInfo"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist stopSendingNtnSignalStrength(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopSendingNtnSignalStrength"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist stopSendingSatellitePointingInfo(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopSendingSatellitePointingInfo"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist updateSatelliteSubscription(Landroid/telephony/satellite/stub/ISatellite;Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "updateSatelliteSubscription"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-interface {p1, p2, p3}, Landroid/telephony/satellite/stub/ISatellite;->updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method
