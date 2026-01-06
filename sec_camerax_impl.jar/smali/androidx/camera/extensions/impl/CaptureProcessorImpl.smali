.class public interface abstract Landroidx/camera/extensions/impl/CaptureProcessorImpl;
.super Ljava/lang/Object;
.source "CaptureProcessorImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/ProcessorImpl;


# virtual methods
.method public abstract onPostviewOutputSurface(Landroid/view/Surface;)V
.end method

.method public abstract onResolutionUpdate(Landroid/util/Size;Landroid/util/Size;)V
.end method

.method public abstract process(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract process(Ljava/util/Map;Landroidx/camera/extensions/impl/ProcessResultImpl;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Landroidx/camera/extensions/impl/ProcessResultImpl;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract processWithPostview(Ljava/util/Map;Landroidx/camera/extensions/impl/ProcessResultImpl;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Landroidx/camera/extensions/impl/ProcessResultImpl;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation
.end method
