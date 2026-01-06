.class public Lcom/android/internal/telephony/SehSatelliteServiceResponse;
.super Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceResponse$Stub;
.source "SehSatelliteServiceResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteServiceRIL;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceResponse$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    return-void
.end method

.method private blacklist responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/samsung/hardware/radio/SehRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 181
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 182
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 184
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 189
    throw p2

    :cond_2
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 65
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 66
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 199
    :try_start_0
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 203
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 204
    throw v2

    :cond_1
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagramsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOnResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 60
    const-string p0, "1822ff8c0c8881d25bb0be28db23c4c01611eba9"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist requestIsSatelliteEnabledResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 76
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist requestIsSatelliteSupportedResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 80
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist requestNtnSignalStrengthResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    invoke-direct {v1}, Landroid/telephony/satellite/stub/NtnSignalStrength;-><init>()V

    .line 143
    iput p2, v1, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    .line 145
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 149
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 150
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist requestSatelliteCapabilitiesResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;)V
    .locals 10

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 86
    new-instance v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    invoke-direct {v1}, Landroid/telephony/satellite/stub/SatelliteCapabilities;-><init>()V

    .line 88
    :try_start_0
    iget-object v2, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->supportedRadioTechnologies:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 89
    array-length v2, v2

    .line 90
    new-array v4, v2, [I

    iput-object v4, v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 92
    iget-object v5, v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    iget-object v6, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->supportedRadioTechnologies:[I

    aget v6, v6, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 96
    :cond_0
    iget v2, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->isPointingRequired:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    .line 97
    iget v2, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    iput v2, v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    .line 99
    iget-object v2, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    if-eqz v2, :cond_3

    .line 100
    array-length v4, v2

    new-array v4, v4, [I

    .line 101
    array-length v2, v2

    new-array v2, v2, [Landroid/telephony/satellite/AntennaPosition;

    .line 102
    :goto_2
    iget-object v5, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 103
    aget-object v5, v5, v3

    iget v5, v5, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;->key:I

    aput v5, v4, v3

    .line 104
    new-instance v5, Landroid/telephony/satellite/AntennaPosition;

    new-instance v6, Landroid/telephony/satellite/AntennaDirection;

    iget-object v7, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    aget-object v7, v7, v3

    iget-object v7, v7, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;->antennaDirection:Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;

    iget v8, v7, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;->x:F

    iget v9, v7, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;->y:F

    iget v7, v7, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaDirection;->z:F

    invoke-direct {v6, v8, v9, v7}, Landroid/telephony/satellite/AntennaDirection;-><init>(FFF)V

    iget-object v7, p2, Lvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;->antennaPositionMap:[Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;

    aget-object v7, v7, v3

    iget v7, v7, Lvendor/samsung/hardware/radio/satelliteservice/SehAntennaPosition;->suggestedHoldPosition:I

    invoke-direct {v5, v6, v7}, Landroid/telephony/satellite/AntennaPosition;-><init>(Landroid/telephony/satellite/AntennaDirection;I)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 110
    :cond_2
    iput-object v4, v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    .line 111
    iput-object v2, v1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    .line 113
    :cond_3
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_4

    .line 114
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 118
    throw p2

    :cond_5
    return-void
.end method

.method public blacklist requestSatelliteEnabledResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist requestSatelliteModemStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 2

    .line 127
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->mRil:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mModemState:I

    if-eq v0, p2, :cond_0

    .line 130
    iput p2, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mModemState:I

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 132
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

    .line 135
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

.method public blacklist sendSatelliteDatagramResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist startSendingSatellitePointingInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist updateSystemSelectionChannelsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteServiceResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method
