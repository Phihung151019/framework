.class public final synthetic Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/TotalCaptureResult;

    check-cast p1, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;

    invoke-static {v0, p1}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->lambda$onCaptureCompleted$2(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;)V

    return-void
.end method
