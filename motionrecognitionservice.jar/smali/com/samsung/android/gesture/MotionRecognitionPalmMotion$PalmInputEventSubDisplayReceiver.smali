.class final Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;
.super Landroid/view/InputEventReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmInputEventSubDisplayReceiver"
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

    .line 327
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 328
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 329
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "handled":Z
    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 336
    return-void

    .line 338
    :cond_0
    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 340
    .local v1, "ev":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 341
    .local v2, "toolType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$monRecognitionForSubDisplay(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$mCheckPalmForDebugInfo(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V

    .line 346
    :goto_0
    const/4 v0, 0x1

    .line 347
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->readSubDisplayInputEvent(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local v2    # "toolType":I
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 353
    throw v1
.end method
