.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;
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
    name = "PreviewImageAvailableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method public static synthetic $r8$lambda$M6W8GJ54TP_as3dxEea5vnW4ktQ(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->lambda$onImageAvailable$0()V

    return-void
.end method

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

    .line 1157
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.PreviewImageAvailableListener;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    return-void
.end method

.method private synthetic lambda$onImageAvailable$0()V
    .locals 4

    .line 1165
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.PreviewImageAvailableListener;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->DEINITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 1166
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->IDLE:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->-$$Nest$fgetmPreviewLock(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 1171
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getImage(I)Landroid/media/Image;

    move-result-object v1

    .line 1173
    .local v1, "previewImage":Landroid/media/Image;
    if-nez v1, :cond_2

    .line 1174
    monitor-exit v0

    return-void

    .line 1176
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->PREVIEW:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->sendImage(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;Landroid/media/Image;)V

    .line 1177
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v2, v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 1178
    .end local v1    # "previewImage":Landroid/media/Image;
    monitor-exit v0

    .line 1179
    return-void

    .line 1178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1167
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 1160
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<TCaptureParameterClazz;TCaptureCallbackClazz;TDynamicShotInfoClazz;TProcessorParameterClazz;>.PreviewImageAvailableListener;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1161
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$PreviewImageAvailableListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    return-void
.end method
