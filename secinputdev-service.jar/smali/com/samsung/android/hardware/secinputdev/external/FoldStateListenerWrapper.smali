.class public Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;
.super Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.source "FoldStateListenerWrapper.java"


# static fields
.field private static final DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field private static final TAG:Ljava/lang/String; = "SemInput:FoldState"


# instance fields
.field private final foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;


# direct methods
.method public static synthetic $r8$lambda$Hz-LD9d4wszOX1AJ7B2pvencQLc(Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V

    .line 42
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->context:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;)V

    invoke-direct {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 18
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "folded"    # Ljava/lang/Boolean;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onFoldStateChanged(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public register()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->context:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 23
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_3

    .line 26
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 27
    .local v1, "displays":[Landroid/view/Display;
    if-eqz v1, :cond_2

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Builtin displays: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInput:FoldState"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Builtin displays are under 2("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->context:Landroid/content/Context;

    const-class v3, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 35
    .local v2, "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    if-eqz v2, :cond_1

    .line 38
    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->handler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/FoldStateListenerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 39
    const-string v3, ""

    return-object v3

    .line 36
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "DeviceStateManager is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 28
    .end local v2    # "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Display is null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    .end local v1    # "displays":[Landroid/view/Display;
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "DisplayManager is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
