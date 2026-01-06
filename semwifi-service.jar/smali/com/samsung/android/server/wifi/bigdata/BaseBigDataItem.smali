.class abstract Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "WiFi"

.field private static final DIV_MINUTE:J = 0xea60L

.field public static final HIT_TYPE_IMMEDIATELY:Ljava/lang/String; = "ph"

.field public static final HIT_TYPE_ONCE_A_DAY:Ljava/lang/String; = "sm"

.field private static final MAX_DURATION_MINUTES:I = 0xc350

.field public static final TYPE_CONTEXT_FRAMEWORK:I = 0x0

.field public static final TYPE_HQM_DQA:I = 0x2

.field public static final TYPE_HQM_DQA_PRIVATE:I = 0x3

.field public static final TYPE_HW_PARAM:I = 0x1


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected m11acConDuration:I

.field protected m11axConDuration:I

.field protected m11beConDuration:I

.field protected m11lConDuration:I

.field protected m11nConDuration:I

.field protected m2g5g6gConDuration:I

.field protected m2g5gConDuration:I

.field protected m2g6gConDuration:I

.field protected m2gConDuration:I

.field protected m5g6gConDuration:I

.field protected m5gConDuration:I

.field protected m6gConDuration:I

.field private final mExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureName:Ljava/lang/String;

.field protected mIsWifi7Supported:Z

.field protected mLastFrequency:I

.field protected mLastWifiInfo:Landroid/net/wifi/WifiInfo;

.field protected mLastwifiStandard:I

.field protected mLogMessages:Z

.field protected mPreviousTime:J

