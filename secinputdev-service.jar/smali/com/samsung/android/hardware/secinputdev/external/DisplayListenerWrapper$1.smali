.class Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;
.super Ljava/lang/Object;
.source "DisplayListenerWrapper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;


# direct methods
.method public static synthetic $r8$lambda$OF-3HAF0Cr_N3J43ogwtNpPH55U(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->lambda$onDisplayChanged$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDisplayChanged$0(I)V
    .locals 1
    .param p1, "displayRotation"    # I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDisplayChanged(I)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .line 36
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "i"    # I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetdisplayManager(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetdisplayManager(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 48
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 49
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetdisplayInfo(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 52
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetisReverseDefaultRotation(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetdisplayInfo(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetdisplayInfo(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 53
    .local v1, "displayRotation":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fgetcurrentRotation(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 54
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->-$$Nest$fputcurrentRotation(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;I)V

    .line 55
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;

    iget-object v2, v2, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_3
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .line 40
    return-void
.end method
