.class public Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxMaxLog"
.end annotation


# instance fields
.field private final blacklist mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLines:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1485
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mMaxLines:I

    .line 1486
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mLog:Ljava/util/Deque;

    return-void
.end method

.method private declared-synchronized blacklist append(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1497
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mMaxLines:I

    if-lt v0, v1, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1504
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1505
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1506
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1508
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 8

    .line 1490
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->mMaxLines:I

    if-gtz v0, :cond_0

    return-void

    .line 1491
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1493
    const-string v0, "%ty-%tm-%td_%tH:%tM:%tS %s"

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, p1

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->append(Ljava/lang/String;)V

    return-void
.end method
