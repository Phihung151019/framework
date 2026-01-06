.class public Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SemCameraEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field private mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .param p2, "stateCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2094
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 2095
    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2096
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 2131
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2132
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2133
    monitor-exit v0

    .line 2134
    return-void

    .line 2133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 2138
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2139
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2140
    monitor-exit v0

    .line 2141
    return-void

    .line 2140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 2145
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2146
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2147
    monitor-exit v0

    .line 2148
    return-void

    .line 2147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 2107
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2108
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2109
    monitor-exit v0

    .line 2110
    return-void

    .line 2109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 2100
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2101
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2102
    monitor-exit v0

    .line 2103
    return-void

    .line 2102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 2114
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    const-string v0, "SemCameraEffectProcessor"

    const-string v1, "onReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2116
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2119
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v1, :cond_0

    .line 2120
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2122
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleError(I)V

    .line 2123
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 2126
    :cond_0
    monitor-exit v0

    .line 2127
    return-void

    .line 2126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 2152
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CaptureSessionCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2153
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;->mAppCaptureSessionStateCb:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    .line 2154
    monitor-exit v0

    .line 2155
    return-void

    .line 2154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
