.class public Lcom/samsung/android/sep/camera/callback/PreviewCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PreviewCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewCallback"


# instance fields
.field private final mAppHandler:Landroid/os/Handler;

.field private final mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final mCameraConfigCbManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;",
            "Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;


# direct methods
.method public static synthetic $r8$lambda$0TyxcpTSPqPokKkWiFrcLSTZnrA(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureSequenceCompleted$4(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1kmmmXL6tbrgCFWaZlp0XiL_73I(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureFailed$3(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4j9_MeHrhmql2Ft13qsQnDrOOMo(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureBufferLost$6(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$MvJuMNzXITcKUkikOuNqacqjeaE(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureSequenceAborted$5(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NN_aKn9XlkeVp3tmp5NaZKBHb40(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureProgressed$1(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsqrCSAhw6Ey_hReveBZCWbO-t8(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureStarted$0(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/HashMap;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lcom/samsung/android/sep/camera/data/CaptureData;)V
    .locals 0
    .param p1, "appHandler"    # Landroid/os/Handler;
    .param p3, "appPreviewCaptureCallback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;",
            "Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Lcom/samsung/android/sep/camera/data/CaptureData;",
            ")V"
        }
    .end annotation

    .line 37
    .local p2, "cameraConfigCbManagers":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCameraConfigCbManagers:Ljava/util/HashMap;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 42
    return-void
.end method

.method private synthetic lambda$onCaptureBufferLost$6(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .local v2, "session":Landroid/hardware/camera2/CameraCaptureSession;
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v4, "target":Landroid/view/Surface;
    .local v5, "frameNumber":J
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    goto :goto_0

    .line 202
    .end local v2    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "target":Landroid/view/Surface;
    .end local v5    # "frameNumber":J
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "target":Landroid/view/Surface;
    .restart local p4    # "frameNumber":J
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 206
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .restart local v2    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v4    # "target":Landroid/view/Surface;
    .restart local v5    # "frameNumber":J
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCaptureCompleted$2(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;)V
    .locals 0
    .param p0, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p1, "configCbs"    # Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;

    .line 108
    invoke-virtual {p1, p0}, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->updateCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic lambda$onCaptureFailed$3(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 135
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCaptureProgressed$1(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 89
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCaptureSequenceAborted$5(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 179
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCaptureSequenceCompleted$4(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 158
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCaptureStarted$0(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "timestamp":J
    .end local p5    # "frameNumber":J
    .local v2, "session":Landroid/hardware/camera2/CameraCaptureSession;
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v4, "timestamp":J
    .local v6, "frameNumber":J
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    goto :goto_0

    .line 62
    .end local v2    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "timestamp":J
    .end local v6    # "frameNumber":J
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "timestamp":J
    .restart local p5    # "frameNumber":J
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 66
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "timestamp":J
    .end local p5    # "frameNumber":J
    .restart local v2    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v4    # "timestamp":J
    .restart local v6    # "frameNumber":J
    :goto_0
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 198
    const-string v0, "PreviewCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureBufferLost: frames number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .local v4, "session":Landroid/hardware/camera2/CameraCaptureSession;
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v6, "target":Landroid/view/Surface;
    .local v7, "frameNumber":J
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    .end local v4    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "target":Landroid/view/Surface;
    .end local v7    # "frameNumber":J
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "target":Landroid/view/Surface;
    .restart local p4    # "frameNumber":J
    :catchall_0
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-object p1, v0

    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "frameNumber":J
    .restart local v4    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "target":Landroid/view/Surface;
    .restart local v7    # "frameNumber":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCameraConfigCbManagers:Ljava/util/HashMap;

    .line 107
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 108
    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppPreviewCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 113
    :cond_0
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 128
    const-string v0, "PreviewCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed: failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 171
    const-string v0, "PreviewCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceAborted: sequence id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 151
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "sequenceId":I
    .end local p3    # "frameNumber":J
    .local v4, "session":Landroid/hardware/camera2/CameraCaptureSession;
    .local v5, "sequenceId":I
    .local v6, "frameNumber":J
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    .end local v4    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local v5    # "sequenceId":I
    .end local v6    # "frameNumber":J
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "sequenceId":I
    .restart local p3    # "frameNumber":J
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object p1, v0

    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "sequenceId":I
    .end local p3    # "frameNumber":J
    .restart local v4    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local v5    # "sequenceId":I
    .restart local v6    # "frameNumber":J
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 10
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
