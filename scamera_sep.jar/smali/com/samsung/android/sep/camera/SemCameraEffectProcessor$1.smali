.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->deinitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 659
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 661
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deinitialize mIsPosted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    iget-boolean v1, v1, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mIsPosted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    iget-boolean v0, v0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mIsPosted:Z

    if-nez v0, :cond_0

    .line 664
    const-string v0, "remove pending messages and deinit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->isPendingDeInit:Z

    .line 667
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 674
    :cond_0
    return-void
.end method
