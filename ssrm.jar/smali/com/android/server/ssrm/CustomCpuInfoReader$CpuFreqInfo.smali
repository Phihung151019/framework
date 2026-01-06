.class public final Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;
.super Ljava/lang/Object;
.source "CustomCpuInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomCpuInfoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CpuFreqInfo"
.end annotation


# static fields
.field public static final MISSING_FREQUENCY:J


# instance fields
.field public final avgTimeInStateCpuFreqKHz:J

.field public final cpuCore:I

.field public final curCpuFreqKHz:J

.field public final deltaTimeInState:Landroid/util/LongSparseLongArray;

.field public final maxCpuFreqKHz:J

.field public final totalTimeInState:J


# direct methods
.method constructor <init>(IJJJJLandroid/util/LongSparseLongArray;)V
    .locals 0
    .param p1, "cpuCore"    # I
    .param p2, "curCpuFreqKHz"    # J
    .param p4, "maxCpuFreqKHz"    # J
    .param p6, "avgTimeInStateCpuFreqKHz"    # J
    .param p8, "totalTimeInState"    # J
    .param p10, "deltaTimeInState"    # Landroid/util/LongSparseLongArray;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput p1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    .line 493
    iput-wide p2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->curCpuFreqKHz:J

    .line 494
    iput-wide p4, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->maxCpuFreqKHz:J

    .line 495
    iput-wide p6, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    .line 496
    iput-wide p8, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    .line 497
    iput-object p10, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    .line 498
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 592
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 593
    return v0

    .line 595
    :cond_0
    instance-of v1, p1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 596
    return v2

    .line 598
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;

    .line 599
    .local v1, "other":Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;
    iget v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    iget v4, v1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->curCpuFreqKHz:J

    iget-wide v5, v1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->curCpuFreqKHz:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->maxCpuFreqKHz:J

    iget-wide v5, v1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->maxCpuFreqKHz:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    iget-wide v5, v1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    iget-wide v5, v1, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 608
    iget v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->curCpuFreqKHz:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->maxCpuFreqKHz:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    .line 609
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 608
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 13

    .line 518
    iget-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 519
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 520
    const-string v1, "{}"

    return-object v1

    .line 523
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    .local v1, "buffer":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 528
    iget-object v7, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    invoke-virtual {v7, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v7

    .line 529
    .local v7, "key":J
    iget-object v9, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v9

    .line 531
    .local v9, "value":J
    const-wide/16 v11, 0x64

    cmp-long v11, v9, v11

    if-gez v11, :cond_1

    .line 532
    goto :goto_1

    .line 534
    :cond_1
    if-lez v4, :cond_2

    .line 535
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_2
    div-long v11, v7, v5

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 539
    const/16 v11, 0x3d

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v4, v4, 0x1

    .line 527
    .end local v7    # "key":J
    .end local v9    # "value":J
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "i":I
    .end local v4    # "j":I
    :cond_3
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toSimpleString2()Ljava/lang/String;
    .locals 18

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v1

    .line 549
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 550
    const-string v2, "{}"

    return-object v2

    .line 553
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    .local v2, "buffer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 559
    iget-object v8, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v8

    .line 560
    .local v8, "key":J
    iget-object v10, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v10

    .line 562
    .local v10, "value":J
    if-lez v3, :cond_1

    .line 563
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_1
    const-wide/16 v12, 0x64

    cmp-long v14, v10, v12

    if-gez v14, :cond_2

    .line 567
    goto :goto_2

    .line 570
    :cond_2
    iget-wide v14, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    .line 571
    const-wide/16 v12, 0x0

    .local v12, "usage":J
    goto :goto_1

    .line 573
    .end local v12    # "usage":J
    :cond_3
    mul-long/2addr v12, v10

    iget-wide v14, v0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    div-long/2addr v12, v14

    .line 575
    .restart local v12    # "usage":J
    :goto_1
    cmp-long v14, v12, v16

    if-gtz v14, :cond_4

    .line 576
    goto :goto_2

    .line 578
    :cond_4
    div-long v14, v8, v6

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 579
    const/16 v14, 0x3d

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 582
    add-int/lit8 v5, v5, 0x1

    .line 558
    .end local v8    # "key":J
    .end local v10    # "value":J
    .end local v12    # "usage":J
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_5
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuFreqInfo { cpuCore = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->cpuCore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string v1, ", curCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->curCpuFreqKHz:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "missing"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->curCpuFreqKHz:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    const-string v1, ", maxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->maxCpuFreqKHz:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->maxCpuFreqKHz:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    goto :goto_2

    .line 509
    :cond_2
    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->avgTimeInStateCpuFreqKHz:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 508
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    const-string v1, ", totalTimeInState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->totalTimeInState:J

    .line 511
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    const-string v1, ", deltaTimeInState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->deltaTimeInState:Landroid/util/LongSparseLongArray;

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    return-object v0
.end method
