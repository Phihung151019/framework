.class Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;
.super Ljava/lang/Object;
.source "ProcessRestrictionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/ProcessRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlowdownRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 267
    const-string v0, "Thread is dead..."

    :try_start_0
    sget-boolean v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FROZEN_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", THAWED_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 273
    sget v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 282
    .local v1, "delay":I
    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 283
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 284
    sget v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    .line 293
    .end local v1    # "delay":I
    .local v2, "delay":I
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .end local v2    # "delay":I
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :goto_1
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    throw v1
.end method
