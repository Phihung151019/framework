.class public final synthetic Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput p2, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->lambda$handleOnError$0(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;ILjava/lang/String;)V

    return-void
.end method
