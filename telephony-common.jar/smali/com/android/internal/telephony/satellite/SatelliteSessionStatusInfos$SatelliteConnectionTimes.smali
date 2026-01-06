.class Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;
.super Ljava/lang/Object;
.source "SatelliteSessionStatusInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteConnectionTimes"
.end annotation


# instance fields
.field private blacklist mEndTime:J

.field private final blacklist mStartTime:J


# direct methods
.method constructor blacklist <init>(J)V
    .locals 0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mStartTime:J

    const-wide/16 p1, 0x0

    .line 812
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mEndTime:J

    return-void
.end method


# virtual methods
.method public blacklist getDuration()J
    .locals 4

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mEndTime:J

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getEndTime()J
    .locals 2

    .line 824
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    .line 820
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mStartTime:J

    return-wide v0
.end method

.method public blacklist isValid()Z
    .locals 4

    .line 835
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mEndTime:J

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mStartTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setEndTime(J)V
    .locals 0

    .line 816
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->mEndTime:J

    return-void
.end method
