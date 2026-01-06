.class public final Landroidx/camera/extensions/impl/AutoImageCaptureExtenderImpl;
.super Ljava/lang/Object;
.source "AutoImageCaptureExtenderImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableCaptureRequestKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableCaptureResultKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCaptureProcessor()Landroidx/camera/extensions/impl/CaptureProcessorImpl;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCaptureStages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/CaptureStageImpl;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;
    .locals 2
    .param p1, "captureOutputSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxCaptureStage()I
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRealtimeCaptureLatency()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/List;
    .locals 2
    .param p1, "captureSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCaptureProcessProgressAvailable()Z
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isPostviewAvailable()Z
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDeInit()V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onEnableSession()Landroidx/camera/extensions/impl/CaptureStageImpl;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInit(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "context"    # Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPresetSession()Landroidx/camera/extensions/impl/CaptureStageImpl;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSessionType()I
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub, replace with implementation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
