.class public Lcom/android/internal/telephony/SehRadioIndication;
.super Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;
.source "SehRadioIndication.java"


# static fields
.field public static final blacklist SETTINGS_GLOBAL:Ljava/lang/String; = "global"

.field public static final blacklist SETTINGS_SECURE:Ljava/lang/String; = "secure"

.field public static final blacklist SETTINGS_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist SIM_APN_URI:Landroid/net/Uri;

.field public static final blacklist SPRINT_GLOBAL_APN:Ljava/lang/String; = "cinet.spcs"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    const-string v0, "content://telephony/carriers/sim_apn_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SehRadioIndication;->SIM_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method public static blacklist arrayListToIntArray(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 605
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private blacklist createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;
    .locals 7

    .line 544
    iget-boolean v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 545
    :cond_0
    new-instance v0, Landroid/telephony/ExtendedRegistrationInfo;

    iget v1, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    iget v2, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 546
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SehRadioIndication;->getRegStateFromHalRegState(I)I

    move-result v2

    iget v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    iget v4, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    iget v5, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 549
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SehRadioIndication;->getRegStateFromHalRegState(I)I

    move-result v5

    iget-boolean v6, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

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

    .line 97
    const-string v0, "/_/"

    const-string v1, "command"

    const-string v2, " "

    const-string v3, "processSpaceCommand"

    const-string v4, "ATCMD"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    const-string v3, "CUSTOMER_TEST_REQUEST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    const-string v5, " --es flag"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 104
    const-string v5, "There is space between command"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 111
    array-length v4, v3

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v9, v3, v5

    if-eqz v7, :cond_0

    .line 113
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    .line 119
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

    .line 129
    :goto_1
    const-string v1, "SehRILJ"

    const-string v3, "Unexpected exception in processSpaceCommand"

    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist acbInfoChanged(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 139
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioIndication;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afd

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist callDetailsChanged(ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;",
            ">;)V"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 613
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v0, "RIL_UNSOL_OEM_CALL_DETAILS_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 615
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 617
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;

    .line 619
    iget-object v5, v4, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;->extras:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 620
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 621
    new-array v5, v3, [Ljava/lang/String;

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_0

    .line 623
    iget-object v7, v4, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object v3, v5

    goto :goto_2

    .line 626
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v5, "extras is null"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 628
    :goto_2
    new-instance v4, Lcom/android/internal/telephony/SemCallDetails;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/SemCallDetails;-><init>([Ljava/lang/String;Z)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_3

    .line 632
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_3
    return-void
.end method

.method public blacklist configModemCapabilityChangeNoti(ILvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist csFallback(II)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b16

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 152
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist deviceReadyNoti(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 221
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b00

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 224
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist epsfbTriggerResult(Ljava/lang/String;)V
    .locals 3

    .line 662
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epsfbTrigger fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 669
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mEpsFallBackResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 670
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist eriInfoReceived(ILvendor/samsung/hardware/radio/V2_2/SehEriInfo;)V
    .locals 0

    .line 654
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 656
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "RIL_UNSOL_OEM_ERI_INFO_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist execute(ILjava/lang/String;)V
    .locals 6

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 461
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b52

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 464
    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 466
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 468
    aget-object p2, p1, v2

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, " cmd1: broadcast -a "

    const-string v4, "execute cmd0: "

    if-eqz p2, :cond_0

    .line 469
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

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

    .line 470
    :cond_0
    aget-object p2, p1, v2

    const-string v1, "com.samsung.android.app.telephonyui.action.REJECT_FOR_TRANSFER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 471
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

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

    .line 473
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

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

    .line 476
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

    .line 514
    :pswitch_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemBaseCommands;->notifyElevatorMode()V

    return-void

    .line 509
    :pswitch_1
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SehRadioIndication;->epsfbTriggerResult(Ljava/lang/String;)V

    return-void

    .line 493
    :pswitch_2
    const-string p2, "-c"

    aget-object p1, p1, v2

    const-string v0, "/system/bin/sh"

    filled-new-array {v0, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 498
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 499
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

    .line 503
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    .line 501
    :goto_5
    :try_start_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

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

    .line 503
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    .line 504
    :cond_8
    throw p0

    .line 480
    :pswitch_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

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

    .line 481
    aget-object p0, p1, v2

    invoke-static {p0}, Lcom/android/internal/telephony/SehRadioIndication;->processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 483
    :cond_9
    aget-object p0, p1, v2

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 486
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

.method public blacklist extendedRegistrationState(ILvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 535
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b4e

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 537
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_0

    .line 538
    new-instance v0, Landroid/os/AsyncResult;

    .line 539
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SehRadioIndication;->createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 538
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist imsPreferenceChanged(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 159
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioIndication;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b35

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 164
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist modemCapabilityIndication(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;
    .locals 12

    .line 364
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 369
    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 372
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needApnProfileIndication invalid subid"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v3

    .line 378
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v2, v2, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v2, Lcom/android/internal/telephony/SehRadioIndication;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "apn"

    const-string v7, "protocol"

    const-string v8, "user"

    const-string v9, "password"

    const-string v10, "authtype"

    const-string v11, "roaming_protocol"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_b

    .line 382
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 384
    :cond_2
    const-string v1, "apn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    const-string v2, "cinet.spcs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 389
    :cond_3
    const-string v2, "cdma"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 392
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v2, :cond_5

    .line 393
    :try_start_2
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->apn:Ljava/lang/String;

    goto :goto_2

    .line 395
    :cond_5
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->apn:Ljava/lang/String;

    .line 397
    :goto_2
    const-string v1, "protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 399
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->proto:Ljava/lang/String;

    goto :goto_3

    .line 401
    :cond_6
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->proto:Ljava/lang/String;

    .line 403
    :goto_3
    const-string v1, "roaming_protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 405
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->roamingProto:Ljava/lang/String;

    goto :goto_4

    .line 407
    :cond_7
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->roamingProto:Ljava/lang/String;

    .line 409
    :goto_4
    const-string v1, "user"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 411
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->user:Ljava/lang/String;

    goto :goto_5

    .line 413
    :cond_8
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->user:Ljava/lang/String;

    .line 415
    :goto_5
    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 417
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->pw:Ljava/lang/String;

    goto :goto_6

    .line 419
    :cond_9
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->pw:Ljava/lang/String;

    .line 421
    :goto_6
    const-string v1, "authtype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 423
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->auth:Ljava/lang/String;

    goto :goto_7

    .line 425
    :cond_a
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->auth:Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_7
    if-eqz p1, :cond_c

    .line 436
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object p1, v3

    .line 432
    :goto_8
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needApnProfileIndication sql execption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_d

    .line 436
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object v3

    :goto_9
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_e
    throw p0
.end method

.method public blacklist needPacketUsage(Ljava/lang/String;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;)V
    .locals 2

    .line 577
    new-instance p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;

    invoke-direct {p0}, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;-><init>()V

    .line 579
    const-string v0, "rmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 580
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->rxBytes:J

    .line 581
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->txBytes:J

    const/16 p1, 0x2c

    goto :goto_0

    .line 584
    :cond_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->rxBytes:J

    .line 585
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->txBytes:J

    const/4 p1, 0x0

    .line 589
    :goto_0
    invoke-interface {p2, p1, p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;->onValues(ILvendor/samsung/hardware/radio/V2_0/SehPacketUsage;)V

    return-void
.end method

.method public blacklist needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 326
    const-string v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 328
    :cond_0
    const-string v0, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 330
    :cond_1
    const-string v0, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 331
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 358
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needSettingValueIndication wrong table value."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist needTurnOnRadioIndication(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 193
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b44

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

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

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 595
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b54

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 597
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 598
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

.method public blacklist phonebookInitCompleteIndication(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 211
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b1b

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public blacklist releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 279
    new-instance p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 281
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->size:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->size:I

    .line 282
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->dataLen:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    .line 283
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->params:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    .line 284
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->status:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    .line 285
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->data:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    .line 287
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2af9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 290
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist rrcStateChanged(ILvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 447
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b50

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 449
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 450
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist sapNotify(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 297
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b05

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 301
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist signalLevelInfoChanged(ILvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 523
    new-instance p1, Landroid/telephony/SignalBarInfo;

    invoke-direct {p1, p2}, Landroid/telephony/SignalBarInfo;-><init>(Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 528
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simCountMismatchedIndication(II)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 268
    filled-new-array {p2}, [I

    move-result-object p1

    .line 270
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b32

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 272
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 273
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simOnOffStateChangedNotify(II)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 308
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b46

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 310
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 311
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simPhonebookReadyIndication(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 201
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b0d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method public blacklist simSwapStateChangedIndication(II)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 255
    filled-new-array {p2}, [I

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b31

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 259
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 260
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist stkCallControlResultIndication(ILjava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afb

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 247
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist stkSmsSendResultIndication(II)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 232
    filled-new-array {p2}, [I

    move-result-object p1

    .line 234
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afa

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 237
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist timerStatusChangedInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    const-string v0, "SehRadioIndication:: call"

    const-string v1, "t3346"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 176
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioIndication;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b3b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 181
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 183
    :cond_0
    const-string p0, "SehRadioIndication:: end"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist vendorConfigurationChanged(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 641
    new-instance p1, Ljava/util/ArrayList;

    .line 642
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 644
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;

    .line 645
    new-instance v3, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v2, v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1

    .line 649
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public blacklist voiceRadioBearerHandoverStatusChanged(II)V
    .locals 0

    .line 0
    return-void
.end method
