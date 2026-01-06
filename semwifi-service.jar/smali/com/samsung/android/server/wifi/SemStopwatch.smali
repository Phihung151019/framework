.class public Lcom/samsung/android/server/wifi/SemStopwatch;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isStopped()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isStarted()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isStopped()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public lap()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    .line 6
    .line 7
    return-void
.end method

.method public start()Lcom/samsung/android/server/wifi/SemStopwatch;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    return-wide v0
.end method
