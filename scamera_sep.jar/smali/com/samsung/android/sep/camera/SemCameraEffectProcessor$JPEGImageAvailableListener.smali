.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JPEGImageAvailableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1328
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.JPEGImageAvailableListener;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 1331
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.JPEGImageAvailableListener;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter v0

    .line 1332
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v1, v2, :cond_0

    .line 1333
    monitor-exit v0

    return-void

    .line 1335
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getImage(I)Landroid/media/Image;

    move-result-object v1

    .line 1337
    .local v1, "image":Landroid/media/Image;
    if-nez v1, :cond_1

    .line 1338
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v3, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 1339
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->handleError(I)V

    .line 1340
    monitor-exit v0

    return-void

    .line 1342
    :cond_1
    const-string v2, "SemCameraEffectProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageAvailable Jpeg reader timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->JPEG:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendImage(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;Landroid/media/Image;)V

    .line 1344
    .end local v1    # "image":Landroid/media/Image;
    monitor-exit v0

    .line 1345
    return-void

    .line 1344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
