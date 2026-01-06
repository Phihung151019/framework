.class Lcom/android/server/ssrm/PalmInputEventChecker$1;
.super Ljava/lang/Object;
.source "PalmInputEventChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PalmInputEventChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PalmInputEventChecker;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/PalmInputEventChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-boolean v0, v0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    xor-int/lit8 v0, v0, 0x1

    .line 101
    .local v0, "isPalmTouched":Z
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-boolean v1, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    if-eq v1, v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iput-boolean v0, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    .line 103
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-boolean v2, v2, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/PalmInputEventChecker;->sendPalmInfo(Z)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    .line 110
    return-void
.end method
