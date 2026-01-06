.class public Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;
.super Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;
.source "CameraServiceWorkerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestInjectorCallbackProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;

    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCaptureResult$0(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "requestInjectorCallback"    # Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "captureResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;->onCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
    return-object p0
.end method

.method public onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 16
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "cameraId"    # Ljava/lang/String;
    .param p4, "requestId"    # I
    .param p5, "frameNumber"    # J

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 102
    .local v3, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    new-instance v9, Landroid/hardware/camera2/CaptureResult;

    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v11, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 103
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v12

    move-object/from16 v10, p3

    move/from16 v13, p4

    move-wide/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    .line 108
    .local v9, "captureResult":Landroid/hardware/camera2/CaptureResult;
    iget-object v0, v1, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->-$$Nest$fgetmCallbackLock(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 109
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->-$$Nest$fgetmRequestInjectorCallbackExecutor(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    move-object v5, v0

    .line 110
    .local v5, "requestInjectorCallbackExecutor":Ljava/util/concurrent/Executor;
    iget-object v0, v1, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;->this$0:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->-$$Nest$fgetmRequestInjectorCallback(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

    move-result-object v0

    move-object v6, v0

    .line 111
    .local v6, "requestInjectorCallback":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 115
    :try_start_1
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy$$ExternalSyntheticLambda0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, p2

    :try_start_2
    invoke-direct {v0, v6, v7, v9}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v4, "CameraServiceWorkerCompat_V2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCaptureResult : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v7, p2

    .line 119
    :goto_1
    nop

    .line 120
    :goto_2
    return-void

    .line 111
    .end local v5    # "requestInjectorCallbackExecutor":Ljava/util/concurrent/Executor;
    .end local v6    # "requestInjectorCallback":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    :catchall_0
    move-exception v0

    move-object/from16 v7, p2

    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
