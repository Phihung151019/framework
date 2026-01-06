.class Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$1;
.super Landroid/os/Handler;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    const-string v2, "MotionRecognitionService"

    if-ne v0, v1, :cond_0

    .line 267
    const-string v0, " send reactive alert "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->sendMotionReactiveAlert(I)V

    goto :goto_0

    .line 269
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 270
    const-string v0, " send flat to new listener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->sendMotionReactiveAlert(I)V

    .line 273
    :cond_1
    :goto_0
    return-void
.end method
