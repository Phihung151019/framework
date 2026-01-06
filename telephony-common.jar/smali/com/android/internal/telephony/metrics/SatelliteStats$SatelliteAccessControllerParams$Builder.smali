.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccessControlType:I

.field private blacklist mCarrierId:I

.field private blacklist mConfigDataSource:I

.field private blacklist mCountryCodes:[Ljava/lang/String;

.field private blacklist mIsAllowed:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mLocationQueryTimeMillis:J

.field private blacklist mOnDeviceLookupTimeMillis:J

.field private blacklist mResultCode:I

.field private blacklist mTotalCheckingTimeMillis:J

.field private blacklist mTriggeringEvent:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Ax19GOk1HIviIUmcXecr-7C1gx0(I)[Ljava/lang/String;
    .locals 0

    .line 3237
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessControlType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mAccessControlType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mConfigDataSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryCodes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCountryCodes:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAllowed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsEmergency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationQueryTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mLocationQueryTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDeviceLookupTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mOnDeviceLookupTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mResultCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalCheckingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTotalCheckingTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggeringEvent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTriggeringEvent:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 3173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3183
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCarrierId:I

    const/4 v0, 0x0

    .line 3184
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTriggeringEvent:I

    .line 3186
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsNtnOnlyCarrier:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
    .locals 3

    .line 3275
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setAccessControlType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3194
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mAccessControlType:I

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3250
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setConfigDatasource(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3244
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mConfigDataSource:I

    return-object p0
.end method

.method public blacklist setCountryCodes([Ljava/lang/String;)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 1

    .line 3237
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCountryCodes:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIsAllowed(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3218
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsAllowed:Z

    return-object p0
.end method

.method public blacklist setIsEmergency(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3224
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsEmergency:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3266
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setLocationQueryTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3200
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mLocationQueryTimeMillis:J

    return-object p0
.end method

.method public blacklist setOnDeviceLookupTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3206
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mOnDeviceLookupTimeMillis:J

    return-object p0
.end method

.method public blacklist setResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3231
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mResultCode:I

    return-object p0
.end method

.method public blacklist setTotalCheckingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3212
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTotalCheckingTimeMillis:J

    return-object p0
.end method

.method public blacklist setTriggeringEvent(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .locals 0

    .line 3257
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTriggeringEvent:I

    return-object p0
.end method
