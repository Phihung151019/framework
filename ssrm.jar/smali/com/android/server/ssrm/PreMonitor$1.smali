.class Lcom/android/server/ssrm/PreMonitor$1;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->improveOverheatingInFota()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 356
    nop

    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPreMonitoringRunnable:: mIsPreMonitoringEnabled is false!"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateApTemperature()V

    .line 362
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateSkinTemperature()V

    .line 363
    const/4 v0, -0x1

    .line 364
    .local v0, "cpuMaxLimit":I
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    if-lt v1, v2, :cond_1

    .line 365
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    move v0, v1

    goto :goto_1

    .line 366
    :cond_1
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    if-lt v1, v2, :cond_2

    .line 367
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    move v0, v1

    goto :goto_1

    .line 368
    :cond_2
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    if-lt v1, v2, :cond_3

    .line 369
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    move v0, v1

    .line 372
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    if-eqz v1, :cond_5

    .line 373
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    if-lt v1, v2, :cond_4

    .line 374
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    move v0, v1

    goto :goto_2

    .line 375
    :cond_4
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    if-lt v1, v2, :cond_5

    .line 376
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    move v0, v1

    .line 380
    :cond_5
    :goto_2
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_6

    .line 381
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v2, "PREMONITORING_ARM_MAX"

    const/16 v3, 0xd

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 384
    :cond_6
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_7

    sget v1, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    if-eq v1, v0, :cond_7

    .line 385
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreMonitoringRunnable:: cpuMaxLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 388
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 390
    :cond_7
    sput v0, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    .line 392
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 393
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_8

    .line 394
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v2, "PREMONITOR_LITTLE_ARM_MAX"

    const v3, 0x11001002

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 398
    :cond_8
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_a

    .line 399
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    if-lt v1, v2, :cond_9

    .line 400
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget v2, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 401
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 402
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_3

    .line 404
    :cond_9
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 409
    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$smSetPreMonitorLog()V

    .line 411
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cpuMaxLimit":I
    goto :goto_4

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 414
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_4
    goto/16 :goto_0
.end method
