.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
.super Ljava/lang/Object;
.source "PedoHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# static fields
.field public static final DATA_MODE_BATCH:I = 0x2

.field public static final DATA_MODE_NORMAL:I = 0x1

.field private static final LOG_BUFFER_SIZE:I = 0x5a0

.field private static volatile mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;


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

.field private mHistoryArrayIndex_reset:I

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
.method private constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x5a0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    .line 31
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    .line 32
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    .line 33
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    .line 34
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    .line 35
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    .line 36
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    .line 37
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    .line 38
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    .line 39
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    .line 40
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->initialize()V

    .line 75
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 76
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;
    .locals 2

    .line 65
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 69
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    return-object v0

    .line 69
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getLastSavingTimestamp()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    return-wide v0
.end method

.method private getLatestBufferIndex()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex_reset:I

    return v0
.end method

.method private increaseBufferIndex()V
    .locals 2

    .line 349
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex_reset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    .line 350
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_0

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    .line 354
    :cond_0
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    if-ge v0, v1, :cond_1

    .line 355
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    .line 357
    :cond_1
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex_reset:I

    .line 358
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    .line 80
    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex_reset:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 87
    return-void
.end method

.method private resetAccumulatedStepInfo()V
    .locals 2

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    .line 239
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    .line 240
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    .line 241
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 242
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    .line 243
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 244
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    .line 246
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    .line 247
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    .line 248
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    .line 249
    return-void
.end method


# virtual methods
.method public erase()V
    .locals 2

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex_reset:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 103
    const-string v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    return v0
.end method

.method public getCalorieArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 590
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 591
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 592
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 593
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 596
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 599
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getDistanceArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 572
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 573
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 574
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 575
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 578
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 581
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getLastCallBackMode()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .line 401
    const/16 v0, 0x5a0

    return v0
.end method

.method public getRunDnStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 554
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 555
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 556
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 557
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 560
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 563
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getRunStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 482
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 483
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 484
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 485
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 488
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 491
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getRunUpStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 518
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 519
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 520
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 521
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 524
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 527
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getSpeedArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 608
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 609
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 610
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 611
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 614
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 617
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getTimeStampSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 428
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 429
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 430
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 431
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 434
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 437
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getTotalStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 446
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 447
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 448
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 449
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 452
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 455
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getWalkDnStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 536
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 537
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 538
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 539
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 542
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 545
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getWalkStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 464
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 465
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 466
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 467
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 470
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 473
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getWalkUpStepCountSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 500
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArraySize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 501
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 502
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 503
    add-int/lit16 v0, v0, -0x5a0

    goto :goto_0

    .line 506
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 509
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public onTimeChanged()V
    .locals 0

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V

    .line 623
    return-void
.end method

.method public putCalorieInfo(D)V
    .locals 2
    .param p1, "calorie"    # D

    .line 338
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 339
    return-void
.end method

.method public putCalorieInfoSingle(D)V
    .locals 4
    .param p1, "calorie"    # D

    .line 224
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    .line 225
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 226
    return-void
.end method

.method public putDistanceInfo(D)V
    .locals 2
    .param p1, "distance"    # D

    .line 331
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 332
    return-void
.end method

.method public putDistanceInfoSingle(D)V
    .locals 4
    .param p1, "distance"    # D

    .line 216
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    .line 217
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 218
    return-void
.end method

.method public putRunDnStepInfo(J)V
    .locals 2
    .param p1, "scRunDn"    # J

    .line 324
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 325
    return-void
.end method

.method public putRunDnStepInfoSingle(J)V
    .locals 4
    .param p1, "scRunDn"    # J

    .line 208
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    .line 209
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 210
    return-void
.end method

.method public putRunStepInfo(J)V
    .locals 2
    .param p1, "scRun"    # J

    .line 296
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 297
    return-void
.end method

.method public putRunStepInfoSingle(J)V
    .locals 4
    .param p1, "scRun"    # J

    .line 176
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    .line 177
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 178
    return-void
.end method

.method public putRunUpStepInfo(J)V
    .locals 2
    .param p1, "scRunUp"    # J

    .line 310
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 311
    return-void
.end method

.method public putRunUpStepInfoSingle(J)V
    .locals 4
    .param p1, "scRunUp"    # J

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    .line 193
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 194
    return-void
.end method

.method public putSpeedInfo(D)V
    .locals 2
    .param p1, "speed"    # D

    .line 345
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 346
    return-void
