.class public Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# static fields
.field private static blacklist isSimFull:Z = false

.field private static blacklist mChecked:Z = false

.field private static blacklist mIsFullMemory:Z = false


# instance fields
.field final greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mGcfResultReceiver:Landroid/content/BroadcastReceiver;

.field blacklist mInitialStorageAvailableStatus:Z

.field private blacklist mIsMemoryStatusReportingFailed:Z

.field private blacklist mIsWaitingResponse:Z

.field private blacklist mMaxRetryCount:I

.field private blacklist mMemoryStatusOverrideFlag:Z

.field private blacklist mNeedNewReporting:Z

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mResultReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRetryCount:I

.field private blacklist mRetryDelay:I

.field blacklist mSimStorageAvailable:Z

.field private blacklist mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

.field blacklist mStorageAvailable:Z

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSmsLogger(Lcom/android/internal/telephony/SmsStorageMonitor;)Lcom/android/internal/telephony/SmsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmIsFullMemory(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsFullMemory:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMaxRetryCount:I

    const/16 v1, 0x1388

    .line 88
    iput v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mInitialStorageAvailableStatus:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    .line 340
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    .line 393
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$2;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 123
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    const/4 v2, 0x0

    .line 127
    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 128
    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v0, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p2, v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 140
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    return-void
.end method

.method private blacklist createWakelock()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 291
    const-string v1, "SmsStorageMonitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 292
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private blacklist sendMemoryStatusReport(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 278
    const-string v2, "SmsStorageMonitor1"

    const-string v3, "sendMemoryStatusReport: smsIfcMngr is available"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 281
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->reportSmsMemoryStatus(Landroid/os/Message;)V

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist clearMemoryStatusOverride()V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mInitialStorageAvailableStatus:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public blacklist getSimFullStatus()Z
    .locals 0

    .line 328
    sget-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    return p0
.end method

.method public blacklist handleIccFull()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 303
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 302
    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "SmsStorageMonitor1"

    const-string v2, "getSMSavailable is true. Sending intent SIM_FULL_ACTION"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 322
    sput-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    :cond_0
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "SmsStorageMonitor1"

    if-eq v1, v2, :cond_e

    const/4 v5, 0x2

    const/4 v6, 0x4

    const-string v7, "(full)"

    const-string v8, "(not full)"

    if-eq v1, v5, :cond_b

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    if-eqz p1, :cond_2

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_ON - report failed sms memory status"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    move-object v7, v8

    .line 266
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    :cond_2
    :goto_0
    return-void

    .line 258
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RETRY_MEMORY_STATUS_REPORTING - retry"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    move-object v7, v8

    .line 259
    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    return-void

    .line 225
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 226
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_REPORT_MEMORY_STATUS_DONE - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    const-string v5, "succeeded"

    goto :goto_1

    :cond_6
    const-string v5, "failed"

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    if-eqz v1, :cond_8

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_REPORT_MEMORY_STATUS_DONE - report again now"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    move-object v7, v8

    .line 231
    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    .line 234
    iput v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 235
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    return-void

    .line 237
    :cond_8
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_a

    .line 238
    iget p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    iget v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMaxRetryCount:I

    if-ge p1, v0, :cond_9

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_REPORT_MEMORY_STATUS_DONE - retry in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    int-to-long v0, v0

    .line 241
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 245
    :cond_9
    const-string p1, "EVENT_REPORT_MEMORY_STATUS_DONE - no retry anymore(pended)"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 248
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    return-void

    .line 251
    :cond_a
    iput v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 252
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    return-void

    .line 207
    :cond_b
    iget-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    if-eqz p1, :cond_c

    .line 208
    const-string p1, "EVENT_REPORT_MEMORY_STATUS - deferred"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    return-void

    .line 213
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_REPORT_MEMORY_STATUS - report sms memory status"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d

    move-object v7, v8

    .line 214
    :cond_d
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    .line 219
    iput v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 220
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    return-void

    .line 200
    :cond_e
    const-string p1, "EVENT_ICC_FULL"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    return-void
.end method

.method public blacklist isFullStorage()Z
    .locals 8

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 375
    sget-boolean v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mChecked:Z

    const-string v2, "SmsStorageMonitor1"

    const/4 v3, 0x1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsFullMemory:Z

    if-nez v1, :cond_2

    .line 376
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 377
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v4

    .line 379
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gtz v1, :cond_0

    .line 381
    sput-boolean v3, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsFullMemory:Z

    goto :goto_0

    .line 384
    :cond_1
    sput-boolean v3, Lcom/android/internal/telephony/SmsStorageMonitor;->mChecked:Z

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsFullMemory = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsFullMemory:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsFullMemory:Z

    return p0

    .line 388
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStorageAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    xor-int/2addr p0, v3

    return p0
.end method

.method public blacklist isStorageAvailable()Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    return p0
.end method

.method public blacklist resetSimFullStatus()V
    .locals 0

    const/4 p0, 0x0

    .line 332
    sput-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    return-void
.end method

.method public blacklist sendMemoryStatusOverride(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    if-nez v0, :cond_0

    .line 156
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mInitialStorageAvailableStatus:Z

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 161
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public blacklist setMaxRetries(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMaxRetryCount:I

    return-void
.end method

.method public blacklist setRetryDelayInMillis(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    return-void
.end method
