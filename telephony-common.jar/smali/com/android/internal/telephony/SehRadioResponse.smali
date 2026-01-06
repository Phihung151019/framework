.class public Lcom/android/internal/telephony/SehRadioResponse;
.super Lvendor/samsung/hardware/radio/V2_2/ISehRadioResponse$Stub;
.source "SehRadioResponse.java"


# instance fields
.field blacklist mSemRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioResponse$Stub;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 0

    if-nez p1, :cond_0

    .line 400
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 402
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 404
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_2
    const/4 p0, 0x3

    if-ne p1, p0, :cond_3

    .line 406
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    .line 408
    :cond_3
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0
.end method

.method private blacklist convertOperatorInfo(Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 9

    .line 438
    iget-object v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v1, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 439
    iget-object v2, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 440
    iget-object v6, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v0, v0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->getEons(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v4, v0

    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    move-object v5, v2

    .line 452
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v0, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    .line 453
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehRadioResponse;->convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v7

    iget-object v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehRadioResponse;->convertRatStringToInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 454
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add OperatorInfo ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v2, v2, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    .line 455
    invoke-static {v2}, Lcom/android/internal/telephony/SehRadioResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v3
.end method

.method private static blacklist convertOpertatorInfoToString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 423
    const-string p0, "unknown"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 425
    const-string p0, "available"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 427
    const-string p0, "current"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 429
    const-string p0, "forbidden"

    return-object p0

    .line 431
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private blacklist convertRatStringToInt(Ljava/lang/String;)I
    .locals 1

    .line 413
    const-string p0, "GERAN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 414
    :cond_0
    const-string p0, "UMTS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    return v0

    .line 415
    :cond_1
    const-string p0, "TD"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 416
    :cond_2
    const-string p0, "LTE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 417
    :cond_3
    const-string p0, "NR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist oemResponseGsmBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 481
    new-instance v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-direct {v1}, Lcom/samsung/android/telephony/gsm/SemCbConfig;-><init>()V

    .line 493
    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 537
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 498
    :cond_0
    :try_start_1
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->enabled:I

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 501
    iput-boolean v4, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 503
    iput-boolean v5, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    .line 511
    :goto_0
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->selectedId:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    .line 512
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->msgIdMaxCount:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    .line 513
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->msgIdCount:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    .line 515
    new-array v2, v2, [I

    .line 516
    iput-object v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    .line 518
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->msgIDs:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 522
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    move v2, v5

    .line 524
    :goto_1
    iget v3, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-ge v5, v3, :cond_2

    .line 525
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 526
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    .line 529
    iget-object v6, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    aput v3, v6, v5

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 533
    :cond_2
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_3

    .line 534
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 505
    :cond_4
    :try_start_2
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const-string v2, "oemResponseGsmBroadcastConfig parameter is invalid. processResponseDone with return null."

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/16 p2, 0x42

    .line 506
    iput p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 538
    throw p2

    :cond_5
    return-void
.end method

.method private blacklist oemResponsePreferredNetworkInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 647
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 648
    new-instance v4, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v5, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 649
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget-object v6, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget-object v7, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 650
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v8, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v9, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 651
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v10, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v11, v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/PreferredNetworkListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 648
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 653
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 654
    iget-object p2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 658
    throw p2

    :cond_2
    return-void
.end method

.method private blacklist responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V
    .locals 9

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 200
    :try_start_0
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 201
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 202
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 203
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 204
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 205
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    move v2, v3

    .line 213
    :cond_0
    new-array v3, v2, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 215
    iget-object v5, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    .line 216
    new-instance v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;-><init>()V

    .line 217
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 218
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 219
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 221
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 222
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 223
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 224
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 225
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 226
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->pin1_num_retries:I

    .line 227
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->puk1_num_retries:I

    .line 228
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->pin2_num_retries:I

    .line 229
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->puk2_num_retries:I

    .line 230
    iget v5, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    iput v5, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->perso_unblock_retries:I

    .line 231
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 233
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 234
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 235
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 236
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 237
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 238
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 239
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_3

    .line 240
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 244
    throw p2

    :cond_4
    return-void
.end method

.method private blacklist responseIccCardStatus_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V
    .locals 9

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 251
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 253
    :try_start_0
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 254
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 255
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v3, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 256
    iget v3, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iput v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 257
    iget v3, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    iput v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 258
    iget-object v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    move v2, v3

    .line 266
    :cond_0
    new-array v3, v2, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 268
    iget-object v5, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget-object v5, v5, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    .line 269
    new-instance v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;-><init>()V

    .line 270
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 271
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 272
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 274
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 275
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 276
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 277
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 278
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 279
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->pin1_num_retries:I

    .line 280
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->puk1_num_retries:I

    .line 281
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->pin2_num_retries:I

    .line 282
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->puk2_num_retries:I

    .line 283
    iget v5, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    iput v5, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->perso_unblock_retries:I

    .line 284
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 286
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 287
    iget-object v3, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v4, v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    iput v4, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 288
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 289
    iget-object v2, v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 290
    iget-object v2, v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 291
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->eid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 292
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 293
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_3

    .line 294
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 298
    throw p2

    :cond_4
    return-void
.end method

.method private blacklist responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 316
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 317
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

    .line 319
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 320
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 324
    throw p2

    :cond_2
    return-void
.end method

.method private varargs blacklist responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 304
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 305
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 465
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 466
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SehRadioResponse;->convertOperatorInfo(Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 468
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 469
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 473
    throw p2

    :cond_2
    return-void
.end method

.method private blacklist responseSIM_PB(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V
    .locals 11

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    .line 579
    new-array v3, v0, [I

    .line 580
    new-array v4, v0, [I

    .line 581
    new-array v5, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, v0, :cond_0

    .line 584
    iget-object v7, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v6

    .line 585
    iget-object v7, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    .line 586
    iget-object v7, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 589
    new-array v6, v0, [I

    .line 590
    new-array v7, v0, [I

    .line 591
    new-array v8, v0, [Ljava/lang/String;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 594
    iget-object v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v2

    .line 595
    iget-object v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v2

    .line 596
    iget-object v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    :cond_1
    iget v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    .line 600
    iget v10, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    .line 602
    new-instance v2, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    .line 605
    :try_start_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2

    .line 606
    iget-object p2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_3

    .line 609
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 610
    throw p2

    :cond_3
    return-void
.end method

.method private blacklist responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 387
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->messageRef:I

    iget-object v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->errorCode:I

    iget p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->errorClass:I

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 389
    :try_start_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 390
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 393
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 394
    throw p2

    :cond_1
    return-void
.end method

.method private blacklist responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 349
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 352
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 353
    throw v1

    :cond_1
    return-void
.end method

.method static blacklist responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SemRIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 371
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 372
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 374
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 375
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 379
    throw p2

    :cond_2
    return-void
.end method

.method private blacklist responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 334
    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 335
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 338
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 339
    throw v2

    :cond_1
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist accessPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 806
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 789
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist emergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 820
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->oemResponseGsmBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V

    return-void
.end method

.method public blacklist getCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 703
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;",
            ">;)V"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 846
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 848
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 849
    new-instance v4, Lcom/android/internal/telephony/SemCsgInfo;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v5, v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->csgId:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget-object v6, v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->name:Ljava/lang/String;

    .line 850
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget-object v7, v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->plmn:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v8, v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->rat:I

    .line 851
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v9, v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->category:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v10, v3, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->signalStrength:I

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/SemCsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 849
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 854
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 855
    iget-object p2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 859
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCall;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 688
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIccCardStatus_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V

    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getNrIconTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 921
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getNrModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 913
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSIM_PB(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V

    return-void
.end method

.method public blacklist getPhonebookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;)V
    .locals 5

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    iget v1, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    .line 717
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    .line 718
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    .line 719
    iget v4, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    .line 720
    iget p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    filled-new-array {v1, v2, v3, v4, p2}, [I

    move-result-object p2

    .line 723
    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 724
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 727
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 728
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist getPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->oemResponsePreferredNetworkInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;)V
    .locals 5

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 761
    iget v1, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->numberOfLockTypes:I

    .line 762
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->lockType:I

    .line 763
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->lockKey:I

    .line 764
    iget p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->numberOfRetry:I

    .line 766
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    .line 769
    :try_start_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 770
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v4}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 773
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 774
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist getStoredMsgCountFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 547
    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 548
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 551
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 552
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist getUsimPhonebookCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getVendorSpecificConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 928
    new-instance v1, Ljava/util/ArrayList;

    .line 929
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 931
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;

    .line 932
    new-instance v5, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v6, v4, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v4, v4, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 936
    :cond_0
    :try_start_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 937
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 940
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 941
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist readSmsFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    :try_start_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 562
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 565
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 566
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist selectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 867
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendEncodedUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 887
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 889
    :goto_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_1

    .line 890
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 892
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public blacklist sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 901
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 695
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 638
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMobileDataSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 874
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 905
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrModeResponse_2_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 909
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 673
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 751
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimOnOffResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setVendorSpecificConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 946
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 782
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0

    .line 98
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSmsToSimResponse : index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 572
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method
