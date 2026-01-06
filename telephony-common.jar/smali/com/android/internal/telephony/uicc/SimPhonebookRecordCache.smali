.class public Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;
.super Landroid/os/Handler;
.source "SimPhonebookRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;
    }
.end annotation


# static fields
.field static final blacklist ENABLE_INFLATE_WITH_EMPTY_RECORDS:Z = true


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/AdnCapacity;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist mIsUpdateDone:Z

.field private blacklist mPhoneId:I

.field private blacklist mReadLock:Ljava/lang/Object;

.field private final blacklist mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2bCGQiMcp1cfMiux8vCd8-R6gHo(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 7

    .line 569
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getRecordId()I

    move-result v2

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x6f3a

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$YZl5kIYd_OEAyDk6kqnz-mEa3_Y(Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nRP_VE1rhMA6RbyzHorbe96tNzg(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 7

    .line 618
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x6f3a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    const-string v0, "SimPhonebookRecordCache"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    .line 107
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 108
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mPhoneId:I

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mContext:Landroid/content/Context;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 111
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x6

    .line 112
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 113
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist addOrChangeSimPbRecord(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record number for the added or changed ADN is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecId(I)V

    .line 594
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist deleteSimPbRecord(I)V
    .locals 8

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record number for the deleted ADN is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 604
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x6f3a

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist fillCache()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 199
    :catch_0
    :try_start_2
    const-string v1, "Interrupted Exception in queryAdnRecord"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 201
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private blacklist fillCacheWithoutWaiting()V
    .locals 3

    .line 205
    const-string v0, "Start to queryAdnRecord"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSimPhonebookRecords(Landroid/os/Message;)V

    return-void

    .line 209
    :cond_0
    const-string v0, "The loading is ongoing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getSimPhonebookCapacity()V
    .locals 2

    .line 185
    const-string v0, "Start to getSimPhonebookCapacity"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSimPhonebookCapacity(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist handlePhonebookCapacityChanged(Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    if-nez p1, :cond_0

    .line 442
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>()V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_3

    .line 446
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->inflateWithEmptyRecords(Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    .line 447
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 451
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    goto :goto_0

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 455
    const-string p1, "ADN capacity is invalid"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 457
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 460
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 462
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 465
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    goto :goto_1

    .line 467
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    .line 471
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    return-void
.end method

.method private blacklist handlePhonebookChanged()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    return-void

    .line 435
    :cond_0
    const-string v0, "Do nothing in the midst of multiple update"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handlePhonebookRecordReceived(Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const-string v0, "Partial data is received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->getPhonebookRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->populateAdnRecords(Ljava/util/List;)V

    return-void

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 493
    const-string v0, "The whole loading process is finished"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->getPhonebookRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->populateAdnRecords(Ljava/util/List;)V

    .line 495
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 499
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isRetryNeeded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    .line 501
    const-string p1, "Start to retry as aborted"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    return-void

    .line 504
    :cond_2
    const-string p1, "Error happened"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    return-void

    .line 510
    :cond_3
    const-string p1, "No records there"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    return-void
.end method

.method private blacklist handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 555
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-nez v0, :cond_0

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v1, 0x4f30

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6f3a

    if-eq p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    :cond_2
    return-void

    .line 563
    :cond_3
    const-string p1, "IccRefreshResponse received is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleUpdatePhonebookRecordDone(Landroid/os/AsyncResult;)V
    .locals 5

    .line 517
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    const/4 v1, 0x1

    .line 518
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    .line 519
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 520
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetmyRecordId(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)I

    move-result v1

    .line 521
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetadnRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v2

    .line 522
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v3, 0x0

    aget p1, p1, v3

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "my record ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new record ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "The record ID for update doesn\'t match"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 525
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 526
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->addOrChangeSimPbRecord(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_1

    .line 528
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->deleteSimPbRecord(I)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 535
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Update adn record failed"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 538
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 539
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->responseResult(Ljava/lang/Exception;)V

    goto :goto_3

    .line 542
    :cond_4
    const-string p1, "this update request isn\'t found"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 544
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void
.end method

.method private blacklist inflateWithEmptyRecords(Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .locals 9

    .line 477
    const-string v0, "inflateWithEmptyRecords"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 479
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAdnCount()I

    move-result v0

    if-gt v3, v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x6f3a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist invalidateSimPbCache()V
    .locals 2

    .line 614
    const-string v0, "invalidateSimPbCache"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method private blacklist isAdnCapacityInvalid()Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyAdnLoadingWaiters()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAndClearWaiters()V

    return-void

    :catchall_0
    move-exception p0

    .line 269
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist notifyAndClearWaiters()V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/Message;

    if-eqz v4, :cond_0

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 164
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    .line 165
    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 166
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 170
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist populateAdnRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 569
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda3;-><init>()V

    .line 576
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 577
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private blacklist reset()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    return-void
.end method

.method private blacklist responseToWaitersWithErrorOrSuccess(Z)V
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseToWaitersWithErrorOrSuccess success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendResponsesToWaitersWithError()V

    .line 427
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 153
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 155
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private blacklist sendGettingPhonebookRecordsRetry(I)V
    .locals 2

    const/4 p1, 0x7

    .line 582
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 587
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist sendResponsesToWaitersWithError()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/Message;

    .line 178
    const-string v5, "Query adn record failed"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 181
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist tryFireUpdatePendingList()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V

    :cond_0
    return-void
.end method

.method private blacklist updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V
    .locals 3

    .line 339
    const-string v0, "update Sim phonebook"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetphonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v1

    const/4 v2, 0x5

    .line 341
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 340
    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update sim contact for record ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 314
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;-><init>()V

    .line 315
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setRecordId(I)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setAlphaTag(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setEmails([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setAdditionalNumbers([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->build()Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;-><init>(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V

    .line 322
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    .line 327
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_3

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 335
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V

    return-void

    .line 329
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "It is pending on update as  mIsRecordLoading = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsInRetry = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 330
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " pending size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    .line 331
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mIsInitialized = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->reset()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPhonebookChanged(Landroid/os/Handler;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    return-object p0
.end method

.method public blacklist getAdnRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    return-void

    .line 401
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_PHONEBOOK_RECORDS_RETRY cnt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    add-int/lit8 p1, p1, 0x1

    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    return-void

    .line 408
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    return-void

    .line 392
    :pswitch_1
    const-string v0, "EVENT_SIM_REFRESH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 393
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 394
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 395
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    .line 397
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM refresh Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void

    .line 387
    :pswitch_2
    const-string v0, "EVENT_UPDATE_PHONEBOOK_RECORD_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 388
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handleUpdatePhonebookRecordDone(Landroid/os/AsyncResult;)V

    return-void

    .line 364
    :pswitch_3
    const-string v0, "EVENT_GET_PHONEBOOK_CAPACITY_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 365
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_2

    .line 366
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 367
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    .line 368
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookCapacityChanged(Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    return-void

    .line 370
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result p1

    if-nez p1, :cond_3

    .line 371
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    return-void

    .line 353
    :pswitch_4
    const-string v0, "EVENT_GET_PHONEBOOK_RECORDS_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 354
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_4

    .line 355
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 356
    const-string p1, "Failed to gain phonebook records"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 358
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 359
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    :cond_4
    return-void

    .line 377
    :pswitch_5
    const-string v0, "EVENT_PHONEBOOK_RECORDS_RECEIVED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 378
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 379
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 380
    const-string v0, "Unexpected exception happened"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 384
    :cond_5
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookRecordReceived(Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;)V

    return-void

    .line 349
    :pswitch_6
    const-string p1, "EVENT_PHONEBOOK_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isLoading()Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist requestLoadAllPbRecords(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string p1, "Try to enforce flushing cache"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-gt p1, v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_2

    goto :goto_1

    .line 234
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 236
    const-string p1, "ADN cache has already filled in"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAndClearWaiters()V

    return-void

    .line 242
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCache()V

    return-void

    .line 229
    :cond_4
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add to the pending list as pending size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is retrying = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " IsInitialized = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 231
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist updateSimPbAdnByRecordId(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 2

    if-nez p2, :cond_0

    .line 275
    const-string p1, "There is an invalid new Adn for update"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    const-string p1, "There is an invalid old Adn for update"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 4

    if-nez p2, :cond_0

    .line 288
    const-string p1, "There is an invalid new Adn for update"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 296
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 303
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    const-string p1, "SIM Phonebook record is full"

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    return-void
.end method
