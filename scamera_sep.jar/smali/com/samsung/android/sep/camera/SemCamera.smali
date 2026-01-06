.class public Lcom/samsung/android/sep/camera/SemCamera;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;,
        Lcom/samsung/android/sep/camera/SemCamera$EffectProcessor;
    }
.end annotation


# static fields
.field public static final AVAILABILITY_SUPPORTED:I = 0x0

.field public static final FEATURE_CAPTURE_PROCESSOR:I = 0x1

.field private static final SEP_CLIENT_VERSION:Ljava/lang/String; = "5.0.51"

.field private static final TAG:Ljava/lang/String; = "SemCamera"

.field private static mSemCamera:Lcom/samsung/android/sep/camera/SemCamera;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sep/camera/SemCamera;
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/SemCamera;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/samsung/android/sep/camera/SemCamera;->mSemCamera:Lcom/samsung/android/sep/camera/SemCamera;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/samsung/android/sep/camera/SemCamera;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/SemCamera;-><init>()V

    sput-object v1, Lcom/samsung/android/sep/camera/SemCamera;->mSemCamera:Lcom/samsung/android/sep/camera/SemCamera;

    .line 50
    :cond_0
    sget-object v1, Lcom/samsung/android/sep/camera/SemCamera;->mSemCamera:Lcom/samsung/android/sep/camera/SemCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkAvailability(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getHighResolutionCameraId()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getHighResolutionCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalCameraId(Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/SemCamera$PhysicalCameraType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid physical camera type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCamera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, ""

    return-object v0

    .line 163
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PHYSICAL_CAMERA_TELE_2:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PHYSICAL_CAMERA_TELE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlatformCameraIdList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LOGICAL_REAR_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    nop

    .line 191
    const-string v1, "camera"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 192
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LOGICAL_REAR_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 193
    invoke-static {v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "logicalID":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 198
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v3, :cond_0

    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    goto :goto_0

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SemCamera"

    const-string v5, " camera id/SDK features not accessible "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "logicalID":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getSEPClientVersion()Ljava/lang/String;
    .locals 1

    .line 214
    const-string v0, "5.0.51"

    return-object v0
.end method

.method public getSamsungScalerAvailableJpegPictureSizes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {p1, p2}, Lcom/samsung/android/sep/camera/util/SemUtil;->getSamsungScalerAvailableJpegPictureSizes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 70
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 71
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    const/4 v1, 0x0

    .line 73
    .local v1, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v1    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v3, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    nop

    .line 78
    invoke-static {v3}, Lcom/samsung/android/sep/camera/util/SemUtil;->isUDCCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    const-string v4, "SemCamera"

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 80
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object p2

    .line 83
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    .line 86
    nop

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDC Camera has selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    return v2

    .line 90
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 91
    .local v1, "result":Z
    packed-switch p3, :pswitch_data_0

    .line 98
    nop

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 100
    const-string v5, "isFeatureEnabled - processorType(%d) is not available."

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :pswitch_0
    nop

    .line 94
    invoke-static {v3}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isAvailableDynamicShotInfo(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    .line 96
    nop

    .line 104
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "isFeatureEnabled - processorType(%d) returns %b."

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v1

    .line 74
    .end local v3    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v1, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_1
    move-exception v3

    .line 75
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isHighResolutionCaptureSupported(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "size"    # Landroid/util/Size;

    .line 128
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->HIGH_RES_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCamera;->getHighResolutionCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sep/camera/util/SemUtil;->isAvailablePictureSize(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0
.end method
