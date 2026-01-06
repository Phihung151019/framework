.class public Lcom/android/internal/telephony/SehNetworkResponse;
.super Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;
.source "SehNetworkResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 0

    if-nez p1, :cond_0

    .line 168
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 170
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 172
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_2
    const/4 p0, 0x3

    if-ne p1, p0, :cond_3

    .line 174
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    .line 176
    :cond_3
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0
.end method

.method private blacklist convertOperatorInfo(Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 8

    .line 183
    iget-object v0, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->alphaLong:Ljava/lang/String;

    .line 184
    iget-object v1, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->alphaShort:Ljava/lang/String;

    .line 185
    iget-object v5, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v2, v2, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getEons(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    move-object v4, v1

    .line 197
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/OperatorInfo;

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->status:I

    .line 198
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    iget-object v0, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->convertRatStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add OperatorInfo ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v2
.end method

.method private blacklist convertRatStringToInt(Ljava/lang/String;)I
    .locals 1

    .line 205
    const-string p0, "GERAN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 206
    :cond_0
    const-string p0, "UMTS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    return v0

    .line 207
    :cond_1
    const-string p0, "TD"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 208
    :cond_2
    const-string p0, "LTE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 209
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

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 106
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 107
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

    .line 109
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 110
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 114
    throw p2

    :cond_2
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 3

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 95
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method static blacklist responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SemRIL;",
            "Lvendor/samsung/hardware/radio/SehRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 153
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 154
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 157
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 158
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 162
    throw p2

    :cond_2
    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 125
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 128
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 129
    throw v2

    :cond_1
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist cfrmCpaiFeatureInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencyControlResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencySearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 276
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist evtCpaiDataGatheringResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist execCpaiModelUpdateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 81
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SehNetworkResponse;->convertOperatorInfo(Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 83
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 84
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 88
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist getCnapResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 269
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCpaiFeatureInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;II[B)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x803

    .line 424
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 425
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    int-to-byte p2, p2

    .line 426
    aput-byte p2, v2, v3

    shr-int/lit8 p2, p3, 0x8

    int-to-byte p2, p2

    .line 427
    aput-byte p2, v2, v1

    const/4 p2, 0x2

    int-to-byte v1, p3

    .line 428
    aput-byte v1, v2, p2

    :goto_0
    if-ge v3, p3, :cond_0

    add-int/lit8 p2, v3, 0x3

    .line 431
    aget-byte v1, p4, v3

    aput-byte v1, v2, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_0
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 436
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 439
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 440
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist getCpaiModelVersionResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;II[B)V
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x85

    .line 395
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 396
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    shr-int/lit8 v4, p2, 0x18

    int-to-byte v4, v4

    .line 397
    aput-byte v4, v2, v3

    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    .line 398
    aput-byte v4, v2, v1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v4, 0x2

    .line 399
    aput-byte v1, v2, v4

    const/4 v1, 0x3

    int-to-byte p2, p2

    .line 400
    aput-byte p2, v2, v1

    const/4 p2, 0x4

    int-to-byte p3, p3

    .line 401
    aput-byte p3, v2, p2

    :goto_0
    const/16 p2, 0x80

    if-ge v3, p2, :cond_0

    add-int/lit8 p2, v3, 0x5

    .line 403
    aget-byte p3, p4, v3

    aput-byte p3, v2, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 408
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 411
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 412
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist getCsgListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehCsgInfo;)V
    .locals 12

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    :try_start_0
    array-length v0, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p2, v3

    .line 297
    new-instance v5, Lcom/android/internal/telephony/SemCsgInfo;

    iget v6, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->csgId:I

    iget-object v7, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->name:Ljava/lang/String;

    iget-object v8, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->plmn:Ljava/lang/String;

    iget v9, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->rat:I

    iget v10, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->category:I

    iget v11, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->signalStrength:I

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/SemCsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 301
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 302
    iget-object p2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 306
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist getDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 254
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 66
    const-string p0, "0fc15a1faf82e2c79f263a7fd6e8b5ffba3644f3"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getNrIconTypeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 364
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0

    .line 356
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V
    .locals 13

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :try_start_0
    array-length v0, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p2, v3

    .line 230
    new-instance v5, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget v6, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->index:I

    iget-object v7, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    iget-object v8, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    iget v9, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmAct:I

    iget v10, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmCompactAct:I

    iget v11, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->utranAct:I

    iget v12, v4, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->mode:I

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/telephony/PreferredNetworkListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 233
    :cond_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 234
    iget-object p2, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 238
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist getRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 374
    new-instance v5, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v6, v4, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v4, v4, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_0
    :try_start_0
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 379
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 382
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 383
    throw p2

    :cond_2
    return-void
.end method

.method public blacklist selectCsgManualResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendEncodedUssdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendRequestRawResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[B)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 334
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 336
    :goto_0
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_1

    .line 337
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 339
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public blacklist sendRequestStringsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Ljava/lang/String;)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCpaiDataGatheringResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCpaiDevAppMessageResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCurrentNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setImsCallListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setScanResultViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method
