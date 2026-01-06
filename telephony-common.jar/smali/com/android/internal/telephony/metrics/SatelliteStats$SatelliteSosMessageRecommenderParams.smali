.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteSosMessageRecommenderParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mCellularServiceState:I

.field private final blacklist mCountOfTimerStarted:I

.field private final blacklist mIsDisplaySosMessageSent:Z

.field private final blacklist mIsImsRegistered:Z

.field private final blacklist mIsMultiSim:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mIsSatelliteAllowedInCurrentLocation:Z

.field private final blacklist mIsWifiConnected:Z

.field private final blacklist mRecommendingHandoverType:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)V
    .locals 0
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

    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsDisplaySosMessageSent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsDisplaySosMessageSent:Z

    .line 1722
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmCountOfTimerStarted(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCountOfTimerStarted:I

    .line 1723
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsImsRegistered(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsImsRegistered:Z

    .line 1724
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmCellularServiceState(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCellularServiceState:I

    .line 1725
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsMultiSim:Z

    .line 1726
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmRecommendingHandoverType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mRecommendingHandoverType:I

    .line 1727
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsSatelliteAllowedInCurrentLocation(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsSatelliteAllowedInCurrentLocation:Z

    .line 1729
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsWifiConnected:Z

    .line 1730
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCarrierId:I

    .line 1731
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .locals 0

    .line 1767
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCellularServiceState()I
    .locals 0

    .line 1747
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCellularServiceState:I

    return p0
.end method

.method public blacklist getCountOfTimerStarted()I
    .locals 0

    .line 1739
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCountOfTimerStarted:I

    return p0
.end method

.method public blacklist getRecommendingHandoverType()I
    .locals 0

    .line 1755
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mRecommendingHandoverType:I

    return p0
.end method

.method public blacklist isDisplaySosMessageSent()Z
    .locals 0

    .line 1735
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsDisplaySosMessageSent:Z

    return p0
.end method

.method public blacklist isImsRegistered()Z
    .locals 0

    .line 1743
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsImsRegistered:Z

    return p0
.end method

.method public blacklist isMultiSim()Z
    .locals 0

    .line 1751
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsMultiSim:Z

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .locals 0

    .line 1771
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public blacklist isSatelliteAllowedInCurrentLocation()Z
    .locals 0

    .line 1759
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsSatelliteAllowedInCurrentLocation:Z

    return p0
.end method

.method public blacklist isWifiConnected()Z
    .locals 0

    .line 1763
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsWifiConnected:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SosMessageRecommenderParams(isDisplaySosMessageSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsDisplaySosMessageSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countOfTimerStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCountOfTimerStarted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isImsRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cellularServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCellularServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recommendingHandoverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mRecommendingHandoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSatelliteAllowedInCurrentLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsSatelliteAllowedInCurrentLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
