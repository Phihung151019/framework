.class public Lcom/samsung/android/camera/CameraManagerCompat_V2;
.super Ljava/lang/Object;
.source "CameraManagerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;,
        Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;,
        Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;,
        Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smcreateCharacteristicBuilder(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->createCharacteristicBuilder(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateDeviceCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->createDeviceCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    .locals 2
    .param p0, "callback"    # Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "callbackProxy":Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    if-eqz p0, :cond_0

    .line 144
    new-instance v1, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;-><init>(Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)V

    move-object v0, v1

    .line 187
    :cond_0
    return-object v0
.end method

.method private static createCharacteristicBuilder(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    .locals 2
    .param p0, "builder"    # Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "proxyBuilder":Lcom/samsung/android/camera/CameraManagerCompat_V2$CharacteristicBuilder;
    if-eqz p0, :cond_0

    .line 255
    new-instance v1, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$3;-><init>(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)V

    move-object v0, v1

    .line 347
    :cond_0
    return-object v0
.end method

.method private static createDevice(Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;)Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
    .locals 2
    .param p0, "remoteDevice"    # Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "proxyDevice":Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;
    if-eqz p0, :cond_0

    .line 195
    new-instance v1, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$2;-><init>(Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;)V

    move-object v0, v1

    .line 247
    :cond_0
    return-object v0
.end method

.method private static createDeviceCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;
    .locals 2
    .param p0, "callback"    # Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, "proxyCallback":Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDeviceCallback;
    if-eqz p0, :cond_0

    .line 355
    new-instance v1, Lcom/samsung/android/camera/CameraManagerCompat_V2$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$4;-><init>(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)V

    move-object v0, v1

    .line 369
    :cond_0
    return-object v0
.end method

.method public static startDeviceInjector(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)V
    .locals 6
    .param p0, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p1, "targetPackages"    # [Ljava/lang/String;
    .param p2, "targetCameraIds"    # [Ljava/lang/String;
    .param p3, "sourceCameraId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    nop

    .line 126
    invoke-static {p5}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    move-result-object v5

    .line 125
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

    .line 127
    return-void
.end method

.method public static startRemoteDeviceInjector(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;Ljava/util/concurrent/Executor;Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)V
    .locals 6
    .param p0, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p1, "targetPackages"    # [Ljava/lang/String;
    .param p2, "targetCameraIds"    # [Ljava/lang/String;
    .param p3, "remoteDevice"    # Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 135
    nop

    .line 136
    invoke-static {p3}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->createDevice(Lcom/samsung/android/camera/CameraManagerCompat_V2$RemoteDevice;)Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    move-result-object v3

    invoke-static {p5}, Lcom/samsung/android/camera/CameraManagerCompat_V2;->createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    move-result-object v5

    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .end local p0    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "targetPackages":[Ljava/lang/String;
    .end local p2    # "targetCameraIds":[Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    .local v1, "targetPackages":[Ljava/lang/String;
    .local v2, "targetCameraIds":[Ljava/lang/String;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->startRemoteDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;)V

    .line 137
    return-void
.end method
