.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemContextListenerFreeFall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1748
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 1751
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDropClassifierSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/Sensor;

    move-result-object v0

    const-string v1, "SENSORBD"

    if-eqz v0, :cond_0

    .line 1752
    const-string v0, "Freefall event skip!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 1757
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v0

    .line 1759
    .local v3, "merged":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "MRSI_VERSION"

    const-string v4, "11.2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    goto :goto_0

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1764
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFreeFallDetectionContext()Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;

    move-result-object v4

    .line 1765
    .local v4, "freefallDetection":Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;
    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->getHeight()J

    move-result-wide v6

    .line 1766
    .local v6, "ffHeight":J
    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->getStatus()I

    move-result v8

    .line 1767
    .local v8, "ffStatus":I
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetFreeFallTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;

    move-result-object v11

    .line 1773
    .local v11, "ffTime":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FF] FFD - status : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " height : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " time : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v12, 0x2

    if-ne v8, v12, :cond_4

    .line 1779
    const/4 v13, 0x0

    :try_start_1
    const-string v0, "EVENT_TYPE"

    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$sfgetsEventType()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v13

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1780
    const-string v0, "FF_HEIGHT"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1781
    const-string v0, "FF_TIME"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1795
    goto :goto_1

    .line 1793
    :catch_1
    move-exception v0

    .line 1794
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1798
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V

    .line 1800
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/4 v9, 0x0

    invoke-direct {v5, v0, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker-IA;)V

    .line 1801
    .local v5, "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mgetFreeFallDetectionTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->setFreeFallDetectionData(JIJ)V

    .line 1802
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmDumpInfoHistory(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    .line 1804
    const-wide/16 v9, 0x32

    cmp-long v0, v6, v9

    const/4 v9, -0x1

    if-ltz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0, v6, v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mwriteFreeFallLoggingData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;JI)V

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1808
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v0

    const/16 v10, 0x66

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1811
    :cond_2
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1812
    .local v2, "sales_code":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v0, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v12, v13

    goto :goto_3

    :sswitch_1
    const-string v0, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :sswitch_2
    const-string v0, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :goto_2
    move v12, v9

    :goto_3
    packed-switch v12, :pswitch_data_0

    .line 1831
    const-string v0, "Sales code is wrong!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1817
    :pswitch_0
    const-wide/16 v0, 0xb4

    cmp-long v0, v6, v0

    if-ltz v0, :cond_4

    .line 1818
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 1820
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v0, "FF_H_EMR"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1823
    goto :goto_4

    .line 1821
    :catch_2
    move-exception v0

    .line 1822
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1825
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SemContextListenerFreeFall;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 1826
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1825
    const-string v10, "FALL"

    const-string v12, "ph"

    invoke-static {v0, v10, v9, v13, v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendHWParamServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1828
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    nop

    .line 1835
    .end local v2    # "sales_code":Ljava/lang/String;
    .end local v5    # "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    :cond_4
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x123fa -> :sswitch_2
        0x127da -> :sswitch_1
        0x140eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
