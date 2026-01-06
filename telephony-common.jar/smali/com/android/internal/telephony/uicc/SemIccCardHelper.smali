.class public final Lcom/android/internal/telephony/uicc/SemIccCardHelper;
.super Ljava/lang/Object;
.source "SemIccCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;,
        Lcom/android/internal/telephony/uicc/SemIccCardHelper$IccConstants;,
        Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;
    }
.end annotation


# instance fields
.field protected blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/uicc/SemIccCardHelper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;-><init>(Lcom/android/internal/telephony/uicc/SemIccCardHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable;I)Z
    .locals 5

    .line 298
    div-int/lit8 v0, p2, 0x4

    .line 300
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isActive for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fails, max service is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    return v3

    .line 306
    :cond_0
    rem-int/lit8 p2, p2, 0x4

    .line 307
    aget-byte p0, v1, v0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    shl-int p1, v4, p2

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v3
.end method

.method private blacklist isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable;I)Z
    .locals 5

    .line 286
    div-int/lit8 v0, p2, 0x4

    .line 287
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSSTAvailable for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fails, max service is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    return v3

    .line 293
    :cond_0
    rem-int/lit8 p2, p2, 0x4

    .line 294
    aget-byte p0, v1, v0

    mul-int/lit8 p2, p2, 0x2

    shl-int p1, v4, p2

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v3
.end method

.method private blacklist isServiceAvailable(ZLcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 269
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v1, :cond_1

    .line 270
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p1

    goto :goto_1

    .line 272
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isSimServiceAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z

    move-result p1

    .line 275
    :cond_2
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UsimService: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isAvailable: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    return p1
.end method

.method private blacklist isSimServiceAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z
    .locals 3

    .line 279
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable;I)Z

    move-result v0

    .line 280
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable;I)Z

    move-result p1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimServiceAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isSSTAvailable = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isSSTActive = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIccCardHelper"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIccCardHelper"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist waitForResult(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;)V
    .locals 1

    .line 311
    monitor-enter p1

    .line 312
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 314
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 316
    :catch_0
    :try_start_2
    const-string v0, "Interrupted while waiting for result"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist getAdnRecordsInPB(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInPB: efid=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 247
    const-string p1, "adnCache has not set"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    return-object v1

    .line 251
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;-><init>(Lcom/android/internal/telephony/uicc/SemIccCardHelper-IA;)V

    .line 252
    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 255
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(ILandroid/os/Message;)V

    .line 256
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->waitForResult(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;)V

    .line 257
    iget-object p0, v2, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    .line 262
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 235
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getFdnAvailable()Z
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_1

    .line 190
    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    goto :goto_1

    .line 192
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;->FDN:Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isSimServiceAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 197
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFdnAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getOcsglAvailable()Z
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 167
    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->OPERATOR_CSG_LISTS_AND_INDICATIONS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 171
    new-instance v5, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;

    invoke-direct {v5, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;-><init>(Lcom/android/internal/telephony/uicc/SemIccCardHelper-IA;)V

    .line 172
    monitor-enter v5

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/16 v6, 0x4f84

    .line 174
    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 175
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->waitForResult(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;)V

    .line 176
    iget-object v1, v5, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 177
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v0, v3

    move v1, v0

    .line 181
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOcsglAvailable - isAvailableOCSGL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAvailableOCSGLList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public blacklist getPnnEnabled()Z
    .locals 3

    .line 227
    sget-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->PLMN_NETWORK_NAME:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    sget-object v1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;->PNN:Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isServiceAvailable(ZLcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z

    move-result p0

    return p0
.end method

.method public blacklist getPsiSmscAvailable()Z
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_1

    .line 217
    sget-object v2, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_OVER_IP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 219
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmscIdentity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPsiSmscAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->log(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist getSdnAvailable()Z
    .locals 3

    .line 201
    sget-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    sget-object v1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;->SDN:Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isServiceAvailable(ZLcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z

    move-result p0

    return p0
.end method

.method public blacklist getSmsAvailable()Z
    .locals 3

    .line 205
    sget-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    sget-object v1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;->SMS:Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isServiceAvailable(ZLcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z

    move-result p0

    return p0
.end method

.method public blacklist getSmsPAvailable()Z
    .locals 3

    .line 209
    sget-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    sget-object v1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;->SMSP:Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->isServiceAvailable(ZLcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;Lcom/android/internal/telephony/uicc/SemIccCardHelper$SimService;)Z

    move-result p0

    return p0
.end method
