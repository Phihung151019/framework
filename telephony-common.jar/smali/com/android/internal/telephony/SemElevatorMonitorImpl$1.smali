.class Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;
.super Ljava/lang/Object;
.source "SemElevatorMonitorImpl.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemElevatorMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemElevatorMonitorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 4

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v0

    const/16 v1, 0x72

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemMotionRecognitionEvent - Unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemElevatorMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemElevatorMonitorImpl;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    const-string v0, "SemMotionRecognitionEvent - event: OUT_OF_ELEVATOR"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemElevatorMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemElevatorMonitorImpl;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    invoke-virtual {p0, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    const-string v0, "SemMotionRecognitionEvent - event: NOT_ELEVATOR"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemElevatorMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemElevatorMonitorImpl;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
