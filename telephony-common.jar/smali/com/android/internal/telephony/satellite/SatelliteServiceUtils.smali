.class public Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;
.super Ljava/lang/Object;
.source "SatelliteServiceUtils.java"


# direct methods
.method public static synthetic blacklist $r8$lambda$dLQDCKedVySUu-LiiN3eXocM7Is(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->convertSystemSelectionSpecifierToHALFormat(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vzlTz5V5RB_3_vyBfEikAXaULQk(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 391
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOnlyNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist carrierRoamingNtnConnectTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    const-string p0, "MANUAL"

    return-object p0

    .line 88
    :cond_1
    const-string p0, "AUTOMATIC"

    return-object p0
.end method

.method private static blacklist convertCommandExceptionErrorToSatelliteError(Lcom/android/internal/telephony/CommandException$Error;)I
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertCommandExceptionErrorToSatelliteError: commandExceptionError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/16 p0, 0xb

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist convertSystemSelectionSpecifierToHALFormat(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
    .locals 9

    .line 615
    new-instance v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;-><init>()V

    .line 618
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getBands()[I

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mBands:[I

    .line 620
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getEarfcns()[I

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mEarfcs:[I

    .line 621
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getSatelliteInfos()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/telephony/satellite/SatelliteInfo;

    .line 622
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/satellite/SatelliteInfo;

    .line 623
    array-length v3, v1

    new-array v3, v3, [Landroid/telephony/satellite/stub/SatelliteInfo;

    move v4, v2

    .line 625
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 626
    new-instance v5, Landroid/telephony/satellite/stub/SatelliteInfo;

    invoke-direct {v5}, Landroid/telephony/satellite/stub/SatelliteInfo;-><init>()V

    aput-object v5, v3, v4

    .line 628
    new-instance v6, Landroid/telephony/satellite/stub/UUID;

    invoke-direct {v6}, Landroid/telephony/satellite/stub/UUID;-><init>()V

    iput-object v6, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    .line 629
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    aget-object v6, v1, v4

    .line 630
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatelliteId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/UUID;->mostSigBits:J

    .line 631
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    aget-object v6, v1, v4

    .line 632
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatelliteId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/UUID;->leastSigBits:J

    .line 634
    aget-object v5, v3, v4

    new-instance v6, Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-direct {v6}, Landroid/telephony/satellite/stub/SatellitePosition;-><init>()V

    iput-object v6, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    .line 636
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    aget-object v6, v1, v4

    .line 637
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatellitePosition()Landroid/telephony/satellite/SatellitePosition;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/satellite/SatellitePosition;->getLongitudeDegrees()D

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/SatellitePosition;->longitudeDegree:D

    .line 638
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    aget-object v6, v1, v4

    .line 639
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatellitePosition()Landroid/telephony/satellite/SatellitePosition;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/satellite/SatellitePosition;->getAltitudeKm()D

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/SatellitePosition;->altitudeKm:D

    .line 641
    aget-object v5, v3, v4

    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getBands()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    .line 642
    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    iput-object v6, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->bands:[I

    .line 644
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/telephony/satellite/SatelliteInfo;->getEarfcnRanges()Ljava/util/List;

    move-result-object v5

    .line 645
    aget-object v6, v3, v4

    .line 646
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/telephony/satellite/stub/EarfcnRange;

    iput-object v7, v6, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    move v6, v2

    .line 647
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 648
    aget-object v7, v3, v4

    iget-object v7, v7, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    new-instance v8, Landroid/telephony/satellite/stub/EarfcnRange;

    invoke-direct {v8}, Landroid/telephony/satellite/stub/EarfcnRange;-><init>()V

    aput-object v8, v7, v6

    .line 650
    aget-object v7, v3, v4

    iget-object v7, v7, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    aget-object v7, v7, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/satellite/EarfcnRange;

    .line 651
    invoke-virtual {v8}, Landroid/telephony/satellite/EarfcnRange;->getStartEarfcn()I

    move-result v8

    iput v8, v7, Landroid/telephony/satellite/stub/EarfcnRange;->startEarfcn:I

    .line 652
    aget-object v7, v3, v4

    iget-object v7, v7, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    aget-object v7, v7, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/satellite/EarfcnRange;

    .line 653
    invoke-virtual {v8}, Landroid/telephony/satellite/EarfcnRange;->getEndEarfcn()I

    move-result v8

    iput v8, v7, Landroid/telephony/satellite/stub/EarfcnRange;->endEarfcn:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 656
    :cond_1
    iput-object v3, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->satelliteInfos:[Landroid/telephony/satellite/stub/SatelliteInfo;

    .line 657
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getTagIds()[I

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->tagIds:[I

    return-object v0
.end method

.method public static blacklist fromNtnSignalStrength(Landroid/telephony/satellite/stub/NtnSignalStrength;)Landroid/telephony/satellite/NtnSignalStrength;
    .locals 1

    .line 255
    new-instance v0, Landroid/telephony/satellite/NtnSignalStrength;

    iget p0, p0, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    invoke-direct {v0, p0}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(I)V

    return-object v0
.end method

.method public static blacklist fromPointingInfo(Landroid/telephony/satellite/stub/PointingInfo;)Landroid/telephony/satellite/PointingInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Landroid/telephony/satellite/PointingInfo;

    iget v1, p0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteAzimuth:F

    iget p0, p0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteElevation:F

    invoke-direct {v0, v1, p0}, Landroid/telephony/satellite/PointingInfo;-><init>(FF)V

    return-object v0
.end method

.method public static blacklist fromSatelliteCapabilities(Landroid/telephony/satellite/stub/SatelliteCapabilities;)Landroid/telephony/satellite/SatelliteCapabilities;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 205
    new-array v0, v1, [I

    .line 207
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 208
    iget-object v3, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    .line 209
    iget-object v4, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 210
    array-length v5, v3

    array-length v6, v4

    if-ne v5, v6, :cond_2

    .line 212
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 213
    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    new-instance v1, Landroid/telephony/satellite/SatelliteCapabilities;

    .line 218
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 219
    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-boolean v3, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    iget p0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    invoke-direct {v1, v0, v3, p0, v2}, Landroid/telephony/satellite/SatelliteCapabilities;-><init>(Ljava/util/Set;ZILjava/util/Map;)V

    return-object v1
.end method

.method public static blacklist fromSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;)Landroid/telephony/satellite/SatelliteDatagram;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    iget-object p0, p0, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 245
    :cond_1
    new-instance v0, Landroid/telephony/satellite/SatelliteDatagram;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteDatagram;-><init>([B)V

    return-object v0
.end method

.method public static blacklist fromSatelliteError(I)I
    .locals 3

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid satellite service error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/16 p0, 0x13

    return p0

    :pswitch_1
    const/16 p0, 0x12

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    :pswitch_3
    const/16 p0, 0x10

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xe

    return p0

    :pswitch_6
    const/16 p0, 0xd

    return p0

    :pswitch_7
    const/16 p0, 0xc

    return p0

    :pswitch_8
    const/16 p0, 0xb

    return p0

    :pswitch_9
    const/16 p0, 0xa

    return p0

    :pswitch_a
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/16 p0, 0x8

    return p0

    :pswitch_c
    const/4 p0, 0x7

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    return v0

    :pswitch_10
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    :pswitch_12
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static blacklist fromSatelliteModemState(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid modem state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    nop

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

.method public static blacklist fromSatelliteRadioTechnology(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid radio technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static blacklist getCarrierIdFromSubscription(I)I
    .locals 0

    .line 744
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 745
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getMccMnc(Landroid/telephony/NetworkRegistrationInfo;)Ljava/lang/String;
    .locals 4

    .line 595
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 597
    const-string p0, "getMccMnc: cellIdentity is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return-object v0

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 608
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 604
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMccMnc: mcc or mnc is null. mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mnc="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getNtnOnlySubscriptionId(Landroid/content/Context;)I
    .locals 2

    .line 387
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 390
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 391
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;-><init>()V

    .line 392
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 393
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 v0, -0x1

    .line 394
    invoke-virtual {p0, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNtnOnlySubscriptionId: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return p0
.end method

.method public static blacklist getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;
    .locals 2

    .line 715
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    new-instance v0, Landroid/telephony/PersistentLogger;

    invoke-static {p0}, Landroid/telephony/DropBoxManagerLoggerBackend;->getInstance(Landroid/content/Context;)Landroid/telephony/DropBoxManagerLoggerBackend;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/telephony/PersistentLogger;-><init>(Landroid/telephony/PersistentLoggerBackend;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPersistentLogger: RuntimeException ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 529
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I
    .locals 3

    .line 317
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 321
    :cond_0
    instance-of v1, v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    if-eqz v1, :cond_1

    .line 322
    check-cast v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->getErrorCode()I

    move-result v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SatelliteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    :goto_0
    move p0, v0

    goto :goto_1

    .line 324
    :cond_1
    instance-of v1, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 325
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->convertCommandExceptionErrorToSatelliteError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unknown exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 332
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return p0
.end method

.method public static blacklist getValidSatelliteSubId(ILandroid/content/Context;)I
    .locals 4

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {v2, p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getValidSatelliteSubId: use DEFAULT_SUBSCRIPTION_ID for subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    const p0, 0x7fffffff

    return p0

    :catchall_0
    move-exception p0

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    throw p0
.end method

.method public static blacklist isCellularAvailable()Z
    .locals 12

    .line 534
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 535
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 537
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 538
    invoke-virtual {v5, v7, v8}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 541
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v2

    .line 542
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCellularAvailable: phoneId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isEmergencyOnly="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isCellularDataInService="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 542
    invoke-static {v10}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    if-eq v6, v7, :cond_1

    .line 547
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v9, :cond_2

    .line 549
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSatellitePlmn(ILandroid/telephony/ServiceState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 550
    const-string v0, "isCellularAvailable true"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_3
    const-string v0, "isCellularAvailable false"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v2
.end method

.method public static blacklist isLastSosMessage(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isNbIotNtn(I)Z
    .locals 2

    .line 727
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 729
    const-string p0, "isNbIotNtn(): phone is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v0

    .line 733
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 735
    const-string p0, "isNbIotNtn(): satelliteController is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v0

    .line 739
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isNtnOnlySubscriptionId(I)Z
    .locals 3

    .line 407
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 409
    const-string p0, "isNtnOnlySubscriptionId: subscriptionManagerService is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1

    .line 413
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNtnOnlySubscriptionId: subInfo is null for subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1

    .line 419
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOnlyNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method public static blacklist isSatellitePlmn(ILandroid/telephony/ServiceState;)Z
    .locals 8

    .line 561
    new-instance p0, Ljava/util/ArrayList;

    .line 562
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getAllPlmnSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 563
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 564
    const-string p0, "isSatellitePlmn: satellitePlmnList is empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 569
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 571
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getMccMnc(Landroid/telephony/NetworkRegistrationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    const-string v2, "isSatellitePlmn: registeredPlmn and cell plmn are empty"

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_3
    if-ge v5, v4, :cond_1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 579
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 580
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 581
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSatellitePlmn: return true, satellitePlmn:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registeredPlmn:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mccmnc:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v0

    .line 588
    :cond_5
    const-string p0, "isSatellitePlmn: return false"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public static blacklist isSosMessage(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 750
    const-string v0, "SatelliteServiceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 754
    const-string v0, "SatelliteServiceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist mergeStrLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    .line 469
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 473
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 476
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist mergeStrLists(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 487
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 488
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 489
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 490
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseRegionalSatelliteEarfcns(Landroid/os/PersistableBundle;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    .line 688
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 693
    :cond_0
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 694
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 695
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    .line 696
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 698
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseRegionalSatelliteEarfcns: configId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", earfcns ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 698
    invoke-static {v4}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    .line 700
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    .line 689
    :cond_3
    :goto_2
    const-string p0, "parseRegionalSatelliteEarfcns: earfcnsBundle is null or empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist parseSupportedSatelliteServices(Landroid/os/PersistableBundle;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_4

    .line 436
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 442
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 443
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    .line 444
    invoke-static {v7}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidService(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 445
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 447
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSupportedSatelliteServices: invalid service type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for plmn="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 451
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseSupportedSatelliteServices: plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", supportedServicesSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ","

    .line 453
    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    .line 452
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-static {v4}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    .line 454
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 456
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseSupportedSatelliteServices: invalid plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static blacklist toSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;)Landroid/telephony/satellite/stub/SatelliteDatagram;
    .locals 1

    .line 265
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteDatagram;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteDatagram;-><init>()V

    .line 267
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    return-object v0
.end method

.method public static blacklist toSatelliteModemEnableRequestAttributes(Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;)Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
    .locals 2

    .line 296
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;-><init>()V

    .line 298
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    .line 299
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->isForDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    .line 300
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->isForEmergencyMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    .line 302
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->getSatelliteSubscriptionInfo()Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    move-result-object p0

    .line 301
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSatelliteSubscriptionInfo(Landroid/telephony/satellite/SatelliteSubscriptionInfo;)Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    return-object v0
.end method

.method public static blacklist toSatelliteSubscriptionInfo(Landroid/telephony/satellite/SatelliteSubscriptionInfo;)Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;
    .locals 2

    .line 280
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;-><init>()V

    .line 282
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->iccId:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getNiddApn()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->niddApn:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist toSystemSelectionSpecifier(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/stub/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation

    .line 670
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 672
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    .line 671
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
