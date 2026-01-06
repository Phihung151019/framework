.class public Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;
.super Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.source "DisplayStateListenerWrapper.java"


# instance fields
.field private final displayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V

    .line 29
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;->displayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 13
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

    .line 18
    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 19
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;->displayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0    # "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    nop

    .line 26
    const-string v0, ""

    return-object v0

    .line 20
    .restart local v0    # "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "DisplayManagerInternal is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .end local v0    # "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/DisplayStateListenerWrapper;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
