.class public Lcom/samsung/android/camera/CameraServiceWorkerCompat_V1;
.super Ljava/lang/Object;
.source "CameraServiceWorkerCompat_V1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraServiceWorkerCompat_V1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getCameraServiceWorker(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "CameraServiceWorker_manager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;

    .line 37
    .local v0, "manager":Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;
    invoke-virtual {v0}, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->getMyBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method
