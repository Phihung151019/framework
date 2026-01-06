.class public final synthetic Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/camera2/CaptureRequest$Builder;

    check-cast p1, Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-static {v0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->lambda$buildCaptureRequest$4(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V

    return-void
.end method
