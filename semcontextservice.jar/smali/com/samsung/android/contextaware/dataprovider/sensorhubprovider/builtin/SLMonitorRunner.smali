.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_POWER_STEP_START_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_LEVEL_TYPE:I = 0x4


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private mDuration:I

.field private final mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

.field private mStepLevelType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 60
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    .line 108
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    .line 110
    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "context"    # Landroid/os/Bundle;

    .line 600
    move-object/from16 v0, p1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    .line 604
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    .local v1, "str":Ljava/lang/StringBuffer;
    const-string v2, "DataType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 611
    .local v2, "dataType":I
    const-string v3, "]"

    const-string v4, "DU=["

    const-string v5, "DT=["

    const-string v7, "], "

    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    .line 613
    const-string v9, "DataCount"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 614
    .local v9, "count":I
    const-string v10, "HistoryMode"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 616
    .local v10, "historyType":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DC=["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v5, "TS=["

    const-string v11, ","

    if-ne v10, v8, :cond_3

    .line 620
    const-string v12, "TimeStampArray"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .line 622
    .local v12, "timestampArray":[J
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 624
    aget-wide v13, v12, v5

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 625
    add-int/lit8 v13, v9, -0x1

    if-eq v5, v13, :cond_1

    .line 626
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 629
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    .end local v12    # "timestampArray":[J
    goto :goto_1

    .line 632
    :cond_3
    const-string v12, "TimeStamp"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 633
    .local v12, "timestamp":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    .end local v12    # "timestamp":J
    :goto_1
    const-string v5, "DataBundle"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 638
    .local v5, "dataBundle":Landroid/os/Bundle;
    if-nez v5, :cond_4

    .line 639
    return-void

    .line 642
    :cond_4
    const-string v12, "StepTypeArray"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 643
    .local v12, "stepType":[I
    const-string v13, "StepCountArray"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    .line 644
    .local v13, "stepCount":[I
    const-string v14, "DistanceArray"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v14

    .line 645
    .local v14, "distance":[D
    const-string v15, "CalorieArray"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v15

    .line 646
    .local v15, "calorie":[D
    const-string v8, "DurationArray"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 648
    .local v8, "duration":[I
    if-eqz v12, :cond_15

    if-eqz v13, :cond_15

    if-eqz v14, :cond_15

    if-eqz v15, :cond_15

    if-nez v8, :cond_5

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object v6, v12

    move-object v8, v13

    goto/16 :goto_7

    .line 653
    :cond_5
    const-string v6, "ST=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_c

    .line 655
    move-object/from16 v16, v5

    .end local v5    # "dataBundle":Landroid/os/Bundle;
    .local v16, "dataBundle":Landroid/os/Bundle;
    aget v5, v12, v6

    move-object/from16 v17, v8

    .end local v8    # "duration":[I
    .local v17, "duration":[I
    const/4 v8, 0x5

    if-ne v5, v8, :cond_6

    .line 656
    const-string v5, "IN"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    :cond_6
    aget v5, v12, v6

    const/4 v8, 0x4

    if-ne v5, v8, :cond_7

    .line 658
    const-string v5, "PO"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    :cond_7
    aget v5, v12, v6

    const/4 v8, 0x3

    if-ne v5, v8, :cond_8

    .line 660
    const-string v5, "NO"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    :cond_8
    aget v5, v12, v6

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9

    .line 662
    const-string v5, "SE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    :cond_9
    aget v5, v12, v6

    const/4 v8, 0x1

    if-ne v5, v8, :cond_a

    .line 664
    const-string v5, "ST"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    :cond_a
    add-int/lit8 v5, v9, -0x1

    if-eq v6, v5, :cond_b

    .line 667
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    goto :goto_2

    .end local v16    # "dataBundle":Landroid/os/Bundle;
    .end local v17    # "duration":[I
    .restart local v5    # "dataBundle":Landroid/os/Bundle;
    .restart local v8    # "duration":[I
    :cond_c
    move-object/from16 v16, v5

    move-object/from16 v17, v8

    .line 670
    .end local v5    # "dataBundle":Landroid/os/Bundle;
    .end local v6    # "i":I
    .end local v8    # "duration":[I
    .restart local v16    # "dataBundle":Landroid/os/Bundle;
    .restart local v17    # "duration":[I
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    const-string v5, "SC=["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_e

    .line 674
    aget v6, v13, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 675
    add-int/lit8 v6, v9, -0x1

    if-eq v5, v6, :cond_d

    .line 676
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 679
    .end local v5    # "i":I
    :cond_e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    const-string v5, "DI=["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v9, :cond_10

    .line 683
    move-object v6, v12

    move-object v8, v13

    .end local v12    # "stepType":[I
    .end local v13    # "stepCount":[I
    .local v6, "stepType":[I
    .local v8, "stepCount":[I
    aget-wide v12, v14, v5

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 684
    add-int/lit8 v12, v9, -0x1

    if-eq v5, v12, :cond_f

    .line 685
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    :cond_f
    add-int/lit8 v5, v5, 0x1

    move-object v12, v6

    move-object v13, v8

    goto :goto_4

    .end local v6    # "stepType":[I
    .end local v8    # "stepCount":[I
    .restart local v12    # "stepType":[I
    .restart local v13    # "stepCount":[I
    :cond_10
    move-object v6, v12

    move-object v8, v13

    .line 688
    .end local v5    # "i":I
    .end local v12    # "stepType":[I
    .end local v13    # "stepCount":[I
    .restart local v6    # "stepType":[I
    .restart local v8    # "stepCount":[I
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    const-string v5, "CA=["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v9, :cond_12

    .line 692
    aget-wide v12, v15, v5

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 693
    add-int/lit8 v12, v9, -0x1

    if-eq v5, v12, :cond_11

    .line 694
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 697
    .end local v5    # "i":I
    :cond_12
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v9, :cond_14

    .line 701
    aget v5, v17, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 702
    add-int/lit8 v5, v9, -0x1

    if-eq v4, v5, :cond_13

    .line 703
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 706
    .end local v4    # "i":I
    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    const/4 v3, 0x1

    if-ne v10, v3, :cond_17

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", HistoryMode=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 648
    .end local v6    # "stepType":[I
    .end local v16    # "dataBundle":Landroid/os/Bundle;
    .end local v17    # "duration":[I
    .local v5, "dataBundle":Landroid/os/Bundle;
    .local v8, "duration":[I
    .restart local v12    # "stepType":[I
    .restart local v13    # "stepCount":[I
    :cond_15
    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object v6, v12

    move-object v8, v13

    .line 650
    .end local v5    # "dataBundle":Landroid/os/Bundle;
    .end local v12    # "stepType":[I
    .end local v13    # "stepCount":[I
    .restart local v6    # "stepType":[I
    .local v8, "stepCount":[I
    .restart local v16    # "dataBundle":Landroid/os/Bundle;
    .restart local v17    # "duration":[I
    :goto_7
    return-void

    .line 713
    .end local v6    # "stepType":[I
    .end local v8    # "stepCount":[I
    .end local v9    # "count":I
    .end local v10    # "historyType":I
    .end local v14    # "distance":[D
    .end local v15    # "calorie":[D
    .end local v16    # "dataBundle":Landroid/os/Bundle;
    .end local v17    # "duration":[I
    :cond_16
    const/4 v8, 0x2

    if-ne v2, v8, :cond_17

    .line 714
    const-string v6, "ActiveTimeDuration"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 716
    .local v6, "activeTime":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 713
    .end local v6    # "activeTime":I
    :cond_17
    :goto_8
    nop

    .line 721
    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 722
    return-void

    .line 601
    .end local v1    # "str":Ljava/lang/StringBuffer;
    .end local v2    # "dataType":I
    :cond_18
    :goto_a
    return-void
.end method

.method private sendHistorySLMBuffer()V
    .locals 14

    .line 114
    const-string v0, "sendSLMHistoryData"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "historySLMMode":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "names":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getBufferSize()I

    move-result v2

    .line 121
    .local v2, "loggingCount":I
    if-nez v2, :cond_0

    .line 122
    const-string v3, "History Data Buffer is null!"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 125
    :cond_0
    const/4 v3, 0x1

    .line 127
    .local v3, "dataType":I
    new-array v4, v2, [J

    .line 128
    .local v4, "timeStampArray":[J
    new-array v5, v2, [I

    .line 129
    .local v5, "stepType":[I
    new-array v6, v2, [I

    .line 130
    .local v6, "stepCount":[I
    new-array v7, v2, [D

    .line 131
    .local v7, "distance":[D
    new-array v8, v2, [D

    .line 132
    .local v8, "calorie":[D
    new-array v9, v2, [I

    .line 135
    .local v9, "duration":[I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v10, "dataBundle":Landroid/os/Bundle;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v2, :cond_1

    .line 138
    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getTimeStampSingle(I)J

    move-result-wide v12

    aput-wide v12, v4, v11

    .line 139
    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepTypeArraySingle(I)I

    move-result v12

    aput v12, v5, v11

    .line 140
    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepCountArraySingle(I)I

    move-result v12

    aput v12, v6, v11

    .line 141
    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDistanceArraySingle(I)D

    move-result-wide v12

    aput-wide v12, v7, v11

    .line 142
    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmCalorieArraySingle(I)D

    move-result-wide v12

    aput-wide v12, v8, v11

    .line 143
    iget-object v12, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v12, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDurationArraySingle(I)I

    move-result v12

    aput v12, v9, v11

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 148
    .end local v11    # "i":I
    :cond_1
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 149
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 150
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 151
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 152
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v1, v11

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 166
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v11, "logBundle":Landroid/os/Bundle;
    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 169
    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v1, v12

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    invoke-direct {p0, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    .line 175
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 177
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 558
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 564
    nop

    .line 566
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 567
    return-void

    .line 563
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 564
    throw v0
.end method

.method public final disable()V
    .locals 0

    .line 547
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 548
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 549
    return-void
.end method

.method protected display()V
    .locals 0

    .line 597
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 532
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 533
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 536
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 187
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 12

    .line 484
    const-string v10, "TimeStampArray"

    const-string v11, "HistoryMode"

    const-string v0, "DataType"

    const-string v1, "TimeStamp"

    const-string v2, "DataCount"

    const-string v3, "DataBundle"

    const-string v4, "StepTypeArray"

    const-string v5, "StepCountArray"

    const-string v6, "DistanceArray"

    const-string v7, "CalorieArray"

    const-string v8, "DurationArray"

    const-string v9, "ActiveTimeDuration"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .line 210
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 212
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 213
    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v1

    aput-byte v2, v0, v3

    .line 215
    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 217
    .local v2, "startDuration":[B
    aget-byte v5, v2, v1

    aput-byte v5, v0, v4

    .line 218
    const/4 v5, 0x3

    aget-byte v6, v2, v3

    aput-byte v6, v0, v5

    .line 220
    const/4 v5, 0x4

    aput-byte v1, v0, v5

    .line 222
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v5

    .line 225
    .local v5, "utcTime":[I
    aget v6, v5, v1

    invoke-static {v6, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v1

    const/4 v7, 0x5

    aput-byte v6, v0, v7

    .line 226
    aget v6, v5, v3

    invoke-static {v6, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v1

    const/4 v7, 0x6

    aput-byte v6, v0, v7

    .line 227
    aget v4, v5, v4

    invoke-static {v4, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v1, v3, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 229
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 2

    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 242
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 243
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 590
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 198
    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 508
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 520
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 577
    return-object p0
.end method

.method public final parse([BI)I
    .locals 48
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 296
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .line 299
    .local v0, "tmpNext":I
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "names":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 304
    array-length v4, v2

    sub-int/2addr v4, v0

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    const/4 v7, -0x1

    if-gez v4, :cond_0

    .line 305
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 306
    return v7

    .line 309
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v8, v2, v0

    .line 313
    .local v8, "dataType":I
    if-ne v8, v6, :cond_7

    .line 316
    :try_start_0
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    sub-int/2addr v0, v4

    sub-int/2addr v0, v6

    if-gez v0, :cond_1

    .line 317
    :try_start_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    return v7

    .line 466
    :catch_0
    move-exception v0

    move-object/from16 v37, v3

    goto/16 :goto_4

    .line 321
    :cond_1
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v9, "tmpNext":I
    :try_start_2
    aget-byte v0, v2, v4

    move v4, v0

    .line 323
    .local v4, "dataSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dataSize:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    .line 338
    if-gtz v4, :cond_2

    .line 339
    :try_start_3
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 340
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 341
    return v7

    .line 466
    .end local v4    # "dataSize":I
    :catch_1
    move-exception v0

    move-object/from16 v37, v3

    move v4, v9

    goto/16 :goto_4

    .line 345
    .restart local v4    # "dataSize":I
    :cond_2
    :try_start_4
    array-length v0, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11

    sub-int/2addr v0, v9

    mul-int/lit8 v10, v4, 0xc

    const/4 v11, 0x4

    add-int/2addr v10, v11

    if-ge v0, v10, :cond_3

    .line 346
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packet len:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " tmpNext:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 349
    return v7

    .line 352
    :cond_3
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v7, "tmpNext":I
    :try_start_6
    aget-byte v0, v2, v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    :try_start_7
    aget-byte v7, v2, v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v10, "tmpNext":I
    :try_start_8
    aget-byte v9, v2, v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    add-int/lit8 v12, v10, 0x1

    .end local v10    # "tmpNext":I
    .local v12, "tmpNext":I
    :try_start_9
    aget-byte v10, v2, v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    const/16 v13, 0x8

    :try_start_a
    new-array v13, v13, [B

    const/4 v14, 0x0

    aput-byte v14, v13, v14

    aput-byte v14, v13, v6

    const/4 v15, 0x2

    aput-byte v14, v13, v15

    const/16 v16, 0x3

    aput-byte v14, v13, v16

    aput-byte v0, v13, v11

    const/4 v0, 0x5

    aput-byte v7, v13, v0

    const/4 v7, 0x6

    aput-byte v9, v13, v7

    const/4 v7, 0x7

    aput-byte v10, v13, v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 361
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    move-wide/from16 v22, v9

    .line 363
    .local v22, "timestamp":J
    new-instance v7, Ljava/util/SimpleTimeZone;

    const-string v9, "GMT"

    invoke-direct {v7, v14, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 365
    .local v7, "calender":Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 366
    .local v9, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 367
    .local v10, "minute":I
    const/16 v13, 0xd

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 368
    .local v13, "second":I
    move/from16 v24, v14

    const/16 v14, 0xe

    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 370
    .local v14, "milliSec":I
    move/from16 v25, v15

    mul-int/lit16 v15, v9, 0xe10

    mul-int/lit8 v17, v10, 0x3c

    add-int v15, v15, v17

    add-int/2addr v15, v13

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v15, v14

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v7    # "calender":Ljava/util/Calendar;
    .local v27, "calender":Ljava/util/Calendar;
    int-to-long v6, v15

    .line 371
    .local v6, "curUtcTime":J
    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 373
    .local v20, "curTimeMillis":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v17

    .line 374
    move-wide/from16 v18, v6

    .end local v6    # "curUtcTime":J
    .local v18, "curUtcTime":J
    invoke-virtual/range {v17 .. v23}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v6

    .line 376
    .end local v22    # "timestamp":J
    .local v6, "timestamp":J
    new-array v15, v4, [I

    .line 377
    .local v15, "stepType":[I
    new-array v0, v4, [I

    move-object/from16 v22, v0

    .line 378
    .local v22, "stepCount":[I
    new-array v0, v4, [D

    move-object/from16 v23, v0

    .line 379
    .local v23, "distance":[D
    new-array v0, v4, [D

    move-object/from16 v28, v0

    .line 380
    .local v28, "calorie":[D
    new-array v0, v4, [I

    move-object/from16 v29, v0

    .line 381
    .local v29, "duration":[I
    new-array v0, v4, [J

    move-object/from16 v30, v0

    .line 383
    .local v30, "tempTimeStamp":[J
    aput-wide v6, v30, v24

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    move-object/from16 v31, v0

    .line 387
    .local v31, "dataBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    move/from16 v32, v12

    move v12, v0

    .local v12, "i":I
    .local v32, "tmpNext":I
    :goto_0
    if-ge v12, v4, :cond_6

    .line 389
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "tmpNext":I
    .local v33, "tmpNext":I
    :try_start_c
    aget-byte v0, v2, v32

    aput v0, v15, v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 391
    add-int/lit8 v32, v33, 0x1

    .end local v33    # "tmpNext":I
    .restart local v32    # "tmpNext":I
    :try_start_d
    aget-byte v0, v2, v33
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    add-int/lit8 v33, v32, 0x1

    .end local v32    # "tmpNext":I
    .restart local v33    # "tmpNext":I
    :try_start_e
    aget-byte v32, v2, v32
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move/from16 v34, v0

    :try_start_f
    new-array v0, v11, [B

    aput-byte v24, v0, v24

    aput-byte v24, v0, v26

    aput-byte v34, v0, v25

    aput-byte v32, v0, v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :try_start_10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    aput v0, v22, v12
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 399
    add-int/lit8 v32, v33, 0x1

    .end local v33    # "tmpNext":I
    .restart local v32    # "tmpNext":I
    :try_start_11
    aget-byte v0, v2, v33
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    add-int/lit8 v33, v32, 0x1

    .end local v32    # "tmpNext":I
    .restart local v33    # "tmpNext":I
    :try_start_12
    aget-byte v32, v2, v32
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    add-int/lit8 v34, v33, 0x1

    .end local v33    # "tmpNext":I
    .local v34, "tmpNext":I
    :try_start_13
    aget-byte v33, v2, v33
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    move/from16 v35, v0

    :try_start_14
    new-array v0, v11, [B

    aput-byte v24, v0, v24

    aput-byte v35, v0, v26

    aput-byte v32, v0, v25

    aput-byte v33, v0, v16
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    :try_start_15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move/from16 v36, v12

    .end local v12    # "i":I
    .local v36, "i":I
    int-to-double v11, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    div-double v11, v11, v32

    aput-wide v11, v23, v36
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    .line 407
    add-int/lit8 v11, v34, 0x1

    .end local v34    # "tmpNext":I
    .local v11, "tmpNext":I
    :try_start_16
    aget-byte v0, v2, v34
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .local v12, "tmpNext":I
    :try_start_17
    aget-byte v11, v2, v11
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    move/from16 v34, v0

    const/4 v0, 0x4

    :try_start_18
    new-array v2, v0, [B

    aput-byte v24, v2, v24

    aput-byte v24, v2, v26

    aput-byte v34, v2, v25

    aput-byte v11, v2, v16
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    :try_start_19
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_e

    move-object/from16 v37, v3

    .end local v3    # "names":[Ljava/lang/String;
    .local v37, "names":[Ljava/lang/String;
    int-to-double v2, v0

    div-double v2, v2, v32

    :try_start_1a
    aput-wide v2, v28, v36
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    .line 415
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "tmpNext":I
    .local v2, "tmpNext":I
    :try_start_1b
    aget-byte v0, p1, v12
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    :try_start_1c
    aget-byte v2, p1, v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    add-int/lit8 v11, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    :try_start_1d
    aget-byte v3, p1, v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    add-int/lit8 v32, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v32    # "tmpNext":I
    :try_start_1e
    aget-byte v11, p1, v11

    move/from16 v33, v0

    const/4 v12, 0x4

    new-array v0, v12, [B

    aput-byte v33, v0, v24

    aput-byte v2, v0, v26

    aput-byte v3, v0, v25

    aput-byte v11, v0, v16

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    aput v0, v29, v36

    .line 421
    aget v0, v15, v36

    move/from16 v2, v26

    if-lt v0, v2, :cond_5

    aget v0, v15, v36

    const/4 v3, 0x5

    if-gt v0, v3, :cond_5

    .line 424
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    .line 426
    :try_start_1f
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    aget-wide v39, v30, v36

    aget v41, v15, v36

    aget v42, v22, v36

    aget-wide v43, v23, v36

    aget-wide v45, v28, v36

    aget v47, v29, v36

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v47}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->putSLMData(JIIDDI)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 428
    :try_start_20
    iget-object v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    nop

    .line 431
    add-int/lit8 v0, v4, -0x1

    move/from16 v11, v36

    .end local v36    # "i":I
    .local v11, "i":I
    if-ge v11, v0, :cond_4

    .line 432
    add-int/lit8 v0, v11, 0x1

    aget-wide v33, v30, v11

    aget v2, v29, v11

    move/from16 v17, v13

    .end local v13    # "second":I
    .local v17, "second":I
    int-to-long v12, v2

    add-long v33, v33, v12

    aput-wide v33, v30, v0

    goto :goto_1

    .line 431
    .end local v17    # "second":I
    .restart local v13    # "second":I
    :cond_4
    move/from16 v17, v13

    .line 387
    .end local v13    # "second":I
    .restart local v17    # "second":I
    :goto_1
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v2, p1

    move/from16 v13, v17

    move-object/from16 v3, v37

    const/4 v11, 0x4

    const/16 v26, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    goto/16 :goto_0

    .line 428
    .end local v12    # "i":I
    .end local v17    # "second":I
    .restart local v13    # "second":I
    .restart local v36    # "i":I
    :catchall_0
    move-exception v0

    move/from16 v17, v13

    move/from16 v11, v36

    .end local v13    # "second":I
    .end local v36    # "i":I
    .restart local v11    # "i":I
    .restart local v17    # "second":I
    iget-object v2, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    nop

    .end local v8    # "dataType":I
    .end local v32    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
    .end local p1    # "packet":[B
    .end local p2    # "next":I
    throw v0

    .line 421
    .end local v11    # "i":I
    .end local v17    # "second":I
    .restart local v8    # "dataType":I
    .restart local v13    # "second":I
    .restart local v32    # "tmpNext":I
    .restart local v36    # "i":I
    .restart local v37    # "names":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
    .restart local p1    # "packet":[B
    .restart local p2    # "next":I
    :cond_5
    move/from16 v17, v13

    move/from16 v11, v36

    .line 422
    .end local v13    # "second":I
    .end local v36    # "i":I
    .restart local v11    # "i":I
    .restart local v17    # "second":I
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid stepType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v15, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v8    # "dataType":I
    .end local v32    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
    .end local p1    # "packet":[B
    .end local p2    # "next":I
    throw v0

    .line 466
    .end local v4    # "dataSize":I
    .end local v6    # "timestamp":J
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v14    # "milliSec":I
    .end local v15    # "stepType":[I
    .end local v17    # "second":I
    .end local v18    # "curUtcTime":J
    .end local v20    # "curTimeMillis":J
    .end local v22    # "stepCount":[I
    .end local v23    # "distance":[D
    .end local v27    # "calender":Ljava/util/Calendar;
    .end local v28    # "calorie":[D
    .end local v29    # "duration":[I
    .end local v30    # "tempTimeStamp":[J
    .end local v31    # "dataBundle":Landroid/os/Bundle;
    .restart local v8    # "dataType":I
    .local v11, "tmpNext":I
    .restart local v37    # "names":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
    .restart local p1    # "packet":[B
    .restart local p2    # "next":I
    :catch_2
    move-exception v0

    move v4, v11

    goto/16 :goto_4

    .end local v11    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :catch_3
    move-exception v0

    move v4, v3

    goto/16 :goto_4

    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :catch_4
    move-exception v0

    move v4, v2

    goto/16 :goto_4

    .end local v2    # "tmpNext":I
    .local v12, "tmpNext":I
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .end local v37    # "names":[Ljava/lang/String;
    .local v3, "names":[Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v37, v3

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto/16 :goto_2

    .end local v12    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v11    # "tmpNext":I
    :catch_7
    move-exception v0

    move-object/from16 v37, v3

    move v4, v11

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto/16 :goto_4

    .end local v11    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v34    # "tmpNext":I
    :catch_8
    move-exception v0

    move-object/from16 v37, v3

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    move/from16 v4, v34

    goto/16 :goto_4

    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v37, v3

    move/from16 v4, v34

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto/16 :goto_4

    .end local v34    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v33    # "tmpNext":I
    :catch_a
    move-exception v0

    move-object/from16 v37, v3

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    move/from16 v4, v33

    goto/16 :goto_4

    .end local v33    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v32    # "tmpNext":I
    :catch_b
    move-exception v0

    move-object/from16 v37, v3

    move/from16 v4, v32

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto/16 :goto_4

    .end local v32    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v33    # "tmpNext":I
    :catch_c
    move-exception v0

    move-object/from16 v37, v3

    move/from16 v4, v33

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto/16 :goto_4

    .line 387
    .end local v33    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v4    # "dataSize":I
    .restart local v6    # "timestamp":J
    .restart local v9    # "hour":I
    .restart local v10    # "minute":I
    .local v12, "i":I
    .restart local v13    # "second":I
    .restart local v14    # "milliSec":I
    .restart local v15    # "stepType":[I
    .restart local v18    # "curUtcTime":J
    .restart local v20    # "curTimeMillis":J
    .restart local v22    # "stepCount":[I
    .restart local v23    # "distance":[D
    .restart local v27    # "calender":Ljava/util/Calendar;
    .restart local v28    # "calorie":[D
    .restart local v29    # "duration":[I
    .restart local v30    # "tempTimeStamp":[J
    .restart local v31    # "dataBundle":Landroid/os/Bundle;
    .restart local v32    # "tmpNext":I
    :cond_6
    move-object/from16 v37, v3

    move v11, v12

    move/from16 v17, v13

    .line 437
    .end local v3    # "names":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "second":I
    .restart local v17    # "second":I
    .restart local v37    # "names":[Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v37, v0

    move-object/from16 v2, v31

    .end local v31    # "dataBundle":Landroid/os/Bundle;
    .local v2, "dataBundle":Landroid/os/Bundle;
    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 438
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v37, v0

    move-object/from16 v3, v22

    .end local v22    # "stepCount":[I
    .local v3, "stepCount":[I
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 439
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v37, v0

    move-object/from16 v11, v23

    .end local v23    # "distance":[D
    .local v11, "distance":[D
    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 440
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v37, v0

    move-object/from16 v12, v28

    .end local v28    # "calorie":[D
    .local v12, "calorie":[D
    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 441
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v0

    aget-object v0, v37, v0

    move-object/from16 v13, v29

    .end local v29    # "duration":[I
    .local v13, "duration":[I
    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 443
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    move-object/from16 v22, v3

    .end local v3    # "stepCount":[I
    .restart local v22    # "stepCount":[I
    aget-object v3, v37, v16

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 444
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    .line 445
    invoke-virtual {v0, v3, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 446
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    .line 447
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    .line 449
    invoke-virtual {v0, v3, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v0, "logBundle":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 455
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 456
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v37, v3

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    invoke-direct {v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    .line 460
    invoke-super {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    .line 462
    .end local v0    # "logBundle":Landroid/os/Bundle;
    .end local v2    # "dataBundle":Landroid/os/Bundle;
    .end local v6    # "timestamp":J
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v11    # "distance":[D
    .end local v12    # "calorie":[D
    .end local v13    # "duration":[I
    .end local v14    # "milliSec":I
    .end local v15    # "stepType":[I
    .end local v17    # "second":I
    .end local v18    # "curUtcTime":J
    .end local v20    # "curTimeMillis":J
    .end local v22    # "stepCount":[I
    .end local v27    # "calender":Ljava/util/Calendar;
    .end local v30    # "tempTimeStamp":[J
    move/from16 v4, v32

    goto :goto_3

    .line 466
    .end local v4    # "dataSize":I
    :catch_d
    move-exception v0

    move/from16 v4, v32

    goto :goto_4

    .end local v32    # "tmpNext":I
    .local v12, "tmpNext":I
    :goto_2
    move v4, v12

    goto :goto_4

    .end local v37    # "names":[Ljava/lang/String;
    .local v3, "names":[Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v37, v3

    move v4, v12

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto :goto_4

    .end local v12    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .local v10, "tmpNext":I
    :catch_f
    move-exception v0

    move-object/from16 v37, v3

    move v4, v10

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto :goto_4

    .end local v10    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .local v7, "tmpNext":I
    :catch_10
    move-exception v0

    move-object/from16 v37, v3

    move v4, v7

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto :goto_4

    .end local v7    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .local v9, "tmpNext":I
    :catch_11
    move-exception v0

    move-object/from16 v37, v3

    move v4, v9

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto :goto_4

    .end local v9    # "tmpNext":I
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .local v4, "tmpNext":I
    :catch_12
    move-exception v0

    move-object/from16 v37, v3

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    goto :goto_4

    .line 463
    .end local v37    # "names":[Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    :cond_7
    move-object/from16 v37, v3

    .end local v3    # "names":[Ljava/lang/String;
    .restart local v37    # "names":[Ljava/lang/String;
    :try_start_21
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_13

    .line 469
    :goto_3
    goto :goto_5

    .line 466
    :catch_13
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLMonitor Runner Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return v4
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 255
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 257
    .local v0, "result":Z
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_0

    .line 258
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 259
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step Level Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    const/16 v1, 0x3b

    const/4 v2, 0x4

    if-ne p1, v1, :cond_1

    .line 262
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 263
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 266
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    .line 270
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 266
    const/16 v3, 0x17

    const/16 v4, 0x2c

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    .line 271
    :cond_1
    if-ne p1, v2, :cond_2

    .line 272
    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendHistorySLMBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 278
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 278
    throw v1

    .line 282
    :cond_2
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0
.end method
