.class public Lcom/android/internal/telephony/metrics/ServiceStateStats;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "ServiceStateStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ServiceStateStats"


# instance fields
.field private blacklist mCurrentDataRat:I

.field private final blacklist mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

.field private blacklist mExistAnyConnectedInternetPdn:Z

.field private final blacklist mLastState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;


# direct methods
.method public static synthetic blacklist $r8$lambda$2FfGbpmycSAbjm9lOowU6VIzEkI(JZLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 1

    .line 438
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p2

    .line 441
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 442
    iput-boolean p2, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 443
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p2
.end method

.method public static synthetic blacklist $r8$lambda$QLEvddsDVCe7WjV_fzoeiFv2U5w(JILcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 1

    .line 173
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p2

    .line 177
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 178
    iput p2, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 179
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p2
.end method

.method public static synthetic blacklist $r8$lambda$U1TDr_x3xGFEy_kQ0WlTesiws-w(Lcom/android/internal/telephony/metrics/ServiceStateStats;JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->lambda$onImsVoiceRegistrationChanged$1(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bUeuVpxFkTiBvGJZkFk0WSRO0OY(Lcom/android/internal/telephony/metrics/ServiceStateStats;JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->lambda$onVoiceServiceStateOverrideChanged$3(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qeXdWq0NdFhfdzjpUXakHQIVc8Y(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5

    .line 71
    new-instance v0, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 74
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getDeviceStateHelper()Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    return-void
.end method

.method private blacklist addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceStateAndSwitch(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;JLcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    return-void
.end method

.method private blacklist addServiceStateAndSwitch(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;JLcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .locals 3

    .line 213
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmTimestamp(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 218
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    .line 219
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmTimestamp(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)J

    move-result-wide v1

    sub-long/2addr p2, v1

    iput-wide p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCellularServiceStateAndCellularDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    return-void

    .line 222
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    const-string p1, "addServiceState: durationMillis<0"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .locals 3

    .line 313
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    .line 314
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    .line 315
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    .line 316
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    .line 317
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    .line 318
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    .line 319
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    .line 320
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    .line 321
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    .line 322
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 323
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    .line 324
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 325
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 326
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 327
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    .line 328
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    .line 329
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 330
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    return-object v0
.end method

.method static blacklist getBand(Landroid/telephony/ServiceState;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 269
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    const-string v1, "getBand: serviceState=null"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v1

    const/4 v2, 0x2

    .line 274
    invoke-static {p0, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 276
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    :cond_1
    const/4 p0, 0x1

    if-eq v3, p0, :cond_5

    if-eq v3, v2, :cond_5

    const/4 p0, 0x3

    if-eq v3, p0, :cond_4

    const/16 p0, 0xd

    if-eq v3, p0, :cond_3

    const/16 p0, 0xf

    if-eq v3, p0, :cond_4

    const/16 p0, 0x10

    if-eq v3, p0, :cond_5

    const/16 p0, 0x13

    if-eq v3, p0, :cond_3

    const/16 p0, 0x14

    if-eq v3, p0, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 299
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBand: unknown WWAN RAT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForNrarfcn(I)I

    move-result p0

    goto :goto_0

    .line 293
    :cond_3
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result p0

    goto :goto_0

    .line 289
    :cond_4
    :pswitch_0
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForUarfcn(I)I

    move-result p0

    goto :goto_0

    .line 282
    :cond_5
    invoke-static {v1}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForArfcn(I)I

    move-result p0

    :goto_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_6

    .line 304
    sget-object p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBand: band invalid for rat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist getBand(Lcom/android/internal/telephony/Phone;)I
    .locals 0

    .line 259
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getServiceStateForPhone(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ServiceState;

    move-result-object p0

    .line 260
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Landroid/telephony/ServiceState;)I

    move-result p0

    return p0
.end method

.method private blacklist getDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    iget-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iget-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iget v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iget v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-eq p0, v0, :cond_0

    .line 234
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    .line 235
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    .line 236
    iget p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    .line 237
    iget-boolean p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    .line 238
    iget p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    .line 239
    iget p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    const/4 p1, 0x1

    .line 240
    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getNetworkRoamingState(Landroid/telephony/ServiceState;I)I
    .locals 1

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result p1

    .line 457
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public static blacklist getRat(Landroid/telephony/ServiceState;I)I
    .locals 1

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getServiceStateForPhone(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ServiceState;
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)I
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method public static blacklist getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eqz p0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getImsVoiceRadioTech()I

    move-result p0

    if-eqz p0, :cond_2

    const/16 v3, 0x12

    if-eq p0, v3, :cond_1

    .line 375
    invoke-static {p1, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return p0

    :cond_2
    if-ne p2, v1, :cond_3

    return v0

    .line 385
    :cond_3
    invoke-static {p1, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method private blacklist isCrossSimCallingRegistered(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    .line 390
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static blacklist isEmergencyOnly(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isEndc(Landroid/telephony/ServiceState;)Z
    .locals 4

    const/4 v0, 0x2

    .line 417
    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isInternetPdnUp(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getInternetDataNetworkState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static blacklist isModemOff(Landroid/telephony/ServiceState;)Z
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isNetworkRoaming(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x1

    .line 477
    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 478
    invoke-static {p0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isNetworkRoaming(Landroid/telephony/ServiceState;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 471
    invoke-virtual {p0, p1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 472
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private synthetic blacklist lambda$onImsVoiceRegistrationChanged$1(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 2

    .line 92
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0

    .line 95
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getServiceStateForPhone(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)I

    move-result v0

    iput v0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isCrossSimCallingRegistered(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    .line 99
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0
.end method

.method private synthetic blacklist lambda$onVoiceServiceStateOverrideChanged$3(JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;
    .locals 1

    .line 195
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0

    .line 198
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p3

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    iput-boolean p0, p3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 200
    new-instance p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    return-object p0
.end method

.method private blacklist onInternetDataNetworkChanged(Z)V
    .locals 4

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;-><init>(JZ)V

    .line 436
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 445
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method private blacklist writeDataRatAtom(Landroid/telephony/ServiceState;)V
    .locals 11

    .line 483
    invoke-static {}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getActiveDataSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 486
    invoke-virtual {p1, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 492
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    .line 493
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v3

    .line 494
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    .line 497
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0xe

    const/4 v5, 0x3

    if-eq v2, v4, :cond_b

    const/16 v4, 0xf

    if-eq v2, v4, :cond_b

    if-eq v2, v5, :cond_b

    const/16 v4, 0x8

    if-eq v2, v4, :cond_b

    const/16 v6, 0x9

    if-eq v2, v6, :cond_b

    const/16 v7, 0xa

    if-eq v2, v7, :cond_b

    const/4 v7, 0x5

    if-eq v2, v7, :cond_b

    const/4 v8, 0x6

    if-eq v2, v8, :cond_b

    const/16 v9, 0xc

    if-ne v2, v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x7

    if-eq v2, v9, :cond_c

    if-eq v2, v1, :cond_c

    if-eq v2, v0, :cond_c

    const/4 v1, 0x4

    if-eq v2, v1, :cond_c

    const/16 v10, 0x10

    if-ne v2, v10, :cond_5

    goto :goto_1

    :cond_5
    const/16 v10, 0x14

    if-ne v2, v10, :cond_7

    if-eq v3, v1, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_1

    :cond_7
    const/16 v4, 0xd

    if-ne v2, v4, :cond_a

    if-ne p1, v5, :cond_9

    if-eq v3, v1, :cond_8

    move v0, v8

    goto :goto_1

    :cond_8
    move v0, v9

    goto :goto_1

    :cond_9
    if-ne p1, v0, :cond_2

    move v0, v7

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    :goto_0
    move v0, v5

    .line 533
    :cond_c
    :goto_1
    iget p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    if-eq v0, p1, :cond_d

    const/16 p1, 0x356

    .line 534
    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    .line 535
    iput v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    :cond_d
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist conclude()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda4;-><init>(J)V

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 83
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method blacklist getCurrentDataRat()I
    .locals 0

    .line 540
    iget p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mCurrentDataRat:I

    return p0
.end method

.method protected blacklist getTimeMillis()J
    .locals 2

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mExistAnyConnectedInternetPdn:Z

    if-eq v0, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mExistAnyConnectedInternetPdn:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onInternetDataNetworkChanged(Z)V

    :cond_0
    return-void
.end method

.method public blacklist onFoldStateChanged(I)V
    .locals 4

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    iget v2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;-><init>(JI)V

    .line 170
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 181
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onImsVoiceRegistrationChanged()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/metrics/ServiceStateStats;J)V

    .line 90
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 101
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method public blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 122
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isModemOff(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    goto/16 :goto_1

    .line 126
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    .line 127
    new-instance v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    .line 128
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    const/4 v4, 0x2

    .line 129
    invoke-static {p1, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    const/4 v5, 0x1

    .line 131
    invoke-static {p1, v5}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getNetworkRoamingState(Landroid/telephony/ServiceState;I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    .line 133
    invoke-static {p1, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getNetworkRoamingState(Landroid/telephony/ServiceState;I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    .line 134
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isEndc(Landroid/telephony/ServiceState;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    .line 135
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    .line 137
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    .line 138
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isEmergencyOnly(Landroid/telephony/ServiceState;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    .line 139
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isInternetPdnUp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 140
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->getFoldState()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 141
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 142
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    .line 143
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isCrossSimCallingRegistered(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    if-eqz v2, :cond_1

    .line 145
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInSatelliteModeForCarrierRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 146
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 148
    iput-boolean v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 149
    iput-boolean v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;-><init>(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;J)V

    .line 152
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 153
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;->-$$Nest$fgetmServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v4

    .line 154
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object v3

    .line 153
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceStateAndSwitch(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;JLcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    .line 157
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->writeDataRatAtom(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public blacklist onVoiceServiceStateOverrideChanged(Z)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mOverrideVoiceService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getTimeMillis()J

    move-result-wide v0

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mLastState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/metrics/ServiceStateStats;J)V

    .line 193
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    .line 202
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->addServiceState(Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;J)V

    return-void
.end method

.method public blacklist registerDataNetworkControllerCallback()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method
