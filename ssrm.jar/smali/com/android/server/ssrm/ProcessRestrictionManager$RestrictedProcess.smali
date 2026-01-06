.class Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
.super Ljava/lang/Object;
.source "ProcessRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/ProcessRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestrictedProcess"
.end annotation


# static fields
.field private static final RESTRICTION_STATE_FREEZE:I = 0x2

.field private static final RESTRICTION_STATE_SLOWDOWN:I = 0x1

.field private static final RESTRICTION_STATE_THAW:I


# instance fields
.field mIsFreezeTarget:Z

.field mIsSlowdownTarget:Z

.field private mLastState:I

.field mLastStateUpdatedTime:J

.field private mLastStringState:Ljava/lang/String;

.field mPid:I

.field mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I
    .locals 0

    iget p0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    return p0
.end method

.method constructor <init>(IIZZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "freeze"    # Z
    .param p4, "slowdown"    # Z

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    .line 307
    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mUid:I

    .line 315
    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    .line 321
    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStateUpdatedTime:J

    .line 326
    iput p1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    .line 327
    iput p2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mUid:I

    .line 328
    iput-boolean p3, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    .line 329
    iput-boolean p4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 331
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictedProcess [NEW] pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFreeze = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSlowdown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method isNotTargetPid()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSlowdownState()Z
    .locals 2

    .line 434
    iget v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isSystemUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 438
    const/16 v0, 0x1388

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x176f

    if-gt p1, v0, :cond_0

    .line 439
    return v1

    .line 442
    :cond_0
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_1

    .line 443
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_1
    return v1
.end method

.method proceedRestriction()I
    .locals 9

    .line 358
    const/4 v0, -0x1

    .local v0, "currentState":I
    const/4 v1, 0x1

    .line 360
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    if-eqz v2, :cond_0

    .line 361
    const/4 v0, 0x2

    goto :goto_0

    .line 362
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    if-eqz v2, :cond_1

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    .line 368
    :goto_0
    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    if-eq v0, v2, :cond_a

    .line 369
    sget-boolean v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v2, :cond_2

    .line 370
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proceedRestriction[pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_2
    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mUid:I

    .line 375
    .local v2, "uid":I
    if-gez v2, :cond_3

    .line 376
    sget-object v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proceedRestriction p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ERROR: UID<0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v3, -0x1

    return v3

    .line 379
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isSystemUid(I)Z

    move-result v3

    .line 380
    .local v3, "isSystemUid":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 381
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slowdown UID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (system)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v5, v2, v4}, Landroid/os/Process;->setProcessSlowdown(IIZ)Z

    .line 383
    const/4 v1, -0x1

    .line 386
    :cond_4
    const-string v5, ""

    .line 387
    .local v5, "state":Ljava/lang/String;
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v6, :cond_5

    .line 388
    iget v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v8, v2, v4}, Landroid/os/Process;->setProcessSlowdown(IIZ)Z

    .line 389
    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v4, v2, v7}, Lcom/android/server/ssrm/ProcessRestrictionManager;->-$$Nest$smfreezeProcessForMars(IIZ)I

    move-result v1

    .line 390
    const-string v4, "FROZEN"

    .end local v5    # "state":Ljava/lang/String;
    .local v4, "state":Ljava/lang/String;
    goto :goto_1

    .line 391
    .end local v4    # "state":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :cond_5
    if-ne v0, v7, :cond_6

    .line 392
    iget v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v8, v2, v4}, Lcom/android/server/ssrm/ProcessRestrictionManager;->-$$Nest$smfreezeProcessForMars(IIZ)I

    move-result v1

    .line 393
    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v4, v2, v7}, Landroid/os/Process;->setProcessSlowdown(IIZ)Z

    .line 394
    const-string v4, "SLOWDOWN"

    .end local v5    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    goto :goto_1

    .line 396
    .end local v4    # "state":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :cond_6
    iget v7, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v7, v2, v4}, Landroid/os/Process;->setProcessSlowdown(IIZ)Z

    .line 397
    iget v7, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v7, v2, v4}, Lcom/android/server/ssrm/ProcessRestrictionManager;->-$$Nest$smfreezeProcessForMars(IIZ)I

    move-result v1

    .line 398
    const-string v4, "THAWED"

    .line 401
    .end local v5    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    :goto_1
    sget-boolean v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v5, :cond_7

    .line 402
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@SLOWDOWN:: isSystem = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_7
    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    const-string v7, " -> "

    if-eqz v5, :cond_8

    .line 407
    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    goto :goto_2

    .line 409
    :cond_8
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getInstance()Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getUsingCgroupVersion()I

    move-result v5

    if-eq v5, v6, :cond_9

    .line 410
    const/4 v1, -0x1

    .line 411
    :cond_9
    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but PID is 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    .line 412
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proceedRestriction: pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStateUpdatedTime:J

    .line 415
    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    .line 416
    iput-object v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    .line 419
    .end local v2    # "uid":I
    .end local v3    # "isSystemUid":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_a
    return v1
.end method

.method releaseSlowdown()V
    .locals 2

    .line 423
    iget v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 425
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->proceedRestriction()I

    .line 427
    :cond_0
    return-void
.end method

.method updateState(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isEnabled"    # Z

    .line 338
    const-string v0, "freeze"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "RestrictedProcess [UPDATE] : pid = "

    if-eqz v0, :cond_1

    .line 339
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    if-eq v0, p2, :cond_3

    .line 340
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFreeze = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    goto :goto_0

    .line 346
    :cond_1
    const-string v0, "slowdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    if-eq v0, p2, :cond_3

    .line 348
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_2

    .line 349
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSlowdown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_2
    iput-boolean p2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 355
    :cond_3
    :goto_0
    return-void
.end method
