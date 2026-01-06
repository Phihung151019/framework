.class public Lcom/android/internal/telephony/SehMessagingResponse;
.super Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;
.source "SehMessagingResponse.java"


# instance fields
.field private final blacklist mSemRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist oemResponseGsmBroadcastConfig(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 116
    new-instance v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-direct {v1}, Lcom/samsung/android/telephony/gsm/SemCbConfig;-><init>()V

    .line 128
    :try_start_0
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_0
    :try_start_1
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->enabled:I

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 136
    iput-boolean v4, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 138
    iput-boolean v5, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    .line 146
    :goto_0
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->selectedId:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    .line 147
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->msgIdMaxCount:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    .line 148
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->msgIdCount:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    .line 150
    new-array v2, v2, [I

    .line 151
    iput-object v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    .line 153
    iget-object p2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->msgIDs:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 157
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    move v2, v5

    .line 159
    :goto_1
    iget v3, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-ge v5, v3, :cond_2

    .line 160
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 161
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    .line 164
    iget-object v6, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    aput v3, v6, v5

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    :cond_2
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_3

    .line 169
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_4
    :try_start_2
    iget-object p2, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const-string v2, "oemResponseGsmBroadcastConfig parameter is invalid. processResponseDone with return null."

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/16 p2, 0x42

    .line 141
    iput p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 173
    throw p2

    :cond_5
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

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 236
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 237
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

    .line 239
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 240
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 244
    throw p2

    :cond_2
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 3

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 224
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 225
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehMessagingResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->messageRef:I

    iget-object v3, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorCode:I

    iget p2, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorClass:I

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 103
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 104
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 107
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 108
    throw p2

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
.method public blacklist getCellBroadcastConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->oemResponseGsmBroadcastConfig(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V

    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 55
    const-string p0, "c1a8596db57e3bcc8e4e86f1eb7b2df7839ca140"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getStoredMsgCountFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 183
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 186
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 187
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist readSmsFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 197
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 200
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 201
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSmsToSimResponse : index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 207
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method
