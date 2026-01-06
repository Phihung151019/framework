.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteOutgoingDatagramParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mDatagramSizeBytes:I

.field private final blacklist mDatagramTransferTimeMillis:J

.field private final blacklist mDatagramType:I

.field private final blacklist mIsDemoMode:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mResultCode:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1441
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmDatagramType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramType:I

    .line 1442
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mResultCode:I

    .line 1443
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmDatagramSizeBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramSizeBytes:I

    .line 1444
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmDatagramTransferTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramTransferTimeMillis:J

    .line 1445
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mIsDemoMode:Z

    .line 1446
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mCarrierId:I

    .line 1447
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .locals 0

    .line 1471
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getDatagramSizeBytes()I
    .locals 0

    .line 1459
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramSizeBytes:I

    return p0
.end method

.method public blacklist getDatagramTransferTimeMillis()J
    .locals 2

    .line 1463
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramTransferTimeMillis:J

    return-wide v0
.end method

.method public blacklist getDatagramType()I
    .locals 0

    .line 1451
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramType:I

    return p0
.end method

.method public blacklist getIsDemoMode()Z
    .locals 0

    .line 1467
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mIsDemoMode:Z

    return p0
.end method

.method public blacklist getResultCode()I
    .locals 0

    .line 1455
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mResultCode:I

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .locals 0

    .line 1475
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutgoingDatagramParams(datagramType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datagramSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datagramTransferTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mDatagramTransferTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDemoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mIsDemoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
