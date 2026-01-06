.class Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;
.super Ljava/lang/Object;
.source "SCameraServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->onError(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

.field final synthetic val$errorCode:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p2, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;->val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput p3, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;->val$errorCode:I

    iput-object p4, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(ILjava/lang/String;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;->val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;->val$errorCode:I

    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2;->val$message:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$2$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    return-void
.end method
