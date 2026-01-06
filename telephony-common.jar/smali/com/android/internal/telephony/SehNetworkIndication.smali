.class public Lcom/android/internal/telephony/SehNetworkIndication;
.super Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;
.source "SehNetworkIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private static blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 419
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;
    .locals 7

    .line 231
    iget-boolean v0, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->isValid:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Landroid/telephony/ExtendedRegistrationInfo;

    iget v1, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->snapshotStatus:I

    iget v2, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 234
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SehNetworkIndication;->getRegStateFromHalRegState(I)I

    move-result v2

    iget v3, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->unprocessedDataRat:I

    iget v4, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->mobileOptionalRat:I

    iget v5, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 237
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SehNetworkIndication;->getRegStateFromHalRegState(I)I

    move-result v5

    iget-boolean v6, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->isPsOnlyReg:Z

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ExtendedRegistrationInfo;-><init>(IIIIIZ)V

    return-object v0
.end method

.method private blacklist getRegStateFromHalRegState(I)I
    .locals 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    :pswitch_0
    return v1

    :cond_2
    :pswitch_1
    return v0

    :cond_3
    :pswitch_2
    return p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 61
    const-string v0, "/_/"

    const-string v1, "command"

    const-string v2, " "

    const-string v3, "processSpaceCommand"

    const-string v4, "ATCMD"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    const-string v3, "CUSTOMER_TEST_REQUEST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    const-string v5, " --es flag"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 68
    const-string v5, "There is space between command"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    array-length v4, v3

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v9, v3, v5

    if-eqz v7, :cond_0

    .line 77
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_1

    move v7, v6

    :cond_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    .line 93
    :goto_1
    const-string v1, "SehRILJ"

    const-string v3, "Unexpected exception in processSpaceCommand"

    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist acbInfoChanged(I[I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 103
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 106
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist callDetailsChanged(I[Lvendor/samsung/hardware/radio/network/SehCallDetails;)V
    .locals 8

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v0, "RIL_UNSOL_OEM_CALL_DETAILS_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 279
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    aget-object v4, p2, v2

    .line 283
    iget-object v5, v4, Lvendor/samsung/hardware/radio/network/SehCallDetails;->extras:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 284
    array-length v3, v5

    .line 285
    new-array v5, v3, [Ljava/lang/String;

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_0

    .line 287
    iget-object v7, v4, Lvendor/samsung/hardware/radio/network/SehCallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object v3, v5

    goto :goto_2

    .line 290
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v5, "callDetailsChanged - extras is null"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 292
    :goto_2
    new-instance v4, Lcom/android/internal/telephony/SemCallDetails;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/SemCallDetails;-><init>([Ljava/lang/String;Z)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_3

    .line 296
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_3
    return-void
.end method

.method public blacklist cpaiDataGatheringNoti(II[B)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 386
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_UNSOL_OEM_CPAI_DATA_GATHERING_NOTI code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/SehNetworkIndication;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 389
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 390
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDataGatheringRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 393
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist cpaiDevAppMessageNoti(III[B)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 400
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_UNSOL_OEM_CPAI_DEV_APP_MESSAGE_NOTI code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", devInfoLen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", devInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {p4}, Lcom/android/internal/telephony/SehNetworkIndication;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 404
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 405
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 406
    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 408
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiDevAppMessageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 409
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist cpaiFeatureInfoNoti(II)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 375
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_UNSOL_OEM_CPAI_FEATURE_INFO_NOTI name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiFeatureUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 379
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist cpaiModelUpdateNoti(II)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 362
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_UNSOL_OEM_CPAI_MODEL_UPDATE_NOTI status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 364
    new-array p1, p1, [Ljava/lang/Object;

    .line 365
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 367
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCpaiModelUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 368
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist csFallback(II)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 113
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b16

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 116
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist currentNetworkScanIsRequested(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist epsfbTriggerResult(Ljava/lang/String;)V
    .locals 3

    .line 347
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epsfbTrigger fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 354
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mEpsFallBackResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 355
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist eriInfoReceived(ILvendor/samsung/hardware/radio/network/SehEriInfo;)V
    .locals 0

    .line 317
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "RIL_UNSOL_OEM_ERI_INFO_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist execute(ILjava/lang/String;)V
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b52

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 152
    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 156
    aget-object p2, p1, v2

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, " cmd1: broadcast -a "

    const-string v4, "execute cmd0: "

    if-eqz p2, :cond_0

    .line 157
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    aget-object p2, p1, v2

    const-string v1, "com.samsung.android.app.telephonyui.action.REJECT_FOR_TRANSFER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cmd1: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 164
    :goto_0
    aget-object p2, p1, v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_2

    :sswitch_0
    const-string v0, "ELEVATOR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1
    const-string v0, "EPSFB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v0, "LOG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :sswitch_3
    const-string v3, "AM"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 201
    :pswitch_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemBaseCommands;->notifyElevatorMode()V

    return-void

    .line 196
    :pswitch_1
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SehNetworkIndication;->epsfbTriggerResult(Ljava/lang/String;)V

    return-void

    .line 180
    :pswitch_2
    const-string p2, "-c"

    aget-object p1, p1, v2

    const-string v0, "/system/bin/sh"

    filled-new-array {v0, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 185
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 186
    invoke-virtual {p2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 190
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    .line 188
    :goto_5
    :try_start_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute is fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    :goto_6
    return-void

    :goto_7
    if-eqz p2, :cond_8

    .line 190
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    .line 191
    :cond_8
    throw p0

    .line 168
    :pswitch_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "VZW"

    const-string v0, "USC"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 169
    aget-object p0, p1, v2

    invoke-static {p0}, Lcom/android/internal/telephony/SehNetworkIndication;->processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 171
    :cond_9
    aget-object p0, p1, v2

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 174
    :goto_8
    invoke-static {p0}, Lcom/android/internal/telephony/Am;->main([Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x82c -> :sswitch_3
        0x12724 -> :sswitch_2
        0x3f1f3c4 -> :sswitch_1
        0x2ea3c8ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist extendedRegistrationState(ILvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b4e

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 224
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_0

    .line 225
    new-instance v0, Landroid/os/AsyncResult;

    .line 226
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SehNetworkIndication;->createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 57
    const-string p0, "0fc15a1faf82e2c79f263a7fd6e8b5ffba3644f3"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist imsPreferenceChanged(I[I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b35

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 126
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist needTurnOnRadioIndication(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 133
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b44

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemRIL;->setAirplaneModeOff()V

    return-void
.end method

.method public blacklist nrBearerAllocationChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist nrIconTypeChanged(II)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 267
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b54

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 270
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist nrNetworkTypeAdded(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist roamingNetworkScanIsRequested(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist signalLevelInfoChanged(ILvendor/samsung/hardware/radio/network/SehSignalBar;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 210
    new-instance p1, Landroid/telephony/SignalBarInfo;

    invoke-direct {p1, p2}, Landroid/telephony/SignalBarInfo;-><init>(Lvendor/samsung/hardware/radio/network/SehSignalBar;)V

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 215
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist vendorConfigurationChanged(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 305
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 308
    new-instance v3, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v2, v2, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1

    .line 312
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method
