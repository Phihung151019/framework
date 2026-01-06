.class Lcom/samsung/android/hardware/context/util/FaultDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/FaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/util/FaultDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/util/FaultDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "FaultDetector[1.6]"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmStarted(Lcom/samsung/android/hardware/context/util/FaultDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    const-string v1, "com.samsung.android.PEDOMETER_FAULT_DETECTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;Z)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive alarm PD("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmPedoCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), SC("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmStepSensorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$1;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    :cond_3
    :goto_0
    return-void

    .line 71
    :cond_4
    :goto_1
    const-string v1, "onReceive: fdr not ready"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method
