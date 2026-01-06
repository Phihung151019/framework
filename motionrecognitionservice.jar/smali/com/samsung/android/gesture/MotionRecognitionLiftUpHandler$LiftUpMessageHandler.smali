.class final Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionLiftUpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LiftUpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    .line 177
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 185
    :sswitch_0
    goto :goto_0

    .line 192
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->startLiftToWakeUp()V

    .line 193
    goto :goto_0

    .line 188
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->stopLiftToWakeUp()V

    .line 189
    nop

    .line 198
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x142 -> :sswitch_2
        0x14c -> :sswitch_1
        0x156 -> :sswitch_2
        0x160 -> :sswitch_1
        0x174 -> :sswitch_0
    .end sparse-switch
.end method
