.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;
.super Ljava/lang/Object;
.source "CaPowerManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 534
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5
    .param p1, "displayID"    # I

    .line 503
    if-eqz p1, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmDM(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 507
    .local v0, "dp":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 508
    return-void

    .line 510
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 512
    .local v1, "dpState":I
    const/4 v2, 0x2

    const-string v3, "sendMessage failed"

    if-ne v1, v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v2

    const/16 v4, 0x1007

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 515
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v2

    const/16 v4, 0x1008

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 521
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 526
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v2

    const/16 v4, 0x100b

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 527
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 530
    :cond_5
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 499
    return-void
.end method
