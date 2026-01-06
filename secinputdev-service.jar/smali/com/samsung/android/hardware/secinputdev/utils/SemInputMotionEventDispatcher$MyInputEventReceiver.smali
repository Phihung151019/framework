.class final Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SemInputMotionEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "channel"    # Landroid/view/InputChannel;
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

    .line 183
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    .line 184
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 185
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->-$$Nest$fgetisRegistered(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 191
    return-void

    .line 194
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 195
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 196
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->-$$Nest$fgetlisteners(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->-$$Nest$fgetlisteners(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 198
    .local v4, "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    invoke-interface {v4, v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 199
    .end local v4    # "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    goto :goto_0

    .line 200
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 203
    return-void
.end method
