.class public Lcom/android/internal/telephony/SehSatelliteResponse;
.super Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;
.source "SehSatelliteResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SatelliteRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteRIL;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    return-void
.end method

.method private blacklist convertToSatelliteRegState(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
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

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 90
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 91
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

    .line 93
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 94
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 98
    throw p2

    :cond_2
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 3

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 78
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 79
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 123
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 126
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 127
    throw v1

    :cond_1
    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 109
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 112
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 113
    throw v2

    :cond_1
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 62
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist answerResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist cleanupNetworkInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist disableIotModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist enableIotModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAbsoluteRfChannelNumberResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 359
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCallEndReasonResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 172
    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;->ccCause:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 173
    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;->endStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 175
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 176
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 179
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 180
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist getCallStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/satellite/SehSatCall;)V
    .locals 9

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 191
    array-length v1, p2

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    new-instance v3, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    .line 196
    aget-object v6, p2, v5

    iget v7, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->index:I

    iput v7, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 197
    iget v7, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->dir:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    iput-boolean v7, v3, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 198
    iget v6, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->status:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 199
    aget-object v6, p2, v5

    iget v7, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->mode:I

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    move v8, v4

    :goto_2
    iput-boolean v8, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 200
    iget-boolean v7, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->mpty:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 201
    iget v6, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->cli:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 202
    aget-object v6, p2, v5

    iget-object v6, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 203
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 204
    :cond_2
    aget-object v6, p2, v5

    iget v6, v6, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->type:I

    iput v6, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 205
    iget-object v7, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 210
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_4

    .line 211
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    .line 214
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 215
    throw p2

    :cond_5
    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 73
    const-string p0, "90863b100bf8b0ec3c45dec007d73ce7f04d8850"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getIotModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 484
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getIotRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;)V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    new-instance v1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;

    invoke-direct {v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;-><init>()V

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;->state:I

    .line 496
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->setState(I)Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;

    move-result-object v1

    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;->regType:I

    .line 497
    invoke-virtual {v1, p2}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->setRegType(I)Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;

    move-result-object p2

    .line 498
    invoke-virtual {p2}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->build()Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    move-result-object p2

    .line 500
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 501
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 504
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 505
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist getRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    invoke-direct {v1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;-><init>()V

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->mode:I

    .line 248
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setMode(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->state:I

    .line 249
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SehSatelliteResponse;->convertToSatelliteRegState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setRegState(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->lac:I

    .line 250
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setLac(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->ci:I

    .line 251
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setCi(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->arfcn:I

    .line 252
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setArfcn(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->beam_id:I

    .line 253
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setBeamId(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->bm_long:I

    .line 254
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setBmLong(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->bm_lat:I

    .line 255
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setBmLat(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object v1

    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->reject_cause:I

    .line 256
    invoke-virtual {v1, p2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setRejCause(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p2

    const/4 v1, -0x1

    .line 257
    invoke-virtual {p2, v1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setSatelliteId(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->build()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    move-result-object p2

    .line 260
    :try_start_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 261
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 264
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 265
    throw v1

    :cond_1
    return-void
.end method

.method public blacklist getSatelliteIdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 434
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getSerialNumberResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;)V
    .locals 12

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v2, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iget v3, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->rssi:I

    iget v4, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->snr:I

    iget v5, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->tx_target:I

    iget v6, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->tx_pdet:I

    iget v7, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->vdet:I

    iget v8, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->satId:I

    iget v9, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->ssRsrq:I

    iget v10, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->ssRsrp:I

    iget v11, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->ssSinr:I

    invoke-direct/range {v2 .. v11}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(IIIIIIIII)V

    .line 281
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 282
    iget-object p2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 285
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 286
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist getTxPowerResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 367
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist hangupResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendIccSimAuthenticationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendLocationDataResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendLocationUserPermitResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendRawAtCommandResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;)V
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->messageRef:I

    iget-object v3, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->errorCode:I

    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->errorClass:I

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 399
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 400
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 403
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 404
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;)V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->messageRef:I

    iget-object v3, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->errorCode:I

    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->errorClass:I

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 380
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 381
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSatelliteResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 384
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteResponse;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SatelliteRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 385
    throw p2

    :cond_1
    return-void
.end method

.method public blacklist setCombinedConfigModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDsiConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setGpsInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setImeiResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setImsiResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkQueryModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPowerResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSignalThresholdReportResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSmscAddressResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist startDtmfResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist startNetworkSearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopDtmfResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSatelliteResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method
