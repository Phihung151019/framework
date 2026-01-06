.class Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4;
.super Ljava/lang/Object;
.source "SCameraServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->onDeinitialized(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
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

    .line 147
    iput-object p2, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4;->val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 1
    .param p0, "proc"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onDeinitialized()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4;->val$client:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4$$ExternalSyntheticLambda0;-><init>()V

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 152
    return-void
.end method