.field protected mTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mPreviousTime:J

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mFeatureName:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mIsWifi7Supported:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    .line 33
    .line 34
    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    invoke-static {v0, p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getDurationTime()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    .line 16
    .line 17
    sub-long/2addr v4, v6

    .line 18
    const-wide/32 v6, 0xea60

    .line 19
    .line 20
    .line 21
    div-long/2addr v4, v6

    .line 22
    cmp-long p0, v4, v2

    .line 23
    .line 24
    if-gez p0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const-wide/32 v0, 0xc350

    .line 28
    .line 29
    .line 30
    cmp-long p0, v4, v0

    .line 31
    .line 32
    if-lez p0, :cond_2

    .line 33
    .line 34
    const p0, 0xc350

    .line 35
    .line 36
    .line 37
    return p0

    .line 38
    :cond_2
    long-to-int p0, v4

    .line 39
    return p0
.end method


# virtual methods
.method addOrUpdateValue(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method clearData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method protected getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "\\s+"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [Ljava/lang/String;

    .line 19
    .line 20
    return-object p0
.end method

.method protected getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getDurationTime()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method getFeatureName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mFeatureName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getHitType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "sm"

    .line 2
    .line 3
    return-object p0
.end method

.method abstract getJsonFormat()Ljava/lang/String;
.end method

.method getJsonFormatFor(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getJsonFormat()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method protected getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method protected getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    move v4, v2

    .line 14
    move v5, v3

    .line 15
    :goto_0
    if-ge v4, v1, :cond_2

    .line 16
    .line 17
    aget-object v6, p1, v4

    .line 18
    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    const-string v5, ","

    .line 22
    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_1
    aget-object v5, v6, v2

    .line 27
    .line 28
    aget-object v6, v6, v3

    .line 29
    .line 30
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    move v5, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method protected getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p1, "x"

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const-string p1, "\""

    .line 31
    .line 32
    const-string p2, "\'"

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-object p2

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method isAvailableLogging(I)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method abstract parseData(Ljava/lang/String;)Z
.end method

.method protected putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method protected putValueAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ","

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected putValues([[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method protected putValues([[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    if-eqz p3, :cond_1

    .line 3
    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValueAppend(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v5

    goto :goto_2

    .line 4
    :cond_1
    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method

.method protected resetTime()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mPreviousTime:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2gConDuration:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5gConDuration:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m6gConDuration:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5gConDuration:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g6gConDuration:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5g6gConDuration:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5g6gConDuration:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11lConDuration:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11nConDuration:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11acConDuration:I

    .line 27
    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11axConDuration:I

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11beConDuration:I

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastFrequency:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastwifiStandard:I

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 38
    .line 39
    return-void
.end method

.method setLogVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    .line 2
    .line 3
    return-void
.end method

.method protected setWifi7Supported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mIsWifi7Supported:Z

    .line 2
    .line 3
    return-void
.end method

.method protected updateConnectedDuration(Landroid/net/wifi/WifiInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastFrequency:I

    .line 10
    .line 11
    if-eqz v2, :cond_a

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mPreviousTime:J

    .line 18
    .line 19
    sub-long v4, v2, v4

    .line 20
    .line 21
    long-to-int v4, v4

    .line 22
    const v5, 0xea60

    .line 23
    .line 24
    .line 25
    div-int/2addr v4, v5

    .line 26
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mPreviousTime:J

    .line 27
    .line 28
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastwifiStandard:I

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 35
    .line 36
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->updateConnectedDurationForWiFi7(Landroid/net/wifi/WifiInfo;I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-nez v2, :cond_4

    .line 43
    .line 44
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastFrequency:I

    .line 45
    .line 46
    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2gConDuration:I

    .line 53
    .line 54
    add-int/2addr v2, v4

    .line 55
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2gConDuration:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastFrequency:I

    .line 59
    .line 60
    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5gConDuration:I

    .line 67
    .line 68
    add-int/2addr v2, v4

    .line 69
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5gConDuration:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastFrequency:I

    .line 73
    .line 74
    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m6gConDuration:I

    .line 81
    .line 82
    add-int/2addr v2, v4

    .line 83
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m6gConDuration:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    const-string v5, "mConnectedTimestampPerBand Error"

    .line 89
    .line 90
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastwifiStandard:I

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    if-eq v2, v5, :cond_9

    .line 97
    .line 98
    if-eq v2, v3, :cond_8

    .line 99
    .line 100
    const/4 v3, 0x4

    .line 101
    if-eq v2, v3, :cond_7

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    if-eq v2, v3, :cond_6

    .line 105
    .line 106
    const/4 v3, 0x6

    .line 107
    if-eq v2, v3, :cond_5

    .line 108
    .line 109
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    const-string v3, "mConnectedTimestampPerProtocol Error"

    .line 112
    .line 113
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11axConDuration:I

    .line 118
    .line 119
    add-int/2addr v2, v4

    .line 120
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11axConDuration:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11acConDuration:I

    .line 124
    .line 125
    add-int/2addr v2, v4

    .line 126
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11acConDuration:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11nConDuration:I

    .line 130
    .line 131
    add-int/2addr v2, v4

    .line 132
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11nConDuration:I

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_8
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11beConDuration:I

    .line 136
    .line 137
    add-int/2addr v2, v4

    .line 138
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11beConDuration:I

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    iget v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11lConDuration:I

    .line 142
    .line 143
    add-int/2addr v2, v4

    .line 144
    iput v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m11lConDuration:I

    .line 145
    .line 146
    :cond_a
    :goto_2
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastFrequency:I

    .line 147
    .line 148
    iput v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastwifiStandard:I

    .line 149
    .line 150
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 151
    .line 152
    return-void
.end method

.method protected updateConnectedDurationForWiFi7(Landroid/net/wifi/WifiInfo;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "last wifi info is null"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_8

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v1, v2, :cond_7

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/net/wifi/MloLink;

    .line 31
    .line 32
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/net/wifi/MloLink;

    .line 37
    .line 38
    if-eqz v0, :cond_6

    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/net/wifi/MloLink;->getBand()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v4, 0x8

    .line 47
    .line 48
    if-ne v1, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5gConDuration:I

    .line 57
    .line 58
    add-int/2addr p1, p2

    .line 59
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5gConDuration:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ne p1, v4, :cond_6

    .line 67
    .line 68
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g6gConDuration:I

    .line 69
    .line 70
    add-int/2addr p1, p2

    .line 71
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g6gConDuration:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/MloLink;->getBand()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ne v1, v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ne v0, v3, :cond_3

    .line 85
    .line 86
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5gConDuration:I

    .line 87
    .line 88
    add-int/2addr p1, p2

    .line 89
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5gConDuration:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ne p1, v4, :cond_6

    .line 97
    .line 98
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5g6gConDuration:I

    .line 99
    .line 100
    add-int/2addr p1, p2

    .line 101
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5g6gConDuration:I

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/MloLink;->getBand()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-ne v0, v4, :cond_6

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ne v0, v3, :cond_5

    .line 115
    .line 116
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g6gConDuration:I

    .line 117
    .line 118
    add-int/2addr p1, p2

    .line 119
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g6gConDuration:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-ne p1, v2, :cond_6

    .line 127
    .line 128
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5g6gConDuration:I

    .line 129
    .line 130
    add-int/2addr p1, p2

    .line 131
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m5g6gConDuration:I

    .line 132
    .line 133
    :cond_6
    :goto_0
    return v3

    .line 134
    :cond_7
    const/4 p1, 0x3

    .line 135
    if-ne v1, p1, :cond_8

    .line 136
    .line 137
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5g6gConDuration:I

    .line 138
    .line 139
    add-int/2addr p1, p2

    .line 140
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->m2g5g6gConDuration:I

    .line 141
    .line 142
    return v3

    .line 143
    :cond_8
    return v0
.end method

.method protected updateTime()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mPreviousTime:J

    .line 8
    .line 9
    return-void
.end method
