.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteConfigUpdaterParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierConfigResult:I

.field private final blacklist mConfigVersion:I

.field private final blacklist mCount:I

.field private final blacklist mOemConfigResult:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)V
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

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3002
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->-$$Nest$fgetmConfigVersion(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mConfigVersion:I

    .line 3003
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->-$$Nest$fgetmOemConfigResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mOemConfigResult:I

    .line 3004
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->-$$Nest$fgetmCarrierConfigResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mCarrierConfigResult:I

    .line 3005
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;->-$$Nest$fgetmCount(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierConfigResult()I
    .locals 0

    .line 3017
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mCarrierConfigResult:I

    return p0
.end method

.method public blacklist getConfigVersion()I
    .locals 0

    .line 3009
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mConfigVersion:I

    return p0
.end method

.method public blacklist getCount()I
    .locals 0

    .line 3021
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mCount:I

    return p0
.end method

.method public blacklist getOemConfigResult()I
    .locals 0

    .line 3013
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mOemConfigResult:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteConfigUpdaterParams(configVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oemConfigResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mOemConfigResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierConfigResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mCarrierConfigResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->mCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
