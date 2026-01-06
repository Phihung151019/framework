.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
.super Ljava/lang/Object;
.source "SLMHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0xf

.field private static volatile mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;


# instance fields
.field private mAccumulatedCalorie:D

.field private mAccumulatedDistance:D

.field private mAccumulatedDuration:I

.field private mAccumulatedStepCount:I

.field private mBufferIndex:I

.field private mBufferSize:I

.field private mCalorieArray:[D

.field private mDistanceArray:[D

.field private mDurationArray:[I

.field private mLastStepType:I

.field private mStepCountArray:[I

.field private mStepTypeArray:[I

.field private mTimeStampArray:[J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xf

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    .line 14
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    .line 15
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    .line 16
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    .line 17
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    .line 18
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->initialize()V

    .line 48
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;
    .locals 2

    .line 37
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    return-object v0

    .line 41
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 1

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    .line 54
    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->resetAccumulatedStepInfo()V

    .line 58
    return-void
.end method


# virtual methods
.method public erase()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->initialize()V

    .line 64
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    return v0
.end method

.method public getLastStepType()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    return v0
.end method

.method public getLatestBufferIndex()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .line 116
    const/16 v0, 0xf

    return v0
.end method

.method public getTimeStampSingle(I)J
    .locals 3
    .param p1, "index"    # I

    .line 135
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 136
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 137
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 138
    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    .line 142
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 145
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getmCalorieArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 217
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 218
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 219
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 220
    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    .line 224
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 227
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getmDistanceArraySingle(I)D
    .locals 3
    .param p1, "index"    # I

    .line 201
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 203
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 204
    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    .line 208
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 211
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public getmDurationArraySingle(I)I
    .locals 2
    .param p1, "index"    # I

    .line 185
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 186
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 187
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 188
    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    .line 192
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 195
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public getmStepCountArraySingle(I)I
    .locals 2
    .param p1, "index"    # I

    .line 168
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 170
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 171
    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    .line 175
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 178
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public getmStepTypeArraySingle(I)I
    .locals 2
    .param p1, "index"    # I

    .line 152
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 153
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    .line 154
    .local v0, "modifiedIndex":I
    if-lt v0, v1, :cond_1

    .line 155
    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    .line 159
    .end local v0    # "modifiedIndex":I
    :cond_0
    move v0, p1

    .line 162
    .restart local v0    # "modifiedIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    aget v1, v1, v0

    return v1
.end method

.method public onTimeChanged()V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V

    .line 235
    return-void
.end method

.method public putSLMData(JIIDDI)V
    .locals 4
    .param p1, "timeStamp"    # J
    .param p3, "stepType"    # I
    .param p4, "stepCount"    # I
    .param p5, "distance"    # D
    .param p7, "calorie"    # D
    .param p9, "duration"    # I

    .line 81
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    if-eq v0, p3, :cond_1

    .line 82
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    rem-int/2addr v0, v1

    .line 83
    .local v0, "index":I
    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferIndex:I

    .line 84
    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    if-ge v2, v1, :cond_0

    .line 85
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mBufferSize:I

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->resetAccumulatedStepInfo()V

    .line 89
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mTimeStampArray:[J

    aput-wide p1, v1, v0

    .line 92
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepTypeArray:[I

    iput p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mLastStepType:I

    aput p3, v1, v0

    .line 95
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    .line 96
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mStepCountArray:[I

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    aput v2, v1, v0

    .line 99
    iget-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    add-double/2addr v1, p5

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    .line 100
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDistanceArray:[D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    aput-wide v2, v1, v0

    .line 103
    iget-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    add-double/2addr v1, p7

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    .line 104
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mCalorieArray:[D

    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    aput-wide v2, v1, v0

    .line 107
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    add-int/2addr v1, p9

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    .line 108
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mDurationArray:[I

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    aput v2, v1, v0

    .line 113
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method public resetAccumulatedStepInfo()V
    .locals 3

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedStepCount:I

    .line 69
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDistance:D

    .line 70
    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedCalorie:D

    .line 71
    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->mAccumulatedDuration:I

    .line 72
    return-void
.end method
