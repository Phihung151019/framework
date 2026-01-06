.class Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/BackOffStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerItem"
.end annotation


# instance fields
.field private count:I

.field private duration:J

.field private final mode:I

.field private startAt:J


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    .line 6
    .line 7
    iget p1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 8
    .line 9
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 10
    .line 11
    if-ne p1, p0, :cond_0

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

    .line 17
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method getCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 2
    .line 3
    return p0
.end method

.method getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

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
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    :goto_0
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    .line 18
    .line 19
    add-long/2addr v2, v0

    .line 20
    return-wide v2
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 2
    .line 3
    return p0
.end method

.method isStarted()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

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

.method merge(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 2
    .line 3
    iget v1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 9
    .line 10
    iget v1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    add-long/2addr v0, v2

    .line 21
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, " "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v3, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 18
    .line 19
    invoke-static {v3}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->getTypeString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, ":"

    .line 24
    .line 25
    const-string v5, ","

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "ms"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const-string v1, " (active)"

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
