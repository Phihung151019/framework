.class final Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 295
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 296
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    iget-wide v1, v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "handled":Z
    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 304
    return-void

    .line 306
    :cond_0
    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 308
    .local v1, "ev":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 309
    .local v2, "toolType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$monRecognition(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$mCheckPalmForDebugInfo(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V

    .line 315
    .end local v2    # "toolType":I
    :goto_0
    const/4 v0, 0x1

    .line 316
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->readInputEvent(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v1    # "ev":Landroid/view/MotionEvent;
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 321
    throw v1
.end method
