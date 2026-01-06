.class public Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;
.super Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.source "DisplayListenerWrapper.java"


# instance fields
.field private currentRotation:I

.field private final displayInfo:Landroid/view/DisplayInfo;

.field private displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private displayManager:Landroid/hardware/display/DisplayManager;

.field private final isReverseDefaultRotation:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentRotation(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->currentRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayInfo(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/view/DisplayInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayManager(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisReverseDefaultRotation(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->isReverseDefaultRotation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentRotation(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->currentRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V

    .line 13
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayInfo:Landroid/view/DisplayInfo;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->currentRotation:I

    .line 33
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->isReverseDefaultRotation:Z

    .line 21
    return-void
.end method


# virtual methods
.method public register()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->context:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayListenerWrapper;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 30
    const-string v0, ""

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "DisplayManager is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
