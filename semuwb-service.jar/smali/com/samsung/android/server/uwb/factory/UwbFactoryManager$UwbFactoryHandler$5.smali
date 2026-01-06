.class Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;
.super Ljava/lang/Object;
.source "UwbFactoryManager.java"

# interfaces
.implements Landroid/uwb/RangingSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomSetRangingCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2557
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 2606
    return-void
.end method

.method public onOpenFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2571
    return-void
.end method

.method public onOpened(Landroid/uwb/RangingSession;)V
    .locals 2
    .param p1, "session"    # Landroid/uwb/RangingSession;

    .line 2560
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2562
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fputmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Landroid/uwb/RangingSession;)V

    .line 2563
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2564
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2566
    :cond_0
    :goto_0
    return-void
.end method

.method public onReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2591
    return-void
.end method

.method public onReconfigured(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 2586
    return-void
.end method

.method public onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 16
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 2610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmMaxRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2611
    return-void

    .line 2612
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmMaxRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v2

    const-string v3, "UwbFactoryManager"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v2, :cond_7

    .line 2613
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Landroid/uwb/RangingSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/uwb/RangingSession;->stop()V

    .line 2615
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmIsReportResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2616
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v2

    mul-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 2617
    .local v1, "validCnt":I
    if-gtz v1, :cond_1

    .line 2618
    const-string v2, "MSG_TEST_RANGING_START (No.1): number of Data is less than FilterCount x2"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v2, v2, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    const-string v3, "NG"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2620
    return-void

    .line 2623
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 2624
    const/4 v2, 0x0

    .local v2, "cnt":I
    :goto_0
    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 2625
    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2626
    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2629
    .end local v2    # "cnt":I
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 2630
    const/4 v2, 0x0

    .restart local v2    # "cnt":I
    :goto_1
    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2631
    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2632
    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2630
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2635
    .end local v2    # "cnt":I
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 2636
    const/4 v2, 0x0

    .restart local v2    # "cnt":I
    :goto_2
    iget-object v6, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 2637
    iget-object v6, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2638
    iget-object v6, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2636
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2641
    .end local v2    # "cnt":I
    :cond_4
    const/4 v2, 0x0

    .line 2642
    .local v2, "sumOfDistance":F
    const/4 v6, 0x0

    .line 2643
    .local v6, "sumOfRssi":I
    const/4 v7, 0x0

    .line 2645
    .local v7, "sumOfSnr":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v9, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 2646
    iget-object v9, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v2, v9

    .line 2647
    iget-object v9, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v6, v9

    .line 2648
    iget-object v9, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v7, v9

    .line 2645
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2651
    .end local v8    # "i":I
    :cond_5
    int-to-float v8, v1

    div-float v8, v2, v8

    invoke-static {v8, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v8

    .line 2652
    .local v8, "distanceAverage":F
    int-to-float v9, v6

    int-to-float v10, v1

    div-float/2addr v9, v10

    invoke-static {v9, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v9

    .line 2653
    .local v9, "rssiAverage":F
    int-to-float v10, v7

    int-to-float v11, v1

    div-float/2addr v10, v11

    invoke-static {v10, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v10

    .line 2655
    .local v10, "snrAverage":F
    iget-object v11, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v11, v11, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v11}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v13, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingErrorCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v13, v14, v15, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v13, "%d, %.2f, %.2f, %.2f"

    invoke-static {v12, v13, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2656
    .end local v1    # "validCnt":I
    .end local v2    # "sumOfDistance":F
    .end local v6    # "sumOfRssi":I
    .end local v7    # "sumOfSnr":I
    .end local v8    # "distanceAverage":F
    .end local v9    # "rssiAverage":F
    .end local v10    # "snrAverage":F
    goto :goto_4

    .line 2657
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v1, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2660
    :cond_7
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fputmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;I)V

    .line 2662
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/RangingMeasurement;

    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v1

    if-nez v1, :cond_b

    .line 2663
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->getRawNtfData()[B

    move-result-object v1

    .line 2664
    .local v1, "rawNtf":[B
    new-instance v2, Lcom/samsung/uwb/support/data/ranging/RangingData;

    invoke-direct {v2, v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;-><init>([B)V

    .line 2666
    .local v2, "rangingData":Lcom/samsung/uwb/support/data/ranging/RangingData;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v4

    aget-object v4, v4, v5

    instance-of v4, v4, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    if-eqz v4, :cond_a

    .line 2667
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/uwb/RangingMeasurement;

    invoke-virtual {v4}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object v4

    invoke-virtual {v4}, Landroid/uwb/DistanceMeasurement;->getMeters()D

    move-result-wide v6

    double-to-float v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    const/4 v6, 0x2

    invoke-static {v4, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v4

    .line 2668
    .local v4, "distance":F
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/uwb/RangingMeasurement;

    invoke-virtual {v6}, Landroid/uwb/RangingMeasurement;->getRssiDbm()I

    move-result v6

    .line 2669
    .local v6, "rssi":I
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v7

    aget-object v7, v7, v5

    check-cast v7, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v7

    .line 2670
    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getSnrFirst()[I

    move-result-object v7

    .line 2671
    .local v7, "snrFirst":[I
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v8

    aget-object v5, v8, v5

    check-cast v5, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v5

    .line 2672
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getFirstIndex()[F

    move-result-object v5

    .line 2674
    .local v5, "firstIndex":[F
    const/4 v8, 0x0

    .line 2675
    .local v8, "idx":I
    aget v9, v5, v8

    .line 2676
    .local v9, "fIdx":F
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_5
    array-length v11, v5

    if-ge v10, v11, :cond_9

    .line 2677
    aget v11, v5, v10

    cmpl-float v11, v9, v11

    if-lez v11, :cond_8

    .line 2678
    move v8, v10

    .line 2679
    aget v9, v5, v10

    .line 2676
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2683
    .end local v10    # "i":I
    :cond_9
    iget-object v10, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    iget-object v10, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2685
    iget-object v10, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v10

    aget v11, v7, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2687
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_TEST_RANGING_START (No.1): onRangingDataReceived[Distance="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SNR First="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v7, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    .end local v1    # "rawNtf":[B
    .end local v2    # "rangingData":Lcom/samsung/uwb/support/data/ranging/RangingData;
    .end local v4    # "distance":F
    .end local v5    # "firstIndex":[F
    .end local v6    # "rssi":I
    .end local v7    # "snrFirst":[I
    .end local v8    # "idx":I
    .end local v9    # "fIdx":F
    :cond_a
    goto :goto_6

    .line 2690
    :cond_b
    iget-object v1, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingErrorCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fputmRangingErrorCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;I)V

    .line 2692
    :goto_6
    return-void
.end method

.method public onStartFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2581
    return-void
.end method

.method public onStarted(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "sessionInfo"    # Landroid/os/PersistableBundle;

    .line 2576
    return-void
.end method

.method public onStopFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2601
    return-void
.end method

.method public onStopped(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 2596
    return-void
.end method
