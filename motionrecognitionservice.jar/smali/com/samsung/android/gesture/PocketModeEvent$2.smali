.class Lcom/samsung/android/gesture/PocketModeEvent$2;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 839
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1061
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 34
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 843
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 844
    .local v3, "curTime":J
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 845
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-gez v0, :cond_0

    .line 846
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Light sensor data is negative number"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void

    .line 850
    :cond_0
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    const/4 v5, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 851
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    if-eq v0, v5, :cond_2

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    sget v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    if-eq v0, v7, :cond_2

    .line 852
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v9

    sub-long v9, v3, v9

    const-wide/16 v11, 0x1f4

    cmp-long v0, v9, v11

    if-gez v0, :cond_2

    .line 853
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Less then 500ms"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 855
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "prox out less then 500ms"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 858
    :cond_1
    return-void

    .line 863
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v9, 0x6

    const/4 v10, -0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-ne v0, v5, :cond_4

    .line 864
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_3

    .line 865
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getLuxRawData()I

    move-result v0

    if-eq v0, v10, :cond_d

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/gesture/PocketProximityManager;->getLuxRawData()I

    move-result v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_0

    .line 868
    :cond_3
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lt v0, v5, :cond_d

    .line 869
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v10, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v12

    float-to-int v10, v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_0

    .line 873
    :cond_4
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 874
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 875
    :cond_5
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_6

    .line 876
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/gesture/VirtualPocketData;->getLuxPocket()I

    move-result v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_0

    .line 879
    :cond_6
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v10, 0x20

    if-eq v0, v10, :cond_d

    .line 880
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lt v0, v5, :cond_d

    .line 881
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v10, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v12

    float-to-int v10, v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_0

    .line 886
    :cond_7
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v12, :cond_a

    .line 887
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_8

    .line 888
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v5, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 889
    return-void

    .line 891
    :cond_8
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_9

    .line 892
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v10, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto/16 :goto_0

    .line 894
    :cond_9
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v8, :cond_d

    .line 895
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lt v0, v5, :cond_d

    .line 896
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v10, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v12

    float-to-int v10, v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_0

    .line 900
    :cond_a
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v9, :cond_b

    .line 901
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v13, 0xd7

    if-lt v0, v13, :cond_d

    .line 902
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v13, 0x1f4

    if-ge v0, v13, :cond_d

    .line 903
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v13, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v13}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v13

    mul-int/2addr v13, v10

    invoke-static {v0, v13}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_0

    .line 906
    :cond_b
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v8, :cond_d

    .line 907
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxDelayTime()J

    move-result-wide v13

    const-wide/16 v15, 0x12c

    add-long/2addr v13, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v0, v13, v15

    if-gtz v0, :cond_c

    .line 908
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/gesture/PocketProximityManager;->setPocketSensorReceived(Z)V

    .line 910
    :cond_c
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived()Z

    move-result v0

    if-nez v0, :cond_d

    .line 911
    return-void

    .line 916
    :cond_d
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mcheckIrisState(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 918
    :cond_e
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 920
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v10

    if-gt v0, v10, :cond_f

    .line 921
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/2addr v0, v8

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 922
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_1

    .line 925
    :cond_f
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 926
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 927
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 930
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmSensorRegisterTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v13

    sub-long v13, v3, v13

    .line 931
    .local v13, "diff":J
    const-wide/16 v15, 0x3e8

    .line 933
    .local v15, "dumpDiffTime":J
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v11, :cond_13

    .line 934
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 935
    :cond_10
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_2a

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v8

    if-nez v0, :cond_11

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2a

    .line 936
    :cond_11
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v0

    .line 937
    .local v0, "data":Lcom/samsung/android/gesture/VirtualPocketData;
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v6

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v21

    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v25

    invoke-direct/range {v17 .. v25}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIIII)V

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 938
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v6

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpVirtual;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v20

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v21

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getBaseProxy()I

    move-result v22

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getCurrentProxy()I

    move-result v23

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getReleaseDiff()I

    move-result v24

    .line 939
    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRelease()I

    move-result v25

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getMinRecog()I

    move-result v26

    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v27

    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v28

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getHighLuxProxy()I

    move-result v29

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getHighLuxProxyTime()J

    move-result-wide v30

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getOpenCentroid()I

    move-result v32

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getCloseCentroid()I

    move-result v33

    invoke-direct/range {v17 .. v33}, Lcom/samsung/android/gesture/PocketDumpVirtual;-><init>(JIIIIIIIIIIJII)V

    .line 938
    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 940
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v6

    if-ne v6, v8, :cond_12

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 941
    :cond_12
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 942
    .end local v0    # "data":Lcom/samsung/android/gesture/VirtualPocketData;
    goto/16 :goto_6

    .line 943
    :cond_13
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v17, 0x64

    if-ne v0, v12, :cond_1b

    .line 944
    cmp-long v0, v13, v17

    if-ltz v0, :cond_2a

    .line 945
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLockProxInt(Lcom/samsung/android/gesture/PocketModeEvent;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 946
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-nez v0, :cond_16

    .line 947
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v19, 0x0

    const/16 v10, 0xa

    if-ge v0, v10, :cond_14

    .line 948
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v10, "re-check sysfs data"

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 950
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 951
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read Proximity data in register : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v11}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 954
    :cond_14
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_15

    .line 955
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    goto :goto_2

    .line 956
    :cond_15
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v19

    if-ltz v0, :cond_16

    .line 957
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 960
    :cond_16
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-le v0, v8, :cond_17

    .line 962
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_3

    .line 964
    :cond_17
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-ne v0, v8, :cond_18

    .line 965
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_3

    .line 968
    :cond_18
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 971
    :goto_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_2a

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v8

    if-nez v0, :cond_19

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2a

    .line 972
    :cond_19
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 973
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_1a

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 974
    :cond_1a
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    goto/16 :goto_6

    .line 960
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 977
    :cond_1b
    const/16 v19, 0x0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v9, :cond_20

    .line 978
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxLiteState()I

    move-result v0

    if-ne v0, v8, :cond_1c

    .line 979
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_4

    .line 982
    :cond_1c
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 984
    :goto_4
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_2a

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v8

    if-nez v0, :cond_1d

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2a

    .line 985
    :cond_1d
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v6

    sub-long v6, v3, v6

    cmp-long v0, v6, v15

    if-ltz v0, :cond_2a

    .line 986
    :cond_1e
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 987
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_1f

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 988
    :cond_1f
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 989
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V

    goto/16 :goto_6

    .line 993
    :cond_20
    cmp-long v0, v13, v17

    if-ltz v0, :cond_2a

    .line 994
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v7, :cond_22

    .line 995
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_2a

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_2a

    .line 996
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v21, -0x1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 997
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_21

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 998
    :cond_21
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    goto/16 :goto_6

    .line 1000
    :cond_22
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_27

    .line 1001
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-nez v0, :cond_24

    .line 1002
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_23

    .line 1003
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_5

    .line 1004
    :cond_23
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v0

    cmpl-float v0, v0, v19

    if-ltz v0, :cond_24

    .line 1005
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    .line 1007
    :cond_24
    :goto_5
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_2a

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v8

    if-nez v0, :cond_25

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2a

    .line 1008
    :cond_25
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 1009
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_26

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 1010
    :cond_26
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    goto :goto_6

    .line 1014
    :cond_27
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_2a

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v8

    if-nez v0, :cond_28

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2a

    .line 1015
    :cond_28
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v17, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v18

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v20

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v21

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v22

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v23

    sget v24, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 1016
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v8, :cond_29

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;->addProxCount()V

    .line 1017
    :cond_29
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1022
    :cond_2a
    :goto_6
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v0, v12, :cond_2b

    .line 1023
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v0

    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setLightSensitivity(I)V

    .line 1026
    :cond_2b
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misOutPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    const/16 v6, 0xb

    if-eqz v0, :cond_2c

    .line 1028
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 1029
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    if-ne v0, v6, :cond_2c

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsDualDisplayFolder(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-ne v0, v8, :cond_2c

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-ne v0, v8, :cond_2c

    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-nez v0, :cond_2c

    .line 1030
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->reRegisterSensorForSubDisplay()V

    .line 1033
    :cond_2c
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misInPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1035
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_30

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v5, 0x33

    if-ne v0, v5, :cond_30

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1036
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->isUpsidePosition()Z

    move-result v0

    const/4 v5, 0x7

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    if-ne v0, v5, :cond_30

    .line 1037
    :cond_2d
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Motion occur!! - Register Physical Prox"

    invoke-static {v0, v7}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0, v8}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 1040
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensorForA71_5g()V

    .line 1042
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1043
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v5, "already send Message : MSG_TYPE_PHYSICAL_PROX_DISABLE"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1045
    :cond_2e
    const/16 v0, 0x1388

    .line 1046
    .local v0, "delayTime":I
    iget-object v7, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v7

    if-ne v7, v5, :cond_2f

    .line 1047
    const/16 v0, 0x3e8

    .line 1049
    :cond_2f
    iget-object v5, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 1050
    .local v5, "msg":Landroid/os/Message;
    iput v6, v5, Landroid/os/Message;->what:I

    .line 1051
    iget-object v6, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v6

    int-to-long v7, v0

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1055
    .end local v0    # "delayTime":I
    .end local v5    # "msg":Landroid/os/Message;
    :cond_30
    :goto_7
    iget-object v0, v1, Lcom/samsung/android/gesture/PocketModeEvent$2;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketIn()V

    .line 1057
    :cond_31
    return-void
.end method
