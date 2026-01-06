.class Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper$1;
.super Ljava/lang/Object;
.source "DisplayStateListenerWrapper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(III)V
    .locals 2
    .param p1, "stateLogical"    # I
    .param p2, "statePhysical"    # I
    .param p3, "displayType"    # I

    .line 37
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDisplayStateChanged(ZIII)V

    .line 38
    return-void
.end method

.method public onStart(III)V
    .locals 2
    .param p1, "stateLogical"    # I
    .param p2, "statePhysical"    # I
    .param p3, "displayType"    # I

    .line 32
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDisplayStateChanged(ZIII)V

    .line 33
    return-void
.end method
