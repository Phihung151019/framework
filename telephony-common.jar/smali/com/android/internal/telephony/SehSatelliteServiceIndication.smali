.class public Lcom/android/internal/telephony/SehSatelliteServiceIndication;
.super Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceIndication$Stub;
.source "SehSatelliteServiceIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteServiceRIL;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceIndication$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    return-void
.end method


# virtual methods
.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 56
    const-string p0, "1822ff8c0c8881d25bb0be28db23c4c01611eba9"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onNtnSignalStrengthChanged(II)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 89
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b64

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 90
    new-instance p1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    invoke-direct {p1}, Landroid/telephony/satellite/stub/NtnSignalStrength;-><init>()V

    .line 91
    iput p2, p1, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mNtnSignalStrengthChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 93
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist onSatelliteCapabilitiesChanged(ILvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    const/16 v0, 0x2b66

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 113
    new-instance p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    invoke-direct {p1}, Landroid/telephony/satellite/stub/SatelliteCapabilities;-><init>()V

    .line 114
    iget-object v0, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->supportedRadioTechnologies:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    array-length v0, v0

    .line 116
    new-array v2, v0, [I

    iput-object v2, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 118
    iget-object v3, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    iget-object v4, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->supportedRadioTechnologies:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->isPointingRequired:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    .line 123
    iget v0, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    iput v0, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    .line 125
    iget-object v0, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    if-eqz v0, :cond_3

    .line 126
    array-length v2, v0

    new-array v2, v2, [I

    .line 127
    array-length v0, v0

    new-array v0, v0, [Landroid/telephony/satellite/AntennaPosition;

    .line 128
    :goto_2
    iget-object v3, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 129
    aget-object v3, v3, v1

    iget v3, v3, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;->key:I

    aput v3, v2, v1

    .line 130
    new-instance v3, Landroid/telephony/satellite/AntennaPosition;

    new-instance v4, Landroid/telephony/satellite/AntennaDirection;

    iget-object v5, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    aget-object v5, v5, v1

    iget-object v5, v5, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;->antennaDirection:Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;

    iget v6, v5, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;->x:F

    iget v7, v5, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;->y:F

    iget v5, v5, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;->z:F

    invoke-direct {v4, v6, v7, v5}, Landroid/telephony/satellite/AntennaDirection;-><init>(FFF)V

    iget-object v5, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    aget-object v5, v5, v1

    iget v5, v5, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;->suggestedHoldPosition:I

    invoke-direct {v3, v4, v5}, Landroid/telephony/satellite/AntennaPosition;-><init>(Landroid/telephony/satellite/AntennaDirection;I)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    :cond_2
    iput-object v2, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    .line 137
    iput-object v0, p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    .line 140
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteCapabilitiesChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_4

    .line 141
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_4
    return-void
.end method

.method public blacklist onSatelliteDatagramReceived(I[B)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 62
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b62

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 64
    new-instance p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    invoke-direct {p1}, Landroid/telephony/satellite/stub/SatelliteDatagram;-><init>()V

    .line 65
    iput-object p2, p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteDatagramReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 68
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist onSatelliteEcefPositionReceived(I[I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 100
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    const/16 v0, 0x2b65

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 101
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteEcefPositionReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 104
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(II)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 75
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b63

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mModemState:I

    if-eq v0, p2, :cond_0

    .line 78
    iput p2, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mModemState:I

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSatelliteRegistrationFailure(II)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b68

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteRegistrationFailureRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 161
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist onSatelliteSupportedStateChanged(II)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 148
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b67

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 150
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteSupportedStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 151
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(II)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processIndication(I)V

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b69

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceIndication;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mTerrestrialNetworkAvailableChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 171
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
