.class public Lcom/android/internal/telephony/NetworkIndication;
.super Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.source "NetworkIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 487
    :goto_1
    invoke-static {p1, p2, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 93
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 96
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 97
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x451

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void

    .line 86
    :cond_2
    :goto_0
    const-string p1, "645b16bb-c930-4c1c-9c5d-568696542e05"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "Invalid barringInfoChanged indication"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist cdmaPrlChanged(II)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 112
    filled-new-array {p2}, [I

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x408

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 127
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellularIdentifierDisclosed(ILandroid/hardware/radio/network/CellularIdentifierDisclosure;)V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 443
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x420

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 448
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertCellularIdentifierDisclosure(Landroid/hardware/radio/network/CellularIdentifierDisclosure;)Landroid/telephony/CellularIdentifierDisclosure;

    move-result-object p1

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCellularIdentifierDisclosedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 141
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLinkCapacityEstimate(Landroid/hardware/radio/network/LinkCapacityEstimate;)Ljava/util/List;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1

    .line 146
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V
    .locals 9

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    :try_start_0
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    aget-object v4, p2, v3

    .line 161
    new-instance v5, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v5}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 163
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v6, v1, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported band type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v8}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    move v6, v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 174
    :cond_0
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNgranBand()I

    move-result v6

    goto :goto_1

    .line 171
    :cond_1
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getEutranBand()I

    move-result v6

    goto :goto_1

    .line 168
    :cond_2
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getUtranBand()I

    move-result v6

    goto :goto_1

    .line 165
    :cond_3
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getGeranBand()I

    move-result v6

    :goto_1
    if-nez v6, :cond_4

    .line 180
    iget-object v6, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "Unsupported unknown band."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 188
    :goto_2
    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->status:I

    .line 189
    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v6

    .line 188
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 190
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 191
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setUplinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 192
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 193
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthUplinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->rat:I

    .line 194
    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->physicalCellId:I

    .line 195
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget-object v4, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->contextIds:[I

    .line 196
    invoke-virtual {v5, v4}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v4

    .line 188
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 205
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44d

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 207
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 200
    :goto_3
    const-string p2, "918f0970-9aa9-4bcd-a28e-e49a83fe77d5"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    const-string v0, "RIL reported invalid PCC (AIDL)"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PhysicalChannelConfig "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 220
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogvOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f1

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1

    .line 226
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public blacklist emergencyNetworkScanResult(ILandroid/hardware/radio/network/EmergencyRegResult;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 424
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalEmergencyRegResult(Landroid/hardware/radio/network/EmergencyRegResult;)Landroid/telephony/EmergencyRegistrationResult;

    move-result-object p1

    .line 426
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 427
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x452

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 430
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNetworkScanRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 476
    const-string p0, "5867b4f5be491ec815fafea8a3f268b0295427df"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist imsNetworkStateChanged(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 237
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 251
    iget-object p1, p2, Landroid/hardware/radio/network/NetworkScanResult;->networkInfos:[Landroid/hardware/radio/network/CellInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 252
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/network/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/network/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 253
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist networkStateChanged(I)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 264
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist nitzTimeReceived(ILjava/lang/String;JJ)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 284
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_5

    cmp-long p1, p5, v0

    if-ltz p1, :cond_5

    cmp-long p1, p5, p3

    if-ltz p1, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 301
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 303
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ignore_nitz()Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 306
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string p1, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 308
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p2, :cond_4

    .line 309
    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 313
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    return-void

    .line 289
    :cond_5
    :goto_0
    const-string p1, "fc7c56d4-485d-475a-aaff-394203c6cdfc"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "NITZ indication with invalid parameter"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NITZ parameter is invalid, ignoring nitzTimeReceived indication. receivedTimeMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", ageMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 330
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 331
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    and-int/lit8 p1, p4, 0x3

    if-eqz p1, :cond_2

    and-int/lit8 p1, p4, -0x4

    if-nez p1, :cond_2

    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    const p1, 0x7fffffff

    if-ne p5, p1, :cond_0

    if-ne p6, p1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/RegistrationFailedEvent;

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/telephony/RegistrationFailedEvent;-><init>(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 350
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 351
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x450

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrationFailedEvent;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 353
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 336
    :cond_2
    :goto_0
    const-string p1, "f16e5703-6105-4341-9eb3-e68189156eb5"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string v0, "Invalid registrationFailed indication"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid registrationFailed indication (ci is null)="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (chosenPlmn is empty)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (is CS/PS)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p4, 0x3

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (only CS/PS)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p4, -0x4

    if-eqz p2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (causeCode)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (additionalCauseCode)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist restrictedStateChanged(II)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 365
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3ff

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1

    .line 368
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public blacklist securityAlgorithmsUpdated(ILandroid/hardware/radio/network/SecurityAlgorithmUpdate;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 463
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x421

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 468
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertSecurityAlgorithmUpdate(Landroid/hardware/radio/network/SecurityAlgorithmUpdate;)Landroid/telephony/SecurityAlgorithmUpdate;

    move-result-object p1

    .line 470
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSecurityAlgorithmUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 381
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 382
    iget-boolean v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 383
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 384
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 385
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 386
    iget-object p2, p2, Landroid/hardware/radio/network/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 388
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 389
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1

    .line 393
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public blacklist voiceRadioTechChanged(II)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 405
    filled-new-array {p2}, [I

    move-result-object p1

    .line 407
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 408
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
