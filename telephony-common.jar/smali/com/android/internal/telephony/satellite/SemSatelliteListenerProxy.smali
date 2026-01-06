.class public Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;
.super Landroid/telephony/satellite/stub/ISatelliteListener$Stub;
.source "SemSatelliteListenerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLatestSendDatagram:Landroid/telephony/satellite/stub/SatelliteDatagram;

.field private blacklist mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

.field private blacklist mPrimaryPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSimulateEmergencySos:Z

.field private blacklist mSimulateSatelliteModemState:I

.field private blacklist mTestIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestSendDatagram(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)Landroid/telephony/satellite/stub/SatelliteDatagram;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mLatestSendDatagram:Landroid/telephony/satellite/stub/SatelliteDatagram;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mntnSignalStrengthChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->ntnSignalStrengthChangedTest(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msatelliteCapabilitiesChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->satelliteCapabilitiesChangedTest(Ljava/lang/String;ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msatelliteModemStateChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->satelliteModemStateChangedTest(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msatellitePositionChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->satellitePositionChangedTest(FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mterrestrialNetworkAvailableChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->terrestrialNetworkAvailableChangedTest(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/satellite/stub/ISatelliteListener;Landroid/content/Context;)V
    .locals 6

    .line 243
    invoke-direct {p0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateEmergencySos:Z

    .line 161
    iput v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateSatelliteModemState:I

    .line 162
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteDatagram;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteDatagram;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mLatestSendDatagram:Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;-><init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;-><init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mTestIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    .line 245
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mContext:Landroid/content/Context;

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mPrimaryPhone:Lcom/android/internal/telephony/Phone;

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    const-string p1, "com.samsung.intent.action.SATELLITE_DATAGRAM_RECEIVED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string p1, "com.samsung.intent.action.PENDING_DATAGRAMS_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string p1, "com.samsung.intent.action.SATELLITE_POSITION_CHANGED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string p1, "com.samsung.intent.action.SATELLITE_MODEM_STATE_CHANGED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string p1, "com.samsung.intent.action.NTN_SIGNAL_STRENGTH_CHANGED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string p1, "com.samsung.intent.action.SATELLITE_CAPABILITIES_CHANGED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string p1, "com.samsung.intent.action.SATELLITE_SUPPORTED_STATE_CHANGED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string p1, "com.samsung.intent.action.REGISTRATION_FAILURE_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string p1, "com.samsung.intent.action.TN_AVAILABLE_CHANGED_TEST"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mTestIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 602
    sget-object p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 606
    sget-object p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist ntnSignalStrengthChangedTest(I)V
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntnSignalStrengthChangedTest - level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    move p1, v0

    .line 532
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/satellite/stub/NtnSignalStrength;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/NtnSignalStrength;-><init>()V

    .line 533
    iput p1, v0, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    .line 536
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNtnSignalStrengthChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private varargs blacklist sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mPrimaryPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v2, 0x7

    move-object v4, p1

    move-object v6, p2

    .line 613
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLogFromSatellite(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 616
    :cond_1
    const-string p1, "sLogFrom - No primary phone"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private varargs blacklist sLogPositionChanged(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mPrimaryPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    const/16 v3, 0x8

    const/4 v5, 0x2

    const/16 v2, 0xa

    move-object v4, p1

    move-object v6, p2

    .line 624
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLogFromSatellite(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 627
    :cond_1
    const-string p1, "sLogPositionChanged - No primary phone"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist satelliteCapabilitiesChangedTest(Ljava/lang/String;ZI)V
    .locals 8

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "satelliteCapabilitiesChangedTest - radioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPointingRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    .line 547
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteCapabilities;-><init>()V

    .line 548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 549
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 550
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    .line 553
    array-length v1, p1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p1, v3

    .line 555
    :try_start_0
    iget-object v6, v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v7, v4, 0x1

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v6, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v4, v7

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_0
    iput-boolean p2, v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    .line 561
    iput p3, v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    const/4 p1, 0x1

    const/4 p2, 0x2

    .line 563
    filled-new-array {p1, p2}, [I

    move-result-object p3

    iput-object p3, v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    .line 564
    new-array p3, p2, [Landroid/telephony/satellite/AntennaPosition;

    new-instance v1, Landroid/telephony/satellite/AntennaPosition;

    new-instance v3, Landroid/telephony/satellite/AntennaDirection;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Landroid/telephony/satellite/AntennaDirection;-><init>(FFF)V

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroid/telephony/satellite/AntennaPosition;-><init>(Landroid/telephony/satellite/AntennaDirection;I)V

    aput-object v1, p3, v2

    new-instance v1, Landroid/telephony/satellite/AntennaPosition;

    new-instance v2, Landroid/telephony/satellite/AntennaDirection;

    const v3, 0x3db1d0c8    # 0.086824f

    const v4, 0x3f7c1c60

    const v5, -0x41e601bd

    invoke-direct {v2, v5, v3, v4}, Landroid/telephony/satellite/AntennaDirection;-><init>(FFF)V

    invoke-direct {v1, v2, p2}, Landroid/telephony/satellite/AntennaPosition;-><init>(Landroid/telephony/satellite/AntennaDirection;I)V

    aput-object v1, p3, p1

    iput-object p3, v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    .line 570
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSatelliteCapabilitiesChanged - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private blacklist satelliteModemStateChangedTest(I)V
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "satelliteModemStateChangedTest - state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->satelliteModemStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    .line 517
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onSatelliteModemStateChanged(I)V

    .line 519
    iput p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateSatelliteModemState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSatelliteModemStateChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist satelliteModemStateToString(I)Ljava/lang/String;
    .locals 2

    .line 588
    const-string p0, ")"

    packed-switch p1, :pswitch_data_0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 596
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IN_SERVICE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 595
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OUT_OF_SERVICE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 594
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNAVAILABLE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 593
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OFF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 592
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATAGRAM_RETRYING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATAGRAM_TRANSFERRING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 590
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LISTENING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 589
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDLE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist satellitePositionChangedTest(FF)V
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "satellitePositionChangedTest - azimuth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", elevation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    .line 501
    new-instance v0, Landroid/telephony/satellite/stub/PointingInfo;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/PointingInfo;-><init>()V

    .line 502
    iput p1, v0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteAzimuth:F

    .line 503
    iput p2, v0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteElevation:F

    .line 506
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSatellitePositionChanged - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist terrestrialNetworkAvailableChangedTest(Z)V
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terrestrialNetworkAvailableChangedTest - available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onTerrestrialNetworkAvailableChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTerrestrialNetworkAvailableChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromNtnSignalStrength(Landroid/telephony/satellite/stub/NtnSignalStrength;)Landroid/telephony/satellite/NtnSignalStrength;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onNtnSignalStrengthChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V

    return-void
.end method

.method public blacklist onPendingDatagrams()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onPendingDatagrams"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0}, Landroid/telephony/satellite/stub/ISatelliteListener;->onPendingDatagrams()V

    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "causeCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onRegistrationFailure"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onRegistrationFailure(I)V

    return-void
.end method

.method public blacklist onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromSatelliteCapabilities(Landroid/telephony/satellite/stub/SatelliteCapabilities;)Landroid/telephony/satellite/SatelliteCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 344
    const-string v1, "onSatelliteCapabilitiesChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V

    return-void
.end method

.method public blacklist onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datagram: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pendingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSatelliteDatagramReceived"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1, p2}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V

    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->satelliteModemStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSatelliteModemStateChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {v0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteModemStateChanged(I)V

    .line 318
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateEmergencySos:Z

    if-eqz v0, :cond_0

    .line 319
    iput p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateSatelliteModemState:I

    :cond_0
    return-void
.end method

.method public blacklist onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pointingInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromPointingInfo(Landroid/telephony/satellite/stub/PointingInfo;)Landroid/telephony/satellite/PointingInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSatellitePositionChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogPositionChanged(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V

    return-void
.end method

.method public blacklist onSatelliteSupportedStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSatelliteSupportedStateChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteSupportedStateChanged(Z)V

    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onTerrestrialNetworkAvailableChanged"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mListener:Landroid/telephony/satellite/stub/ISatelliteListener;

    invoke-interface {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener;->onTerrestrialNetworkAvailableChanged(Z)V

    return-void
.end method

.method protected blacklist setLatestSendDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 488
    iget-object v0, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    if-nez v0, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mLatestSendDatagram:Landroid/telephony/satellite/stub/SatelliteDatagram;

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, v1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    const/4 v0, 0x0

    .line 492
    :goto_0
    iget-object v1, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mLatestSendDatagram:Landroid/telephony/satellite/stub/SatelliteDatagram;

    iget-object v2, v2, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    aget-byte v1, v1, v0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected blacklist simulateEmergencySosEnd()V
    .locals 5

    .line 455
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateEmergencySos:Z

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    const-string v0, "simulateEmergencySosEnd"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateSatelliteModemState:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateEmergencySos:Z

    return-void
.end method

.method protected blacklist simulateEmergencySosStart()V
    .locals 7

    .line 431
    const-string v0, "simulateEmergencySosStart"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateEmergencySos:Z

    .line 435
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/Float;

    const v3, 0x4357c7a3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    new-instance v3, Ljava/lang/Float;

    const v4, 0x42012272    # 32.283638f

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const/16 v6, 0x4b0

    invoke-virtual {v1, v5, v6, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    const-string v0, "ril.test.simulate.modem.in.service.time"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v5, 0x7

    invoke-virtual {p0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {p0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected blacklist simulateTerrestrialNetworkScan(Z)V
    .locals 3

    .line 475
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mSimulateEmergencySos:Z

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simulateTerrestrialNetworkScan - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->logd(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eqz p1, :cond_1

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 482
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
