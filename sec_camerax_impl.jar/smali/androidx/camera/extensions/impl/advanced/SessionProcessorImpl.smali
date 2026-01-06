.class public interface abstract Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
.super Ljava/lang/Object;
.source "SessionProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    }
.end annotation


# virtual methods
.method public abstract abortCapture(I)V
.end method

.method public abstract deInitSession()V
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

.method public abstract initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;",
            ")",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;"
        }
    .end annotation
.end method

.method public abstract initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            ")",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;"
        }
    .end annotation
.end method

.method public abstract onCaptureSessionEnd()V
.end method

.method public abstract onCaptureSessionStart(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;)V
.end method

.method public abstract setParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startCapture(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
.end method

.method public abstract startCaptureWithPostview(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
.end method

.method public abstract startRepeating(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
.end method

.method public abstract startTrigger(Ljava/util/Map;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;",
            ")I"
        }
    .end annotation
.end method

.method public abstract stopRepeating()V
.end method
