.class public Lcom/android/internal/telephony/SehSatelliteIndication;
.super Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteIndication$Stub;
.source "SehSatelliteIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SatelliteRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteRIL;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteIndication$Stub;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    return-void
.end method

.method private blacklist convertSehRadioStateToInt(I)I
    .locals 0

    .line 0
    if-eqz p1, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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


# virtual methods
.method public blacklist callEndReasonUpdated(ILvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b57

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallEndReasonUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 84
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist callNumberDisplayInfoUpdated(ILvendor/samsung/hardware/radio/satellite/SehSatCallDisplayInfo;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 91
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b58

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallNumberDisplayInfoUpdatedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 94
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist callStateChanged(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 71
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b56

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mCallStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 74
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 65
    const-string p0, "90863b100bf8b0ec3c45dec007d73ce7f04d8850"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist iotRegistrationStateChanged(ILvendor/samsung/hardware/radio/satellite/SehSatIotRegState;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 232
    new-instance p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;-><init>()V

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;->state:I

    .line 233
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->setState(I)Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;

    move-result-object p1

    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;->regType:I

    .line 234
    invoke-virtual {p1, p2}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->setRegType(I)Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->build()Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b61

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 238
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mIotRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 239
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist newSms(I[B)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b5e

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 212
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p1

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatNewSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1

    .line 214
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 215
    :cond_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_0
    invoke-direct {p2, v0, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public blacklist newSmsStatusReport(ILvendor/samsung/hardware/radio/satellite/SehSatStatusReport;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b60

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSatSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 225
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist radioStateChanged(II)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b5c

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 181
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SehSatelliteIndication;->convertSehRadioStateToInt(I)I

    move-result p1

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SatelliteBaseCommands;->setRadioState(IZ)V

    return-void
.end method

.method public blacklist registrationStateChanged(ILvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 121
    new-instance p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    invoke-direct {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;-><init>()V

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->mode:I

    .line 122
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setMode(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->state:I

    .line 123
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehSatelliteIndication;->convertToSatelliteRegState(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setRegState(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->lac:I

    .line 124
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setLac(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->ci:I

    .line 125
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setCi(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->arfcn:I

    .line 126
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setArfcn(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->beam_id:I

    .line 127
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setBeamId(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->bm_long:I

    .line 128
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setBmLong(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->bm_lat:I

    .line 129
    invoke-virtual {p1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setBmLat(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    iget p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->reject_cause:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setRejCause(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    const/4 p2, -0x1

    .line 131
    invoke-virtual {p1, p2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->setSatelliteId(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->build()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b59

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRegistrationStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 137
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist requestGpsData(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b5b

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestGpsDataRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 161
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILvendor/samsung/hardware/radio/satellite/SehSatSimAuthReqData;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 188
    new-instance p1, Landroid/telephony/satellite/SemSatSimAuthReqData;

    iget v0, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthReqData;->randLen:I

    iget-object v1, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthReqData;->rand:Ljava/lang/String;

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthReqData;->authLen:I

    iget-object p2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthReqData;->auth:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/telephony/satellite/SemSatSimAuthReqData;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b5d

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mRequestSimAuthDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 193
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist signalStrenghChanged(ILvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;)V
    .locals 11

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 144
    new-instance v1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iget v2, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->rssi:I

    iget v3, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->snr:I

    iget v4, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->tx_target:I

    iget v5, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->tx_pdet:I

    iget v6, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->vdet:I

    iget v7, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->satId:I

    iget v8, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->ssRsrq:I

    iget v9, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->ssRsrp:I

    iget v10, p2, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->ssSinr:I

    invoke-direct/range {v1 .. v10}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(IIIIIIIII)V

    .line 148
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 p2, 0x2b5a

    invoke-virtual {v1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 150
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 151
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simAuthenticationFailed(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SatelliteRIL;->processIndication(I)V

    .line 200
    iget-object p1, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    const/16 v0, 0x2b5f

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->unsljLog(I)V

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/SehSatelliteIndication;->mRil:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteBaseCommands;->mSimAuthFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 203
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
