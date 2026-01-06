.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerBatchRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    }
.end annotation


# static fields
.field private static CHECK_PERIOD:J = 0x0L

.field private static DEFAULT_ACTIVITY_RECORDING_PERIOD:I = 0x0

.field private static final DEFAULT_BATCHING_PERIOD:I = 0x4b0

.field private static final MSG_TIMER_EXPIRED:I = 0xfeed

.field private static final mBatchingPeriod:I = 0x4b0


# instance fields
.field private final mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

.field private mHandler:Landroid/os/Handler;

.field private mHistoryDataReq:Z

.field private final mListActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMutex:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMutex(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHistoryDataReq(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msendHistoryData(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendHistoryData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    const v0, 0x1b7740

    sput v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    .line 56
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    .line 100
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    .line 102
    invoke-direct {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->createHandler(Landroid/os/Looper;)V

    .line 103
    return-void
.end method

.method private createHandler(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 519
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    .line 538
    return-void
.end method

.method private getMostActivity()I
    .locals 12

    .line 318
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    .local v0, "size":I
    const/4 v1, 0x1

    .line 324
    .local v1, "retActivity":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 326
    if-lez v0, :cond_4

    .line 328
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    sget-wide v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v1, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    goto :goto_1

    .line 332
    :cond_0
    const-wide/16 v2, 0x0

    .line 333
    .local v2, "sumDuration":J
    add-int/lit8 v4, v0, -0x1

    .line 334
    .local v4, "i":I
    const/4 v5, 0x0

    .line 335
    .local v5, "maxWeight":F
    const/4 v6, 0x1

    .line 336
    .local v6, "k":I
    add-int/lit8 v7, v0, -0x1

    .line 338
    .local v7, "actIndex":I
    :goto_0
    const-wide/16 v8, 0x7530

    cmp-long v8, v2, v8

    if-gtz v8, :cond_3

    if-ltz v4, :cond_3

    .line 341
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    const-wide/16 v10, 0xbb8

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 342
    add-int/lit8 v4, v4, -0x1

    .line 343
    goto :goto_0

    .line 346
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    long-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 347
    .local v8, "weight":F
    cmpg-float v9, v5, v8

    if-gez v9, :cond_2

    .line 348
    move v5, v8

    .line 349
    move v7, v4

    .line 350
    add-int/lit8 v6, v6, 0x1

    .line 353
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    add-long/2addr v2, v9

    .line 354
    nop

    .end local v8    # "weight":F
    add-int/lit8 v4, v4, -0x1

    .line 355
    goto :goto_0

    .line 358
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v1, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 364
    .end local v2    # "sumDuration":J
    .end local v4    # "i":I
    .end local v5    # "maxWeight":F
    .end local v6    # "k":I
    .end local v7    # "actIndex":I
    :cond_4
    :goto_1
    return v1
.end method

.method private sendHistoryData()V
    .locals 11

    .line 107
    const-string v0, "start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "historyMode":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "names":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getBufferSize()I

    move-result v2

    .line 114
    .local v2, "loggingCount":I
    const-string v3, "end"

    if-nez v2, :cond_0

    .line 115
    const-string v4, "History Data Buffer is null!!"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 116
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 117
    return-void

    .line 120
    :cond_0
    new-array v4, v2, [I

    .line 121
    .local v4, "activityType":[I
    new-array v5, v2, [I

    .line 122
    .local v5, "accuracy":[I
    new-array v6, v2, [J

    .line 123
    .local v6, "duration":[J
    new-array v7, v2, [J

    .line 125
    .local v7, "timestamp":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 126
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityType(I)I

    move-result v9

    aput v9, v4, v8

    .line 127
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityAccuracy(I)I

    move-result v9

    aput v9, v5, v8

    .line 128
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityDuration(I)J

    move-result-wide v9

    aput-wide v9, v6, v8

    .line 129
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->getActivityTimestamp(I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 132
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getModeType()B

    move-result v10

    int-to-short v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-virtual {v8, v9, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v1, v9

    invoke-virtual {v8, v9, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v9, v1, v9

    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x6

    aget-object v9, v1, v9

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x7

    aget-object v9, v1, v9

    invoke-virtual {v8, v9, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/16 v9, 0x8

    aget-object v9, v1, v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->notifyObserver()V

    .line 145
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private updateActivityInfo(J[I[J[II)V
    .locals 7
    .param p1, "timeStamp"    # J
    .param p3, "activityType"    # [I
    .param p4, "duration"    # [J
    .param p5, "accuracy"    # [I
    .param p6, "totalCnt"    # I

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_4

    .line 375
    aget v1, p3, v0

    if-eqz v1, :cond_3

    aget v1, p5, v0

    if-nez v1, :cond_0

    .line 379
    goto :goto_1

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 384
    .local v1, "size":I
    if-eqz v1, :cond_1

    .line 385
    aget v2, p3, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    if-ne v2, v3, :cond_1

    .line 386
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget-wide v5, p4, v0

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    .line 387
    goto :goto_1

    .line 392
    :cond_1
    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner-IA;)V

    .line 393
    .local v2, "info":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    aget v3, p3, v0

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 394
    iget v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 395
    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 398
    :cond_2
    aget-wide v3, p4, v0

    iput-wide v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    .line 399
    aget v3, p5, v0

    iput v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->accuracy:I

    .line 401
    iput-wide p1, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    .line 402
    aget-wide v3, p4, v0

    add-long/2addr p1, v3

    .line 404
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v1    # "size":I
    .end local v2    # "info":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "i":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 412
    .local v0, "startTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 413
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v3, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    cmp-long v3, v3, v0

    if-ltz v3, :cond_5

    .line 414
    goto :goto_3

    .line 412
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 418
    :cond_6
    :goto_3
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-ge v3, v2, :cond_7

    .line 419
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 421
    .end local v3    # "j":I
    :cond_7
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 458
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 465
    nop

    .line 467
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->clear()V

    .line 468
    return-void

    .line 464
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 465
    throw v0
.end method

.method public final disable()V
    .locals 2

    .line 443
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    .line 445
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v1, 0xfeed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->disable()V

    .line 448
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 431
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 432
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->enable()V

    .line 433
    return-void
.end method

.method protected final getBatchingPeriod()I
    .locals 1

    .line 157
    const/16 v0, 0x4b0

    return v0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 9

    .line 192
    const-string v7, "TimeStampArray"

    const-string v8, "HistoryMode"

    const-string v0, "OperationMode"

    const-string v1, "TimeStamp"

    const-string v2, "Count"

    const-string v3, "ActivityType"

    const-string v4, "Accuracy"

    const-string v5, "Duration"

    const-string v6, "MostActivity"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 513
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .locals 1

    .line 180
    const/4 v0, 0x2

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 478
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 490
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 501
    return-object p0
.end method

.method public parse([BI)I
    .locals 24
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 236
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    .line 237
    .local v0, "tmpNext":I
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "names":[Ljava/lang/String;
    const-string v2, "parse start"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 241
    array-length v2, v8

    sub-int/2addr v2, v0

    const/4 v10, 0x4

    sub-int/2addr v2, v10

    const/4 v3, -0x1

    if-gez v2, :cond_0

    .line 242
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 243
    return v3

    .line 246
    :cond_0
    new-array v11, v10, [B

    .line 247
    .local v11, "timeTemp":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v0, v8, v0

    const/4 v12, 0x0

    aput-byte v0, v11, v12

    .line 248
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v0    # "tmpNext":I
    aget-byte v2, v8, v2

    const/4 v13, 0x1

    aput-byte v2, v11, v13

    .line 249
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v0, v8, v0

    const/4 v14, 0x2

    aput-byte v0, v11, v14

    .line 250
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v0    # "tmpNext":I
    aget-byte v2, v8, v2

    const/4 v15, 0x3

    aput-byte v2, v11, v15

    .line 252
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v1, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->byteArrayToLong([B)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v17

    .line 254
    .local v17, "timeStamp":J
    array-length v2, v8

    sub-int/2addr v2, v0

    sub-int/2addr v2, v13

    if-gez v2, :cond_1

    .line 255
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 256
    return v3

    .line 259
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v7, v8, v0

    .line 260
    .local v7, "totalCnt":I
    if-gtz v7, :cond_2

    .line 261
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_BATCH_DATA_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 262
    return v3

    .line 265
    :cond_2
    new-array v4, v7, [I

    .line 266
    .local v4, "activityType":[I
    new-array v6, v7, [I

    .line 267
    .local v6, "accuracy":[I
    new-array v5, v7, [J

    .line 269
    .local v5, "duration":[J
    const/4 v0, 0x0

    move/from16 v22, v2

    .end local v2    # "tmpNext":I
    .local v0, "i":I
    .local v22, "tmpNext":I
    :goto_0
    const/16 v23, 0x5

    if-ge v0, v7, :cond_4

    .line 270
    array-length v2, v8

    sub-int v2, v2, v22

    add-int/lit8 v2, v2, -0x5

    if-gez v2, :cond_3

    .line 271
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 272
    return v3

    .line 275
    :cond_3
    add-int/lit8 v2, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v16, v8, v22

    aput v16, v4, v0

    .line 276
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v16, "tmpNext":I
    aget-byte v2, v8, v2

    aput v2, v6, v0

    .line 277
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v8, v16

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v16, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v16    # "tmpNext":I
    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v3, v2

    add-int/lit8 v22, v16, 0x1

    .end local v16    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v2, v8, v16

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    int-to-long v2, v3

    aput-wide v2, v5, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 284
    move-wide/from16 v2, v17

    .end local v17    # "timeStamp":J
    .local v2, "timeStamp":J
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->updateActivityInfo(J[I[J[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    .line 286
    .end local v2    # "timeStamp":J
    .end local v4    # "activityType":[I
    .end local v6    # "accuracy":[I
    .restart local v17    # "timeStamp":J
    .local v19, "activityType":[I
    .local v20, "accuracy":[I
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v0

    move-object/from16 v21, v5

    .end local v5    # "duration":[J
    .local v21, "duration":[J
    :try_start_2
    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->putActivityData(J[I[I[J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    .line 288
    .end local v17    # "timeStamp":J
    .end local v19    # "activityType":[I
    .end local v20    # "accuracy":[I
    .end local v21    # "duration":[J
    .restart local v2    # "timeStamp":J
    .restart local v4    # "activityType":[I
    .restart local v5    # "duration":[J
    .restart local v6    # "accuracy":[I
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    move/from16 v16, v10

    aget-object v10, v9, v12

    move/from16 v17, v14

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getModeType()B

    move-result v14

    int-to-short v14, v14

    invoke-virtual {v0, v10, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 289
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v10, v9, v13

    invoke-virtual {v0, v10, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 290
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v10, v9, v17

    invoke-virtual {v0, v10, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v10, v9, v15

    invoke-virtual {v0, v10, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 293
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v10, v9, v16

    invoke-virtual {v0, v10, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 294
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v10, v9, v23

    invoke-virtual {v0, v10, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 296
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v10, 0x6

    aget-object v10, v9, v10

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v14

    invoke-virtual {v0, v10, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 298
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->notifyObserver()V

    .line 300
    iget-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    if-ne v0, v13, :cond_5

    .line 301
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v10, 0xfeed

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iput-boolean v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    .line 303
    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendHistoryData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 307
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    nop

    .line 310
    const-string v0, "parse end"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 312
    return v22

    .line 307
    .end local v2    # "timeStamp":J
    .end local v4    # "activityType":[I
    .end local v5    # "duration":[J
    .end local v6    # "accuracy":[I
    .restart local v17    # "timeStamp":J
    .restart local v19    # "activityType":[I
    .restart local v20    # "accuracy":[I
    .restart local v21    # "duration":[J
    :catchall_0
    move-exception v0

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    .end local v17    # "timeStamp":J
    .end local v19    # "activityType":[I
    .end local v20    # "accuracy":[I
    .end local v21    # "duration":[J
    .restart local v2    # "timeStamp":J
    .restart local v4    # "activityType":[I
    .restart local v5    # "duration":[J
    .restart local v6    # "accuracy":[I
    goto :goto_1

    .end local v2    # "timeStamp":J
    .end local v4    # "activityType":[I
    .end local v6    # "accuracy":[I
    .restart local v17    # "timeStamp":J
    .restart local v19    # "activityType":[I
    .restart local v20    # "accuracy":[I
    :catchall_1
    move-exception v0

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    .end local v17    # "timeStamp":J
    .end local v19    # "activityType":[I
    .end local v20    # "accuracy":[I
    .restart local v2    # "timeStamp":J
    .restart local v4    # "activityType":[I
    .restart local v6    # "accuracy":[I
    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    iget-object v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    throw v0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 206
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 208
    .local v0, "result":Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 209
    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 213
    .local v2, "packet":[B
    const/4 v3, 0x0

    aput-byte v1, v2, v3

    .line 214
    const/4 v1, 0x1

    aput-byte v3, v2, v1

    .line 216
    const/16 v3, -0x48

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getInstLibType()B

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->sendCmdToSensorHub(BB[B)V

    .line 218
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHandler:Landroid/os/Handler;

    const v4, 0xfeed

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mHistoryDataReq:Z

    .line 221
    .end local v2    # "packet":[B
    goto :goto_0

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0
.end method
