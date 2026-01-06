.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


# static fields
.field private static final PDC_SF_LENGTH:I = 0x14


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J

.field private final mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    .line 103
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 104
    const-string v0, "PedometerRunner is created"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private sendHistoryStepBuffer()V
    .locals 51

    .line 111
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 114
    .local v2, "historyStepBufferMode":I
    const-wide/16 v3, 0x0

    .line 115
    .local v3, "totalStepCountDiff":J
    const-wide/16 v5, 0x0

    .line 116
    .local v5, "walkStepCountDiff":J
    const-wide/16 v7, 0x0

    .line 117
    .local v7, "runStepCountDiff":J
    const-wide/16 v9, 0x0

    .line 118
    .local v9, "walkUpStepCountDiff":J
    const-wide/16 v11, 0x0

    .line 119
    .local v11, "walkDownStepCountDiff":J
    const-wide/16 v13, 0x0

    .line 120
    .local v13, "runUpStepCountDiff":J
    const-wide/16 v15, 0x0

    .line 121
    .local v15, "runDownStepCountDiff":J
    const-wide/16 v17, 0x0

    .line 122
    .local v17, "distanceDiff":D
    const-wide/16 v19, 0x0

    .line 123
    .local v19, "calorieDiff":D
    const-wide/16 v21, 0x0

    .line 125
    .local v21, "speed":D
    move-object/from16 v23, v1

    .end local v1    # "names":[Ljava/lang/String;
    .local v23, "names":[Ljava/lang/String;
    iget-object v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getBufferSize()I

    move-result v1

    .line 127
    .local v1, "loggingCount":I
    if-nez v1, :cond_0

    .line 128
    const-string v24, "History Data Buffer is null!!"

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 131
    :cond_0
    move-wide/from16 v24, v3

    .end local v3    # "totalStepCountDiff":J
    .local v24, "totalStepCountDiff":J
    new-array v3, v1, [J

    .line 132
    .local v3, "timeStampArray":[J
    new-array v4, v1, [D

    .line 133
    .local v4, "distanceDiffArray":[D
    move-wide/from16 v26, v5

    .end local v5    # "walkStepCountDiff":J
    .local v26, "walkStepCountDiff":J
    new-array v5, v1, [D

    .line 134
    .local v5, "calorieDiffArray":[D
    new-array v6, v1, [D

    .line 135
    .local v6, "speedArray":[D
    move-wide/from16 v28, v7

    .end local v7    # "runStepCountDiff":J
    .local v28, "runStepCountDiff":J
    new-array v7, v1, [J

    .line 136
    .local v7, "walkStepCountDiffArray":[J
    new-array v8, v1, [J

    .line 137
    .local v8, "runStepCountDiffArray":[J
    move-wide/from16 v30, v9

    .end local v9    # "walkUpStepCountDiff":J
    .local v30, "walkUpStepCountDiff":J
    new-array v9, v1, [J

    .line 138
    .local v9, "walkUpStepCountDiffArray":[J
    new-array v10, v1, [J

    .line 139
    .local v10, "walkDownStepCountDiffArray":[J
    move-wide/from16 v32, v11

    .end local v11    # "walkDownStepCountDiff":J
    .local v32, "walkDownStepCountDiff":J
    new-array v11, v1, [J

    .line 140
    .local v11, "runUpStepCountDiffArray":[J
    new-array v12, v1, [J

    .line 141
    .local v12, "runDownStepCountDiffArray":[J
    move-wide/from16 v34, v13

    .end local v13    # "runUpStepCountDiff":J
    .local v34, "runUpStepCountDiff":J
    new-array v13, v1, [J

    .line 143
    .local v13, "totalStepCountDiffArray":[J
    const/4 v14, 0x0

    move-wide/from16 v43, v26

    move/from16 v27, v2

    move-object/from16 v26, v5

    move v2, v14

    move-wide/from16 v45, v28

    move-object/from16 v28, v3

    move-wide/from16 v47, v24

    move-object/from16 v25, v4

    move-object/from16 v24, v7

    move-wide/from16 v3, v17

    move-object/from16 v18, v10

    move-object/from16 v17, v13

    move-wide/from16 v49, v21

    move-object/from16 v22, v6

    move-object/from16 v21, v9

    move-wide/from16 v5, v19

    move-object/from16 v20, v8

    move-object/from16 v19, v11

    move-wide/from16 v10, v45

    move-wide/from16 v8, v30

    move-wide/from16 v29, v34

    move-wide/from16 v35, v49

    move-wide/from16 v33, v32

    move-wide/from16 v31, v15

    move-wide/from16 v14, v47

    move-object/from16 v16, v12

    move-wide/from16 v12, v43

    .end local v4    # "distanceDiffArray":[D
    .end local v6    # "speedArray":[D
    .end local v7    # "walkStepCountDiffArray":[J
    .end local v9    # "walkUpStepCountDiffArray":[J
    .end local v11    # "runUpStepCountDiffArray":[J
    .end local v13    # "totalStepCountDiffArray":[J
    .end local v15    # "runDownStepCountDiff":J
    .end local v30    # "walkUpStepCountDiff":J
    .end local v32    # "walkDownStepCountDiff":J
    .end local v34    # "runUpStepCountDiff":J
    .local v2, "i":I
    .local v3, "distanceDiff":D
    .local v5, "calorieDiff":D
    .local v8, "walkUpStepCountDiff":J
    .local v10, "runStepCountDiff":J
    .local v12, "walkStepCountDiff":J
    .local v14, "totalStepCountDiff":J
    .local v16, "runDownStepCountDiffArray":[J
    .local v17, "totalStepCountDiffArray":[J
    .local v18, "walkDownStepCountDiffArray":[J
    .local v19, "runUpStepCountDiffArray":[J
    .local v20, "runStepCountDiffArray":[J
    .local v21, "walkUpStepCountDiffArray":[J
    .local v22, "speedArray":[D
    .local v24, "walkStepCountDiffArray":[J
    .local v25, "distanceDiffArray":[D
    .local v26, "calorieDiffArray":[D
    .local v27, "historyStepBufferMode":I
    .local v28, "timeStampArray":[J
    .local v29, "runUpStepCountDiff":J
    .local v31, "runDownStepCountDiff":J
    .local v33, "walkDownStepCountDiff":J
    .local v35, "speed":D
    :goto_0
    if-ge v2, v1, :cond_1

    .line 144
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTimeStampSingle(I)J

    move-result-wide v37

    aput-wide v37, v28, v2

    .line 146
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 147
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getTotalStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v17, v2

    .line 148
    aget-wide v37, v17, v2

    add-long v14, v14, v37

    .line 150
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 151
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v24, v2

    .line 152
    aget-wide v37, v24, v2

    add-long v12, v12, v37

    .line 154
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 155
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v20, v2

    .line 156
    aget-wide v37, v20, v2

    add-long v10, v10, v37

    .line 158
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 159
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkUpStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v21, v2

    .line 160
    aget-wide v37, v21, v2

    add-long v8, v8, v37

    .line 162
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 163
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunUpStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v19, v2

    .line 164
    aget-wide v37, v19, v2

    add-long v29, v29, v37

    .line 166
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 167
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getWalkDnStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v18, v2

    .line 168
    aget-wide v37, v18, v2

    add-long v33, v33, v37

    .line 170
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 171
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getRunDnStepCountSingle(I)J

    move-result-wide v37

    aput-wide v37, v16, v2

    .line 172
    aget-wide v37, v16, v2

    add-long v31, v31, v37

    .line 174
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 175
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getDistanceArraySingle(I)D

    move-result-wide v37

    aput-wide v37, v25, v2

    .line 176
    aget-wide v37, v25, v2

    add-double v3, v3, v37

    .line 178
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    .line 179
    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getCalorieArraySingle(I)D

    move-result-wide v37

    aput-wide v37, v26, v2

    .line 180
    aget-wide v37, v26, v2

    add-double v5, v5, v37

    .line 182
    iget-object v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v7, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->getSpeedArraySingle(I)D

    move-result-wide v37

    aput-wide v37, v22, v2

    .line 183
    aget-wide v37, v22, v2

    add-double v35, v35, v37

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_1
    add-long v37, v8, v33

    add-long v37, v37, v29

    move-wide/from16 v39, v8

    .end local v8    # "walkUpStepCountDiff":J
    .local v39, "walkUpStepCountDiff":J
    add-long v7, v37, v31

    .line 190
    .local v7, "upDownStepCountDiff":J
    if-lez v1, :cond_2

    .line 191
    move-wide/from16 v37, v5

    .end local v5    # "calorieDiff":D
    .local v37, "calorieDiff":D
    int-to-double v5, v1

    div-double v35, v35, v5

    move-wide/from16 v5, v35

    goto :goto_1

    .line 194
    .end local v37    # "calorieDiff":D
    .restart local v5    # "calorieDiff":D
    :cond_2
    move-wide/from16 v37, v5

    .end local v5    # "calorieDiff":D
    .restart local v37    # "calorieDiff":D
    const-wide/16 v35, 0x0

    move-wide/from16 v5, v35

    .line 197
    .end local v35    # "speed":D
    .local v5, "speed":D
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v23, v9

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 198
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v23, v9

    move-wide/from16 v35, v12

    .end local v12    # "walkStepCountDiff":J
    .local v35, "walkStepCountDiff":J
    iget-wide v12, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 200
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v23, v9

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v23, v9

    iget-wide v12, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 203
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v23, v9

    invoke-virtual {v2, v9, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 204
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v23, v9

    iget-wide v12, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v23, v9

    invoke-virtual {v2, v9, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v23, v9

    iget-wide v12, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v23, v9

    invoke-virtual {v2, v9, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 210
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v23, v9

    iget-wide v12, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v23, v9

    invoke-virtual {v2, v9, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v23, v9

    const/4 v12, -0x1

    invoke-virtual {v2, v9, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v23, v9

    move-wide/from16 v12, v37

    .end local v37    # "calorieDiff":D
    .local v12, "calorieDiff":D
    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 217
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v23, v9

    move-wide/from16 v37, v3

    .end local v3    # "distanceDiff":D
    .local v37, "distanceDiff":D
    iget-wide v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 219
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0xe

    aget-object v3, v23, v3

    move-wide/from16 v41, v5

    .end local v5    # "speed":D
    .local v41, "speed":D
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 221
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0xf

    aget-object v3, v23, v3

    move-wide/from16 v4, v39

    .end local v39    # "walkUpStepCountDiff":J
    .local v4, "walkUpStepCountDiff":J
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x10

    aget-object v3, v23, v3

    .end local v4    # "walkUpStepCountDiff":J
    .restart local v39    # "walkUpStepCountDiff":J
    iget-wide v4, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 224
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x11

    aget-object v3, v23, v3

    move-wide/from16 v4, v33

    .end local v33    # "walkDownStepCountDiff":J
    .local v4, "walkDownStepCountDiff":J
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 225
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x12

    aget-object v3, v23, v3

    .end local v4    # "walkDownStepCountDiff":J
    .restart local v33    # "walkDownStepCountDiff":J
    iget-wide v4, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 227
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x13

    aget-object v3, v23, v3

    move-wide/from16 v4, v29

    .end local v29    # "runUpStepCountDiff":J
    .local v4, "runUpStepCountDiff":J
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x14

    aget-object v3, v23, v3

    .end local v4    # "runUpStepCountDiff":J
    .restart local v29    # "runUpStepCountDiff":J
    iget-wide v4, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 230
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x15

    aget-object v3, v23, v3

    move-wide/from16 v4, v31

    .end local v31    # "runDownStepCountDiff":J
    .local v4, "runDownStepCountDiff":J
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 231
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x16

    aget-object v3, v23, v3

    .end local v4    # "runDownStepCountDiff":J
    .restart local v31    # "runDownStepCountDiff":J
    iget-wide v4, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x17

    aget-object v3, v23, v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x18

    aget-object v3, v23, v3

    move-object/from16 v4, v28

    .end local v28    # "timeStampArray":[J
    .local v4, "timeStampArray":[J
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 235
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x19

    aget-object v3, v23, v3

    move-object/from16 v5, v25

    .end local v25    # "distanceDiffArray":[D
    .local v5, "distanceDiffArray":[D
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 236
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x1a

    aget-object v3, v23, v3

    move-object/from16 v6, v26

    .end local v26    # "calorieDiffArray":[D
    .local v6, "calorieDiffArray":[D
    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x1b

    aget-object v3, v23, v3

    move-object/from16 v9, v22

    .end local v22    # "speedArray":[D
    .local v9, "speedArray":[D
    invoke-virtual {v2, v3, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x1c

    aget-object v3, v23, v3

    move-object/from16 v0, v24

    .end local v24    # "walkStepCountDiffArray":[J
    .local v0, "walkStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x1d

    aget-object v3, v23, v3

    move-object/from16 v0, v20

    .end local v20    # "runStepCountDiffArray":[J
    .local v0, "runStepCountDiffArray":[J
    .restart local v24    # "walkStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x1e

    aget-object v3, v23, v3

    move-object/from16 v0, v21

    .end local v21    # "walkUpStepCountDiffArray":[J
    .local v0, "walkUpStepCountDiffArray":[J
    .restart local v20    # "runStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x1f

    aget-object v3, v23, v3

    move-object/from16 v0, v18

    .end local v18    # "walkDownStepCountDiffArray":[J
    .local v0, "walkDownStepCountDiffArray":[J
    .restart local v21    # "walkUpStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x20

    aget-object v3, v23, v3

    move-object/from16 v0, v19

    .end local v19    # "runUpStepCountDiffArray":[J
    .local v0, "runUpStepCountDiffArray":[J
    .restart local v18    # "walkDownStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x21

    aget-object v3, v23, v3

    move-object/from16 v0, v16

    .end local v16    # "runDownStepCountDiffArray":[J
    .local v0, "runDownStepCountDiffArray":[J
    .restart local v19    # "runUpStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x22

    aget-object v3, v23, v3

    move-object/from16 v0, v17

    .end local v17    # "totalStepCountDiffArray":[J
    .local v0, "totalStepCountDiffArray":[J
    .restart local v16    # "runDownStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x23

    aget-object v3, v23, v3

    move/from16 v0, v27

    .end local v27    # "historyStepBufferMode":I
    .local v0, "historyStepBufferMode":I
    .restart local v17    # "totalStepCountDiffArray":[J
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 247
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 248
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 840
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 841
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 843
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 845
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 846
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 847
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 848
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 849
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 850
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 851
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 852
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 854
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 855
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 858
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 861
    throw v0
.end method

.method public final disable()V
    .locals 0

    .line 1052
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 1053
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 1054
    return-void
.end method

.method protected display()V
    .locals 8

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v1, "str":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 327
    .local v4, "i":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    goto :goto_2

    .line 330
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 331
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ge v6, v7, :cond_2

    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 331
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 336
    .end local v5    # "j":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    .end local v4    # "i":Ljava/lang/String;
    goto :goto_0

    .line 339
    :cond_4
    :goto_2
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    .line 340
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 343
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 344
    return-void

    .line 317
    .end local v1    # "str":Ljava/lang/StringBuffer;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    :goto_3
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 1040
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 1041
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 1042
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 258
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 37

    .line 297
    const-string v35, "TotalStepCountDiffArray"

    const-string v36, "PreviousStepBuffer"

    const-string v1, "WalkStepCountDiff"

    const-string v2, "WalkStepCount"

    const-string v3, "RunStepCountDiff"

    const-string v4, "RunStepCount"

    const-string v5, "UpDownStepCountDiff"

    const-string v6, "UpDownStepCount"

    const-string v7, "TotalStepCountDiff"

    const-string v8, "TotalStepCount"

    const-string v9, "DistanceDiff"

    const-string v10, "Distance"

    const-string v11, "Speed"

    const-string v12, "StepStatus"

    const-string v13, "CalorieDiff"

    const-string v14, "Calorie"

    const-string v15, "WalkingFrequency"

    const-string v16, "WalkUpStepCountDiff"

    const-string v17, "WalkUpStepCount"

    const-string v18, "WalkDownStepCountDiff"

    const-string v19, "WalkDownStepCount"

    const-string v20, "RunUpStepCountDiff"

    const-string v21, "RunUpStepCount"

    const-string v22, "RunDownStepCountDiff"

    const-string v23, "RunDownStepCount"

    const-string v24, "LoggingCount"

    const-string v25, "TimeStampArray"

    const-string v26, "DistanceDiffArray"

    const-string v27, "CalorieDiffArray"

    const-string v28, "SpeedArray"

    const-string v29, "WalkStepCountDiffArray"

    const-string v30, "RunStepCountDiffArray"

    const-string v31, "WalkUpStepCountDiffArray"

    const-string v32, "WalkDownStepCountDiffArray"

    const-string v33, "RunUpStepCountDiffArray"

    const-string v34, "RunDownStepCountDiffArray"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .line 280
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 281
    .local v0, "packet":[B
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 282
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 283
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 285
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 1092
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    .line 875
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 878
    .local v1, "contextBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 879
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 880
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 881
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 882
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 883
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 884
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 885
    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 886
    const/16 v2, 0x8

    aget-object v2, v0, v2

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 887
    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 888
    const/16 v2, 0xa

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 889
    const/16 v2, 0xb

    aget-object v2, v0, v2

    const/4 v7, -0x1

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 891
    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 892
    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 893
    const/16 v2, 0xe

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 894
    const/16 v2, 0xf

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 895
    const/16 v2, 0x10

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 896
    const/16 v2, 0x11

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 897
    const/16 v2, 0x12

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 898
    const/16 v2, 0x13

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 899
    const/16 v2, 0x14

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 900
    const/16 v2, 0x15

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 901
    const/16 v2, 0x16

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 903
    return-object v1
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 269
    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 1018
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 1029
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 1079
    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    .line 1065
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    .line 1066
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1067
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    .line 1069
    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 82
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 355
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 357
    .local v3, "tmpNext":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse start:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 359
    array-length v0, v2

    sub-int/2addr v0, v3

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v5, -0x1

    if-gez v0, :cond_0

    .line 360
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 361
    return v5

    .line 364
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 367
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    .line 368
    .local v0, "names":[Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v6, "tmpNext":I
    :try_start_1
    aget-byte v3, v2, v3

    .line 370
    .local v3, "data":I
    const-wide/16 v7, 0x0

    .line 371
    .local v7, "totalStepCountDiff":J
    const-wide/16 v9, 0x0

    .line 372
    .local v9, "walkStepCountDiff":J
    const-wide/16 v11, 0x0

    .line 373
    .local v11, "runStepCountDiff":J
    const-wide/16 v13, 0x0

    .line 374
    .local v13, "walkUpStepCountDiff":J
    const-wide/16 v15, 0x0

    .line 375
    .local v15, "walkDownStepCountDiff":J
    const-wide/16 v17, 0x0

    .line 376
    .local v17, "runUpStepCountDiff":J
    const-wide/16 v19, 0x0

    .line 377
    .local v19, "runDownStepCountDiff":J
    const-wide/16 v21, 0x0

    .line 378
    .local v21, "distanceDiff":D
    const-wide/16 v23, 0x0

    .line 379
    .local v23, "calorieDiff":D
    const-wide/16 v25, 0x0

    .line 381
    .local v25, "speed":D
    move/from16 v27, v5

    new-instance v5, Ljava/util/SimpleTimeZone;

    move/from16 v28, v4

    const-string v4, "GMT"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1d

    move/from16 v29, v6

    .end local v6    # "tmpNext":I
    .local v29, "tmpNext":I
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {v5, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 383
    .local v4, "calender":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v30

    move/from16 v31, v30

    .line 384
    .local v31, "hour":I
    move/from16 v30, v5

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v32

    .line 385
    .local v32, "minute":I
    move/from16 v33, v5

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v34

    .line 386
    .local v34, "second":I
    move/from16 v35, v5

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v36

    .line 388
    .local v36, "milliSec":I
    move/from16 v37, v5

    move/from16 v5, v31

    move/from16 v31, v6

    .end local v31    # "hour":I
    .local v5, "hour":I
    mul-int/lit16 v6, v5, 0xe10

    mul-int/lit8 v38, v32, 0x3c

    add-int v6, v6, v38

    add-int v6, v6, v34

    mul-int/lit16 v6, v6, 0x3e8

    add-int v6, v6, v36

    move-object/from16 v45, v4

    move/from16 v46, v5

    .end local v4    # "calender":Ljava/util/Calendar;
    .end local v5    # "hour":I
    .local v45, "calender":Ljava/util/Calendar;
    .local v46, "hour":I
    int-to-long v4, v6

    .line 389
    .local v4, "curUtcTime":J
    invoke-virtual/range {v45 .. v45}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v41

    .line 391
    .local v41, "curTimeMillis":J
    and-int/lit16 v6, v3, 0x80

    const/16 v47, 0xf

    const/16 v48, 0xa

    const/16 v49, 0x9

    const/16 v50, 0x7

    const/16 v51, 0x5

    const/16 v52, 0x4

    const/16 v53, 0x14

    move-wide/from16 v39, v4

    .end local v4    # "curUtcTime":J
    .local v39, "curUtcTime":J
    const/16 v54, 0x6

    const-wide/high16 v55, 0x4024000000000000L    # 10.0

    const-wide/high16 v57, 0x4059000000000000L    # 100.0

    const/16 v59, 0x10

    const/16 v60, 0x8

    if-nez v6, :cond_3

    .line 392
    array-length v6, v2

    sub-int v6, v6, v29

    add-int/lit8 v6, v6, -0xe

    if-gez v6, :cond_1

    .line 393
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1c

    .line 394
    nop

    .line 824
    iget-object v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 394
    return v27

    .line 397
    :cond_1
    and-int/lit8 v3, v3, 0x7f

    .line 398
    :try_start_3
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/16 v61, 0x2

    aget-object v5, v0, v31

    move-wide/from16 v43, v7

    .end local v7    # "totalStepCountDiff":J
    .local v43, "totalStepCountDiff":J
    int-to-long v7, v3

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 400
    int-to-long v5, v3

    .line 402
    .end local v9    # "walkStepCountDiff":J
    .local v5, "walkStepCountDiff":J
    iget-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v9, v3

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 403
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    aget-object v8, v0, v28

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1c

    .line 406
    add-int/lit8 v7, v29, 0x1

    .end local v29    # "tmpNext":I
    .local v7, "tmpNext":I
    :try_start_4
    aget-byte v8, v2, v29

    .line 407
    .end local v3    # "data":I
    .local v8, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v9, v0, v61

    move-wide/from16 v63, v5

    const/16 v62, 0x3

    .end local v5    # "walkStepCountDiff":J
    .local v63, "walkStepCountDiff":J
    int-to-long v4, v8

    invoke-virtual {v3, v9, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 409
    int-to-long v3, v8

    .line 411
    .end local v11    # "runStepCountDiff":J
    .local v3, "runStepCountDiff":J
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v9, v8

    add-long/2addr v5, v9

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 412
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v62

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v5, v6, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 415
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v5, "tmpNext":I
    :try_start_5
    aget-byte v6, v2, v7

    .line 416
    .end local v8    # "data":I
    .local v6, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    aget-object v8, v0, v52

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 418
    iget-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 419
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    aget-object v8, v0, v51

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    .line 422
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_6
    aget-byte v5, v2, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v8, "tmpNext":I
    :try_start_7
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    .line 424
    .end local v6    # "data":I
    .local v5, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v54

    int-to-long v9, v5

    invoke-virtual {v6, v7, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 426
    int-to-long v6, v5

    .line 428
    .end local v43    # "totalStepCountDiff":J
    .local v6, "totalStepCountDiff":J
    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 429
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    aget-object v10, v0, v50

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1a

    .line 432
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v9, "tmpNext":I
    :try_start_8
    aget-byte v8, v2, v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v10, "tmpNext":I
    :try_start_9
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    .line 434
    .end local v5    # "data":I
    .local v8, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v9, v0, v60

    int-to-double v11, v8

    div-double v11, v11, v57

    .line 435
    invoke-virtual {v5, v9, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 437
    int-to-double v11, v8

    div-double v11, v11, v57

    .line 439
    .end local v21    # "distanceDiff":D
    .local v11, "distanceDiff":D
    move v5, v10

    .end local v10    # "tmpNext":I
    .local v5, "tmpNext":I
    :try_start_a
    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v21, v9

    int-to-double v9, v8

    div-double v9, v9, v57

    add-double v9, v21, v9

    iput-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 440
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    aget-object v10, v0, v49

    move-wide/from16 v65, v13

    .end local v13    # "walkUpStepCountDiff":J
    .local v65, "walkUpStepCountDiff":J
    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v9, v10, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1b

    .line 442
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    :try_start_b
    aget-byte v5, v2, v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v5

    int-to-double v13, v5

    div-double v13, v13, v55

    .line 444
    .end local v25    # "speed":D
    .local v13, "speed":D
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v10, v0, v48

    invoke-virtual {v5, v10, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 446
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :try_start_c
    aget-byte v9, v2, v9

    .line 447
    .end local v8    # "data":I
    .local v9, "data":I
    move v8, v9

    .line 448
    .local v8, "stepStatus":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move/from16 v21, v5

    .end local v5    # "tmpNext":I
    .local v21, "tmpNext":I
    :try_start_d
    aget-object v5, v0, v30

    invoke-virtual {v10, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 459
    add-int/lit8 v5, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :try_start_e
    aget-byte v10, v2, v21

    .line 460
    invoke-static {v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v10

    move/from16 v25, v8

    move/from16 v22, v9

    .end local v8    # "stepStatus":I
    .end local v9    # "data":I
    .local v22, "data":I
    .local v25, "stepStatus":I
    int-to-double v8, v10

    div-double v8, v8, v57

    .line 462
    .end local v23    # "calorieDiff":D
    .local v8, "calorieDiff":D
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move/from16 v26, v5

    .end local v5    # "tmpNext":I
    .local v26, "tmpNext":I
    :try_start_f
    aget-object v5, v0, v33

    invoke-virtual {v10, v5, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 464
    move-wide/from16 v43, v13

    .end local v13    # "speed":D
    .local v43, "speed":D
    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    add-double/2addr v13, v8

    iput-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 465
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v10, v0, v35

    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v5, v10, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 467
    add-int/lit8 v5, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :try_start_10
    aget-byte v10, v2, v26

    .line 468
    .end local v22    # "data":I
    .local v10, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v13

    aget-object v14, v0, v37

    move-wide/from16 v21, v8

    .end local v8    # "calorieDiff":D
    .local v21, "calorieDiff":D
    int-to-double v8, v10

    div-double v8, v8, v55

    .line 469
    invoke-virtual {v13, v14, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1b

    .line 471
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v8, "tmpNext":I
    :try_start_11
    aget-byte v5, v2, v5

    .line 472
    .end local v10    # "data":I
    .local v5, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    aget-object v10, v0, v47

    int-to-long v13, v5

    invoke-virtual {v9, v10, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 474
    int-to-long v9, v5

    .line 476
    .end local v65    # "walkUpStepCountDiff":J
    .local v9, "walkUpStepCountDiff":J
    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v23, v13

    int-to-long v13, v5

    add-long v13, v23, v13

    iput-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 477
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v13

    aget-object v14, v0, v59

    move-wide/from16 v50, v11

    .end local v11    # "distanceDiff":D
    .local v50, "distanceDiff":D
    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v13, v14, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1a

    .line 480
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v11, "tmpNext":I
    :try_start_12
    aget-byte v8, v2, v8

    .line 481
    .end local v5    # "data":I
    .local v8, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v12, 0x11

    aget-object v12, v0, v12

    int-to-long v13, v8

    invoke-virtual {v5, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 483
    int-to-long v12, v8

    .line 485
    .end local v15    # "walkDownStepCountDiff":J
    .local v12, "walkDownStepCountDiff":J
    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v23, v14

    int-to-long v14, v8

    add-long v14, v23, v14

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 486
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v14, 0x12

    aget-object v14, v0, v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move/from16 v23, v11

    move-wide v15, v12

    .end local v11    # "tmpNext":I
    .end local v12    # "walkDownStepCountDiff":J
    .restart local v15    # "walkDownStepCountDiff":J
    .local v23, "tmpNext":I
    :try_start_13
    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v5, v14, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 489
    add-int/lit8 v5, v23, 0x1

    .end local v23    # "tmpNext":I
    .local v5, "tmpNext":I
    :try_start_14
    aget-byte v11, v2, v23

    .line 490
    .end local v8    # "data":I
    .local v11, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/16 v12, 0x13

    aget-object v12, v0, v12

    int-to-long v13, v11

    invoke-virtual {v8, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 492
    int-to-long v12, v11

    .line 494
    .end local v17    # "runUpStepCountDiff":J
    .local v12, "runUpStepCountDiff":J
    move-wide/from16 v26, v15

    .end local v15    # "walkDownStepCountDiff":J
    .local v26, "walkDownStepCountDiff":J
    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v16, v14

    int-to-long v14, v11

    add-long v14, v16, v14

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 495
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v14, v0, v53

    move v15, v11

    move-wide/from16 v16, v12

    .end local v11    # "data":I
    .end local v12    # "runUpStepCountDiff":J
    .local v15, "data":I
    .local v16, "runUpStepCountDiff":J
    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v8, v14, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1b

    .line 498
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v8, "tmpNext":I
    :try_start_15
    aget-byte v5, v2, v5

    .line 499
    .end local v15    # "data":I
    .local v5, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    const/16 v12, 0x15

    aget-object v12, v0, v12

    int-to-long v13, v5

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 501
    int-to-long v11, v5

    .line 503
    .end local v19    # "runDownStepCountDiff":J
    .local v11, "runDownStepCountDiff":J
    iget-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v18, v13

    int-to-long v13, v5

    add-long v13, v18, v13

    iput-wide v13, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 504
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v13

    const/16 v14, 0x16

    aget-object v14, v0, v14

    move-wide/from16 v18, v11

    .end local v11    # "runDownStepCountDiff":J
    .local v18, "runDownStepCountDiff":J
    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v13, v14, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 507
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-lez v11, :cond_2

    .line 509
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move/from16 v12, v28

    invoke-virtual {v11, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    .line 511
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v11, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    .line 512
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v12, v63

    .end local v63    # "walkStepCountDiff":J
    .local v12, "walkStepCountDiff":J
    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    .line 513
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    .line 514
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v11, v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    .line 515
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v14, v16

    .end local v16    # "runUpStepCountDiff":J
    .local v14, "runUpStepCountDiff":J
    invoke-virtual {v11, v14, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    .line 516
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v63, v3

    move-wide/from16 v3, v26

    .end local v26    # "walkDownStepCountDiff":J
    .local v3, "walkDownStepCountDiff":J
    .local v63, "runStepCountDiff":J
    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    .line 517
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v26, v3

    move-wide/from16 v3, v18

    .end local v18    # "runDownStepCountDiff":J
    .local v3, "runDownStepCountDiff":J
    .restart local v26    # "walkDownStepCountDiff":J
    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    .line 518
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v18, v3

    move-wide/from16 v3, v50

    .end local v50    # "distanceDiff":D
    .local v3, "distanceDiff":D
    .restart local v18    # "runDownStepCountDiff":J
    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    .line 519
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v50, v3

    move-wide/from16 v3, v21

    .end local v21    # "calorieDiff":D
    .local v3, "calorieDiff":D
    .restart local v50    # "distanceDiff":D
    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    .line 520
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v21, v3

    move-wide/from16 v3, v43

    .end local v43    # "speed":D
    .local v3, "speed":D
    .restart local v21    # "calorieDiff":D
    invoke-virtual {v11, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    .line 521
    iget-object v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v43, v3

    const/4 v3, 0x1

    .end local v3    # "speed":D
    .restart local v43    # "speed":D
    invoke-virtual {v11, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1a

    goto :goto_0

    .line 507
    .end local v12    # "walkStepCountDiff":J
    .end local v14    # "runUpStepCountDiff":J
    .local v3, "runStepCountDiff":J
    .restart local v16    # "runUpStepCountDiff":J
    .local v63, "walkStepCountDiff":J
    :cond_2
    move-wide/from16 v14, v16

    move-wide/from16 v12, v63

    move-wide/from16 v63, v3

    .line 523
    .end local v3    # "runStepCountDiff":J
    .end local v16    # "runUpStepCountDiff":J
    .end local v25    # "stepStatus":I
    .restart local v12    # "walkStepCountDiff":J
    .restart local v14    # "runUpStepCountDiff":J
    .local v63, "runStepCountDiff":J
    :goto_0
    move/from16 v16, v5

    move-wide/from16 v66, v21

    move-wide/from16 v55, v43

    move-wide/from16 v29, v50

    move-wide/from16 v3, v63

    move-wide/from16 v20, v14

    move-wide v14, v9

    move-wide v10, v6

    move-wide v5, v12

    move-wide/from16 v12, v26

    goto/16 :goto_3

    .line 824
    .end local v0    # "names":[Ljava/lang/String;
    .end local v5    # "data":I
    .end local v6    # "totalStepCountDiff":J
    .end local v8    # "tmpNext":I
    .end local v9    # "walkUpStepCountDiff":J
    .end local v12    # "walkStepCountDiff":J
    .end local v14    # "runUpStepCountDiff":J
    .end local v18    # "runDownStepCountDiff":J
    .end local v21    # "calorieDiff":D
    .end local v26    # "walkDownStepCountDiff":J
    .end local v32    # "minute":I
    .end local v34    # "second":I
    .end local v36    # "milliSec":I
    .end local v39    # "curUtcTime":J
    .end local v41    # "curTimeMillis":J
    .end local v43    # "speed":D
    .end local v45    # "calender":Ljava/util/Calendar;
    .end local v46    # "hour":I
    .end local v50    # "distanceDiff":D
    .end local v63    # "runStepCountDiff":J
    .restart local v23    # "tmpNext":I
    :catchall_0
    move-exception v0

    move/from16 v3, v23

    goto/16 :goto_4

    .end local v23    # "tmpNext":I
    .local v11, "tmpNext":I
    :catchall_1
    move-exception v0

    move/from16 v23, v11

    move/from16 v3, v23

    .end local v11    # "tmpNext":I
    .restart local v23    # "tmpNext":I
    goto/16 :goto_4

    .end local v23    # "tmpNext":I
    .local v26, "tmpNext":I
    :catchall_2
    move-exception v0

    move/from16 v3, v26

    goto/16 :goto_4

    .end local v26    # "tmpNext":I
    .local v5, "tmpNext":I
    :catchall_3
    move-exception v0

    move/from16 v26, v5

    move/from16 v3, v26

    .end local v5    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    goto/16 :goto_4

    .end local v26    # "tmpNext":I
    .local v21, "tmpNext":I
    :catchall_4
    move-exception v0

    move/from16 v3, v21

    goto/16 :goto_4

    .end local v21    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :catchall_5
    move-exception v0

    move/from16 v21, v5

    move/from16 v3, v21

    .end local v5    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    goto/16 :goto_4

    .end local v21    # "tmpNext":I
    .local v10, "tmpNext":I
    :catchall_6
    move-exception v0

    move v5, v10

    move v3, v5

    .end local v10    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    goto/16 :goto_4

    .end local v5    # "tmpNext":I
    .local v9, "tmpNext":I
    :catchall_7
    move-exception v0

    move v3, v9

    goto/16 :goto_4

    .end local v9    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :catchall_8
    move-exception v0

    move v3, v7

    goto/16 :goto_4

    .line 523
    .restart local v0    # "names":[Ljava/lang/String;
    .local v3, "data":I
    .local v7, "totalStepCountDiff":J
    .local v9, "walkStepCountDiff":J
    .local v11, "runStepCountDiff":J
    .local v13, "walkUpStepCountDiff":J
    .local v15, "walkDownStepCountDiff":J
    .restart local v17    # "runUpStepCountDiff":J
    .restart local v19    # "runDownStepCountDiff":J
    .local v21, "distanceDiff":D
    .local v23, "calorieDiff":D
    .local v25, "speed":D
    .restart local v29    # "tmpNext":I
    .restart local v32    # "minute":I
    .restart local v34    # "second":I
    .restart local v36    # "milliSec":I
    .restart local v39    # "curUtcTime":J
    .restart local v41    # "curTimeMillis":J
    .restart local v45    # "calender":Ljava/util/Calendar;
    .restart local v46    # "hour":I
    :cond_3
    move-wide/from16 v43, v7

    move-wide/from16 v65, v13

    const/16 v61, 0x2

    const/16 v62, 0x3

    .end local v7    # "totalStepCountDiff":J
    .end local v13    # "walkUpStepCountDiff":J
    .local v43, "totalStepCountDiff":J
    .restart local v65    # "walkUpStepCountDiff":J
    and-int/lit16 v4, v3, 0xc0

    shr-int/lit8 v4, v4, 0x6

    move/from16 v5, v62

    if-ne v4, v5, :cond_8

    .line 524
    :try_start_16
    array-length v4, v2

    sub-int v4, v4, v29

    const/16 v28, 0x1

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_4

    .line 525
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1c

    .line 526
    nop

    .line 824
    iget-object v4, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 526
    return v27

    .line 529
    :cond_4
    add-int/lit8 v4, v29, 0x1

    .end local v29    # "tmpNext":I
    .local v4, "tmpNext":I
    :try_start_17
    aget-byte v5, v2, v29
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    .line 530
    .local v5, "loggingCount":I
    if-gtz v5, :cond_5

    .line 531
    :try_start_18
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 532
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 531
    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 533
    nop

    .line 824
    iget-object v6, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 533
    return v27

    .line 824
    .end local v0    # "names":[Ljava/lang/String;
    .end local v3    # "data":I
    .end local v5    # "loggingCount":I
    .end local v9    # "walkStepCountDiff":J
    .end local v11    # "runStepCountDiff":J
    .end local v15    # "walkDownStepCountDiff":J
    .end local v17    # "runUpStepCountDiff":J
    .end local v19    # "runDownStepCountDiff":J
    .end local v21    # "distanceDiff":D
    .end local v23    # "calorieDiff":D
    .end local v25    # "speed":D
    .end local v32    # "minute":I
    .end local v34    # "second":I
    .end local v36    # "milliSec":I
    .end local v39    # "curUtcTime":J
    .end local v41    # "curTimeMillis":J
    .end local v43    # "totalStepCountDiff":J
    .end local v45    # "calender":Ljava/util/Calendar;
    .end local v46    # "hour":I
    .end local v65    # "walkUpStepCountDiff":J
    :catchall_9
    move-exception v0

    move v3, v4

    goto/16 :goto_4

    .line 536
    .restart local v0    # "names":[Ljava/lang/String;
    .restart local v3    # "data":I
    .restart local v5    # "loggingCount":I
    .restart local v9    # "walkStepCountDiff":J
    .restart local v11    # "runStepCountDiff":J
    .restart local v15    # "walkDownStepCountDiff":J
    .restart local v17    # "runUpStepCountDiff":J
    .restart local v19    # "runDownStepCountDiff":J
    .restart local v21    # "distanceDiff":D
    .restart local v23    # "calorieDiff":D
    .restart local v25    # "speed":D
    .restart local v32    # "minute":I
    .restart local v34    # "second":I
    .restart local v36    # "milliSec":I
    .restart local v39    # "curUtcTime":J
    .restart local v41    # "curTimeMillis":J
    .restart local v43    # "totalStepCountDiff":J
    .restart local v45    # "calender":Ljava/util/Calendar;
    .restart local v46    # "hour":I
    .restart local v65    # "walkUpStepCountDiff":J
    :cond_5
    :try_start_19
    new-array v6, v5, [J

    .line 537
    .local v6, "timeStampArray":[J
    new-array v7, v5, [D

    .line 538
    .local v7, "distanceDiffArray":[D
    new-array v8, v5, [D

    .line 539
    .local v8, "calorieDiffArray":[D
    new-array v13, v5, [D

    .line 540
    .local v13, "speedArray":[D
    new-array v14, v5, [J

    .line 541
    .local v14, "walkStepCountDiffArray":[J
    move/from16 v38, v3

    .end local v3    # "data":I
    .local v38, "data":I
    new-array v3, v5, [J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    .line 542
    .local v3, "runStepCountDiffArray":[J
    move/from16 v63, v4

    .end local v4    # "tmpNext":I
    .local v63, "tmpNext":I
    :try_start_1a
    new-array v4, v5, [J

    .line 543
    .local v4, "walkUpStepCountDiffArray":[J
    move-wide/from16 v67, v9

    .end local v9    # "walkStepCountDiff":J
    .local v67, "walkStepCountDiff":J
    new-array v9, v5, [J

    .line 544
    .local v9, "walkDownStepCountDiffArray":[J
    new-array v10, v5, [J

    .line 545
    .local v10, "runUpStepCountDiffArray":[J
    move-wide/from16 v69, v11

    .end local v11    # "runStepCountDiff":J
    .local v69, "runStepCountDiff":J
    new-array v11, v5, [J

    .line 546
    .local v11, "runDownStepCountDiffArray":[J
    new-array v12, v5, [J

    .line 547
    .local v12, "totalStepCountDiffArray":[J
    const/16 v29, -0x1

    .line 549
    .local v29, "stepStatus":I
    const/16 v64, 0x0

    move-object/from16 v74, v3

    move-object/from16 v75, v4

    move-object/from16 v79, v6

    move-object/from16 v77, v7

    move-object/from16 v78, v8

    move-object/from16 v72, v9

    move-object/from16 v73, v10

    move-object/from16 v71, v12

    move-object v8, v13

    move-object/from16 v76, v14

    move-wide/from16 v6, v21

    move-wide/from16 v13, v23

    move-wide/from16 v23, v65

    move-wide/from16 v9, v67

    move-wide/from16 v3, v69

    move-wide/from16 v21, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    move/from16 v16, v38

    move/from16 v15, v64

    move-object/from16 v64, v11

    move-wide/from16 v11, v43

    .end local v4    # "walkUpStepCountDiffArray":[J
    .end local v7    # "distanceDiffArray":[D
    .end local v10    # "runUpStepCountDiffArray":[J
    .end local v12    # "totalStepCountDiffArray":[J
    .end local v14    # "walkStepCountDiffArray":[J
    .end local v38    # "data":I
    .end local v43    # "totalStepCountDiff":J
    .end local v65    # "walkUpStepCountDiff":J
    .end local v67    # "walkStepCountDiff":J
    .end local v69    # "runStepCountDiff":J
    .local v3, "runStepCountDiff":J
    .local v6, "distanceDiff":D
    .local v8, "speedArray":[D
    .local v9, "walkStepCountDiff":J
    .local v11, "totalStepCountDiff":J
    .local v13, "calorieDiff":D
    .local v15, "i":I
    .local v16, "data":I
    .local v17, "walkDownStepCountDiff":J
    .local v19, "runUpStepCountDiff":J
    .local v21, "runDownStepCountDiff":J
    .local v23, "walkUpStepCountDiff":J
    .local v64, "runDownStepCountDiffArray":[J
    .local v71, "totalStepCountDiffArray":[J
    .local v72, "walkDownStepCountDiffArray":[J
    .local v73, "runUpStepCountDiffArray":[J
    .local v74, "runStepCountDiffArray":[J
    .local v75, "walkUpStepCountDiffArray":[J
    .local v76, "walkStepCountDiffArray":[J
    .local v77, "distanceDiffArray":[D
    .local v78, "calorieDiffArray":[D
    .local v79, "timeStampArray":[J
    :goto_1
    if-ge v15, v5, :cond_7

    .line 550
    move-object/from16 v65, v8

    .end local v8    # "speedArray":[D
    .local v65, "speedArray":[D
    array-length v8, v2

    sub-int v8, v8, v63

    add-int/lit8 v8, v8, -0x14

    if-gez v8, :cond_6

    .line 551
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 552
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 551
    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    .line 553
    nop

    .line 824
    iget-object v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 553
    return v27

    .line 556
    :cond_6
    add-int/lit8 v8, v63, 0x1

    move/from16 v38, v8

    .end local v63    # "tmpNext":I
    .local v38, "tmpNext":I
    :try_start_1b
    aget-byte v8, v2, v63
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v43, v38, 0x1

    move/from16 v44, v8

    .end local v38    # "tmpNext":I
    .local v43, "tmpNext":I
    :try_start_1c
    aget-byte v8, v2, v38
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int v8, v44, v8

    add-int/lit8 v38, v43, 0x1

    move/from16 v44, v8

    .end local v43    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_1d
    aget-byte v8, v2, v43
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int v8, v44, v8

    add-int/lit8 v63, v38, 0x1

    move/from16 v43, v8

    .end local v38    # "tmpNext":I
    .restart local v63    # "tmpNext":I
    :try_start_1e
    aget-byte v8, v2, v38

    and-int/lit16 v8, v8, 0xff

    add-int v8, v43, v8

    move-wide/from16 v66, v13

    .end local v13    # "calorieDiff":D
    .local v66, "calorieDiff":D
    int-to-long v13, v8

    .line 560
    .local v13, "tmpTimeStamp":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v38

    .line 561
    move-wide/from16 v43, v13

    .end local v13    # "tmpTimeStamp":J
    .local v43, "tmpTimeStamp":J
    invoke-virtual/range {v38 .. v44}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v13

    aput-wide v13, v79, v15
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 564
    add-int/lit8 v8, v63, 0x1

    .end local v63    # "tmpNext":I
    .local v8, "tmpNext":I
    :try_start_1f
    aget-byte v13, v2, v63
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1a

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v14, "tmpNext":I
    :try_start_20
    aget-byte v8, v2, v8
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v13, v8

    .line 566
    .end local v16    # "data":I
    .local v13, "data":I
    move/from16 v38, v14

    move/from16 v68, v15

    .end local v14    # "tmpNext":I
    .end local v15    # "i":I
    .restart local v38    # "tmpNext":I
    .local v68, "i":I
    int-to-double v14, v13

    div-double v14, v14, v57

    :try_start_21
    aput-wide v14, v77, v68
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 568
    add-int/lit8 v8, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    :try_start_22
    aget-byte v14, v2, v38
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v15, "tmpNext":I
    :try_start_23
    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v14

    .line 570
    .end local v13    # "data":I
    .local v8, "data":I
    int-to-double v13, v8

    div-double v13, v13, v57

    aput-wide v13, v78, v68
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 572
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "tmpNext":I
    .local v13, "tmpNext":I
    :try_start_24
    aget-byte v14, v2, v15

    .line 573
    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v76, v68
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    .line 574
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :try_start_25
    aget-byte v13, v2, v13
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    :try_start_26
    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v13, v14

    int-to-long v13, v13

    aput-wide v13, v74, v68
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 575
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    :try_start_27
    aget-byte v14, v2, v15

    .line 576
    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v75, v68
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    .line 577
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :try_start_28
    aget-byte v13, v2, v13

    .line 578
    invoke-static {v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v13
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    move v15, v14

    .end local v14    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    int-to-long v13, v13

    :try_start_29
    aput-wide v13, v72, v68
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    .line 579
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    :try_start_2a
    aget-byte v14, v2, v15
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v15, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    :try_start_2b
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v14, v13

    int-to-long v13, v14

    aput-wide v13, v73, v68
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 580
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    :try_start_2c
    aget-byte v14, v2, v15
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v15, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    :try_start_2d
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v14, v13

    int-to-long v13, v14

    aput-wide v13, v64, v68
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    .line 582
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    :try_start_2e
    aget-byte v14, v2, v15

    .line 583
    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v14

    int-to-double v14, v14

    div-double v14, v14, v55

    aput-wide v14, v65, v68
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    .line 584
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :try_start_2f
    aget-byte v13, v2, v13
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v63, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v63    # "tmpNext":I
    :try_start_30
    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v13, v14

    int-to-long v13, v13

    aput-wide v13, v71, v68

    .line 586
    aget-wide v13, v77, v68

    add-double/2addr v6, v13

    .line 587
    aget-wide v13, v78, v68

    add-double v13, v66, v13

    .line 588
    .end local v66    # "calorieDiff":D
    .local v13, "calorieDiff":D
    aget-wide v15, v65, v68

    add-double v25, v25, v15

    .line 590
    aget-wide v15, v71, v68

    add-long/2addr v11, v15

    .line 591
    aget-wide v15, v76, v68

    add-long/2addr v9, v15

    .line 592
    aget-wide v15, v74, v68

    add-long/2addr v3, v15

    .line 593
    aget-wide v15, v75, v68

    add-long v23, v23, v15

    .line 594
    aget-wide v15, v72, v68

    add-long v17, v17, v15

    .line 595
    aget-wide v15, v73, v68

    add-long v19, v19, v15

    .line 596
    aget-wide v15, v64, v68

    add-long v21, v21, v15

    .line 598
    iget-object v15, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v66, v3

    move/from16 v3, v61

    .end local v3    # "runStepCountDiff":J
    .local v66, "runStepCountDiff":J
    invoke-virtual {v15, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    .line 599
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide v15, v6

    .end local v6    # "distanceDiff":D
    .local v15, "distanceDiff":D
    aget-wide v6, v79, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTimestamp(J)V

    .line 600
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v71, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfo(J)V

    .line 601
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v76, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfo(J)V

    .line 602
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v74, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfo(J)V

    .line 603
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v75, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfo(J)V

    .line 604
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v73, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfo(J)V

    .line 605
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v72, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfo(J)V

    .line 606
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v64, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfo(J)V

    .line 607
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v77, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfo(D)V

    .line 608
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v78, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfo(D)V

    .line 609
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    aget-wide v6, v65, v68

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfo(D)V

    .line 610
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V

    .line 549
    .end local v43    # "tmpTimeStamp":J
    add-int/lit8 v3, v68, 0x1

    move-wide v6, v15

    const/16 v61, 0x2

    move v15, v3

    move/from16 v16, v8

    move-object/from16 v8, v65

    move-wide/from16 v3, v66

    .end local v68    # "i":I
    .local v3, "i":I
    goto/16 :goto_1

    .line 824
    .end local v0    # "names":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "loggingCount":I
    .end local v8    # "data":I
    .end local v9    # "walkStepCountDiff":J
    .end local v11    # "totalStepCountDiff":J
    .end local v13    # "calorieDiff":D
    .end local v15    # "distanceDiff":D
    .end local v17    # "walkDownStepCountDiff":J
    .end local v19    # "runUpStepCountDiff":J
    .end local v21    # "runDownStepCountDiff":J
    .end local v23    # "walkUpStepCountDiff":J
    .end local v25    # "speed":D
    .end local v29    # "stepStatus":I
    .end local v32    # "minute":I
    .end local v34    # "second":I
    .end local v36    # "milliSec":I
    .end local v39    # "curUtcTime":J
    .end local v41    # "curTimeMillis":J
    .end local v45    # "calender":Ljava/util/Calendar;
    .end local v46    # "hour":I
    .end local v63    # "tmpNext":I
    .end local v64    # "runDownStepCountDiffArray":[J
    .end local v65    # "speedArray":[D
    .end local v66    # "runStepCountDiff":J
    .end local v71    # "totalStepCountDiffArray":[J
    .end local v72    # "walkDownStepCountDiffArray":[J
    .end local v73    # "runUpStepCountDiffArray":[J
    .end local v74    # "runStepCountDiffArray":[J
    .end local v75    # "walkUpStepCountDiffArray":[J
    .end local v76    # "walkStepCountDiffArray":[J
    .end local v77    # "distanceDiffArray":[D
    .end local v78    # "calorieDiffArray":[D
    .end local v79    # "timeStampArray":[J
    .restart local v14    # "tmpNext":I
    :catchall_a
    move-exception v0

    move v15, v14

    move v3, v15

    .end local v14    # "tmpNext":I
    .local v15, "tmpNext":I
    goto/16 :goto_4

    .end local v15    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :catchall_b
    move-exception v0

    move v3, v14

    goto/16 :goto_4

    .end local v14    # "tmpNext":I
    .local v13, "tmpNext":I
    :catchall_c
    move-exception v0

    move v3, v13

    goto/16 :goto_4

    .end local v13    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    :catchall_d
    move-exception v0

    move v3, v15

    goto/16 :goto_4

    .end local v15    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :catchall_e
    move-exception v0

    move/from16 v38, v14

    move/from16 v3, v38

    .end local v14    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    goto/16 :goto_4

    .end local v38    # "tmpNext":I
    .local v43, "tmpNext":I
    :catchall_f
    move-exception v0

    move/from16 v3, v43

    goto/16 :goto_4

    .end local v43    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :catchall_10
    move-exception v0

    move/from16 v3, v38

    goto/16 :goto_4

    .line 549
    .end local v38    # "tmpNext":I
    .restart local v0    # "names":[Ljava/lang/String;
    .local v3, "runStepCountDiff":J
    .restart local v5    # "loggingCount":I
    .restart local v6    # "distanceDiff":D
    .local v8, "speedArray":[D
    .restart local v9    # "walkStepCountDiff":J
    .restart local v11    # "totalStepCountDiff":J
    .local v13, "calorieDiff":D
    .local v15, "i":I
    .restart local v16    # "data":I
    .restart local v17    # "walkDownStepCountDiff":J
    .restart local v19    # "runUpStepCountDiff":J
    .restart local v21    # "runDownStepCountDiff":J
    .restart local v23    # "walkUpStepCountDiff":J
    .restart local v25    # "speed":D
    .restart local v29    # "stepStatus":I
    .restart local v32    # "minute":I
    .restart local v34    # "second":I
    .restart local v36    # "milliSec":I
    .restart local v39    # "curUtcTime":J
    .restart local v41    # "curTimeMillis":J
    .restart local v45    # "calender":Ljava/util/Calendar;
    .restart local v46    # "hour":I
    .restart local v63    # "tmpNext":I
    .restart local v64    # "runDownStepCountDiffArray":[J
    .restart local v71    # "totalStepCountDiffArray":[J
    .restart local v72    # "walkDownStepCountDiffArray":[J
    .restart local v73    # "runUpStepCountDiffArray":[J
    .restart local v74    # "runStepCountDiffArray":[J
    .restart local v75    # "walkUpStepCountDiffArray":[J
    .restart local v76    # "walkStepCountDiffArray":[J
    .restart local v77    # "distanceDiffArray":[D
    .restart local v78    # "calorieDiffArray":[D
    .restart local v79    # "timeStampArray":[J
    :cond_7
    move-object/from16 v65, v8

    move-wide/from16 v66, v13

    move/from16 v68, v15

    .line 613
    .end local v8    # "speedArray":[D
    .end local v13    # "calorieDiff":D
    .end local v15    # "i":I
    .restart local v65    # "speedArray":[D
    .local v66, "calorieDiff":D
    add-long v13, v23, v17

    add-long v13, v13, v19

    add-long v13, v13, v21

    .line 617
    .local v13, "upDownStepCountDiff":J
    move-wide/from16 v43, v6

    .end local v6    # "distanceDiff":D
    .local v43, "distanceDiff":D
    int-to-double v6, v5

    div-double v6, v25, v6

    .line 619
    .end local v25    # "speed":D
    .local v6, "speed":D
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v15, v0, v31

    invoke-virtual {v8, v15, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 620
    move-wide/from16 v25, v9

    .end local v9    # "walkStepCountDiff":J
    .local v25, "walkStepCountDiff":J
    iget-wide v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    add-long v8, v8, v25

    iput-wide v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 621
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/16 v28, 0x1

    aget-object v9, v0, v28

    move v10, v5

    move-wide/from16 v55, v6

    .end local v5    # "loggingCount":I
    .end local v6    # "speed":D
    .local v10, "loggingCount":I
    .local v55, "speed":D
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v8, v9, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 623
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v61, 0x2

    aget-object v6, v0, v61

    invoke-virtual {v5, v6, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 624
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 625
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v62, 0x3

    aget-object v6, v0, v62

    iget-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 627
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v52

    invoke-virtual {v5, v6, v13, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 628
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 629
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v51

    iget-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 631
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v54

    invoke-virtual {v5, v6, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 632
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    add-long/2addr v5, v11

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 633
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v50

    iget-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 635
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v60

    move-wide/from16 v7, v43

    .end local v43    # "distanceDiff":D
    .local v7, "distanceDiff":D
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 636
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    add-double/2addr v5, v7

    iput-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 637
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v49

    move-wide/from16 v43, v3

    .end local v3    # "runStepCountDiff":J
    .local v43, "runStepCountDiff":J
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v5, v6, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 639
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v48

    move-wide/from16 v5, v55

    .end local v55    # "speed":D
    .local v5, "speed":D
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 640
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v30

    move/from16 v9, v27

    invoke-virtual {v3, v4, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 642
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v33

    move-wide/from16 v55, v5

    move-wide/from16 v5, v66

    .end local v66    # "calorieDiff":D
    .local v5, "calorieDiff":D
    .restart local v55    # "speed":D
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 643
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    add-double/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 644
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v35

    move-wide/from16 v66, v5

    .end local v5    # "calorieDiff":D
    .restart local v66    # "calorieDiff":D
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 646
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v37

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 648
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v47

    move-wide/from16 v5, v23

    .end local v23    # "walkUpStepCountDiff":J
    .local v5, "walkUpStepCountDiff":J
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 649
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 650
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v59

    move-wide/from16 v23, v5

    .end local v5    # "walkUpStepCountDiff":J
    .restart local v23    # "walkUpStepCountDiff":J
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 652
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x11

    aget-object v4, v0, v4

    move-wide/from16 v5, v17

    .end local v17    # "walkDownStepCountDiff":J
    .local v5, "walkDownStepCountDiff":J
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 653
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 654
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x12

    aget-object v4, v0, v4

    move-wide/from16 v17, v5

    .end local v5    # "walkDownStepCountDiff":J
    .restart local v17    # "walkDownStepCountDiff":J
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 657
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x13

    aget-object v4, v0, v4

    move-wide/from16 v5, v19

    .end local v19    # "runUpStepCountDiff":J
    .local v5, "runUpStepCountDiff":J
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 658
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 659
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v53

    move-wide/from16 v19, v5

    .end local v5    # "runUpStepCountDiff":J
    .restart local v19    # "runUpStepCountDiff":J
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 661
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x15

    aget-object v4, v0, v4

    move-wide/from16 v5, v21

    .end local v21    # "runDownStepCountDiff":J
    .local v5, "runDownStepCountDiff":J
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 662
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 663
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x16

    aget-object v4, v0, v4

    move-wide/from16 v21, v5

    .end local v5    # "runDownStepCountDiff":J
    .restart local v21    # "runDownStepCountDiff":J
    iget-wide v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 664
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 666
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x17

    aget-object v4, v0, v4

    invoke-virtual {v3, v4, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 667
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x18

    aget-object v4, v0, v4

    move-object/from16 v6, v79

    .end local v79    # "timeStampArray":[J
    .local v6, "timeStampArray":[J
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 668
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x19

    aget-object v4, v0, v4

    move-object/from16 v5, v77

    .end local v77    # "distanceDiffArray":[D
    .local v5, "distanceDiffArray":[D
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 669
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x1a

    aget-object v4, v0, v4

    move-object/from16 v9, v78

    .end local v78    # "calorieDiffArray":[D
    .local v9, "calorieDiffArray":[D
    invoke-virtual {v3, v4, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 670
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x1b

    aget-object v4, v0, v4

    move-object/from16 v15, v65

    .end local v65    # "speedArray":[D
    .local v15, "speedArray":[D
    invoke-virtual {v3, v4, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 671
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x1c

    aget-object v4, v0, v4

    move-object/from16 v77, v5

    move-object/from16 v5, v76

    .end local v76    # "walkStepCountDiffArray":[J
    .local v5, "walkStepCountDiffArray":[J
    .restart local v77    # "distanceDiffArray":[D
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 672
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x1d

    aget-object v4, v0, v4

    move-object/from16 v76, v5

    move-object/from16 v5, v74

    .end local v74    # "runStepCountDiffArray":[J
    .local v5, "runStepCountDiffArray":[J
    .restart local v76    # "walkStepCountDiffArray":[J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 673
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x1e

    aget-object v4, v0, v4

    move-object/from16 v74, v5

    move-object/from16 v5, v75

    .end local v75    # "walkUpStepCountDiffArray":[J
    .local v5, "walkUpStepCountDiffArray":[J
    .restart local v74    # "runStepCountDiffArray":[J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 674
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x1f

    aget-object v4, v0, v4

    move-object/from16 v75, v5

    move-object/from16 v5, v72

    .end local v72    # "walkDownStepCountDiffArray":[J
    .local v5, "walkDownStepCountDiffArray":[J
    .restart local v75    # "walkUpStepCountDiffArray":[J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 675
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x20

    aget-object v4, v0, v4

    move-object/from16 v72, v5

    move-object/from16 v5, v73

    .end local v73    # "runUpStepCountDiffArray":[J
    .local v5, "runUpStepCountDiffArray":[J
    .restart local v72    # "walkDownStepCountDiffArray":[J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 676
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x21

    aget-object v4, v0, v4

    move-object/from16 v73, v5

    move-object/from16 v5, v64

    .end local v64    # "runDownStepCountDiffArray":[J
    .local v5, "runDownStepCountDiffArray":[J
    .restart local v73    # "runUpStepCountDiffArray":[J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 677
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x22

    aget-object v4, v0, v4

    move-object/from16 v64, v5

    move-object/from16 v5, v71

    .end local v71    # "totalStepCountDiffArray":[J
    .local v5, "totalStepCountDiffArray":[J
    .restart local v64    # "runDownStepCountDiffArray":[J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    .line 679
    .end local v5    # "totalStepCountDiffArray":[J
    .end local v6    # "timeStampArray":[J
    .end local v9    # "calorieDiffArray":[D
    .end local v10    # "loggingCount":I
    .end local v13    # "upDownStepCountDiff":J
    .end local v15    # "speedArray":[D
    .end local v29    # "stepStatus":I
    .end local v64    # "runDownStepCountDiffArray":[J
    .end local v72    # "walkDownStepCountDiffArray":[J
    .end local v73    # "runUpStepCountDiffArray":[J
    .end local v74    # "runStepCountDiffArray":[J
    .end local v75    # "walkUpStepCountDiffArray":[J
    .end local v76    # "walkStepCountDiffArray":[J
    .end local v77    # "distanceDiffArray":[D
    move-wide/from16 v29, v7

    move-wide v10, v11

    move-wide/from16 v12, v17

    move-wide/from16 v14, v23

    move-wide/from16 v5, v25

    move-wide/from16 v3, v43

    move/from16 v8, v63

    move-wide/from16 v80, v21

    move-wide/from16 v20, v19

    move-wide/from16 v18, v80

    goto/16 :goto_3

    .line 824
    .end local v0    # "names":[Ljava/lang/String;
    .end local v7    # "distanceDiff":D
    .end local v11    # "totalStepCountDiff":J
    .end local v16    # "data":I
    .end local v17    # "walkDownStepCountDiff":J
    .end local v19    # "runUpStepCountDiff":J
    .end local v21    # "runDownStepCountDiff":J
    .end local v23    # "walkUpStepCountDiff":J
    .end local v25    # "walkStepCountDiff":J
    .end local v32    # "minute":I
    .end local v34    # "second":I
    .end local v36    # "milliSec":I
    .end local v39    # "curUtcTime":J
    .end local v41    # "curTimeMillis":J
    .end local v43    # "runStepCountDiff":J
    .end local v45    # "calender":Ljava/util/Calendar;
    .end local v46    # "hour":I
    .end local v55    # "speed":D
    .end local v66    # "calorieDiff":D
    :catchall_11
    move-exception v0

    move/from16 v3, v63

    goto/16 :goto_4

    .end local v63    # "tmpNext":I
    .local v4, "tmpNext":I
    :catchall_12
    move-exception v0

    move/from16 v63, v4

    move/from16 v3, v63

    .end local v4    # "tmpNext":I
    .restart local v63    # "tmpNext":I
    goto/16 :goto_4

    .line 680
    .end local v63    # "tmpNext":I
    .restart local v0    # "names":[Ljava/lang/String;
    .local v3, "data":I
    .local v9, "walkStepCountDiff":J
    .local v11, "runStepCountDiff":J
    .local v15, "walkDownStepCountDiff":J
    .local v17, "runUpStepCountDiff":J
    .local v19, "runDownStepCountDiff":J
    .local v21, "distanceDiff":D
    .local v23, "calorieDiff":D
    .local v25, "speed":D
    .local v29, "tmpNext":I
    .restart local v32    # "minute":I
    .restart local v34    # "second":I
    .restart local v36    # "milliSec":I
    .restart local v39    # "curUtcTime":J
    .restart local v41    # "curTimeMillis":J
    .local v43, "totalStepCountDiff":J
    .restart local v45    # "calender":Ljava/util/Calendar;
    .restart local v46    # "hour":I
    .local v65, "walkUpStepCountDiff":J
    :cond_8
    move/from16 v38, v3

    move-wide/from16 v67, v9

    move-wide/from16 v69, v11

    .end local v3    # "data":I
    .end local v9    # "walkStepCountDiff":J
    .end local v11    # "runStepCountDiff":J
    .local v38, "data":I
    .restart local v67    # "walkStepCountDiff":J
    .restart local v69    # "runStepCountDiff":J
    :try_start_31
    array-length v3, v2

    sub-int v3, v3, v29

    add-int/lit8 v3, v3, -0x20

    if-gez v3, :cond_9

    .line 681
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1c

    .line 682
    nop

    .line 824
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 682
    const/16 v27, -0x1

    return v27

    .line 685
    :cond_9
    add-int/lit8 v3, v29, 0x1

    .end local v29    # "tmpNext":I
    .local v3, "tmpNext":I
    :try_start_32
    aget-byte v4, v2, v29
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1e

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v5, "tmpNext":I
    :try_start_33
    aget-byte v3, v2, v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v4, v3

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_34
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 688
    .end local v38    # "data":I
    .local v4, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v0, v31

    int-to-long v7, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 690
    int-to-long v5, v4

    .line 692
    .end local v67    # "walkStepCountDiff":J
    .local v5, "walkStepCountDiff":J
    iget-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 693
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    const/16 v28, 0x1

    aget-object v8, v0, v28

    iget-wide v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1e

    .line 696
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v7, "tmpNext":I
    :try_start_35
    aget-byte v3, v2, v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v8, "tmpNext":I
    :try_start_36
    aget-byte v7, v2, v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_37
    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    .line 699
    .end local v4    # "data":I
    .local v3, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v61, 0x2

    aget-object v8, v0, v61

    int-to-long v9, v3

    invoke-virtual {v4, v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 701
    int-to-long v8, v3

    .line 703
    .end local v69    # "runStepCountDiff":J
    .local v8, "runStepCountDiff":J
    iget-wide v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v12, v3

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 704
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v62, 0x3

    aget-object v10, v0, v62

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v4, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_8

    .line 707
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v4, "tmpNext":I
    :try_start_38
    aget-byte v7, v2, v7
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v10, "tmpNext":I
    :try_start_39
    aget-byte v4, v2, v4
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v7, v4

    add-int/lit8 v4, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :try_start_3a
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v7, v10

    .line 710
    .end local v3    # "data":I
    .local v7, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v10, v0, v52

    int-to-long v11, v7

    invoke-virtual {v3, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 712
    iget-wide v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v12, v7

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 713
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v10, v0, v51

    iget-wide v11, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v3, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_9

    .line 716
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v3, "tmpNext":I
    :try_start_3b
    aget-byte v4, v2, v4
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :try_start_3c
    aget-byte v3, v2, v3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_19

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v4, v3

    add-int/lit8 v3, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_3d
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v4, v10

    .line 719
    .end local v7    # "data":I
    .local v4, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    aget-object v10, v0, v54

    int-to-long v11, v4

    invoke-virtual {v7, v10, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 721
    int-to-long v10, v4

    .line 723
    .end local v43    # "totalStepCountDiff":J
    .local v10, "totalStepCountDiff":J
    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_18

    move v7, v3

    .end local v3    # "tmpNext":I
    .local v7, "tmpNext":I
    int-to-long v2, v4

    add-long/2addr v12, v2

    :try_start_3e
    iput-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 724
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v3, v0, v50

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v3, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_8

    .line 727
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_3f
    aget-byte v2, p1, v7
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1e

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_40
    aget-byte v3, p1, v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_41
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    .line 730
    .end local v4    # "data":I
    .local v2, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v7, v0, v60

    int-to-double v12, v2

    div-double v12, v12, v57

    .line 731
    invoke-virtual {v4, v7, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_18

    .line 733
    int-to-double v12, v2

    div-double v12, v12, v57

    .line 735
    .end local v21    # "distanceDiff":D
    .local v12, "distanceDiff":D
    move v14, v3

    .end local v3    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :try_start_42
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v21, v3

    int-to-double v3, v2

    div-double v3, v3, v57

    add-double v3, v21, v3

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 736
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v49
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_17

    move v7, v14

    move-wide/from16 v21, v15

    .end local v14    # "tmpNext":I
    .end local v15    # "walkDownStepCountDiff":J
    .restart local v7    # "tmpNext":I
    .local v21, "walkDownStepCountDiff":J
    :try_start_43
    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v3, v4, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 738
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_44
    aget-byte v4, p1, v7

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v4

    int-to-double v14, v4

    div-double v14, v14, v55

    .line 739
    .end local v25    # "speed":D
    .local v14, "speed":D
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v7, v0, v48

    invoke-virtual {v4, v7, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1e

    .line 741
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    :try_start_45
    aget-byte v3, p1, v3

    .line 742
    .end local v2    # "data":I
    .local v3, "data":I
    move v2, v3

    .line 743
    .local v2, "stepStatus":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    move/from16 v16, v3

    .end local v3    # "data":I
    .restart local v16    # "data":I
    aget-object v3, v0, v30

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_9

    .line 745
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v3, "tmpNext":I
    :try_start_46
    aget-byte v4, p1, v4
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1e

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_47
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    .line 747
    .end local v16    # "data":I
    .local v4, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    move/from16 v16, v2

    .end local v2    # "stepStatus":I
    .local v16, "stepStatus":I
    aget-object v2, v0, v33

    move-wide/from16 v25, v14

    .end local v14    # "speed":D
    .restart local v25    # "speed":D
    int-to-double v14, v4

    div-double v14, v14, v55

    .line 748
    invoke-virtual {v3, v2, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 750
    int-to-double v2, v4

    div-double v2, v2, v55

    .line 752
    .end local v23    # "calorieDiff":D
    .local v2, "calorieDiff":D
    iget-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v23, v14

    int-to-double v14, v4

    div-double v14, v14, v55

    add-double v14, v23, v14

    iput-wide v14, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 753
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v14

    aget-object v15, v0, v35

    move-wide/from16 v23, v2

    .end local v2    # "calorieDiff":D
    .restart local v23    # "calorieDiff":D
    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v14, v15, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_8

    .line 755
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_48
    aget-byte v2, p1, v7

    .line 756
    .end local v4    # "data":I
    .local v2, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v7, v0, v37

    int-to-double v14, v2

    div-double v14, v14, v55

    .line 757
    invoke-virtual {v4, v7, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1e

    .line 759
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    :try_start_49
    aget-byte v3, p1, v3
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_4a
    aget-byte v4, p1, v4
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_8

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :try_start_4b
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 762
    .end local v2    # "data":I
    .local v3, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v7, v0, v47

    int-to-long v14, v3

    invoke-virtual {v2, v7, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 764
    int-to-long v14, v3

    .line 766
    .end local v65    # "walkUpStepCountDiff":J
    .local v14, "walkUpStepCountDiff":J
    move-wide/from16 v29, v12

    .end local v12    # "distanceDiff":D
    .local v29, "distanceDiff":D
    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v37, v12

    int-to-long v12, v3

    add-long v12, v37, v12

    iput-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 767
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v7, v0, v59

    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v7, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_9

    .line 770
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v2, "tmpNext":I
    :try_start_4c
    aget-byte v4, p1, v4
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_16

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_4d
    aget-byte v2, p1, v2
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v4, v2

    add-int/lit8 v2, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :try_start_4e
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    .line 773
    .end local v3    # "data":I
    .local v4, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v7, 0x11

    aget-object v7, v0, v7

    int-to-long v12, v4

    invoke-virtual {v3, v7, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_15

    .line 775
    int-to-long v12, v4

    .line 777
    .end local v21    # "walkDownStepCountDiff":J
    .local v12, "walkDownStepCountDiff":J
    move/from16 v21, v2

    .end local v2    # "tmpNext":I
    .local v21, "tmpNext":I
    :try_start_4f
    iget-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v37, v2

    int-to-long v2, v4

    add-long v2, v37, v2

    iput-wide v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 778
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v3, 0x12

    aget-object v3, v0, v3

    move-wide/from16 v37, v12

    .end local v12    # "walkDownStepCountDiff":J
    .local v37, "walkDownStepCountDiff":J
    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v3, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_4

    .line 781
    add-int/lit8 v3, v21, 0x1

    .end local v21    # "tmpNext":I
    .local v3, "tmpNext":I
    :try_start_50
    aget-byte v2, p1, v21
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1e

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_51
    aget-byte v3, p1, v3
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_52
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    .line 784
    .end local v4    # "data":I
    .local v2, "data":I
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v7, 0x13

    aget-object v7, v0, v7

    int-to-long v12, v2

    invoke-virtual {v4, v7, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_14

    .line 786
    int-to-long v12, v2

    .line 788
    .end local v17    # "runUpStepCountDiff":J
    .local v12, "runUpStepCountDiff":J
    move/from16 v17, v3

    .end local v3    # "tmpNext":I
    .local v17, "tmpNext":I
    :try_start_53
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v21, v3

    int-to-long v3, v2

    add-long v3, v21, v3

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 789
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v53

    move-wide/from16 v21, v12

    .end local v12    # "runUpStepCountDiff":J
    .local v21, "runUpStepCountDiff":J
    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v3, v4, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_13

    .line 792
    add-int/lit8 v3, v17, 0x1

    .end local v17    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_54
    aget-byte v4, p1, v17
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1e

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :try_start_55
    aget-byte v3, p1, v3
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v4, v3

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :try_start_56
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int v2, v4, v7

    .line 795
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/16 v7, 0x15

    aget-object v7, v0, v7

    int-to-long v12, v2

    invoke-virtual {v4, v7, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_14

    .line 797
    int-to-long v12, v2

    .line 799
    .end local v19    # "runDownStepCountDiff":J
    .local v12, "runDownStepCountDiff":J
    move/from16 v17, v3

    .end local v3    # "tmpNext":I
    .restart local v17    # "tmpNext":I
    :try_start_57
    iget-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v18, v3

    int-to-long v3, v2

    add-long v3, v18, v3

    iput-wide v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 800
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x16

    aget-object v4, v0, v4

    move-wide/from16 v18, v12

    .end local v12    # "runDownStepCountDiff":J
    .restart local v18    # "runDownStepCountDiff":J
    iget-wide v12, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v3, v4, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 803
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_a

    .line 805
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->updateBufferIndex(I)V

    .line 807
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putTotalStepInfoSingle(J)V

    .line 808
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkStepInfoSingle(J)V

    .line 809
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunStepInfoSingle(J)V

    .line 810
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    invoke-virtual {v3, v14, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkUpStepInfoSingle(J)V

    .line 811
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v12, v21

    .end local v21    # "runUpStepCountDiff":J
    .local v12, "runUpStepCountDiff":J
    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunUpStepInfoSingle(J)V

    .line 812
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v43, v5

    move-wide/from16 v4, v37

    .end local v5    # "walkStepCountDiff":J
    .end local v37    # "walkDownStepCountDiff":J
    .local v4, "walkDownStepCountDiff":J
    .local v43, "walkStepCountDiff":J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putWalkDnStepInfoSingle(J)V

    .line 813
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v6, v18

    .end local v18    # "runDownStepCountDiff":J
    .local v6, "runDownStepCountDiff":J
    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putRunDnStepInfoSingle(J)V

    .line 814
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v37, v4

    move-wide/from16 v4, v29

    .end local v29    # "distanceDiff":D
    .local v4, "distanceDiff":D
    .restart local v37    # "walkDownStepCountDiff":J
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putDistanceInfoSingle(D)V

    .line 815
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v29, v4

    move-wide/from16 v4, v23

    .end local v23    # "calorieDiff":D
    .local v4, "calorieDiff":D
    .restart local v29    # "distanceDiff":D
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putCalorieInfoSingle(D)V

    .line 816
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move-wide/from16 v23, v4

    move-wide/from16 v4, v25

    .end local v25    # "speed":D
    .local v4, "speed":D
    .restart local v23    # "calorieDiff":D
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->putSpeedInfoSingle(D)V

    .line 817
    iget-object v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->mPedoHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "data":I
    .local v18, "data":I
    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/PedoHistory;->setDataMode(I)V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_13

    goto :goto_2

    .line 803
    .end local v4    # "speed":D
    .end local v6    # "runDownStepCountDiff":J
    .end local v12    # "runUpStepCountDiff":J
    .end local v43    # "walkStepCountDiff":J
    .restart local v2    # "data":I
    .restart local v5    # "walkStepCountDiff":J
    .local v18, "runDownStepCountDiff":J
    .restart local v21    # "runUpStepCountDiff":J
    .restart local v25    # "speed":D
    :cond_a
    move-wide/from16 v43, v5

    move-wide/from16 v6, v18

    move-wide/from16 v12, v21

    move-wide/from16 v4, v25

    move/from16 v18, v2

    .line 821
    .end local v2    # "data":I
    .end local v5    # "walkStepCountDiff":J
    .end local v16    # "stepStatus":I
    .end local v21    # "runUpStepCountDiff":J
    .end local v25    # "speed":D
    .restart local v4    # "speed":D
    .restart local v6    # "runDownStepCountDiff":J
    .restart local v12    # "runUpStepCountDiff":J
    .local v18, "data":I
    .restart local v43    # "walkStepCountDiff":J
    :goto_2
    move-wide/from16 v55, v4

    move-wide v3, v8

    move-wide/from16 v20, v12

    move/from16 v8, v17

    move/from16 v16, v18

    move-wide/from16 v66, v23

    move-wide/from16 v12, v37

    move-wide/from16 v18, v6

    move-wide/from16 v5, v43

    .end local v4    # "speed":D
    .end local v6    # "runDownStepCountDiff":J
    .end local v17    # "tmpNext":I
    .end local v23    # "calorieDiff":D
    .end local v37    # "walkDownStepCountDiff":J
    .end local v43    # "walkStepCountDiff":J
    .local v3, "runStepCountDiff":J
    .restart local v5    # "walkStepCountDiff":J
    .local v8, "tmpNext":I
    .local v12, "walkDownStepCountDiff":J
    .local v16, "data":I
    .local v18, "runDownStepCountDiff":J
    .local v20, "runUpStepCountDiff":J
    .restart local v55    # "speed":D
    .restart local v66    # "calorieDiff":D
    :goto_3
    :try_start_58
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1a

    .line 824
    .end local v0    # "names":[Ljava/lang/String;
    .end local v3    # "runStepCountDiff":J
    .end local v5    # "walkStepCountDiff":J
    .end local v10    # "totalStepCountDiff":J
    .end local v12    # "walkDownStepCountDiff":J
    .end local v14    # "walkUpStepCountDiff":J
    .end local v16    # "data":I
    .end local v18    # "runDownStepCountDiff":J
    .end local v20    # "runUpStepCountDiff":J
    .end local v29    # "distanceDiff":D
    .end local v32    # "minute":I
    .end local v34    # "second":I
    .end local v36    # "milliSec":I
    .end local v39    # "curUtcTime":J
    .end local v41    # "curTimeMillis":J
    .end local v45    # "calender":Ljava/util/Calendar;
    .end local v46    # "hour":I
    .end local v55    # "speed":D
    .end local v66    # "calorieDiff":D
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 825
    nop

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 829
    return v8

    .line 824
    .end local v8    # "tmpNext":I
    .restart local v17    # "tmpNext":I
    :catchall_13
    move-exception v0

    move/from16 v3, v17

    goto :goto_4

    .end local v17    # "tmpNext":I
    .local v3, "tmpNext":I
    :catchall_14
    move-exception v0

    move/from16 v17, v3

    .end local v3    # "tmpNext":I
    .restart local v17    # "tmpNext":I
    goto :goto_4

    .end local v17    # "tmpNext":I
    .local v2, "tmpNext":I
    :catchall_15
    move-exception v0

    move/from16 v21, v2

    move/from16 v3, v21

    .end local v2    # "tmpNext":I
    .local v21, "tmpNext":I
    goto :goto_4

    .end local v21    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :catchall_16
    move-exception v0

    move v3, v2

    goto :goto_4

    .end local v2    # "tmpNext":I
    .local v14, "tmpNext":I
    :catchall_17
    move-exception v0

    move v7, v14

    move v3, v7

    .end local v14    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    goto :goto_4

    .end local v7    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :catchall_18
    move-exception v0

    move v7, v3

    .end local v3    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    goto :goto_4

    .end local v7    # "tmpNext":I
    .local v10, "tmpNext":I
    :catchall_19
    move-exception v0

    move v3, v10

    goto :goto_4

    .end local v10    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    :catchall_1a
    move-exception v0

    move v3, v8

    goto :goto_4

    .end local v8    # "tmpNext":I
    .local v5, "tmpNext":I
    :catchall_1b
    move-exception v0

    move v3, v5

    goto :goto_4

    .end local v5    # "tmpNext":I
    .local v29, "tmpNext":I
    :catchall_1c
    move-exception v0

    move/from16 v3, v29

    goto :goto_4

    .end local v29    # "tmpNext":I
    .local v6, "tmpNext":I
    :catchall_1d
    move-exception v0

    move/from16 v29, v6

    move/from16 v3, v29

    .end local v6    # "tmpNext":I
    .restart local v29    # "tmpNext":I
    goto :goto_4

    .end local v29    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :catchall_1e
    move-exception v0

    :goto_4
    iget-object v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 825
    throw v0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 16
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 917
    .local p2, "value":Ljava/lang/Object;, "TE;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x1

    .line 918
    .local v3, "result":Z
    const/4 v0, 0x1

    new-array v4, v0, [B

    .line 920
    .local v4, "dataPacket":[B
    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v2, v5, :cond_0

    .line 921
    const-string v0, "Height"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v0

    move-object/from16 v5, p2

    check-cast v5, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 924
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 923
    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 926
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v7

    double-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 927
    const/16 v0, 0x12

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto/16 :goto_1

    .line 929
    :cond_0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 930
    const-string v0, "Weight"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v0

    move-object/from16 v5, p2

    check-cast v5, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 933
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 932
    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 935
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v7

    double-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 936
    const/16 v0, 0x13

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto/16 :goto_1

    .line 938
    :cond_1
    const/4 v7, 0x6

    const/16 v8, 0x14

    if-ne v2, v7, :cond_2

    .line 939
    const-string v0, "Gender"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v0

    move-object/from16 v5, p2

    check-cast v5, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 942
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 941
    invoke-virtual {v0, v5}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->setUserGender(I)V

    .line 944
    invoke-static {}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 945
    invoke-virtual {v1, v8, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto/16 :goto_1

    .line 947
    :cond_2
    const/16 v7, 0x11

    if-ne v2, v7, :cond_3

    .line 948
    move-object/from16 v5, p2

    check-cast v5, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 949
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 948
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 950
    .local v5, "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delivery Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 951
    nop

    .line 953
    invoke-static {v5, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 951
    const/16 v6, 0x15

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    .line 954
    .end local v5    # "count":I
    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x75

    const/4 v9, 0x3

    const/16 v10, 0x17

    if-ne v2, v7, :cond_7

    .line 955
    const-string v7, "SF"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 956
    move-object/from16 v7, p2

    check-cast v7, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 958
    .local v7, "sf":[F
    if-nez v7, :cond_4

    .line 959
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 960
    return v6

    .line 963
    :cond_4
    array-length v11, v7

    if-eq v11, v8, :cond_5

    .line 964
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 965
    return v6

    .line 968
    :cond_5
    const/4 v11, 0x0

    .line 969
    .local v11, "j":I
    const/16 v12, 0x50

    new-array v12, v12, [B

    .line 971
    .local v12, "packet":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v8, :cond_6

    .line 972
    aget v14, v7, v13

    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v14, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-static {v14, v6, v12, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, 0x4

    goto :goto_0

    .line 975
    .end local v13    # "i":I
    :cond_6
    invoke-virtual {v1, v10, v9, v0, v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 981
    .end local v7    # "sf":[F
    .end local v11    # "j":I
    .end local v12    # "packet":[B
    goto :goto_1

    :cond_7
    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 982
    const-string v0, "History Data"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 983
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 985
    :try_start_0
    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendHistoryStepBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 988
    goto :goto_1

    .line 987
    :catchall_0
    move-exception v0

    iget-object v5, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 988
    throw v0

    .line 989
    :cond_8
    const/16 v6, 0x3e

    if-ne v2, v6, :cond_9

    .line 990
    move-object/from16 v6, p2

    check-cast v6, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 991
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 990
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 992
    .local v6, "exercisemode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exercise Mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 996
    nop

    .line 1000
    invoke-static {v6, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 996
    invoke-virtual {v1, v10, v9, v5, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v3

    .line 1002
    .end local v6    # "exercisemode":I
    goto :goto_1

    .line 1003
    :cond_9
    const/4 v3, 0x0

    .line 1006
    :goto_1
    return v3
.end method
