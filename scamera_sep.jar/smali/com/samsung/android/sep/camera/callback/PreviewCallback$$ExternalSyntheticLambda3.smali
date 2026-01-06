.class public final synthetic Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput p3, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sep/camera/callback/PreviewCallback;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget v2, p0, Lcom/samsung/android/sep/camera/callback/PreviewCallback$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sep/camera/callback/PreviewCallback;->$r8$lambda$MvJuMNzXITcKUkikOuNqacqjeaE(Lcom/samsung/android/sep/camera/callback/PreviewCallback;Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method
