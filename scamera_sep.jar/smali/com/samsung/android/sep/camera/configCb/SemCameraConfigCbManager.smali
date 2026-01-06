.class public abstract Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;
.super Ljava/lang/Object;
.source "SemCameraConfigCbManager.java"


# instance fields
.field protected isCallbackSent:Z

.field protected isEnabled:Z

.field protected mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field protected mProcessorCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->mProcessorCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 25
    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->isEnabled:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->isCallbackSent:Z

    .line 35
    return-void
.end method

.method protected abstract checkIfCallbackNeeded()V
.end method

.method public updateCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "previewCaptureResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;->checkIfCallbackNeeded()V

    .line 45
    return-void
.end method
