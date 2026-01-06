.class public Lcom/android/internal/telephony/SehSimResponse;
.super Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;
.source "SehSimResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist responseIccCardStatus(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 151
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 153
    :try_start_0
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 154
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 155
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 156
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 157
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 158
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 159
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 160
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->eid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 162
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    array-length v2, v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 164
    new-array v3, v2, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 166
    iget-object v5, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    aget-object v5, v5, v4

    .line 167
    new-instance v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;-><init>()V

    .line 168
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 169
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 170
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 172
    iget-object v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->aidPtr:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 173
    iget-object v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 174
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin1Replaced:I

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 175
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 176
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin2:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 177
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->pin1_num_retries:I

    .line 178
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->puk1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->puk1_num_retries:I

    .line 179
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->pin2_num_retries:I

    .line 180
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->puk2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->puk2_num_retries:I

    .line 181
    iget v5, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->persoUnblockRetries:I

    iput v5, v6, Lcom/android/internal/telephony/uicc/SemIccCardApplicationStatus;->perso_unblock_retries:I

    .line 182
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 184
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 185
    iget-object v3, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;

    iget v4, v3, Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;->physicalSlotId:I

    iput v4, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 186
    iget v3, v3, Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;->portId:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 187
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 188
    iget p2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->supportedMepMode:I

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setMultipleEnabledProfilesMode(I)V

    .line 189
    iget-object p2, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 190
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2

    .line 191
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 195
    throw p2

    :cond_3
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

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 88
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 89
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

    .line 91
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 92
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 96
    throw p2

    :cond_2
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 3

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 76
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 77
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSimResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseSIM_PB(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V
    .locals 12

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 309
    new-array v4, v1, [I

    .line 310
    new-array v5, v1, [I

    .line 311
    new-array v6, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 314
    iget-object v7, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->lengthAlphas:[I

    aget v7, v7, v3

    aput v7, v4, v3

    .line 315
    iget-object v7, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->dataTypeAlphas:[I

    aget v7, v7, v3

    aput v7, v5, v3

    .line 316
    iget-object v7, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->alphaTags:[Ljava/lang/String;

    aget-object v7, v7, v3

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 319
    new-array v7, v1, [I

    .line 320
    new-array v8, v1, [I

    .line 321
    new-array v9, v1, [Ljava/lang/String;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 324
    iget-object v3, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->lengthNumbers:[I

    aget v3, v3, v0

    aput v3, v7, v0

    .line 325
    iget-object v3, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->dataTypeNumbers:[I

    aget v3, v3, v0

    aput v3, v8, v0

    .line 326
    iget-object v3, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->numbers:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_1
    iget v10, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->recordIndex:I

    .line 330
    iget v11, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->nextIndex:I

    .line 332
    new-instance v3, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/telephony/uicc/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    .line 335
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2

    .line 336
    iget-object p2, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v3}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_3

    .line 339
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 340
    throw p2

    :cond_3
    return-void
.end method

.method private blacklist responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 121
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 124
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 125
    throw v1

    :cond_1
    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 106
    :try_start_0
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 107
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 110
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 111
    throw v2

    :cond_1
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 60
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist accessPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 360
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAtrResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseIccCardStatus(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V

    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 71
    const-string p0, "e94363ef2041c98feabe84e756d983ad196394e8"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseSIM_PB(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V

    return-void
.end method

.method public blacklist getPhonebookStorageInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;)V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget v1, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->totalCount:I

    .line 228
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->usedCount:I

    .line 229
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->firstIndex:I

    .line 230
    iget v4, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->maxTextLength:I

    .line 231
    iget p2, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->maxNumberLength:I

    filled-new-array {v1, v2, v3, v4, p2}, [I

    move-result-object p2

    .line 234
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 235
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 238
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 239
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist getSimLockInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;)V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget v1, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->numberOfLockTypes:I

    .line 275
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->lockType:I

    .line 276
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->lockKey:I

    .line 277
    iget p2, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->numberOfRetry:I

    .line 279
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    .line 282
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 283
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v4}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 286
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 287
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist getUsimPhonebookCapabilityResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist setSimInitEventResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimOnOffResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 213
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method
