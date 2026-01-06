.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mDatagramSizeBytes:I

.field private blacklist mDatagramTransferTimeMillis:J

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramSizeBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mDatagramSizeBytes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramTransferTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mDatagramTransferTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mIsDemoMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mResultCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1346
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mResultCode:I

    .line 1347
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mDatagramSizeBytes:I

    const-wide/16 v1, -0x1

    .line 1348
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mDatagramTransferTimeMillis:J

    const/4 v1, 0x0

    .line 1349
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mIsDemoMode:Z

    .line 1350
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mCarrierId:I

    .line 1351
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mIsNtnOnlyCarrier:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;
    .locals 3

    .line 1409
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    .locals 0

    .line 1391
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setDatagramSizeBytes(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    .locals 0

    .line 1367
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mDatagramSizeBytes:I

    return-object p0
.end method

.method public blacklist setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    .locals 0

    .line 1376
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mDatagramTransferTimeMillis:J

    return-object p0
.end method

.method public blacklist setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    .locals 0

    .line 1385
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mIsDemoMode:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    .locals 0

    .line 1400
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    .locals 0

    .line 1358
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->mResultCode:I

    return-object p0
.end method
