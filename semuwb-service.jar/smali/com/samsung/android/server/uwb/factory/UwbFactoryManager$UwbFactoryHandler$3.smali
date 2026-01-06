.class Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;
.super Ljava/lang/Object;
.source "UwbFactoryManager.java"

# interfaces
.implements Landroid/uwb/RangingSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->initRangingSession(I)V
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

    .line 1509
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 1558
    return-void
.end method

.method public onOpenFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1523
    return-void
.end method

.method public onOpened(Landroid/uwb/RangingSession;)V
    .locals 2
    .param p1, "session"    # Landroid/uwb/RangingSession;

    .line 1512
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1514
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fputmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Landroid/uwb/RangingSession;)V

    .line 1515
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1516
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1518
    :cond_0
    :goto_0
    return-void
.end method

.method public onReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1543
    return-void
.end method

.method public onReconfigured(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1538
    return-void
.end method

.method public onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 12
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 1562
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmMaxRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1563
    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmMaxRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v1

    const-string v2, "UwbFactoryManager"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    .line 1565
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Landroid/uwb/RangingSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->stop()V

    .line 1567
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmIsReportResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1568
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v1

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1569
    .local v0, "validCnt":I
    if-gtz v0, :cond_1

    .line 1570
    const-string v1, "MSG_TEST_RANGING_START: number of Data is less than FilterCount x2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v1, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    const-string v2, "NG"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1572
    return-void

    .line 1575
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1577
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1578
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1581
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1582
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1583
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1584
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1582
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1587
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .line 1588
    .local v1, "sumOfPdoa":F
    const/4 v5, 0x0

    .line 1589
    .local v5, "sumOfAoa":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1590
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v1, v7

    .line 1591
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v5, v7

    .line 1589
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1594
    .end local v6    # "i":I
    :cond_4
    int-to-float v6, v0

    div-float v6, v1, v6

    invoke-static {v6, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v6

    .line 1595
    .local v6, "pdoaAverage":F
    int-to-float v7, v0

    div-float v7, v5, v7

    invoke-static {v7, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v7

    .line 1597
    .local v7, "aoaAverage":F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rangingCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", outlierCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", validCnt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pdoaSum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", aoaSum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / pdoaAvg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", aoaAvg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v8, v8, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%.2f, %.2f"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1604
    .end local v0    # "validCnt":I
    .end local v1    # "sumOfPdoa":F
    .end local v5    # "sumOfAoa":F
    .end local v6    # "pdoaAverage":F
    .end local v7    # "aoaAverage":F
    goto :goto_3

    .line 1605
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v0, v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1608
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fputmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;I)V

    .line 1610
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingMeasurement;

    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v0

    if-nez v0, :cond_8

    .line 1611
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->getRawNtfData()[B

    move-result-object v0

    .line 1612
    .local v0, "rawNtf":[B
    new-instance v1, Lcom/samsung/uwb/support/data/ranging/RangingData;

    invoke-direct {v1, v0}, Lcom/samsung/uwb/support/data/ranging/RangingData;-><init>([B)V

    .line 1614
    .local v1, "rangingData":Lcom/samsung/uwb/support/data/ranging/RangingData;
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v5

    aget-object v5, v5, v4

    instance-of v5, v5, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    if-eqz v5, :cond_7

    .line 1615
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v5

    aget-object v5, v5, v4

    check-cast v5, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v5

    .line 1616
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getPdoa()[F

    move-result-object v5

    aget v5, v5, v4

    .line 1615
    invoke-static {v5, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v5

    .line 1617
    .local v5, "pdoa":F
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v6

    aget-object v6, v6, v4

    check-cast v6, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v6

    .line 1618
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v4, v6, v4

    .line 1617
    invoke-static {v4, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->floor(FI)F

    move-result v3

    .line 1619
    .local v3, "aoa":F
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_TEST_RANGING_START: onRangingDataReceived[PDoA="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", AoA="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    .end local v3    # "aoa":F
    .end local v5    # "pdoa":F
    goto :goto_4

    .line 1623
    :cond_7
    const-string v3, "MSG_TEST_RANGING_START: Not TwoWayMeasurement"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    .end local v0    # "rawNtf":[B
    .end local v1    # "rangingData":Lcom/samsung/uwb/support/data/ranging/RangingData;
    :cond_8
    :goto_4
    return-void
.end method

.method public onStartFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1533
    return-void
.end method

.method public onStarted(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "sessionInfo"    # Landroid/os/PersistableBundle;

    .line 1528
    return-void
.end method

.method public onStopFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1553
    return-void
.end method

.method public onStopped(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 1548
    return-void
.end method
