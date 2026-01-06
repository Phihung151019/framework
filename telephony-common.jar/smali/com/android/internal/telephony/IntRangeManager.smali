.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$IntRange;,
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    }
.end annotation


# instance fields
.field private blacklist mCBRRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCustomRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mCustomRanges:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist isCBR(Ljava/lang/String;)Z
    .locals 0

    .line 827
    const-string p0, "com.google.android.cellbroadcastreceiver"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.cellbroadcastreceiver"

    .line 828
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist populateAllRanges()V
    .locals 6

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 774
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 775
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract blacklist addRange(IIZ)V
.end method

.method public declared-synchronized blacklist clearRanges()V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 208
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move v3, v0

    .line 212
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 213
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    if-eqz v4, :cond_0

    .line 215
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IntRangeManager;->isCBR(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/android/internal/telephony/IntRangeManager;->mCustomRanges:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v8, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget-object v4, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mCustomRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    const-string v0, "IntRangeManager"

    const-string v1, "[clearRanges] Set custom channels after reset."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mCustomRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mCustomRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist disableRange(IILjava/lang/String;)Z
    .locals 12

    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    if-ne p2, v1, :cond_5

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v2

    .line 543
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 544
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 545
    iget-object v4, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 548
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 549
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-lt v8, p1, :cond_0

    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-gt v8, p2, :cond_0

    iget-object v7, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 552
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_c

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v1, v3

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 559
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 560
    const-string p1, "IntRangeManager"

    const-string p2, "[disableRange] Set CBR channels after disable normal CB."

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_3
    monitor-exit p0

    return v3

    .line 566
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 567
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    monitor-exit p0

    return v2

    :cond_5
    if-ltz p1, :cond_8

    if-gt p2, v1, :cond_8

    .line 573
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IntRangeManager;->isCBR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 575
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 576
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 577
    iget-object v4, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 578
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_7

    .line 580
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 581
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v8, p1, :cond_6

    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v8, p2, :cond_6

    iget-object v7, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 582
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/2addr v1, v3

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_1b

    .line 591
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 592
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge p1, v5, :cond_9

    .line 593
    monitor-exit p0

    return v2

    .line 594
    :cond_9
    :try_start_3
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_1a

    .line 597
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 600
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_c

    .line 602
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 603
    iget v5, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v5, p1, :cond_b

    iget p1, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne p1, p2, :cond_b

    iget-object p1, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 606
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_a

    .line 608
    monitor-exit p0

    return v3

    .line 611
    :cond_a
    :try_start_4
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 612
    monitor-exit p0

    return v2

    .line 615
    :cond_b
    monitor-exit p0

    return v2

    :cond_c
    const/high16 v7, -0x80000000

    move v8, v2

    :goto_7
    if-ge v8, v6, :cond_1a

    .line 630
    :try_start_5
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 631
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v10, p1, :cond_18

    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v10, p2, :cond_18

    iget-object v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    add-int/lit8 p1, v6, -0x1

    if-ne v8, p1, :cond_f

    .line 634
    iget p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne p1, v7, :cond_d

    .line 637
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 638
    monitor-exit p0

    return v3

    .line 641
    :cond_d
    :try_start_6
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 642
    iput v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_e

    .line 644
    monitor-exit p0

    return v3

    .line 646
    :cond_e
    :try_start_7
    invoke-virtual {v5, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 647
    iget p1, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 648
    monitor-exit p0

    return v2

    .line 656
    :cond_f
    :try_start_8
    new-instance p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {p1, p0, v4, v8}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    if-nez v8, :cond_11

    .line 664
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget p3, p3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 665
    iget v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-eq p3, v0, :cond_10

    .line 667
    iput p3, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move p3, v3

    goto :goto_8

    :cond_10
    move p3, v2

    .line 670
    :goto_8
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget v7, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    goto :goto_9

    :cond_11
    move p3, v2

    .line 677
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v8, v3

    :goto_a
    if-ge v8, v6, :cond_15

    .line 681
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 682
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    add-int/lit8 v11, v7, 0x1

    if-le v10, v11, :cond_12

    .line 684
    iput v7, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 685
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {p1, p0, v9}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    move p3, v3

    goto :goto_b

    .line 688
    :cond_12
    iget v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget v11, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ge v10, v11, :cond_13

    .line 689
    iput v11, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 691
    :cond_13
    iget-object v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :goto_b
    iget v9, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v9, v7, :cond_14

    move v7, v9

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_15
    if-ge v7, p2, :cond_16

    .line 701
    iput v7, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move p3, v3

    .line 703
    :cond_16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 707
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-eqz p3, :cond_17

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1

    if-nez p1, :cond_17

    .line 710
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 711
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 712
    monitor-exit p0

    return v2

    .line 715
    :cond_17
    monitor-exit p0

    return v3

    .line 718
    :cond_18
    :try_start_9
    iget v9, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-le v9, v7, :cond_19

    move v7, v9

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 726
    :cond_1b
    monitor-exit p0

    return v2

    :goto_c
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist enableRange(IILjava/lang/String;)Z
    .locals 11

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-ne p2, v1, :cond_4

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 250
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 251
    iget-object v4, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    .line 254
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 255
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v8, p1, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v8, p2, :cond_1

    iget-object v7, v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 257
    monitor-exit p0

    return v3

    .line 259
    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_12

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    monitor-exit p0

    return v3

    :cond_4
    if-ltz p1, :cond_9

    if-gt p2, v1, :cond_9

    .line 268
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IntRangeManager;->isCBR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    move v4, v3

    .line 271
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 273
    iget-object v5, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_6

    .line 276
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 277
    iget v9, v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v9, p1, :cond_5

    iget v9, v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v9, p2, :cond_5

    iget-object v8, v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    .line 287
    const-string v1, "IntRangeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[enableRange] add mCBRRanges. from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". client= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mCBRRanges:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v0, :cond_b

    .line 295
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    monitor-exit p0

    return v3

    .line 299
    :cond_a
    monitor-exit p0

    return v2

    :cond_b
    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_2a

    .line 304
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 305
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-lt p1, v5, :cond_c

    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v6, :cond_c

    .line 310
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    monitor-exit p0

    return v3

    :cond_c
    add-int/lit8 v6, p1, -0x1

    .line 312
    :try_start_4
    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne v6, v7, :cond_11

    add-int/2addr v1, v3

    const/4 v5, 0x0

    if-ge v1, v0, :cond_e

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 319
    iget v1, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    add-int/lit8 v6, v1, -0x1

    if-gt v6, p2, :cond_e

    .line 321
    iget v5, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_d

    sub-int/2addr v1, v3

    :goto_7
    move-object v5, v0

    goto :goto_8

    :cond_d
    move v1, p2

    goto :goto_7

    :cond_e
    move v1, p2

    .line 330
    :goto_8
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 331
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 332
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    if-eqz v5, :cond_f

    .line 336
    iget p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget p2, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ge p1, p2, :cond_f

    .line 338
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 340
    iget-object p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object p2, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    :cond_f
    monitor-exit p0

    return v3

    .line 347
    :cond_10
    monitor-exit p0

    return v2

    :cond_11
    if-ge p1, v5, :cond_1f

    add-int/lit8 v6, p2, 0x1

    if-ge v6, v5, :cond_13

    .line 356
    :try_start_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    monitor-exit p0

    return v3

    .line 360
    :cond_12
    monitor-exit p0

    return v2

    :cond_13
    if-gt p2, v7, :cond_15

    sub-int/2addr v5, v3

    .line 365
    :try_start_6
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 366
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 367
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 368
    monitor-exit p0

    return v3

    .line 370
    :cond_14
    monitor-exit p0

    return v2

    :cond_15
    add-int/2addr v1, v3

    move v5, v1

    :goto_9
    if-ge v5, v0, :cond_1c

    .line 375
    :try_start_7
    iget-object v7, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 376
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v6, v8, :cond_18

    .line 379
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 380
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 381
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 383
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v1

    :goto_a
    if-ge p1, v5, :cond_16

    .line 392
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 393
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 396
    :cond_16
    monitor-exit p0

    return v3

    .line 398
    :cond_17
    monitor-exit p0

    return v2

    .line 400
    :cond_18
    :try_start_8
    iget v9, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v9, :cond_1b

    sub-int/2addr v8, v3

    .line 404
    invoke-virtual {p0, p1, v8, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 405
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 406
    iget v0, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 408
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v1

    :goto_b
    if-gt p1, v5, :cond_19

    .line 416
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 417
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 418
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 420
    :cond_19
    monitor-exit p0

    return v3

    .line 422
    :cond_1a
    monitor-exit p0

    return v2

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 429
    :cond_1c
    :try_start_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 430
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 431
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 433
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v1

    :goto_c
    if-ge p1, v0, :cond_1d

    .line 442
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 443
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 444
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 446
    :cond_1d
    monitor-exit p0

    return v3

    .line 448
    :cond_1e
    monitor-exit p0

    return v2

    :cond_1f
    add-int/lit8 v5, p1, 0x1

    if-gt v5, v7, :cond_29

    if-gt p2, v7, :cond_20

    .line 456
    :try_start_a
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 457
    monitor-exit p0

    return v3

    :cond_20
    add-int/lit8 v5, v1, 0x1

    move v7, v1

    move v6, v5

    :goto_d
    if-ge v6, v0, :cond_22

    .line 463
    :try_start_b
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    add-int/lit8 v9, p2, 0x1

    .line 464
    iget v8, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v9, v8, :cond_21

    goto :goto_e

    :cond_21
    add-int/lit8 v7, v6, 0x1

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_d

    :cond_22
    :goto_e
    if-ne v7, v1, :cond_24

    .line 475
    iget v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 476
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 477
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 478
    monitor-exit p0

    return v3

    .line 480
    :cond_23
    monitor-exit p0

    return v2

    .line 484
    :cond_24
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 489
    iget v1, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v1, :cond_25

    iget v1, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v1, v3

    goto :goto_f

    :cond_25
    move v1, p2

    .line 492
    :goto_f
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v1, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 493
    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v0, :cond_26

    goto :goto_10

    :cond_26
    move v0, p2

    .line 494
    :goto_10
    iput v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 496
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    move p1, v5

    :goto_11
    if-gt p1, v7, :cond_27

    .line 504
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 505
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 506
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 508
    :cond_27
    monitor-exit p0

    return v3

    .line 510
    :cond_28
    monitor-exit p0

    return v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 518
    :cond_2a
    :try_start_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 520
    monitor-exit p0

    return v3

    .line 522
    :cond_2b
    monitor-exit p0

    return v2

    :goto_12
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method protected abstract blacklist finishUpdate()Z
.end method

.method public blacklist isEmpty()Z
    .locals 0

    .line 763
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method protected abstract blacklist startUpdate()V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 822
    iget-object p0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/IntRangeManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist tryAddRanges(IIZ)Z
    .locals 0

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 752
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 754
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result p0

    return p0
.end method

.method public blacklist updateRanges()Z
    .locals 0

    .line 736
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 738
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result p0

    return p0
.end method
