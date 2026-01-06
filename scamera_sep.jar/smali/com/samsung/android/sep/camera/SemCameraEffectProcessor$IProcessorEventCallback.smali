.class public Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;
.super Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;
.source "SemCameraEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IProcessorEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1605
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCameraConfigUpdated$3(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;ZLcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p0, "parameter"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .param p1, "isActive"    # Z
    .param p2, "ssecb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 1922
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V

    return-void
.end method

.method static synthetic lambda$onDeinitialized$2(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p0, "ssecb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 1886
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onDeinitialized()V

    return-void
.end method

.method static synthetic lambda$onError$0(ILjava/lang/String;Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p0, "error"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ssecb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 1704
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onInitialized$1(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p0, "ssecb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 1825
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onInitialized()V

    return-void
.end method


# virtual methods
.method public onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V
    .locals 3
    .param p1, "parameter"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
    .param p2, "isActive"    # Z

    .line 1919
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraConfigUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V

    .line 1922
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1923
    monitor-exit v0

    .line 1924
    return-void

    .line 1923
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeinitialized()V
    .locals 6

    .line 1832
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeinitialized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1834
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1835
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 1836
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fgetmPreviewLock(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1837
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1838
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1839
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->close()V

    .line 1840
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object v4, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 1842
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1843
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v1, :cond_1

    .line 1844
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->close()V

    .line 1845
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object v4, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 1847
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v1, :cond_2

    .line 1848
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->close()V

    .line 1849
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object v4, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 1851
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1852
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1853
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->closeJpegReader()V

    .line 1855
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1856
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1857
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->closeYuvReader()V

    .line 1859
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fgetmServicePreviewLock(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1860
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    if-eqz v3, :cond_5

    .line 1861
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 1862
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object v4, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 1864
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1865
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getServicePictureLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1866
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureImageWriter:Landroid/media/ImageWriter;

    if-eqz v3, :cond_6

    .line 1867
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 1868
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object v4, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureImageWriter:Landroid/media/ImageWriter;

    .line 1871
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->closeImageWriter()V

    .line 1872
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1874
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getServicePictureLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1875
    :try_start_7
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->clearRawImageWriterMap()V

    .line 1876
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1878
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCurrentRawPicType(I)V

    .line 1880
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 1881
    .local v2, "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->release()V

    .line 1882
    .end local v2    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    goto :goto_0

    .line 1883
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1885
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda0;-><init>()V

    .line 1886
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1887
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object v4, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 1889
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1891
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1, v4}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fputmServiceCb(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;)V

    .line 1892
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$mresetProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    .line 1893
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->release(I)V

    .line 1894
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1895
    return-void

    .line 1876
    :catchall_0
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1872
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1864
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :catchall_2
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1842
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :catchall_3
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :try_start_10
    throw v2

    .line 1894
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v1
.end method

.method public onEngineResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "resultBundle"    # Landroid/os/Bundle;

    .line 1904
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1905
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fgetmSDKEngineCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 1906
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v1, v2, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fgetmSDKEngineCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;->onEngineResult(Landroid/os/Bundle;)V

    .line 1908
    :cond_0
    monitor-exit v0

    .line 1909
    return-void

    .line 1908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onError(ILjava/lang/String;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1650
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISCameraServiceCbIntenal onError: errorCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1652
    const/4 v1, 0x0

    .line 1653
    .local v1, "sendCallback":Z
    const/4 v2, 0x2

    .line 1655
    .local v2, "errorId":I
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1699
    :pswitch_0
    :try_start_0
    const-string v3, "SemCameraEffectProcessor"

    goto/16 :goto_1

    .line 1662
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 1663
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-ne v4, v5, :cond_1

    .line 1664
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v5, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1666
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1667
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 1668
    goto :goto_0

    .line 1670
    :pswitch_2
    const/4 v1, 0x1

    .line 1671
    const/4 v4, 0x1

    .line 1673
    .local v4, "isJpegNeeded":Z
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v5, :cond_3

    .line 1676
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAborted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1677
    const/4 v1, 0x1

    .line 1678
    const/4 v2, 0x3

    .line 1679
    const/4 v4, 0x0

    .line 1681
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V

    .line 1683
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 1688
    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1689
    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureMode()I

    move-result v5

    const/16 v6, 0xf04

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1690
    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1691
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v6, v6, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 1692
    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1691
    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendOnPictureAvailable(Ljava/nio/ByteBuffer;I)V

    .line 1694
    const/4 v1, 0x0

    .line 1696
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v5, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v3, v5}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1697
    goto :goto_0

    .line 1710
    .end local v1    # "sendCallback":Z
    .end local v2    # "errorId":I
    .end local v4    # "isJpegNeeded":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1658
    .restart local v1    # "sendCallback":Z
    .restart local v2    # "errorId":I
    :pswitch_3
    nop

    .line 1703
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    .line 1704
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1706
    if-eqz v1, :cond_5

    .line 1708
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleError(I)V

    .line 1710
    .end local v1    # "sendCallback":Z
    .end local v2    # "errorId":I
    :cond_5
    monitor-exit v0

    .line 1711
    return-void

    .line 1699
    .restart local v1    # "sendCallback":Z
    .restart local v2    # "errorId":I
    :goto_1
    const-string v4, "onError: unknown error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    monitor-exit v0

    return-void

    .line 1710
    .end local v1    # "sendCallback":Z
    .end local v2    # "errorId":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onInitialized()V
    .locals 14

    .line 1716
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitialized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1718
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-boolean v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isPendingDeInit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-boolean v2, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isPendingDeInit:Z

    .line 1720
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$mhandleDeinit(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    .line 1721
    monitor-exit v0

    return-void

    .line 1723
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1724
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 1727
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-ne v1, v3, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v3, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1730
    :cond_1
    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;)V

    .line 1741
    .local v1, "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const-string v4, "SDKV"

    const-string v5, ""

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1748
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v3, v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    invoke-virtual {v3}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->isPreviewReaderRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1750
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 1751
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getServicePreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    .line 1752
    .local v3, "servicePreviewSurface":Landroid/view/Surface;
    if-eqz v3, :cond_2

    .line 1753
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v4}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fgetmServicePreviewLock(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1754
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 1755
    const/4 v6, 0x5

    invoke-static {v3, v6}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 1756
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 1757
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :try_start_3
    throw v5

    .line 1764
    .end local v3    # "servicePreviewSurface":Landroid/view/Surface;
    .restart local v1    # "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 1766
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 1767
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v6, v6, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureSize:Landroid/util/Size;

    .line 1768
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 1765
    const/16 v7, 0x23

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getServicePictureSurface(IIII)Landroid/view/Surface;

    move-result-object v3

    .line 1771
    .local v3, "servicePictureSurface":Landroid/view/Surface;
    const/4 v4, 0x7

    if-eqz v3, :cond_3

    .line 1772
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getServicePictureLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1773
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 1774
    invoke-static {v3, v4}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureImageWriter:Landroid/media/ImageWriter;

    .line 1777
    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v6, v6, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v7, v7, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPictureImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setPictureImageWriter(Landroid/media/ImageWriter;)V

    .line 1778
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 1779
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v1    # "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :try_start_5
    throw v4

    .line 1782
    .restart local v1    # "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1783
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 1786
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v5, v5, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1787
    .local v6, "config":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1788
    .local v7, "type":I
    nop

    .line 1789
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 1791
    .local v8, "outputConfig":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v10, v10, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 1793
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1794
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    .line 1795
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 1796
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getFormat()I

    move-result v13

    .line 1792
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getServicePictureSurface(IIII)Landroid/view/Surface;

    move-result-object v9

    .line 1798
    .local v9, "serviceRawPictureSurface":Landroid/view/Surface;
    if-eqz v9, :cond_4

    .line 1799
    nop

    .line 1800
    invoke-static {v9, v4}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v10

    .line 1803
    .local v10, "writer":Landroid/media/ImageWriter;
    iget-object v11, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v11, v11, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v11, v7, v10}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->putRawImageWriterMap(ILandroid/media/ImageWriter;)V

    .line 1804
    invoke-virtual {v9}, Landroid/view/Surface;->release()V

    .line 1805
    .end local v10    # "writer":Landroid/media/ImageWriter;
    nop

    .line 1811
    .end local v6    # "config":Ljava/util/Map$Entry;
    .end local v7    # "type":I
    .end local v8    # "outputConfig":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .end local v9    # "serviceRawPictureSurface":Landroid/view/Surface;
    goto :goto_2

    .line 1807
    .restart local v6    # "config":Ljava/util/Map$Entry;
    .restart local v7    # "type":I
    .restart local v8    # "outputConfig":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .restart local v9    # "serviceRawPictureSurface":Landroid/view/Surface;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1808
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1809
    nop

    .line 1823
    .end local v3    # "servicePictureSurface":Landroid/view/Surface;
    .end local v6    # "config":Ljava/util/Map$Entry;
    .end local v7    # "type":I
    .end local v8    # "outputConfig":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .end local v9    # "serviceRawPictureSurface":Landroid/view/Surface;
    :cond_5
    goto :goto_3

    .line 1812
    :catch_0
    move-exception v3

    .line 1817
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "SemCameraEffectProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInitialized: Exception while Image Writer creation,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1820
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1817
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1822
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v4, v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 1824
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSDKServiceEventCallBack:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda2;-><init>()V

    .line 1825
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1826
    .end local v1    # "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0

    .line 1827
    return-void

    .line 1826
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public onProcessCompleted([B)V
    .locals 6
    .param p1, "result"    # [B

    .line 1608
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.IProcessorEventCallback;"
    const-string v0, "SemCameraEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISCameraServiceCbIntenal onProcessCompleted byteLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1610
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v1, v2, :cond_0

    .line 1611
    monitor-exit v0

    return-void

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1615
    const/4 v1, 0x1

    .line 1616
    .local v1, "isCbNeeded":Z
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1620
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1621
    const/4 v1, 0x0

    .line 1624
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V

    .line 1626
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    goto :goto_0

    .line 1628
    :cond_2
    const-string v2, "SemCameraEffectProcessor"

    const-string v4, "onProcessCompleted: is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :goto_0
    if-eqz v1, :cond_4

    .line 1632
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 1633
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1634
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isBurstYuvCapture()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1635
    const/4 v3, 0x1

    goto :goto_1

    .line 1636
    :cond_3
    nop

    .line 1632
    :goto_1
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendOnPictureAvailable(Ljava/nio/ByteBuffer;I)V

    goto :goto_2

    .line 1639
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleError(I)V

    .line 1641
    .end local v1    # "isCbNeeded":Z
    :goto_2
    monitor-exit v0

    .line 1642
    return-void

    .line 1641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
