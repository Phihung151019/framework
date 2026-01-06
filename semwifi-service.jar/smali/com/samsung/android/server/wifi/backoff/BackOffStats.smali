.class public Lcom/samsung/android/server/wifi/backoff/BackOffStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;,
        Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;
    }
.end annotation


# instance fields
.field private connectionDuration:J

.field private totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

.field private triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->clearAll()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method clearAll()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 11
    .line 12
    return-void
.end method

.method getTotalTriggerInfo()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method reportStartTrigger(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->start(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method reportStopTrigger(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->stop(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method startGathering(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 7
    .line 8
    return-void
.end method

.method stopGathering()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->stopAll()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->merge(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getLifeTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    add-long/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v4, v2, v4

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    const-wide/16 v4, 0x2710

    .line 16
    .line 17
    mul-long/2addr v4, v0

    .line 18
    div-long/2addr v4, v2

    .line 19
    long-to-int v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "BackOffStats:\n - lifeTime: "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getLifeTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    const-wide/32 v6, 0x36ee80

    .line 36
    .line 37
    .line 38
    div-long/2addr v4, v6

    .line 39
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, " hours\n - total triggered count: "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalTriggerCount()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, "\n - total duration: "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-wide/16 v4, 0x3e8

    .line 62
    .line 63
    div-long/2addr v0, v4

    .line 64
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " seconds ("

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    int-to-float v0, v2

    .line 73
    const/high16 v1, 0x42c80000    # 100.0f

    .line 74
    .line 75
    div-float/2addr v0, v1

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, "%)\n - total trigger info:"

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, "\n - current trigger info:"

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 95
    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
