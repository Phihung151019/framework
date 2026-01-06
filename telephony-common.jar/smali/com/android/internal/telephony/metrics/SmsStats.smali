.class public Lcom/android/internal/telephony/metrics/SmsStats;
.super Ljava/lang/Object;
.source "SmsStats.java"


# static fields
.field private static final blacklist RANDOM:Ljava/util/Random;

.field private static final blacklist TAG:Ljava/lang/String; = "SmsStats"


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist getCarrierId()I
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 419
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 420
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 422
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0
.end method

.method private blacklist getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 3

    .line 231
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    .line 232
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsFormat(Z)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    .line 233
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(IZ)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 234
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    const/4 p1, 0x0

    .line 235
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    const/4 p2, 0x1

    .line 236
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 237
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 238
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 239
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIsRoaming()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getCarrierId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    .line 247
    sget-object p1, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 248
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    .line 249
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isManagedProfile()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->isNonTerrestrialNetwork()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    .line 251
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    .line 252
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->isNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    .line 253
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->pduLength:I

    return-object v0
.end method

.method private static blacklist getIncomingSmsError(I)I
    .locals 3

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getIncomingSmsError(Z)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getIsRoaming()Z
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 414
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method private blacklist getOutgoingDefaultProto(ZZJZJZZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 4

    .line 261
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    .line 262
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsFormat(Z)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    .line 263
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(ZZ)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    .line 264
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(Z)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    const/4 p1, 0x1

    .line 265
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 266
    :goto_0
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 267
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIsRoaming()Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 268
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getCarrierId()I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    sget-object p2, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    :goto_1
    iput-wide p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    .line 277
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    .line 278
    iput-wide p6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    .line 279
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    .line 280
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isManagedProfile()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    .line 281
    iput-boolean p8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->isNonTerrestrialNetwork()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    .line 283
    iput-boolean p9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    .line 284
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->isNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    .line 285
    iput p10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->pduLength:I

    return-object v0
.end method

.method private blacklist getPhoneId()I
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 377
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 379
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0
.end method

.method private blacklist getRat(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    .line 396
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(Z)I

    move-result p0

    return p0
.end method

.method private blacklist getRat(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x12

    return p0

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 409
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 385
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getSmsFormat(Z)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)I
    .locals 18

    move-object/from16 v0, p0

    .line 368
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 370
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    .line 371
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->pduLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static blacklist getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)I
    .locals 18

    move-object/from16 v0, p0

    .line 357
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 358
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->pduLength:I

    .line 360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 357
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private blacklist getSmsTech(IZ)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    .line 301
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(ZZ)I

    move-result p0

    return p0
.end method

.method private blacklist getSmsTech(ZZ)I
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNbIotNtn(Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    .line 436
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNonTerrestrialNetwork()Z
    .locals 1

    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    return p0

    .line 430
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/metrics/SmsStats;->TAG:Ljava/lang/String;

    const-string v0, "isNonTerrestrialNetwork(), ServiceState is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist onDroppedIncomingMultipartSms(ZIIZI)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 98
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 99
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    const/4 p4, 0x1

    .line 100
    iput p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 101
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 102
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsError(ZIIZI)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 149
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 150
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsPP(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0, p1, v0, p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p3, 0x1

    .line 127
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 128
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(Z)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsSuccess(ZIIZJZI)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 137
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 138
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 139
    iput-boolean p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 140
    iput-wide p5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsTypeZero(II)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p2, 0x3

    .line 118
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsVoicemail(ZII)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p2, 0x2

    .line 110
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsWapPush(IIIJZI)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0, p1, p6, p7}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZIZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p6, 0x4

    .line 157
    iput p6, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 158
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 159
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 160
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 161
    iput-wide p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onOutgoingShortCodeSms(II)V
    .locals 1

    .line 221
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;-><init>()V

    .line 222
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    .line 223
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    const/4 p1, 0x1

    .line 224
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addOutgoingShortCodeSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZZZIIJZJZZI)V
    .locals 13

    move/from16 v0, p4

    move/from16 v1, p5

    move-object v2, p0

    move v4, p1

    move v3, p2

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 180
    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/metrics/SmsStats;->getOutgoingDefaultProto(ZZJZJZZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object v5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v6, 0x65

    if-eqz p1, :cond_2

    .line 188
    iput v0, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz p3, :cond_0

    const/4 p1, 0x4

    .line 190
    iput p1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_2

    :cond_0
    if-ne v0, v6, :cond_1

    .line 192
    iput v4, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 194
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_2

    :cond_2
    if-ne v0, v6, :cond_3

    .line 199
    iput v4, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 201
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    .line 203
    :cond_4
    :goto_0
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    const/16 p1, 0x64

    if-ne v0, p1, :cond_6

    const/4 p1, -0x1

    if-ne v1, p1, :cond_6

    if-eqz p2, :cond_5

    const/16 p1, 0x42

    goto :goto_1

    :cond_5
    const/16 p1, 0x14b

    .line 206
    :goto_1
    iput p1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 210
    :cond_6
    :goto_2
    iput v0, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    .line 211
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addOutgoingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V

    .line 214
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 215
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getInstance(I)Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    move-result-object p1

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onOutgoingSms(I)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZZZIJZJZZI)V
    .locals 14

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 169
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZI)V

    return-void
.end method
