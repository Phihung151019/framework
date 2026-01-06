.class public Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
.super Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;
.source "SCameraServiceCallback.java"


# static fields
.field private static final ERROR_PROCESS_INVALID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SCameraServiceCallback"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final wAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->wAdapterRef:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method

.method private getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .locals 2
    .param p1, "clientId"    # I

    .line 36
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->wAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    .line 37
    .local v0, "adapterImpl":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v1

    return-object v1

    .line 40
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public onDeinitialized(I)V
    .locals 3
    .param p1, "clientId"    # I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeinitialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCameraServiceCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 146
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4;-><init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public onEngineResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "resultBundle"    # Landroid/os/Bundle;

    .line 164
    const-string v0, "SCameraServiceCallback"

    const-string v1, "onEngineResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 166
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$5;-><init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method public onError(IILjava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCameraServiceCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 108
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;-><init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public onInitialized(I)V
    .locals 3
    .param p1, "clientId"    # I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCameraServiceCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 127
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$3;-><init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public onProcessCompleted(ILcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;

    .line 60
    const/4 v0, 0x3

    if-nez p2, :cond_0

    .line 61
    const-string v1, "SCameraServiceCallback"

    const-string v2, "onProcessCompleted: SharedMemoryInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "SharedMemoryInfo is given as null to onProcessCompleted"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->onError(IILjava/lang/String;)V

    .line 66
    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    new-array v1, v1, [B

    .line 71
    .local v1, "bytes":[B
    invoke-virtual {p2}, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SharedMemory;->getSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v3, v2}, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->readBytes([BIII)I

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v2

    .line 74
    .local v2, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    iget-object v3, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$1;-><init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;[B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .end local v1    # "bytes":[B
    .end local v2    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "onProcessCompleted: Memory allocation failed"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->onError(IILjava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "onProcessCompleted: reading shared memory failed"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->onError(IILjava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 95
    :goto_0
    return-void
.end method

.method public setListener(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method
