.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;
.super Ljava/util/TimerTask;
.source "HdrDisplayNitMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCreateTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LIGHT_STABLE_THRESHOLD:F = 10.0f

.field private static final NUM_STABLE_CHECK:I = 0xa


# instance fields
.field private LIGHT_DEC_LIMIT_PER_UPDATE:F

.field private LIGHT_INC_LIMIT_PER_UPDATE:F

.field private LIGHT_UPDATE_TOLERANCE_LOWER:F

.field private LIGHT_UPDATE_TOLERANCE_UPPER:F

.field private NUM_ACCUM_TICK:I

.field private NUM_LOG_TICK:I

.field private NUM_SUB_AVERAGE:I

.field private mAccumCount:I

.field private mAccumLight:F

.field private mAppliedLight:[F

.field private mAppliedLightIndex:I

.field private mLightData:F

.field private mLogCount:I

.field private mStableLight:F

.field private mSubAvergeLight:[F

.field private mSubAvergeLightIndex:I

.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .locals 3
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 440
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_INC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v0

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_INC_LIMIT_PER_UPDATE:F

    .line 441
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_DEC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v2}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_DEC_LIMIT_PER_UPDATE:F

    .line 442
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_INC_LIMIT_PER_UPDATE:F

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_UPPER:F

    .line 443
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_DEC_LIMIT_PER_UPDATE:F

    neg-float v0, v0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_LOWER:F

    .line 444
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v0

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_SAMPLING_INTERVAL_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_ACCUM_TICK:I

    .line 445
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_AVERAGE_LENGTH_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v0

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    .line 447
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    new-array v0, v0, [F

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    .line 450
    const/4 v1, 0x0

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    .line 451
    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 452
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 456
    const/16 v2, 0xa

    new-array v2, v2, [F

    iput-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    .line 457
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    .line 458
    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    .line 460
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    .line 461
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLOG_TIMER_UPDATE_PERIOD_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_SAMPLING_INTERVAL_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_LOG_TICK:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    const-string v2, "HdrSolution_HdrDisplayNitMapper"

    const/4 v3, 0x1

    if-ltz v1, :cond_17

    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, "doUpdateLight":Z
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    const-string v5, "RUN"

    const-string v8, "debug.hdr.light.state"

    const/16 v9, 0xa

    const/4 v10, 0x0

    if-nez v4, :cond_4

    .line 470
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_3

    .line 471
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_0
    iget v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    if-ge v4, v11, :cond_0

    .line 472
    iget-object v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget-object v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v12}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v12

    aput v12, v11, v4

    .line 471
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 474
    .end local v4    # "idx":I
    :cond_0
    const/4 v4, 0x0

    iput v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    .line 475
    iget-object v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v11}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v11

    iput v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    .line 476
    iget-object v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v11}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v11

    iput v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 477
    iput v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 478
    const/4 v1, 0x1

    .line 479
    iget-object v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v11, v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V

    .line 480
    iput v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    .line 482
    const/4 v11, 0x0

    .local v11, "idx":I
    :goto_1
    if-ge v11, v9, :cond_1

    .line 483
    iget-object v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    iget-object v13, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v13}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v13

    aput v13, v12, v11

    .line 482
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 486
    .end local v11    # "idx":I
    :cond_1
    iput v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    .line 488
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_2

    .line 489
    invoke-static {v8, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_2
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 470
    :cond_3
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 493
    :cond_4
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    sub-int/2addr v11, v3

    iget v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    add-int/2addr v11, v12

    iget v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    rem-int/2addr v11, v12

    aget v4, v4, v11

    .line 494
    .local v4, "baseLightData":F
    iget v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_UPPER:F

    add-float/2addr v11, v4

    .line 495
    .local v11, "upperLimit":F
    iget v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_LOWER:F

    add-float/2addr v12, v4

    .line 496
    .local v12, "lowerLimit":F
    iget-object v13, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v13}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v13

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 498
    .local v13, "limitedLightData":F
    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    add-float/2addr v14, v13

    iput v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 499
    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    add-int/2addr v14, v3

    iput v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 500
    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    iget v15, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_ACCUM_TICK:I

    if-le v14, v15, :cond_c

    .line 501
    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    iget v15, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    .line 502
    .local v14, "subLight":F
    move v15, v14

    .line 503
    .local v15, "averageLight":F
    const/16 v16, 0x1

    move/from16 v6, v16

    const/high16 v16, 0x3f800000    # 1.0f

    .local v6, "idx":I
    :goto_2
    iget v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    if-ge v6, v10, :cond_5

    .line 504
    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    sub-int/2addr v7, v6

    move/from16 v17, v9

    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    add-int/2addr v7, v9

    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    rem-int/2addr v7, v9

    aget v7, v10, v7

    add-float/2addr v15, v7

    .line 503
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v17

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    move/from16 v17, v9

    .line 506
    .end local v6    # "idx":I
    iget v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    int-to-float v6, v6

    div-float v6, v15, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 507
    .end local v15    # "averageLight":F
    .local v6, "averageLight":F
    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    aput v14, v7, v9

    .line 508
    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    add-int/2addr v7, v3

    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    rem-int/2addr v7, v9

    iput v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    .line 510
    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_RATE(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    sub-float v9, v16, v9

    mul-float/2addr v7, v9

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_RATE(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    mul-float/2addr v9, v6

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 511
    .local v7, "calcLightData":F
    iput v13, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 512
    iput v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 514
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    if-le v9, v3, :cond_6

    .line 515
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update LightSensor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v10}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_6
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    iget v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    aput v7, v9, v10

    .line 519
    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    add-int/2addr v9, v3

    rem-int/lit8 v9, v9, 0xa

    iput v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    .line 521
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v15, 0x2

    if-ne v9, v15, :cond_7

    .line 522
    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_b

    .line 523
    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    .line 524
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9, v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V

    .line 525
    const/4 v1, 0x1

    .line 526
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    if-lez v9, :cond_b

    .line 527
    invoke-static {v8, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 532
    :cond_7
    const/4 v5, 0x1

    .line 533
    .local v5, "checkStable":Z
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_3
    move/from16 v18, v10

    move/from16 v10, v17

    if-ge v9, v10, :cond_9

    .line 534
    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    aget v10, v10, v9

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v18

    if-lez v10, :cond_8

    .line 535
    const/4 v5, 0x0

    .line 536
    goto :goto_4

    .line 533
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v18

    const/16 v17, 0xa

    goto :goto_3

    .line 539
    .end local v9    # "idx":I
    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    .line 540
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9, v15}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V

    .line 541
    iput v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    .line 542
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    if-lez v9, :cond_a

    .line 543
    const-string v9, "STABLE"

    invoke-static {v8, v9}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_a
    iget v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_b

    .line 547
    const/4 v1, 0x1

    .line 550
    .end local v5    # "checkStable":Z
    :cond_b
    :goto_5
    iput v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    goto :goto_6

    .line 500
    .end local v6    # "averageLight":F
    .end local v7    # "calcLightData":F
    .end local v14    # "subLight":F
    :cond_c
    const/high16 v16, 0x3f800000    # 1.0f

    .line 554
    :goto_6
    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v5

    if-lt v5, v3, :cond_f

    .line 555
    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmSupportHLG_AmbientOFF(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmHLG(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    .line 556
    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 558
    .local v5, "IntPanelNit":I
    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$sfgetmPrev_targetNit()I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmNitGap(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v7

    if-le v6, v7, :cond_d

    .line 559
    const/4 v1, 0x1

    .line 561
    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v6

    if-lez v6, :cond_d

    const-string v6, "doUpdateLight!!!!!!-HLG case: Math.abs(IntPanelNit - mPrev_targetNit) > mNitGap"

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v5    # "IntPanelNit":I
    :cond_d
    goto :goto_7

    .line 565
    :cond_e
    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmUpdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v5

    if-ne v5, v3, :cond_f

    .line 566
    const/4 v1, 0x1

    .line 568
    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v5

    if-lez v5, :cond_f

    const-string v5, "doUpdateLight!!!!!!-NO HLG case: mUpdateTargetNit == true"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v4    # "baseLightData":F
    .end local v11    # "upperLimit":F
    .end local v12    # "lowerLimit":F
    .end local v13    # "limitedLightData":F
    :cond_f
    :goto_7
    if-eqz v1, :cond_17

    .line 575
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_10

    .line 576
    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "debug.hdr.light.apply"

    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_10
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmSupportHLG_AmbientOFF(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v4

    const-string v5, ",mHLG: "

    const-string v6, "mSupportHLG_AmbientOFF: "

    if-eqz v4, :cond_12

    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmHLG(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v7, :cond_12

    .line 580
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    .line 582
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAmbTargetRatio-HLG case: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_11
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmSupportHLG_AmbientOFF(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmHLG(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 586
    :cond_12
    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_13

    .line 587
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    goto/16 :goto_8

    .line 588
    :cond_13
    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_14

    .line 589
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-double v7, v7

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmZone1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmRdr(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {v4, v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    goto :goto_8

    .line 591
    :cond_14
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-double v7, v7

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmZone2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    sub-float v8, v16, v8

    mul-float/2addr v7, v8

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v8}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmRdr(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {v4, v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    .line 594
    :goto_8
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAmbTargetRatio-NO HLG case: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v7}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_15
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmSupportHLG_AmbientOFF(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmHLG(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_16
    :goto_9
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$mupdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    .line 601
    .end local v1    # "doUpdateLight":Z
    :cond_17
    iget-object v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    if-lez v1, :cond_19

    .line 602
    iget v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_LOG_TICK:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_18

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ambient: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", Target: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$mgetTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_18
    iget v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    .line 607
    :cond_19
    return-void
.end method
