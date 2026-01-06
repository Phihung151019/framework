.class public final synthetic Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-wide p4, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$3:J

    iput-wide p6, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-wide v3, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$3:J

    iget-wide v5, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda6;->f$4:J

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->$r8$lambda$YsqrCSAhw6Ey_hReveBZCWbO-t8(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
