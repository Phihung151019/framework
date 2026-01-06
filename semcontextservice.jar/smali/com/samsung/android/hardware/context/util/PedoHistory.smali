.class public Lcom/samsung/android/hardware/context/util/PedoHistory;
.super Ljava/lang/Object;
.source "PedoHistory.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;


# static fields
.field public static final DATA_MODE_BATCH:I = 0x2

.field public static final DATA_MODE_NORMAL:I = 0x1

.field private static final LOG_BUFFER_SIZE:I = 0x5a0

.field private static volatile mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;


# instance fields
.field private mAccumulatedCalorie:D

.field private mAccumulatedDistance:D

.field private mAccumulatedRunDnStep:J

.field private mAccumulatedRunStep:J

.field private mAccumulatedRunUpStep:J

.field private mAccumulatedTotalStep:J

.field private mAccumulatedWalkDnStep:J

.field private mAccumulatedWalkStep:J

.field private mAccumulatedWalkUpStep:J

.field private mAverageSpeed:D

.field private final mCalorieArray:[D

.field private final mDistanceArray:[D

.field private mHistoryArrayIndex:I

.field private mHistoryArraySize:I

.field private mLastDataMode:I

.field private mLastSavingTimestamp:J

.field private mNumAccumulatedData:D

.field private final mRunDnStepCountArray:[J

.field private final mRunStepCountArray:[J

.field private final mRunUpStepCountArray:[J

.field private final mSpeedArray:[D

.field private final mTimeStampArray:[J

.field private final mTotalStepCountArray:[J

.field private final mWalkDnStepCountArray:[J

.field private final mWalkStepCountArray:[J

.field private final mWalkUpStepCountArray:[J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x5a0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTimeStampArray:[J

    .line 42
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mDistanceArray:[D

    .line 43
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mCalorieArray:[D

    .line 44
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mSpeedArray:[D

    .line 45
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkStepCountArray:[J

    .line 46
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunStepCountArray:[J

    .line 47
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkUpStepCountArray:[J

    .line 48
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkDnStepCountArray:[J

    .line 49
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunUpStepCountArray:[J

    .line 50
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunDnStepCountArray:[J

    .line 51
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTotalStepCountArray:[J

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->initialize()V

    .line 72
    invoke-static {}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->getInstance()Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->initializeManager(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->getInstance()Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->registerObserver(Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;)V

    .line 74
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/context/util/PedoHistory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    sget-object v0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    if-nez v0, :cond_1

    .line 83
    const-class v0, Lcom/samsung/android/hardware/context/util/PedoHistory;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/context/util/PedoHistory;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/samsung/android/hardware/context/util/PedoHistory;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/hardware/context/util/PedoHistory;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    return-object v0
.end method

.method private getLastSavingTimestamp()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastSavingTimestamp:J

    return-wide v0
.end method

.method private getLatestBufferIndex()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    return v0
.end method

.method private increaseBufferIndex()V
    .locals 2

    .line 413
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    .line 414
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_0

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    .line 418
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    if-ge v0, v1, :cond_1

    .line 419
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    .line 421
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->resetAccumulatedStepInfo()V

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastSavingTimestamp:J

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastDataMode:I

    .line 100
    return-void
.end method

.method private resetAccumulatedStepInfo()V
    .locals 2

    .line 269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    .line 270
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    .line 271
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    .line 272
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 273
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    .line 274
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 275
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    .line 277
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    .line 278
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    .line 279
    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    .line 280
    return-void
.end method


# virtual methods
.method public erase()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->initialize()V

    .line 107
    const-string v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    return v0
.end method

.method public getCalorieArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 693
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 694
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 695
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 696
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 699
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 702
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mCalorieArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getDistanceArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 672
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 673
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 674
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 675
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 678
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 681
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mDistanceArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getLastCallbackMode()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastDataMode:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .line 465
    const/16 v0, 0x5a0

    return v0
.end method

.method public getRunDnStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 651
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 652
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 653
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 654
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 657
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 660
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunDnStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getRunStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 567
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 568
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 569
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 570
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 573
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 576
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getRunUpStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 609
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 610
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 611
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 612
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 615
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 618
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunUpStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getSpeedArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 714
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 715
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 716
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 717
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 720
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 723
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mSpeedArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getTimeStampSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 504
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 505
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 506
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 507
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 510
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 513
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTimeStampArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getTotalStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 525
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 526
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 527
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 528
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 531
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 534
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTotalStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getWalkDnStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 630
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 631
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 632
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 633
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 636
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 639
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkDnStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getWalkStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 546
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 547
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 548
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 549
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 552
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 555
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getWalkUpStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 588
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 589
    iget v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 590
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 591
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 594
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 597
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkUpStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public onTimeChanged()V
    .locals 0

    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->erase()V

    .line 729
    return-void
.end method

.method public putCalorieInfo(D)V
    .locals 2
    .param p1, "calorie"    # D

    .line 400
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 401
    return-void
.end method

.method public putCalorieInfoSingle(D)V
    .locals 4
    .param p1, "calorie"    # D

    .line 253
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    .line 254
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 255
    return-void
.end method

.method public putDistanceInfo(D)V
    .locals 2
    .param p1, "distance"    # D

    .line 391
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 392
    return-void
.end method

.method public putDistanceInfoSingle(D)V
    .locals 4
    .param p1, "distance"    # D

    .line 243
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    .line 244
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 245
    return-void
.end method

.method public putRunDnStepInfo(J)V
    .locals 2
    .param p1, "scRunDn"    # J

    .line 382
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 383
    return-void
.end method

.method public putRunDnStepInfoSingle(J)V
    .locals 4
    .param p1, "scRunDn"    # J

    .line 233
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    .line 234
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 235
    return-void
.end method

.method public putRunStepInfo(J)V
    .locals 2
    .param p1, "scRun"    # J

    .line 346
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 347
    return-void
.end method

.method public putRunStepInfoSingle(J)V
    .locals 4
    .param p1, "scRun"    # J

    .line 193
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    .line 194
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 195
    return-void
.end method

.method public putRunUpStepInfo(J)V
    .locals 2
    .param p1, "scRunUp"    # J

    .line 364
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 365
    return-void
.end method

.method public putRunUpStepInfoSingle(J)V
    .locals 4
    .param p1, "scRunUp"    # J

    .line 213
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    .line 214
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 215
    return-void
.end method

.method public putSpeedInfo(D)V
    .locals 2
    .param p1, "speed"    # D

    .line 409
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 410
    return-void
.end method

.method public putSpeedInfoSingle(D)V
    .locals 6
    .param p1, "speed"    # D

    .line 263
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    .line 264
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    .line 265
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 266
    return-void
.end method

.method public putStepInfo(JJJJJJJDDD)V
    .locals 2
    .param p1, "scTotal"    # J
    .param p3, "scWalk"    # J
    .param p5, "scRun"    # J
    .param p7, "scWalkUp"    # J
    .param p9, "scRunUp"    # J
    .param p11, "scWalkDn"    # J
    .param p13, "scRunDn"    # J
    .param p15, "distance"    # D
    .param p17, "calorie"    # D
    .param p19, "speed"    # D

    .line 298
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p3, v0, v1

    .line 300
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p5, v0, v1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p7, v0, v1

    .line 302
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p9, v0, v1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p11, v0, v1

    .line 304
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p13, v0, v1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p15, v0, v1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p17, v0, v1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p19, v0, v1

    .line 310
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastDataMode:I

    .line 311
    return-void
.end method

.method public putStepInfoSingle(JJJJJJJDDD)V
    .locals 6
    .param p1, "scTotal"    # J
    .param p3, "scWalk"    # J
    .param p5, "scRun"    # J
    .param p7, "scWalkUp"    # J
    .param p9, "scRunUp"    # J
    .param p11, "scWalkDn"    # J
    .param p13, "scRunDn"    # J
    .param p15, "distance"    # D
    .param p17, "calorie"    # D
    .param p19, "speed"    # D

    .line 140
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    .line 141
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    .line 142
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    .line 143
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p7

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 144
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    add-long/2addr v0, p9

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    .line 145
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long v0, v0, p11

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 146
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    add-long v0, v0, p13

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    .line 147
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    add-double v0, v0, p15

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    .line 148
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    add-double v0, v0, p17

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    .line 149
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double v0, v0, p19

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    .line 150
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mNumAccumulatedData:D

    .line 152
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastDataMode:I

    .line 165
    return-void
.end method

.method public putTimestamp(J)V
    .locals 2
    .param p1, "curTimeStamp"    # J

    .line 120
    iput-wide p1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastSavingTimestamp:J

    .line 121
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTimeStampArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 122
    return-void
.end method

.method public putTotalStepInfo(J)V
    .locals 2
    .param p1, "scTotal"    # J

    .line 328
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 329
    return-void
.end method

.method public putTotalStepInfoSingle(J)V
    .locals 4
    .param p1, "scTotal"    # J

    .line 173
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 175
    return-void
.end method

.method public putWalkDnStepInfo(J)V
    .locals 2
    .param p1, "scWalkDn"    # J

    .line 373
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 374
    return-void
.end method

.method public putWalkDnStepInfoSingle(J)V
    .locals 4
    .param p1, "scWalkDn"    # J

    .line 223
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 224
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 225
    return-void
.end method

.method public putWalkStepInfo(J)V
    .locals 2
    .param p1, "scWalk"    # J

    .line 337
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 338
    return-void
.end method

.method public putWalkStepInfoSingle(J)V
    .locals 4
    .param p1, "scWalk"    # J

    .line 183
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    .line 184
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 185
    return-void
.end method

.method public putWalkUpStepInfo(J)V
    .locals 2
    .param p1, "scWalkUp"    # J

    .line 355
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 356
    return-void
.end method

.method public putWalkUpStepInfoSingle(J)V
    .locals 4
    .param p1, "scWalkUp"    # J

    .line 203
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 204
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 205
    return-void
.end method

.method public setDataMode(I)V
    .locals 0
    .param p1, "dataMode"    # I

    .line 319
    iput p1, p0, Lcom/samsung/android/hardware/context/util/PedoHistory;->mLastDataMode:I

    .line 320
    return-void
.end method

.method public updateBufferIndex(I)V
    .locals 11
    .param p1, "dataMode"    # I

    .line 430
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->increaseBufferIndex()V

    goto :goto_0

    .line 432
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 433
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 435
    .local v1, "calender":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 436
    .local v2, "curTimeMillis":J
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 438
    .local v5, "minute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 439
    .local v6, "lastUpdatedTime":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 440
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 441
    .local v4, "lastUpdatedMinute":I
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v7

    sub-long v7, v2, v7

    .line 443
    .local v7, "diffTimeStamp":J
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getLastCallbackMode()I

    move-result v9

    if-ne v9, v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->increaseBufferIndex()V

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->resetAccumulatedStepInfo()V

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putTimestamp(J)V

    goto :goto_0

    .line 448
    :cond_1
    if-ne v5, v4, :cond_2

    const-wide/32 v9, 0xea60

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getLatestBufferIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 450
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->increaseBufferIndex()V

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/PedoHistory;->resetAccumulatedStepInfo()V

    .line 452
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putTimestamp(J)V

    .line 457
    .end local v1    # "calender":Ljava/util/Calendar;
    .end local v2    # "curTimeMillis":J
    .end local v4    # "lastUpdatedMinute":I
    .end local v5    # "minute":I
    .end local v6    # "lastUpdatedTime":Ljava/util/Calendar;
    .end local v7    # "diffTimeStamp":J
    :cond_3
    :goto_0
    return-void
.end method
