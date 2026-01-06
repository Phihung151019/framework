.class public Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
.super Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
.source "BurstRequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCaptureFailed:Z

.field protected mCaptureProcessStared:Z

.field private final mCaptureStageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCaptureStared:Z

.field private mCaptureStartTimestamp:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

.field private final mImageProcessor:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;

.field private final mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

.field protected mLastProgress:I

.field private final mLatestResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private final mMaxCaptureStage:I

.field private final mProgressiveProcessing:Z

.field protected mSequenceCompleted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStageMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureStartTimestamp(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStartTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageProcessor(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageProcessor:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestResult(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mLatestResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxCaptureStage(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mMaxCaptureStage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressiveProcessing(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mProgressiveProcessing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetProcessRunnable(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Ljava/util/Map;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->getProcessRunnable(Ljava/util/Map;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/ImageCallback;ILandroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)V
    .locals 9
    .param p1, "sequenceId"    # I
    .param p2, "extensionMetadata"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .param p3, "sequenceCompleteListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;
    .param p4, "imageProcessor"    # Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;
    .param p5, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p6, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p7, "imageCallback"    # Lcom/samsung/android/camerax/advanced/extender/ImageCallback;
    .param p8, "maxCaptureStage"    # I
    .param p9, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .param p10, "executor"    # Ljava/util/concurrent/Executor;
    .param p11, "progressive"    # Z

    .line 72
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStageMap:Ljava/util/Map;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStared:Z

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureProcessStared:Z

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureFailed:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceCompleted:Z

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mLastProgress:I

    .line 74
    iput-object p4, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageProcessor:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;

    .line 75
    iput-object p6, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mLatestResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 76
    move-object/from16 v2, p7

    iput-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 77
    move/from16 v3, p8

    iput v3, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mMaxCaptureStage:I

    .line 78
    move-object/from16 v4, p10

    iput-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 79
    move/from16 v5, p11

    iput-boolean v5, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mProgressiveProcessing:Z

    .line 81
    new-instance v6, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    const v7, 0x7fffffff

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;-><init>(IZ)V

    iput-object v6, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    .line 82
    return-void
.end method

.method private getProcessRunnable(Ljava/util/Map;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;)",
            "Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;"
        }
    .end annotation

    .line 274
    .local p1, "captureStageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;-><init>(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Ljava/util/Map;)V

    return-object v0
.end method

.method private isCaptureFailed()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureFailed:Z

    monitor-exit v0

    return v1

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public notifyCaptureFailed()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureFailed:Z

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureFailed:Z

    .line 120
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureFailed(I)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->clear()V

    .line 123
    :cond_0
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureProcessProgressed(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mLastProgress:I

    if-ge v1, p1, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 99
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mLastProgress:I

    .line 100
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v1, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureProcessProgressed(I)V

    .line 102
    :cond_0
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureProcessStarted()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureProcessStared:Z

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureProcessStared:Z

    .line 110
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureProcessStarted(I)V

    .line 112
    :cond_0
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureSequenceAborted()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceCompleted:Z

    if-nez v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceCompleted:Z

    .line 142
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;->onCaptureSequenceCompleted(I)V

    .line 145
    :cond_0
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureSequenceCompleted()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceCompleted:Z

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceCompleted:Z

    .line 131
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureSequenceCompleted(I)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;->onCaptureSequenceCompleted(I)V

    .line 134
    :cond_0
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureStarted(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .line 86
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStared:Z

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStared:Z

    .line 89
    iput-wide p1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureStartTimestamp:J

    .line 90
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mSequenceId:I

    invoke-interface {v1, v2, p1, p2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureStarted(IJ)V

    .line 92
    :cond_0
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureBufferLost(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JI)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "frameNumber"    # J
    .param p4, "outputStreamId"    # I

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureFailed()V

    .line 249
    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->isCaptureFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->TAG:Ljava/lang/String;

    const-string v1, "capture failed, ignore result callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;

    .line 235
    .local v0, "requestProcessorRequest":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    .line 236
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->getCaptureStageId()I

    move-result v2

    .line 235
    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;I)V

    .line 237
    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "captureFailure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureFailed()V

    .line 243
    return-void
.end method

.method public onCaptureProgressed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 222
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceAborted()V

    .line 263
    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 1
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->isCaptureFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceCompleted()V

    .line 258
    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V
    .locals 2
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "frameNumber"    # J
    .param p4, "timestamp"    # J

    .line 151
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureStarted(J)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->isCaptureFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->TAG:Ljava/lang/String;

    const-string v1, "capture failed, skip image registration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V

    invoke-virtual {v0, p4, p5, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->registerListener(JLcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;)V

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    invoke-virtual {v0, p4, p5, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->registerListener(JLcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;-><init>(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V

    invoke-virtual {v0, p4, p5, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->registerImageResultListener(JLcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;)V

    .line 216
    return-void
.end method
