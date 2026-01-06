.class public Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;
.super Ljava/lang/Object;
.source "SessionProcessorWrapper.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "cx/SPWrapper"


# instance fields
.field private final mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;)V
    .locals 0
    .param p1, "impl"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    .line 44
    return-void
.end method


# virtual methods
.method public abortCapture(I)V
    .locals 3
    .param p1, "captureSequenceId"    # I

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->abortCapture(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    nop

    .line 174
    return-void

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "abortCapture failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    throw v0
.end method

.method public deInitSession()V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->deInitSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    nop

    .line 83
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "deInitSession failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    throw v0
.end method

.method public getRealtimeCaptureLatency()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->getRealtimeCaptureLatency()Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "getRealtimeCaptureLatency failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    throw v0
.end method

.method public initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "surfaceConfigs"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;
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

    .line 52
    .local p2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "initSession failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    throw v0
.end method

.method public initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "previewSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p5, "imageCaptureSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p6, "imageAnalysisSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
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

    .line 67
    .local p2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local p5    # "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local p6    # "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .local v3, "context":Landroid/content/Context;
    .local v4, "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local v5, "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local v6, "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 69
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local v5    # "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local v6    # "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local p3    # "context":Landroid/content/Context;
    .restart local p4    # "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .restart local p5    # "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .restart local p6    # "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object p1, v0

    .line 70
    .end local p2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local p5    # "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local p6    # "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .restart local v1    # "cameraId":Ljava/lang/String;
    .restart local v2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .restart local v5    # "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .restart local v6    # "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local p1, "e":Ljava/lang/Throwable;
    :goto_0
    const-string p2, "cx/SPWrapper"

    const-string p3, "initSession failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    throw p1
.end method

.method public onCaptureSessionEnd()V
    .locals 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->onCaptureSessionEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    nop

    .line 124
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "onCaptureSessionEnd failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    throw v0
.end method

.method public onCaptureSessionStart(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;)V
    .locals 3
    .param p1, "requestProcessor"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->onCaptureSessionStart(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    nop

    .line 114
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "onCaptureSessionStart failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    throw v0
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 3
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

    .line 88
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->setParameters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    nop

    .line 93
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "setParameters failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    throw v0
.end method

.method public startCapture(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 3
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startCapture(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "startCapture failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    throw v0
.end method

.method public startCaptureWithPostview(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 3
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startCaptureWithPostview(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "startCaptureWithPostview failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    throw v0
.end method

.method public startRepeating(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 3
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startRepeating(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "startRepeating failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    throw v0
.end method

.method public startTrigger(Ljava/util/Map;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 3
    .param p2, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
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

    .line 99
    .local p1, "triggers":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->startTrigger(Ljava/util/Map;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "startTrigger failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    throw v0
.end method

.method public stopRepeating()V
    .locals 3

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SessionProcessorWrapper;->mImpl:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    nop

    .line 144
    return-void

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "cx/SPWrapper"

    const-string v2, "stopRepeating failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    throw v0
.end method
