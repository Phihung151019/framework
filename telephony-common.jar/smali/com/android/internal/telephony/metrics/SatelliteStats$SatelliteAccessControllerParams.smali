.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteAccessControllerParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAccessControlType:I

.field private final blacklist mCarrierId:I

.field private final blacklist mConfigDataSource:I

.field private final blacklist mCountryCodes:[Ljava/lang/String;

.field private final blacklist mIsAllowed:Z

.field private final blacklist mIsEmergency:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mLocationQueryTimeMillis:J

.field private final blacklist mOnDeviceLookupTimeMillis:J

.field private final blacklist mResultCode:I

.field private final blacklist mTotalCheckingTimeMillis:J

.field private final blacklist mTriggeringEvent:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)V
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

    .line 3107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3108
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmAccessControlType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mAccessControlType:I

    .line 3109
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmLocationQueryTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mLocationQueryTimeMillis:J

    .line 3110
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmOnDeviceLookupTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mOnDeviceLookupTimeMillis:J

    .line 3111
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmTotalCheckingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mTotalCheckingTimeMillis:J

    .line 3112
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmIsAllowed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsAllowed:Z

    .line 3113
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsEmergency:Z

    .line 3114
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mResultCode:I

    .line 3115
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmCountryCodes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mCountryCodes:[Ljava/lang/String;

    .line 3116
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mConfigDataSource:I

    .line 3117
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mCarrierId:I

    .line 3118
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmTriggeringEvent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mTriggeringEvent:I

    .line 3119
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAccessControlType()I
    .locals 0

    .line 3123
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mAccessControlType:I

    return p0
.end method

.method public blacklist getCarrierId()I
    .locals 0

    .line 3159
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getConfigDataSource()I
    .locals 0

    .line 3155
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mConfigDataSource:I

    return p0
.end method

.method public blacklist getCountryCodes()[Ljava/lang/String;
    .locals 0

    .line 3151
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mCountryCodes:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsAllowed()Z
    .locals 0

    .line 3139
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsAllowed:Z

    return p0
.end method

.method public blacklist getIsEmergency()Z
    .locals 0

    .line 3143
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsEmergency:Z

    return p0
.end method

.method public blacklist getLocationQueryTime()J
    .locals 2

    .line 3127
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mLocationQueryTimeMillis:J

    return-wide v0
.end method

.method public blacklist getOnDeviceLookupTime()J
    .locals 2

    .line 3131
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mOnDeviceLookupTimeMillis:J

    return-wide v0
.end method

.method public blacklist getResultCode()I
    .locals 0

    .line 3147
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mResultCode:I

    return p0
.end method

.method public blacklist getTotalCheckingTime()J
    .locals 2

    .line 3135
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mTotalCheckingTimeMillis:J

    return-wide v0
.end method

.method public blacklist getTriggeringEvent()I
    .locals 0

    .line 3163
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mTriggeringEvent:I

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .locals 0

    .line 3167
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 3282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessControllerParams(, AccessControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mAccessControlType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LocationQueryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mLocationQueryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", OnDeviceLookupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mOnDeviceLookupTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", TotalCheckingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mTotalCheckingTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", IsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountryCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mCountryCodes:[Ljava/lang/String;

    .line 3290
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ConfigDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mConfigDataSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TriggeringEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mTriggeringEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
