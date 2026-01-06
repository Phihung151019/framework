.class final Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;
.super Landroid/os/Handler;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/FaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaultDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/context/util/FaultDetector;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    .line 325
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 326
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 329
    if-nez p1, :cond_0

    .line 330
    return-void

    .line 333
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmFdAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/app/AlarmManager;

    move-result-object v0

    if-nez v0, :cond_c

    .line 335
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmFdAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;Landroid/app/AlarmManager;)V

    goto/16 :goto_2

    .line 338
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 339
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$mstartFaultDetector(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    goto/16 :goto_2

    .line 341
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 342
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$mstopFaultDetector(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    goto/16 :goto_2

    .line 344
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v0, v3, :cond_8

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_4

    goto/16 :goto_0

    .line 367
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 369
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 370
    invoke-virtual {p0, v5}, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->removeMessages(I)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)Z

    move-result v0

    if-ne v1, v0, :cond_c

    .line 372
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$mcancelAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    goto/16 :goto_2

    .line 375
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    .line 376
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmLastPedoUpdateTime(Lcom/samsung/android/hardware/context/util/FaultDetector;J)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmPedoCount(Lcom/samsung/android/hardware/context/util/FaultDetector;J)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmPedoCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-nez v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmPedoCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmPedoCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;J)V

    .line 382
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)Z

    move-result v0

    if-ne v1, v0, :cond_c

    .line 384
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$mcancelAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    goto/16 :goto_2

    .line 387
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    .line 388
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmStepSensorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmStepSensorCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 391
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmStepSensorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmStepSensorCountInit(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    goto/16 :goto_2

    .line 345
    :cond_8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmLastPedoUpdateTime(Lcom/samsung/android/hardware/context/util/FaultDetector;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 346
    .local v6, "elapsed":J
    const-wide/32 v8, 0x1b7740

    cmp-long v0, v8, v6

    if-ltz v0, :cond_9

    .line 347
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 348
    return-void

    .line 351
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_a

    .line 353
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 355
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Elaspsed time since last step ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms), try("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), PD("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmPedoCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), SC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmStepSensorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaultDetector[1.6]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;)I

    move-result v0

    if-lt v0, v2, :cond_b

    .line 359
    const-string v0, "restart pedometer service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fputmErrorCount(Lcom/samsung/android/hardware/context/util/FaultDetector;I)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->restorePedometer()V

    goto :goto_1

    .line 363
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->requestPedometer()V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$FaultDetectorHandler;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$msetAlarm(Lcom/samsung/android/hardware/context/util/FaultDetector;)V

    .line 366
    .end local v6    # "elapsed":J
    :goto_1
    nop

    .line 394
    :cond_c
    :goto_2
    return-void
.end method
