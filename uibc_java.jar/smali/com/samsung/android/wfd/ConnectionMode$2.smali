.class Lcom/samsung/android/wfd/ConnectionMode$2;
.super Ljava/lang/Object;
.source "ConnectionMode.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wfd/ConnectionMode;->registerFoldStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wfd/ConnectionMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/wfd/ConnectionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/wfd/ConnectionMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 1
    .param p1, "isFolded"    # Z

    .line 149
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget-boolean v0, v0, Lcom/samsung/android/wfd/ConnectionMode;->mIsFolded:Z

    if-eq v0, p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iput-boolean p1, v0, Lcom/samsung/android/wfd/ConnectionMode;->mIsFolded:Z

    .line 151
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayValue()V

    .line 153
    :cond_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 158
    return-void
.end method
