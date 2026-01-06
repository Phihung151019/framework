.class Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;
.super Ljava/lang/Object;
.source "DexListenerWrapper.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;


# direct methods
.method public static synthetic $r8$lambda$2EOrWb4H9zZMD_Y0rHLq46_NQQ4(Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;->lambda$onDesktopModeStateChanged$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDesktopModeStateChanged$0(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 43
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDesktopModeStateChanged(I)V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 39
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v0, v3, :cond_1

    :cond_0
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v2, :cond_3

    .line 42
    :cond_1
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 43
    .local v2, "mode":I
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .end local v2    # "mode":I
    :cond_3
    return-void
.end method
