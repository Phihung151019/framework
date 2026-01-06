.class public Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SemCameraEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraStateCallback"
.end annotation


# instance fields
.field private mAppDeviceStateHandler:Landroid/os/Handler;

.field private mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSDKCameraStateCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sdkStateCallback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1991
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CameraStateCallback;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 1992
    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    .line 1993
    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 1994
    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 2054
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CameraStateCallback;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onClosed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$3;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2062
    return-void

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 2068
    :cond_1
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 2037
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CameraStateCallback;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$2;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2045
    return-void

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_1

    .line 2049
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 2051
    :cond_1
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 2072
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CameraStateCallback;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$4;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2080
    return-void

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 2086
    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1998
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.CameraStateCallback;"
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onOpened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 2000
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 2001
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-ne v1, v2, :cond_4

    .line 2002
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object p1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2003
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCameraDevice(Landroid/hardware/camera2/CameraDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    if-eqz p1, :cond_1

    .line 2006
    :try_start_1
    const-string v1, "samsungsdk=true;"

    invoke-static {p1, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->setCameraParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2012
    goto :goto_0

    .line 2009
    :catch_0
    move-exception v1

    .line 2010
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_2
    const-string v2, "SemCameraEffectProcessor"

    const-string v3, "onOpened: Exception Occured !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    monitor-exit v0

    return-void

    .line 2014
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 2015
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 2018
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v1, :cond_3

    .line 2019
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mAppDeviceStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2025
    monitor-exit v0

    return-void

    .line 2028
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v1, :cond_4

    .line 2029
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CameraStateCallback;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    .line 2032
    :cond_4
    monitor-exit v0

    .line 2033
    return-void

    .line 2032
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
