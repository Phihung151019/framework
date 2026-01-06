.class Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;
.super Landroid/os/SemUEventObserver;
.source "SemUEventObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;


# direct methods
.method public static synthetic $r8$lambda$VcqW_3XQq6KQqTAV9yyo3V09O9E(Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;->lambda$onSemUEvent$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;

    invoke-direct {p0}, Landroid/os/SemUEventObserver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSemUEvent$0(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onSemUEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSemUEvent(Landroid/os/SemUEventObserver$SemUEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/SemUEventObserver$SemUEvent;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSemUEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInput:UEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->-$$Nest$mprocessGestureEvent(Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;Landroid/os/SemUEventObserver$SemUEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    const-string v0, "RESULT"

    invoke-virtual {p1, v0}, Landroid/os/SemUEventObserver$SemUEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_1
    return-void
.end method
