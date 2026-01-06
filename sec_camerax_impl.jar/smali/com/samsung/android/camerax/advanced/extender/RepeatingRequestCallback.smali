.class public Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;
.super Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
.source "RepeatingRequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;
    }
.end annotation


# static fields
.field public static final PREVIEW_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFirstFrameArrived:Z

.field private final mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

.field private final mImageProcessor:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;

.field private final mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

.field private final mLatestResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstFrameArrived(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mFirstFrameArrived:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageProcessor(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageProcessor:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageResultMatcher(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestResult(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mLatestResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFirstFrameArrived(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mFirstFrameArrived:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetProcessRunnable(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->getProcessRunnable(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/ImageCallback;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Ljava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "sequenceId"    # I
    .param p2, "extensionMetadata"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .param p3, "sequenceCompleteListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;
    .param p4, "resultListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;
    .param p5, "imageProcessor"    # Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;
    .param p6, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p7, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p8, "imageCallback"    # Lcom/samsung/android/camerax/advanced/extender/ImageCallback;
    .param p9, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .param p10, "executor"    # Ljava/util/concurrent/Executor;

    .line 60
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mFirstFrameArrived:Z

    .line 62
    iput-object p5, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageProcessor:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;

    .line 63
    iput-object p7, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mLatestResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 64
    iput-object p8, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 65
    move-object/from16 v3, p10

    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 67
    new-instance v4, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    const/16 v5, 0xa

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;-><init>(IZ)V

    iput-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    .line 68
    return-void
.end method

.method private getProcessRunnable(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    .locals 1
    .param p1, "imageReference"    # Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 159
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;-><init>(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;Landroid/hardware/camera2/TotalCaptureResult;Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;)V

    return-object v0
.end method


# virtual methods
.method public onCaptureBufferLost(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JI)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "frameNumber"    # J
    .param p4, "outputStreamId"    # I

    .line 144
    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mResultListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mResultListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;->onUpdateLatestPreviewResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 125
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;

    .line 128
    .local v0, "requestProcessorRequest":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->getCaptureStageId()I

    move-result v2

    .line 128
    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;I)V

    .line 130
    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "captureFailure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureFailed()V

    .line 136
    return-void
.end method

.method public onCaptureProgressed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 116
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureSequenceAborted()V

    .line 154
    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 0
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureSequenceCompleted()V

    .line 149
    return-void
.end method

.method public onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V
    .locals 2
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "frameNumber"    # J
    .param p4, "timestamp"    # J

    .line 73
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureStarted(J)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    invoke-virtual {v0, p4, p5, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->registerListener(JLcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mImageResultMatcher:Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;

    invoke-direct {v1, p0, p4, p5}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;-><init>(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;J)V

    invoke-virtual {v0, p4, p5, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->registerImageResultListener(JLcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;)V

    .line 110
    return-void
.end method
