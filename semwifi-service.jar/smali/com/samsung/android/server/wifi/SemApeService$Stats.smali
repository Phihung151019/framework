.class public Lcom/samsung/android/server/wifi/SemApeService$Stats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field countOfApeEnabledForNonVoipApp:I

.field countOfApeEnabledForVoipApp:I

.field startedTimeMillis:J

.field totalSecondsOfApeEnabledForNonVoipApp:J

.field totalSecondsOfApeEnabledForVoipApp:J

.field totalSecondsOfBackgroundLimitedForNonVoipApp:J

.field totalSecondsOfBackgroundLimitedForVoipApp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeService$Stats;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 5
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 6
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 7
    iget v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 8
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 9
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 10
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    return-void
.end method


# virtual methods
.method public getTotalRunningSeconds()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    div-long/2addr v0, v2

    .line 11
    long-to-int p0, v0

    .line 12
    return p0
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    .line 16
    .line 17
    return-void
.end method
