.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 810
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetLocRequestSource(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$munregisterGpsListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$munregisterWpsListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetLocRequestSource(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->removeCurrentLoc()V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetmBrReceiver(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    iget-object v0, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetmBrReceiver(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fputLocRequestSource(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)V

    .line 830
    return-void
.end method
