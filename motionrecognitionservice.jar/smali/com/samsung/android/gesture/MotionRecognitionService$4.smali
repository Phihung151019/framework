.class Lcom/samsung/android/gesture/MotionRecognitionService$4;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/Vibrator$OnVibratorStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;->startMotions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVibratorStateChanged(Z)V
    .locals 6
    .param p1, "isVibratorOn"    # Z

    .line 583
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService$4;Z)V

    .line 606
    .local v0, "injectVibratorInfoRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmInjectVibratorInfoTask(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmInjectVibratorInfoTask(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 609
    :cond_0
    if-eqz p1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmExecutor(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmExecutor(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const-wide/16 v3, 0x2ee

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmInjectVibratorInfoTask(Lcom/samsung/android/gesture/MotionRecognitionService;Ljava/util/concurrent/ScheduledFuture;)V

    .line 614
    :goto_0
    return-void
.end method
