.class public interface abstract Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;
.super Ljava/lang/Object;
.source "ImageCaptureExtenderImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/ExtenderStateListener;


# virtual methods
.method public abstract getAvailableCaptureRequestKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableCaptureResultKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptureProcessor()Landroidx/camera/extensions/impl/CaptureProcessorImpl;
.end method

.method public abstract getCaptureStages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/CaptureStageImpl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;
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
.end method

.method public abstract getMaxCaptureStage()I
.end method

.method public abstract getRealtimeCaptureLatency()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/List;
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
.end method

.method public abstract getSupportedResolutions()Ljava/util/List;
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
.end method

.method public abstract init(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract isCaptureProcessProgressAvailable()Z
.end method

.method public abstract isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isPostviewAvailable()Z
.end method
