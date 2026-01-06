.class Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;
.super Landroid/os/Handler;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/ContextAwareManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "arg0"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->val$this$0:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1086
    .local v0, "type":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1087
    .local v1, "context":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-static {v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareListener;->onContextChanged(ILandroid/os/Bundle;)V

    .line 1089
    .end local v0    # "type":I
    .end local v1    # "context":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
