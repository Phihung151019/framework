.class Lcom/samsung/android/camera/filter/SemFilterManager$2$1;
.super Ljava/lang/Object;
.source "SemFilterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/filter/SemFilterManager$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/filter/SemFilterManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/camera/filter/SemFilterManager$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;->this$1:Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;->onFilterChanged(I)V

    .line 197
    :cond_0
    return-void
.end method