.end method

.method public putSpeedInfoSingle(D)V
    .locals 6
    .param p1, "speed"    # D

    .line 232
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    .line 233
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    .line 234
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 235
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

    .line 256
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p3, v0, v1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p5, v0, v1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p7, v0, v1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p9, v0, v1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p11, v0, v1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p13, v0, v1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p15, v0, v1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p17, v0, v1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p19, v0, v1

    .line 268
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 269
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

    .line 129
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    .line 131
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    .line 132
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p7

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 133
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    add-long/2addr v0, p9

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    .line 134
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long v0, v0, p11

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 135
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    add-long v0, v0, p13

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    .line 136
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    add-double v0, v0, p15

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    .line 137
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    add-double v0, v0, p17

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    .line 138
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    mul-double/2addr v0, v2

    add-double v0, v0, p19

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    .line 139
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mNumAccumulatedData:D

    .line 141
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunStep:J

    aput-wide v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunUpStep:J

    aput-wide v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mRunDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedRunDnStep:J

    aput-wide v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mDistanceArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedDistance:D

    aput-wide v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mCalorieArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedCalorie:D

    aput-wide v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mSpeedArray:[D

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAverageSpeed:D

    aput-wide v2, v0, v1

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 154
    return-void
.end method

.method public putTimestamp(J)V
    .locals 2
    .param p1, "curTimeStamp"    # J

    .line 120
    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastSavingTimestamp:J

    .line 121
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTimeStampArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 122
    return-void
.end method

.method public putTotalStepInfo(J)V
    .locals 2
    .param p1, "scTotal"    # J

    .line 282
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 283
    return-void
.end method

.method public putTotalStepInfoSingle(J)V
    .locals 4
    .param p1, "scTotal"    # J

    .line 160
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    .line 161
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mTotalStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedTotalStep:J

    aput-wide v2, v0, v1

    .line 162
    return-void
.end method

.method public putWalkDnStepInfo(J)V
    .locals 2
    .param p1, "scWalkDn"    # J

    .line 317
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 318
    return-void
.end method

.method public putWalkDnStepInfoSingle(J)V
    .locals 4
    .param p1, "scWalkDn"    # J

    .line 200
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    .line 201
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkDnStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkDnStep:J

    aput-wide v2, v0, v1

    .line 202
    return-void
.end method

.method public putWalkStepInfo(J)V
    .locals 2
    .param p1, "scWalk"    # J

    .line 289
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 290
    return-void
.end method

.method public putWalkStepInfoSingle(J)V
    .locals 4
    .param p1, "scWalk"    # J

    .line 168
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    .line 169
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkStep:J

    aput-wide v2, v0, v1

    .line 170
    return-void
.end method

.method public putWalkUpStepInfo(J)V
    .locals 2
    .param p1, "scWalkUp"    # J

    .line 303
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    aput-wide p1, v0, v1

    .line 304
    return-void
.end method

.method public putWalkUpStepInfoSingle(J)V
    .locals 4
    .param p1, "scWalkUp"    # J

    .line 184
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    .line 185
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mWalkUpStepCountArray:[J

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mHistoryArrayIndex:I

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mAccumulatedWalkUpStep:J

    aput-wide v2, v0, v1

    .line 186
    return-void
.end method

.method public setDataMode(I)V
    .locals 0
    .param p1, "dataMode"    # I

    .line 275
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->mLastDataMode:I

    .line 276
    return-void
.end method

.method public updateBufferIndex(I)V
    .locals 11
    .param p1, "dataMode"    # I

    .line 365
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    goto :goto_0

    .line 367
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 368
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 370
    .local v1, "calender":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 371
    .local v2, "curTimeMillis":J
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 373
    .local v5, "minute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 374
    .local v6, "lastUpdatedTime":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 375
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 376
    .local v4, "lastUpdatedMinute":I
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastSavingTimestamp()J

    move-result-wide v7

    sub-long v7, v2, v7

    .line 378
    .local v7, "diffTimeStamp":J
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLastCallBackMode()I

    move-result v9

    if-ne v9, v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 381
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    goto :goto_0

    .line 383
    :cond_1
    if-ne v5, v4, :cond_2

    const-wide/32 v9, 0xea60

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getLatestBufferIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->increaseBufferIndex()V

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->resetAccumulatedStepInfo()V

    .line 387
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    .line 395
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
