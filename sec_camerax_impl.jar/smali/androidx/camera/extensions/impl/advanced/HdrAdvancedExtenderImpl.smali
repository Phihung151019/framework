.class public Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;
.super Ljava/lang/Object;
.source "HdrAdvancedExtenderImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "cx/AOSPHdrExt"


# instance fields
.field private final mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/extender/HdrAdvancedExtender;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    nop

    .line 54
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "create fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    throw v0
.end method


# virtual methods
.method public createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
    .locals 3

    .line 141
    :try_start_0
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;

    iget-object v1, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;-><init>(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "createSessionProcessor fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
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

    .line 152
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getAvailableCaptureRequestKeys fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
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

    .line 163
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getAvailableCaptureResultKeys fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
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

    .line 194
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getAvailableCharacteristicsKeyValues fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
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

    .line 83
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/util/Size;I)Landroid/util/Range;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getEstimatedCaptureLatencyRange fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
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

    .line 107
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getSupportedCaptureOutputResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
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

    .line 119
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getSupportedPostviewResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
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

    .line 95
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getSupportedPreviewOutputResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
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

    .line 130
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->getSupportedYuvAnalysisResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "getSupportedYuvAnalysisResolutions fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
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

    .line 71
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    nop

    .line 76
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "init fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    throw v0
.end method

.method public isCaptureProcessProgressAvailable()Z
    .locals 3

    .line 173
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isCaptureProcessProgressAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "isCaptureProcessProgressAvailable fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
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

    .line 60
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "isExtensionAvailable fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    throw v0
.end method

.method public isPostviewAvailable()Z
    .locals 3

    .line 183
    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;->isPostviewAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/AOSPHdrExt"

    const-string v2, "isPostviewAvailable fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    throw v0
.end method
