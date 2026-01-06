.class public abstract Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.super Ljava/lang/Object;
.source "ExternalService.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final handler:Landroid/os/Handler;

.field protected final listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;->context:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 14
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;->handler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract register()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
