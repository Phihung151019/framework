.class public Lcom/android/internal/telephony/uicc/UiccPort;
.super Ljava/lang/Object;
.source "UiccPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;
    }
.end annotation


# static fields
.field protected static final blacklist DBG:Z = true

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "UiccPort"

.field private static blacklist sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field protected blacklist LOG_TAG_ID:Ljava/lang/String;

.field protected blacklist mCardId:Ljava/lang/String;

.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccid:Ljava/lang/String;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOpenChannelRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhoneId:I

.field private blacklist mPhysicalSlotIndex:I

.field private blacklist mPortIdx:I

.field private blacklist mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccPort;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccPort;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 64
    const-string v1, "UiccPort"

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->LOG_TAG_ID:Ljava/lang/String;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->LOG_TAG_ID:Ljava/lang/String;

    .line 82
    const-string v1, "Creating"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 83
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    .line 84
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    .line 85
    const-string p4, "cleanup"

    invoke-virtual {v0, p4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/internal/telephony/uicc/UiccPort;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V

    return-void
.end method

.method private blacklist cleanupOpenLogicalChannelRecordsIfNeeded()V
    .locals 5

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    monitor-enter v0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 475
    iget-object v3, v2, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    iget-object v3, v3, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 476
    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 478
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 479
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    const-string v1, "Disposing Port"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->cleanupOpenLogicalChannelRecordsIfNeeded()V

    return-void

    .line 120
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 391
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 392
    const-string p2, "UiccPort:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPortIdx="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPortIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCi="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIccid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mIccid:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhysicalSlotIndex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhysicalSlotIndex:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter p2

    .line 400
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOpenChannelRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    const-string p2, "mUiccProfile"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 404
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 401
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    const-string v0, "UiccPort finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 129
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->cleanupOpenLogicalChannelRecordsIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    throw v0
.end method

.method public blacklist getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 173
    monitor-exit v0

    return-object p0

    .line 175
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 207
    monitor-exit v0

    return-object p0

    .line 209
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 187
    monitor-exit v0

    return-object p0

    .line 189
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mIccid:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 374
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getNumApplications()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOpenLogicalChannelRecord(I)Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    .line 451
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    if-ne v2, p1, :cond_0

    .line 453
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 456
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getOperatorBrandOverride()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPhoneId()I
    .locals 0

    .line 333
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    return p0
.end method

.method public blacklist getPortIdx()I
    .locals 0

    .line 337
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPortIdx:I

    return p0
.end method

.method public blacklist getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object p0
.end method

.method public blacklist getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 159
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object p0

    .line 161
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 252
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(IZLandroid/os/Message;)V

    return-void

    .line 254
    :cond_0
    const-string p1, "iccCloseLogicalChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 300
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 302
    :cond_0
    const-string p1, "iccExchangeSimIO Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 240
    :cond_0
    const-string p1, "iccOpenLogicalChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 285
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 287
    :cond_0
    const-string p1, "iccTransmitApduBasicChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 268
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void

    .line 271
    :cond_0
    const-string p1, "iccTransmitApduLogicalChannel Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 145
    monitor-exit v0

    return p0

    .line 147
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onLogicalChannelClosed(I)V
    .locals 3

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getOpenLogicalChannelRecord(I)Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    move-result-object p1

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogicalChannelClosed: stop monitoring client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V

    .line 439
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    iget-object v1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 440
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 441
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 443
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onLogicalChannelOpened(Lcom/android/internal/telephony/IccLogicalChannelRequest;)V
    .locals 3

    .line 415
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;-><init>(Lcom/android/internal/telephony/uicc/UiccPort;Lcom/android/internal/telephony/IccLogicalChannelRequest;)V

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :try_start_1
    iget-object p1, p1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 419
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mOpenChannelRecords:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogicalChannelOpened: monitoring client "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 420
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 423
    :catch_0
    const-string p1, "IccOpenLogicChannel client has died, clean up manually"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->binderDied()V

    return-void
.end method

.method public blacklist resetAppWithAid(Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 225
    monitor-exit v0

    return p0

    .line 227
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 315
    :cond_0
    const-string p1, "sendEnvelopeWithStatus Failed!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 10

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 96
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mIccid:Ljava/lang/String;

    .line 97
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPortIdx:I

    .line 98
    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhysicalSlotIndex:I

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mPhoneId:I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    sget-object v9, Lcom/android/internal/telephony/uicc/UiccPort;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v5, p3

    .line 104
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 106
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
