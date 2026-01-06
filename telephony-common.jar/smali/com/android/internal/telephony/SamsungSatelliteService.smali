.class public Lcom/android/internal/telephony/SamsungSatelliteService;
.super Landroid/telephony/satellite/stub/SatelliteImplBase;
.source "SamsungSatelliteService.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

.field private blacklist mRil:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;


# direct methods
.method public constructor blacklist <init>()V
    .locals 6

    .line 94
    new-instance v0, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/telephony/satellite/stub/SatelliteImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mRil:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    .line 95
    const-string v0, "SamsungSatelliteService - construct"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 98
    new-array v1, v0, [Lcom/android/internal/telephony/SatelliteServiceRIL;

    iput-object v1, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mRil:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mRil:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    new-instance v3, Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/SatelliteServiceRIL;-><init>(Ljava/lang/Integer;Landroid/content/Context;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;-><init>(Lcom/android/internal/telephony/SamsungSatelliteService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 248
    const-string v0, "SamsungSatelliteService"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 232
    const-string v0, "abortSendingSatelliteDatagrams"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 127
    const-string v0, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method blacklist getCommandsInterface()[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mRil:[Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;

    return-object p0
.end method

.method blacklist getContext()Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 77
    const-string v0, "android.telephony.satellite.SatelliteService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    const-string p1, "onBind"

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/telephony/satellite/stub/SatelliteImplBase;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/telephony/satellite/stub/SatelliteImplBase;->onDestroy()V

    .line 87
    const-string p0, "onDestroy"

    invoke-static {p0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 172
    const-string v0, "pollPendingSatelliteDatagrams"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 1

    .line 141
    const-string v0, "requestIsSatelliteEnabled"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 1

    .line 148
    const-string v0, "requestIsSatelliteSupported"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .locals 1

    .line 155
    const-string v0, "requestSatelliteCapabilities"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V

    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 134
    const-string v0, "requestSatelliteEnabled"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 186
    const-string v0, "requestSatelliteModemState"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    .locals 1

    .line 214
    const-string v0, "requestSignalStrength"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->requestNtnSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V

    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 179
    const-string v0, "sendSatelliteDatagram"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteListener - listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 0
    return-void
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 220
    const-string v0, "startSendingNtnSignalStrength"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 161
    const-string v0, "startSendingSatellitePointingInfo"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 226
    const-string v0, "stopSendingNtnSignalStrength"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .locals 1

    .line 167
    const-string v0, "stopSendingSatellitePointingInfo"

    invoke-static {v0}, Lcom/android/internal/telephony/SamsungSatelliteService;->logd(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/SamsungSatelliteService;->mHandler:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    return-void
.end method

.method public blacklist updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/stub/SystemSelectionSpecifier;",
            ">;",
            "Landroid/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method
