.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2179
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2184
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const-string v4, "SENSORBD"

    if-eqz v1, :cond_1

    .line 2185
    const-string v1, "SENSORHUB_RESET_ACTION is called"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const-string v1, "sensorhub_reset_reason"

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2188
    .local v1, "resetStatus":I
    const-string v4, "sensorhub_reset_cnt"

    invoke-virtual {p2, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2189
    .local v4, "resetCnt":J
    const-string v6, "sensorhub_reset_timestamp"

    invoke-virtual {p2, v6, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2191
    .local v2, "timestamp":J
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2192
    .local v6, "bundle":Landroid/os/Bundle;
    nop

    .line 2193
    const-string v7, "resetStatus"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2194
    const-string v7, "resetCnt"

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2195
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2198
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 2199
    .local v7, "msg":Landroid/os/Message;
    const/16 v8, 0x44

    iput v8, v7, Landroid/os/Message;->what:I

    .line 2200
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2202
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2203
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2205
    .end local v1    # "resetStatus":I
    .end local v2    # "timestamp":J
    .end local v4    # "resetCnt":J
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v1, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2206
    const-string v1, "HQM_HW_STATUS_REQ is called"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mreportProbeStuckStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto/16 :goto_0

    .line 2214
    :cond_2
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2215
    const-string v1, "HQM_UPDATE_REQ is called"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2217
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2219
    :cond_3
    const-string v1, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2220
    const-string v1, "timeout"

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2221
    .local v1, "timeout":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SENSOR_CHECKING_GET_ACTION "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is called"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const-wide/16 v3, 0x7530

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    .line 2223
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2224
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x55

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2226
    :cond_4
    const-wide/16 v3, 0x1388

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    .line 2227
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2228
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2232
    .end local v1    # "timeout":J
    :cond_5
    :goto_0
    return-void
.end method
