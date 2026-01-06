.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 668
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 670
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessorEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onDeinitialized()V

    .line 671
    return-void
.end method
