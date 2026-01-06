.class public Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageAvailableListener"
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

    .line 1571
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.ImageAvailableListener;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 1574
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.ImageAvailableListener;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1576
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v1, v2, :cond_2

    .line 1577
    if-nez p1, :cond_0

    .line 1578
    monitor-exit v0

    return-void

    .line 1580
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    .line 1581
    .local v1, "image":Landroid/media/Image;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1582
    :cond_1
    monitor-exit v0

    return-void

    .line 1584
    .end local v1    # "image":Landroid/media/Image;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isProcessingRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1585
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleBurstImages(Landroid/media/ImageReader;)V

    .line 1586
    monitor-exit v0

    return-void

    .line 1588
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1589
    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_4

    .line 1592
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleSingleYuvImage()V

    .line 1594
    :cond_4
    monitor-exit v0

    .line 1595
    return-void

    .line 1594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
