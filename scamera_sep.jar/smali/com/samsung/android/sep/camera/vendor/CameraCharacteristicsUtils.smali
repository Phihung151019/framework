.class public Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;
.super Ljava/lang/Object;
.source "CameraCharacteristicsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraCharacteristicsUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 7
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "faceDetectMode":I
    const-string v1, "CameraCharacteristicsUtils"

    if-nez p0, :cond_0

    .line 90
    const-string v2, "getFaceDetectMode - cameraCharacteristics is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v0

    .line 94
    :cond_0
    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 95
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 97
    .local v2, "modes":[I
    if-eqz v2, :cond_3

    .line 98
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 99
    .local v5, "mode":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 101
    const/4 v0, 0x2

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 104
    const/4 v0, 0x1

    .line 98
    .end local v5    # "mode":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFaceDetectMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .end local v2    # "modes":[I
    goto :goto_2

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "getFaceDetectMode : key not found"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v0
.end method

.method public static getSamsungScalerAvailableSuperNightRawStreamConfigs(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .param p0, "mCameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;"
        }
    .end annotation

    .line 175
    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_NIGHT_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 176
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 178
    .local v0, "superNightRawStreamConfigurations":[I
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 181
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->unMarshal([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 182
    .end local v0    # "superNightRawStreamConfigurations":[I
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSamsungScalerAvailableSuperResolutionRawStreamConfigs(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .param p0, "mCameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;"
        }
    .end annotation

    .line 280
    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_RESOLUTION_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 281
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 283
    .local v0, "superResolutionRawStreamConfigurations":[I
    if-eqz v0, :cond_0

    .line 284
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->unMarshal([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 288
    .end local v0    # "superResolutionRawStreamConfigurations":[I
    :cond_0
    nop

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getScalerAvailableMaxDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;I)F
    .locals 5
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "zoomListIndex"    # I

    .line 124
    const-string v0, "CameraCharacteristicsUtils"

    const v1, 0x411e6666    # 9.9f

    if-eqz p0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 130
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 131
    .local v2, "maxDigitalZoomList":[F
    if-eqz v2, :cond_2

    array-length v3, v2

    if-gt v3, p1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    aget v0, v2, p1

    return v0

    .line 132
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" was not present in maxDigitalZoomList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return v1

    .line 136
    .end local v2    # "maxDigitalZoomList":[F
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_1
    const-string v2, "getScalerAvailableMaxDigitalZoom - Invalid arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v1
.end method

.method public static getScalerAvailableMinDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;I)F
    .locals 5
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "zoomListIndex"    # I

    .line 150
    const-string v0, "CameraCharacteristicsUtils"

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_MIN_DIGITAL_ZOOM_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 156
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 157
    .local v2, "minDigitalZoomList":[F
    if-eqz v2, :cond_2

    array-length v3, v2

    if-gt v3, p1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    aget v0, v2, p1

    return v0

    .line 158
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" was not present in minDigitalZoomList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return v1

    .line 162
    .end local v2    # "minDigitalZoomList":[F
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 151
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_1
    const-string v2, "getScalerAvailableMinDigitalZoom - Invalid arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v1
.end method

.method public static getSensorInfoActiveArraySize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 189
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public static isAvailableDynamicShotInfo(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 32
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    return v0
.end method

.method public static isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 6
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "mode"    # I

    .line 46
    const/4 v0, 0x0

    const-string v1, "CameraCharacteristicsUtils"

    if-nez p0, :cond_0

    .line 47
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 49
    const-string v4, "isAvailableFeature(mode %d) - cameraCharacteristics is null"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 58
    .local v2, "availableFeature":Z
    :try_start_0
    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 60
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 62
    .local v3, "available_feature":[I
    if-eqz v3, :cond_2

    .line 63
    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_2

    aget v5, v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v5, "feature":I
    if-ne v5, p1, :cond_1

    .line 65
    const/4 v2, 0x1

    .line 66
    goto :goto_1

    .line 63
    .end local v5    # "feature":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "available_feature":[I
    :cond_2
    :goto_1
    goto :goto_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    .line 73
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 75
    const-string v4, "isAvailableFeature(mode %d) : %b"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v2
.end method

.method public static isSDKModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 8
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "feature"    # I

    .line 200
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_SDK_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 201
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 203
    .local v1, "modes":[I
    if-eqz v1, :cond_1

    .line 204
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 205
    .local v4, "mode":I
    const-string v5, "CameraCharacteristicsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSDKModeAvailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    if-ne v4, p1, :cond_0

    .line 207
    const/4 v0, 0x1

    return v0

    .line 204
    .end local v4    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "modes":[I
    :cond_1
    nop

    .line 214
    return v0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method public static isSamsungFeatureSingleCamSupportMultiRawStream(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 225
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isVideoModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 9
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "videoMode"    # I

    .line 240
    const-string v0, "CameraCharacteristicsUtils"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 248
    const/4 v2, 0x0

    .local v2, "config":[I
    goto :goto_0

    .line 242
    .end local v2    # "config":[I
    :pswitch_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->UNIHAL_VIDEO_AVAILABLE_AUTO_FRAMING_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 243
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 246
    .restart local v2    # "config":[I
    goto :goto_0

    .line 265
    .end local v2    # "config":[I
    :catch_0
    move-exception v2

    goto :goto_2

    .line 250
    .restart local v2    # "config":[I
    :goto_0
    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->UNIHAL_VIDEO_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 251
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 253
    .local v3, "modes":[I
    if-eqz v3, :cond_3

    .line 254
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 255
    .local v6, "mode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isVideoModeAvailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    if-ne v6, p1, :cond_2

    .line 257
    const/16 v0, 0x46

    const/4 v4, 0x1

    if-ne p1, v0, :cond_1

    .line 259
    if-eqz v2, :cond_0

    move v1, v4

    :cond_0
    return v1

    .line 261
    :cond_1
    return v4

    .line 254
    .end local v6    # "mode":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    .end local v2    # "config":[I
    .end local v3    # "modes":[I
    :cond_3
    goto :goto_3

    .line 266
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoModeAvailable: not available "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method
