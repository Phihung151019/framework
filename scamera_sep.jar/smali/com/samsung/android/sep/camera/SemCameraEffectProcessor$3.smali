.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->createSessionConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 816
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;"
    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 819
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method
