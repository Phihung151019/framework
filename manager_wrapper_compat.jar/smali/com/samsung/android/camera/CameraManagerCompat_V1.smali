.class public Lcom/samsung/android/camera/CameraManagerCompat_V1;
.super Ljava/lang/Object;
.source "CameraManagerCompat_V1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    .locals 2
    .param p0, "callback"    # Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "callbackProxy":Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    if-eqz p0, :cond_0

    .line 56
    new-instance v1, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;-><init>(Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;)V

    move-object v0, v1

    .line 94
    :cond_0
    return-object v0
.end method

.method public static startDeviceInjector(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;)V
    .locals 6
    .param p0, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p1, "targetPackages"    # [Ljava/lang/String;
    .param p2, "targetCameraIds"    # [Ljava/lang/String;
    .param p3, "sourceCameraId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 49
    invoke-static {p5}, Lcom/samsung/android/camera/CameraManagerCompat_V1;->createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "targetPackages":[Ljava/lang/String;
    .end local p2    # "targetCameraIds":[Ljava/lang/String;
    .end local p3    # "sourceCameraId":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    .local v1, "targetPackages":[Ljava/lang/String;
    .local v2, "targetCameraIds":[Ljava/lang/String;
    .local v3, "sourceCameraId":Ljava/lang/String;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->startDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;)V

    .line 50
    return-void
.end method
