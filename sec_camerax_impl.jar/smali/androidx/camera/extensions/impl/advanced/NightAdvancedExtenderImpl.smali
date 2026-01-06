.class public Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;
.super Ljava/lang/Object;
.source "NightAdvancedExtenderImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "cx/AOSPNightExt"


# instance fields
.field private mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

.field private final mSIEImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

.field private final mSuperImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    .line 53
    :try_start_0
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSIEImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    .line 54
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSuperImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    nop

    .line 59
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "create fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    throw v0
.end method


# virtual methods
.method public createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
    .locals 3

    .line 154
    :try_start_0
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;

    iget-object v1, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;-><init>(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "createSessionProcessor fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    throw v0
.end method

.method public getAvailableCaptureRequestKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getAvailableCaptureRequestKeys fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    throw v0
.end method

.method public getAvailableCaptureResultKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    .line 176
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getAvailableCaptureResultKeys fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    throw v0
.end method

.method public getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getAvailableCharacteristicsKeyValues fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    throw v0
.end method

.method public getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/util/Size;I)Landroid/util/Range;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 95
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/util/Size;I)Landroid/util/Range;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getEstimatedCaptureLatencyRange fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    throw v0
.end method

.method public getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getSupportedCaptureOutputResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    throw v0
.end method

.method public getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;
    .locals 3
    .param p1, "captureSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getSupportedPostviewResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    throw v0
.end method

.method public getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getSupportedPreviewOutputResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    throw v0
.end method

.method public getSupportedYuvAnalysisResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedYuvAnalysisResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "getSupportedYuvAnalysisResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    throw v0
.end method

.method public init(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSuperImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSuperImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSIEImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    .line 83
    :goto_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "init fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    throw v0
.end method

.method public isCaptureProcessProgressAvailable()Z
    .locals 3

    .line 186
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isCaptureProcessProgressAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "isCaptureProcessProgressAvailable fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    throw v0
.end method

.method public isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)Z"
        }
    .end annotation

    .line 65
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSIEImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mSuperImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    .line 66
    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 65
    :goto_1
    return v0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "isExtensionAvailable fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    throw v0
.end method

.method public isPostviewAvailable()Z
    .locals 3

    .line 196
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isPostviewAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPNightExt"

    const-string v2, "isPostviewAvailable fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    throw v0
.end method
