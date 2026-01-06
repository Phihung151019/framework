.class Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;
.super Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMotionRecognitionReactiveAlert"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2170
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    .line 2171
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;-><init>(Landroid/content/Context;)V

    .line 2172
    return-void
.end method


# virtual methods
.method public sendMotionReactiveAlert(I)V
    .locals 2
    .param p1, "motionType"    # I

    .line 2176
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEventPool(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->obtain()Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    move-result-object v0

    .line 2177
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    .line 2178
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$msendMotionEvent(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 2179
    return-void
.end method
