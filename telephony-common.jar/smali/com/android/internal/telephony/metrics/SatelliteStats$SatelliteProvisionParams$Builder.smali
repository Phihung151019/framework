.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mIsCanceled:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mIsProvisionRequest:Z

.field private blacklist mProvisioningTimeSec:I

.field private blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCanceled(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsCanceled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsProvisionRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsProvisionRequest:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProvisioningTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mProvisioningTimeSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mResultCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 1622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1623
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mResultCode:I

    .line 1624
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mProvisioningTimeSec:I

    const/4 v1, 0x0

    .line 1625
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsProvisionRequest:Z

    .line 1626
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsCanceled:Z

    .line 1627
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mCarrierId:I

    .line 1628
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsNtnOnlyCarrier:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;
    .locals 3

    .line 1686
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    .locals 0

    .line 1668
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setIsCanceled(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    .locals 0

    .line 1662
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsCanceled:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    .locals 0

    .line 1677
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setIsProvisionRequest(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    .locals 0

    .line 1653
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mIsProvisionRequest:Z

    return-object p0
.end method

.method public blacklist setProvisioningTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    .locals 0

    .line 1644
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mProvisioningTimeSec:I

    return-object p0
.end method

.method public blacklist setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    .locals 0

    .line 1635
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->mResultCode:I

    return-object p0
.end method
