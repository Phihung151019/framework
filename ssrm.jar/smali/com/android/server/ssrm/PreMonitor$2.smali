.class Lcom/android/server/ssrm/PreMonitor$2;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->bootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 471
    const-string v0, "/sys/class/power_supply/battery/siop_level"

    const/4 v1, 0x0

    :try_start_0
    sget v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 472
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_0

    .line 473
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v3, "SIOP_OVER_LIMIT"

    const v4, 0x60001001

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 476
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_1

    .line 477
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget v3, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 478
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 481
    :cond_1
    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 483
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_2

    .line 484
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 486
    :cond_2
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_3

    .line 487
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 491
    :cond_3
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "siopLevel":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 493
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 496
    :cond_4
    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 497
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_5

    .line 498
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v2    # "siopLevel":Ljava/lang/String;
    :cond_5
    :goto_0
    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 504
    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 505
    :goto_1
    return-void

    .line 503
    :goto_2
    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 504
    throw v0
.end method
