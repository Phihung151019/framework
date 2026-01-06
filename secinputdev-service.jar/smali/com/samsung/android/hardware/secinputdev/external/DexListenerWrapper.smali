.class public Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;
.super Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.source "DexListenerWrapper.java"


# instance fields
.field private final desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V

    .line 36
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/DexListenerWrapper;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 21
    return-void
.end method


# virtual methods
.method public register()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    const-string v0, "not supported"

    return-object v0
.end method
