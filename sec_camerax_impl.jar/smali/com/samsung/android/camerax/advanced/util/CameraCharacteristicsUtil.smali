.class public Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;
.super Ljava/lang/Object;
.source "CameraCharacteristicsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableSuperNightRawStreamConfigs(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    if-eqz p0, :cond_0

    .line 192
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->SCALER_AVAILABLE_SUPER_NIGHT_RAW_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 194
    .local v1, "superNightRawStreamConfigurations":[I
    if-eqz v1, :cond_0

    .line 195
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->unMarshal([I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    goto :goto_0

    .line 198
    .end local v1    # "superNightRawStreamConfigurations":[I
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    .restart local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v3, "getAvailableSuperNightRawStreamConfigs - unable to acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    nop

    .line 202
    :goto_1
    return-object v0
.end method

.method public static getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 6
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 157
    const/4 v0, 0x0

    .line 160
    .local v0, "faceDetectMode":I
    if-nez p0, :cond_0

    .line 161
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v2, "getFaceDetectMode - cameraCharacteristics is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v0

    .line 165
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 167
    .local v1, "modes":[I
    if-eqz v1, :cond_3

    .line 168
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 169
    .local v4, "mode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 171
    const/4 v0, 0x2

    .line 172
    goto :goto_1

    .line 173
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 174
    const/4 v0, 0x1

    .line 168
    .end local v4    # "mode":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_3
    :goto_1
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFaceDetectMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .end local v1    # "modes":[I
    goto :goto_2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v3, "getFaceDetectMode - unable to acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v0
.end method

.method public static isAvailableDynamicShotInfo(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 7
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 40
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v2, "isAvailableDynamicShotInfo - cameraCharacteristics is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "availableDynamicShotInfo":Z
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 49
    .local v2, "available_feature":[I
    if-eqz v2, :cond_2

    .line 50
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 51
    .local v5, "feature":I
    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 50
    .end local v5    # "feature":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    sget-object v3, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAvailableDynamicShotInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return v1

    .line 60
    .end local v1    # "availableDynamicShotInfo":Z
    .end local v2    # "available_feature":[I
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v3, "isAvailableDynamicShotInfo : unable to acquire"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return v0
.end method

.method public static isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 8
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "mode"    # I

    .line 94
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 95
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "isAvailableFeature(mode %d) - cameraCharacteristics is null"

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 95
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 102
    .local v1, "availableFeature":Z
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 104
    .local v2, "available_feature":[I
    if-eqz v2, :cond_2

    .line 105
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 106
    .local v5, "feature":I
    if-ne v5, p1, :cond_1

    .line 107
    const/4 v1, 0x1

    .line 108
    goto :goto_1

    .line 105
    .end local v5    # "feature":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_2
    :goto_1
    sget-object v3, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "isAvailableFeature(mode %d) : %b"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 113
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return v1

    .line 116
    .end local v1    # "availableFeature":Z
    .end local v2    # "available_feature":[I
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 117
    const-string v5, "isAvailableFeature(mode %d) - unable to acquire"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return v0
.end method

.method public static isAvailableHDR(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 67
    const/16 v0, 0xca

    invoke-static {p0, v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    return v0
.end method

.method public static isAvailableNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 72
    const/16 v0, 0xc9

    invoke-static {p0, v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    return v0
.end method

.method public static isAvailableSdkFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 8
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "mode"    # I

    .line 126
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 127
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "isAvailableSdkFeature(mode %d) - cameraCharacteristics is null"

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 127
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v0

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "isFeatureAvailable":Z
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCharacteristicsKey;->CONTROL_SDK_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 136
    .local v2, "availableSdkFeature":[I
    if-eqz v2, :cond_2

    .line 137
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 138
    .local v5, "feature":I
    if-ne v5, p1, :cond_1

    .line 139
    const/4 v1, 0x1

    .line 140
    goto :goto_1

    .line 137
    .end local v5    # "feature":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    sget-object v3, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "isAvailableSdkFeature(mode %d) : %b"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 145
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return v1

    .line 148
    .end local v1    # "isFeatureAvailable":Z
    .end local v2    # "availableSdkFeature":[I
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 150
    const-string v5, "isAvailableSdkFeature(mode %d) - unable to acquire"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return v0
.end method

.method public static isDynamicFovSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 87
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    return v0
.end method

.method public static isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 7
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "requiredLevel"    # I

    .line 215
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 216
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v2, "isHardwareLevelSupported : characteristics is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_1

    .line 220
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    filled-new-array {v2, v4, v0, v3, v1}, [I

    move-result-object v1

    .line 227
    .local v1, "sortedHwLevels":[I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 228
    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 230
    .local v2, "deviceLevel":I
    if-ne p1, v2, :cond_1

    .line 231
    return v3

    .line 234
    :cond_1
    array-length v4, v1

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_4

    aget v6, v1, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v6, "sortedLevel":I
    if-ne v6, p1, :cond_2

    .line 236
    return v3

    .line 237
    :cond_2
    if-ne v6, v2, :cond_3

    .line 238
    return v0

    .line 234
    .end local v6    # "sortedLevel":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "sortedHwLevels":[I
    .end local v2    # "deviceLevel":I
    :cond_4
    goto :goto_2

    .line 242
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    sget-object v2, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v3, "isHardwareLevelSupported : unable to acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v0
.end method

.method public static isSamsungVendorKeySupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 4
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 254
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 255
    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->TAG:Ljava/lang/String;

    const-string v2, "isSamsungVendorKeySupported - cameraCharacteristics is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v0

    .line 259
    :cond_0
    const-class v1, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 260
    .local v1, "thisClass":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .line 262
    .local v2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    nop

    .line 263
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 265
    .local v3, "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    if-eqz v3, :cond_1

    .line 266
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT_NATIVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 269
    :cond_1
    return v0
.end method

.method public static isSingleCamSupportMultiRawStreamSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 82
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    return v0
.end method
