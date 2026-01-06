.class public final synthetic Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic f$3:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$3:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda5;->f$3:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->$r8$lambda$NN_aKn9XlkeVp3tmp5NaZKBHb40(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
