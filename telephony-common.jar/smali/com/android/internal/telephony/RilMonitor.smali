.class public Lcom/android/internal/telephony/RilMonitor;
.super Landroid/os/Handler;
.source "RilMonitor.java"


# static fields
.field private static blacklist mSyncCmd:Ljava/lang/Object;


# instance fields
.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mLogs:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mMonitorDuration:I

.field private blacklist mPhoneId:I

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mStatus:I

.field private blacklist mTimeoutCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/RilMonitor;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemCi(Lcom/android/internal/telephony/RilMonitor;)Lcom/android/internal/telephony/SemCommandsInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoShellCmd(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->doShellCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogv(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmSyncCmd()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/RilMonitor;->mSyncCmd:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RilMonitor;->mSyncCmd:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/HandlerThread;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/SemCommandsInterface;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    const v1, 0x927c0

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    .line 76
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    .line 79
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mLogs:Lcom/android/internal/telephony/LocalLog;

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/RilMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 98
    iput p2, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/RilMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    iput-object p4, p0, Lcom/android/internal/telephony/RilMonitor;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 102
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->checkValidityOfCarrierConfigVendorXml()V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/RilMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    const-string p1, "RilMonitor"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist checkPendingRequest(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 249
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RilMonitor;->isOverLimitOfWaitingTime(Lcom/android/internal/telephony/RILRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget p0, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private blacklist checkValidityOfCarrierConfigVendorXml()V
    .locals 5

    const/4 v0, 0x0

    .line 373
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/carrierconfig_vendor.xml"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 375
    const-string v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 377
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    const/4 v2, 0x1

    .line 384
    :try_start_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 385
    const-string v3, "carrier_config"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    .line 389
    :cond_1
    const-string v0, "No Error in parsing carrier config vendor.xml"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 392
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in parsing carrier config vendor.xml. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 396
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :goto_5
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 401
    :catch_3
    :cond_2
    throw p0

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    goto :goto_4

    :catch_4
    :cond_4
    :goto_7
    return-void
.end method

.method private blacklist clearTimeoutMessage()V
    .locals 1

    .line 183
    const-string v0, "clearTimeoutMessage"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 186
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist doShellCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doShellCmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 328
    const-string v0, ""

    .line 329
    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 331
    :try_start_0
    const-string v3, "doShellCmd: exec command"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 336
    :cond_0
    :goto_0
    const-string v1, "doShellCmd: exec done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 346
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShellCmd done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    return-object v0

    .line 338
    :goto_1
    :try_start_1
    const-string v1, "doShellCmd: fail"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RilMonitor;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 342
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 344
    :cond_3
    throw p0
.end method

.method private blacklist dumpLog()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->dumpLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dumpLog(Ljava/lang/String;)V
    .locals 2

    .line 271
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    const-string v0, "dumpLog"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/RilMonitor$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/RilMonitor$2;-><init>(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist getRilStatus()V
    .locals 3

    .line 190
    const-string v0, "getRilStatus"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 192
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/RilMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/RilMonitor$1;-><init>(Lcom/android/internal/telephony/RilMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist isCheckStatusAndResetRild()Z
    .locals 3

    .line 303
    const-string v0, "checkStatus"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 304
    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->resetMonitorStatus()V

    .line 306
    const-string v0, "RESET_BY_TIME_OUT(ril-daemon not respond)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->restartProcess(Ljava/lang/String;)V

    return v2

    :cond_0
    const/16 v1, 0x2710

    .line 309
    iput v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    add-int/2addr v0, v2

    .line 310
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->dumpLog()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isHandleRilStatusResultAndResetRild(I)Z
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHandleRilStatusResultAndResetRild - status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->resetMonitorStatus()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->resetMonitorStatus()V

    .line 211
    iget p1, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    if-eq p1, v0, :cond_1

    .line 212
    const-string p1, "isHandleRilStatusResultAndResetRild - status: 1"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V

    .line 213
    const-string p1, "reqcnt"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->dumpLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->isCheckStatusAndResetRild()Z

    move-result p0

    return p0
.end method

.method private blacklist isOverLimitOfWaitingTime(Lcom/android/internal/telephony/RILRequest;)Z
    .locals 4

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") during "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final blacklist log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private final blacklist log(Ljava/lang/String;Z)V
    .locals 4

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RilMonitor"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 422
    iget-object p2, p0, Lcom/android/internal/telephony/RilMonitor;->mLogs:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RilMonitor"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RilMonitor"

    invoke-static {p1, p0, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static blacklist makeRilMonitor(ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/RilMonitor;
    .locals 3

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/RilMonitor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 113
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v1, Lcom/android/internal/telephony/RilMonitor;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/android/internal/telephony/RilMonitor;-><init>(Landroid/os/HandlerThread;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/SemCommandsInterface;)V

    return-object v1
.end method

.method private blacklist resetMonitorStatus()V
    .locals 1

    const v0, 0x927c0

    .line 320
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    const/4 v0, 0x0

    .line 321
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    return-void
.end method

.method private blacklist restartProcess(Ljava/lang/String;)V
    .locals 2

    .line 351
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->writeDataToTelephonyDb(Ljava/lang/String;)V

    .line 353
    const-string p1, "restartProcess"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    .line 354
    sget-object p1, Lcom/android/internal/telephony/RilMonitor;->mSyncCmd:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_0
    const-string v0, "restartProcess:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    .line 356
    const-string v0, "ctl.restart"

    const-string v1, "ril-daemon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->clearTimeoutMessage()V

    return-void

    :catchall_0
    move-exception p0

    .line 357
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist startRilMonitor()V
    .locals 3

    .line 177
    const-string v0, "startRilMonitor"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 179
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist writeDataToTelephonyDb(Ljava/lang/String;)V
    .locals 1

    .line 362
    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 364
    const-string v0, "ril_monitor_reset_rild"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkRilRequestPendingAndResetRild(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;)V"
        }
    .end annotation

    .line 228
    const-string v0, "isRilRequestPendingAndResetRild"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->checkPendingRequest(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESET_BY_REQUEST_NOT_RESPOND by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->restartProcess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    .line 442
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 405
    const-string v0, "RilMonitor:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMonitorDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTimeoutCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor;->mLogs:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 120
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 161
    :cond_0
    const-string p1, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->resetMonitorStatus()V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->startRilMonitor()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 156
    :cond_1
    const-string p1, "EVENT_MONITOR_TIMEOUT"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->getRilStatus()V

    return-void

    .line 146
    :cond_2
    const-string p1, "EVENT_RIL_RESPONSE_TIMEOUT"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->isCheckStatusAndResetRild()Z

    move-result p1

    if-nez p1, :cond_9

    .line 148
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    :cond_3
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 122
    :cond_4
    const-string v0, "EVENT_GET_RIL_STATUS_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 128
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 129
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 130
    check-cast p1, [B

    aget-byte v0, p1, v0

    goto :goto_0

    .line 132
    :cond_5
    const-string p1, "result is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    .line 136
    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->isHandleRilStatusResultAndResetRild(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 137
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 138
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_7
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 142
    :cond_8
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 172
    :goto_1
    const-string v0, "handleMessage"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RilMonitor;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_2
    return-void
.end method
