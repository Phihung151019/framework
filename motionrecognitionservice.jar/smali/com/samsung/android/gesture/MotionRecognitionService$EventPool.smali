.class Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventPool"
.end annotation


# static fields
.field static final POOL_SIZE:I = 0xa


# instance fields
.field final events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

.field final mLockEventPool:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1682
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    .line 1683
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 1685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1686
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    new-instance v3, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    aput-object v3, v2, v1

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1688
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public obtain()Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    .locals 5

    .line 1691
    const/4 v0, 0x0

    .line 1692
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v1

    .line 1693
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 1694
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 1695
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    aget-object v3, v3, v2

    move-object v0, v3

    .line 1696
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1697
    goto :goto_1

    .line 1693
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1700
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    if-nez v0, :cond_2

    .line 1702
    new-instance v1, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    move-object v0, v1

    .line 1704
    :cond_2
    return-object v0

    .line 1700
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recycle(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 1708
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 1710
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 1711
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    aput-object p1, v2, v1

    .line 1712
    goto :goto_1

    .line 1709
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1715
    .end local v1    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1716
    return-void

    .line 1715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
