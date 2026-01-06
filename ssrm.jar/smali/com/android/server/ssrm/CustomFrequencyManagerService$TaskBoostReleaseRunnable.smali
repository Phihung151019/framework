.class Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskBoostReleaseRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1709
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1712
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmTaskBoostManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmIsTaskBoostExist(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1713
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmTopAppManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/fgapps/TopAppManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getThreadForType(I)Ljava/util/Vector;

    move-result-object v0

    .line 1714
    .local v0, "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1715
    .local v2, "tid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Launch anim task_boost release tid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1717
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmTaskBoostManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x402611

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 1719
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1720
    .end local v2    # "tid":I
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1714
    .end local v0    # "animationTids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_1

    .line 1721
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-eqz v0, :cond_2

    .line 1722
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmViBoostFramework(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/util/BoostFramework;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1723
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$TaskBoostReleaseRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmViBoostFramework(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Landroid/util/BoostFramework;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    goto :goto_2

    .line 1721
    :cond_2
    :goto_1
    nop

    .line 1725
    :cond_3
    :goto_2
    return-void
.end method
