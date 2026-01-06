.class public Lcom/samsung/android/sep/camera/ZoomController;
.super Ljava/lang/Object;
.source "ZoomController.java"


# static fields
.field public static final CROP_REGION_WIDTH_FACTOR:I = 0x4

.field private static final MAX_ZOOM_INDEX:I = 0x1

.field private static final MIN_ZOOM_INDEX:I = 0x0

.field private static final SmoothZoomSupportedProcessor:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ZoomController"

.field public static final ZOOM_RATIO_FACTOR:I = 0x3e8

.field public static final ZOOM_TYPE_CAPTURE_NORMAL:I = 0x0

.field public static final ZOOM_TYPE_CAPTURE_SUPER_NIGHT:I = 0x1


# instance fields
.field private isZoomControllerUsed:Z

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCurrentProcessorId:I

.field private mCurrentZoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    .line 35
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/sep/camera/ZoomController;->SmoothZoomSupportedProcessor:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1
    .param p1, "processorId"    # I
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 40
    iput p1, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCurrentProcessorId:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCurrentZoomLevel:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->isZoomControllerUsed:Z

    .line 44
    return-void
.end method

.method private getScalerCropRegion(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "level"    # I
    .param p2, "sensorActiveArray"    # Landroid/graphics/Rect;

    .line 172
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_0

    .line 173
    return-object p2

    .line 176
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 177
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 178
    .local v1, "height":I
    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 181
    .local v2, "zoomRate":F
    int-to-float v3, v0

    div-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    .line 182
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    .line 184
    .local v3, "cropWidth":F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 185
    .local v4, "cropHeight":F
    const/high16 v5, 0x40000000    # 2.0f

    rem-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 186
    add-float/2addr v4, v6

    .line 189
    :cond_1
    int-to-float v5, v0

    sub-float/2addr v5, v3

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 190
    .local v5, "left":I
    sub-int v6, v0, v5

    .line 191
    .local v6, "right":I
    int-to-float v7, v1

    sub-float/2addr v7, v4

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    .line 192
    .local v7, "top":I
    sub-int v8, v1, v7

    .line 194
    .local v8, "bottom":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sensorActiveArray left: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ZoomController"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v9
.end method

.method private getZoomListIndex(I)I
    .locals 2
    .param p1, "zoomType"    # I

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 74
    const-string v0, "ZoomController"

    const-string v1, "getZoomListIndex: Not Supported !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, -0x1

    return v0

    .line 72
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 70
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSmoothZoomFeatureSupported()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isSDKModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurrentZoomLevel()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCurrentZoomLevel:I

    return v0
.end method

.method public declared-synchronized getMaxZoomLevel(Ljava/lang/Integer;)F
    .locals 2
    .param p1, "zoomType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/ZoomController;->getZoomListIndex(I)I

    move-result v1

    .line 52
    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getScalerAvailableMaxDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;I)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 51
    .end local p0    # "this":Lcom/samsung/android/sep/camera/ZoomController;
    .end local p1    # "zoomType":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getMinZoomLevel(Ljava/lang/Integer;)F
    .locals 2
    .param p1, "zoomType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/ZoomController;->getZoomListIndex(I)I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getScalerAvailableMinDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;I)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 61
    .end local p0    # "this":Lcom/samsung/android/sep/camera/ZoomController;
    .end local p1    # "zoomType":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isSmoothZoomSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cameraID"    # Ljava/lang/String;

    monitor-enter p0

    .line 85
    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/ZoomController;->SmoothZoomSupportedProcessor:Ljava/util/Set;

    iget v1, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCurrentProcessorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/ZoomController;->isSmoothZoomFeatureSupported()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/samsung/android/sep/camera/ZoomController;
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    monitor-exit p0

    return v0

    .line 84
    .end local p1    # "cameraID":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isZoomControllerUsedByApp()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->isZoomControllerUsed:Z

    return v0
.end method

.method declared-synchronized setZoomLevelToBuilder(Ljava/util/List;I)V
    .locals 7
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;I)V"
        }
    .end annotation

    .local p1, "builders":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Builder;>;"
    monitor-enter p0

    .line 119
    :try_start_0
    const-string v0, "ZoomController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomLevel : level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 121
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getSensorInfoActiveArraySize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object v0

    .line 122
    .local v0, "sensorInfoActiveArraySize":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    .line 123
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sep/camera/ZoomController;->getScalerCropRegion(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 124
    .local v1, "scalerCropRegion":Landroid/graphics/Rect;
    iput p2, p0, Lcom/samsung/android/sep/camera/ZoomController;->mCurrentZoomLevel:I

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 126
    .local v3, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/ZoomController;->isSmoothZoomFeatureSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    int-to-float v4, p2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    .line 128
    .local v4, "zoomRatio":F
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 129
    sget-object v5, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 130
    .end local v4    # "zoomRatio":F
    goto :goto_1

    .line 131
    .end local p0    # "this":Lcom/samsung/android/sep/camera/ZoomController;
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 133
    .end local v3    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_1
    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sep/camera/ZoomController;->isZoomControllerUsed:Z

    .line 136
    .end local v1    # "scalerCropRegion":Landroid/graphics/Rect;
    goto :goto_2

    .line 137
    :cond_2
    const-string v1, "ZoomController"

    const-string v2, "getSensorInfoActiveArraySize returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_2
    monitor-exit p0

    return-void

    .line 118
    .end local v0    # "sensorInfoActiveArraySize":Landroid/graphics/Rect;
    .end local p1    # "builders":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Builder;>;"
    .end local p2    # "level":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setZoomProgress(Ljava/util/List;F)V
    .locals 4
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;F)V"
        }
    .end annotation

    .local p1, "builders":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Builder;>;"
    monitor-enter p0

    .line 96
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, p2, v0

    float-to-int v1, v1

    .line 101
    .local v1, "value":I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/sep/camera/ZoomController;->getMinZoomLevel(Ljava/lang/Integer;)F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    if-ge v1, v3, :cond_0

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/ZoomController;->getMinZoomLevel(Ljava/lang/Integer;)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    goto :goto_0

    .line 103
    .end local p0    # "this":Lcom/samsung/android/sep/camera/ZoomController;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/sep/camera/ZoomController;->getMaxZoomLevel(Ljava/lang/Integer;)F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    if-le v1, v3, :cond_1

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/ZoomController;->getMaxZoomLevel(Ljava/lang/Integer;)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 108
    :cond_1
    :goto_0
    const-string v0, "ZoomController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sep/camera/ZoomController;->setZoomLevelToBuilder(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 97
    .end local v1    # "value":I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "builders  cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local p1    # "builders":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Builder;>;"
    .end local p2    # "level":F
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
