.class public Lcom/android/internal/telephony/uicc/UiccHqmController;
.super Landroid/os/Handler;
.source "UiccHqmController.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UiccHqmConstants;


# static fields
.field private static final blacklist PROJECT_SIM_NUM:I

.field private static greylist mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

.field private static final greylist mLock:Ljava/lang/Object;


# instance fields
.field public blacklist mContext:Landroid/content/Context;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPbState:[I

.field private blacklist mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSimState:[I

.field private blacklist mUiccHqmState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$5hFVAQnX0LhQTx8JVTXh4NAOpIk([ILandroid/telephony/UiccSlotMapping;)V
    .locals 2

    .line 462
    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v1

    aput v1, p0, v0

    .line 463
    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$I15P0KG3GSr9LSBxy0G7lhapYCE(Lcom/android/internal/telephony/uicc/UiccHqmController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->lambda$sendUiccHqm$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UDrXhtz8EfUA_yZFC-f-3HMjeWw(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 350
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$he2Pn025gv22kHuZfpoOPtOEV84(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 342
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimState(Lcom/android/internal/telephony/uicc/UiccHqmController;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUiccHqmState(Lcom/android/internal/telephony/uicc/UiccHqmController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSimState(Lcom/android/internal/telephony/uicc/UiccHqmController;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSimState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendSchgInfo(Lcom/android/internal/telephony/uicc/UiccHqmController;IIILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendSchgInfo(IIILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendUiccHqm(Lcom/android/internal/telephony/uicc/UiccHqmController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccHqm()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPbStateBySimState(Lcom/android/internal/telephony/uicc/UiccHqmController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->setPbStateBySimState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mLock:Ljava/lang/Object;

    .line 43
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    sget v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    .line 45
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccHqmController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccHqmController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    const-string v0, "UiccHqmController"

    const-string v1, "UiccHqmController() : create"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->checkIfAlarmSent()I

    .line 64
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p1, 0x0

    move p2, p1

    .line 65
    :goto_0
    sget v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-ge p2, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    aput p1, v0, p2

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 70
    aget-object v0, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.UICC_HQM_DATA"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string p2, "com.samsung.intent.action.UICC_HQM_TIME_UP"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p2, p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist checkIfAlarmSent()I
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 440
    const-string v1, "uicc_hqm_alarm_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 444
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->setAlarm(J)V

    :cond_0
    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 448
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    .line 450
    :goto_0
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    return p0
.end method

.method private blacklist checkPbCheckComplete()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 184
    :goto_0
    sget v2, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pbstate["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiccHqmController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist checkSimLoadedComplete()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 172
    :goto_0
    sget v3, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private blacklist getArrayString([I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 515
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 517
    :cond_0
    const-string p0, "[]"

    return-object p0
.end method

.method private blacklist getArrayString([J)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 522
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 524
    :cond_0
    const-string p0, "[]"

    return-object p0
.end method

.method private blacklist getDefaultDataSlotId()I
    .locals 0

    .line 368
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSlotId()I

    move-result p0

    return p0
.end method

.method private blacklist getDefaultSlots()[I
    .locals 2

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getDefaultVoiceSlotId()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getDefaultSmsSlotId()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getDefaultDataSlotId()I

    move-result p0

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDefaultSmsSlotId()I
    .locals 0

    .line 376
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSlotId()I

    move-result p0

    return p0
.end method

.method private blacklist getDefaultVoiceSlotId()I
    .locals 0

    .line 372
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSlotId()I

    move-result p0

    return p0
.end method

.method private blacklist getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 0

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getInstance()Lcom/android/internal/telephony/uicc/UiccHqmController;
    .locals 3

    .line 80
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccHqmController;->mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

    if-eqz v1, :cond_0

    .line 85
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UiccHqmController.getInstance can\'t be called before make()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\\":\\\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMsisdnLength(I)I
    .locals 1

    const/4 v0, 0x1

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private blacklist getPhoneType(I)I
    .locals 0

    .line 361
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getSimFetchingTime(I)J
    .locals 1

    const/4 v0, 0x1

    .line 390
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getFetchingTime()J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist getSimState(ILjava/lang/String;)I
    .locals 1

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    .line 160
    const-string p1, "LOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 162
    :cond_0
    const-string p1, "ABSENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    const-string p1, "NOT_READY"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist getSlotMapping()[I
    .locals 2

    .line 454
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 456
    new-array p0, p0, [I

    return-object p0

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object p0

    .line 459
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 460
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda3;-><init>([I)V

    .line 461
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private blacklist getSupportedEfs(I)[J
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 398
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 401
    new-array v1, v2, [J

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 404
    aget v5, v0, v4

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 405
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEfBitset()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEfBitset()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v5

    aget-wide v5, v5, v3

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    .line 408
    :goto_1
    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private synthetic blacklist lambda$sendUiccHqm$0()V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccInfo()V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/uicc/UiccHqmController;
    .locals 2

    .line 48
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccHqmController;->mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccHqmController;->mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

    .line 56
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "UiccHqmController.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist makeUiccSistVal()Ljava/lang/String;
    .locals 8

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 495
    :goto_0
    sget v2, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-gt v1, v2, :cond_1

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getPhoneType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "phone_type"

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getPbCapa(I)[I

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getArrayString([I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pbcp"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getApiAttempts(I)[I

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getArrayString([I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "api_attempt"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getMsisdnLength(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "msisdn"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSupportedEfs(I)[J

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getArrayString([J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "efs"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSimFetchingTime(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "fetch_time"

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v2, :cond_0

    .line 503
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 506
    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeUiccSlstVal()Ljava/lang/String;
    .locals 8

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    const/4 v2, 0x1

    .line 480
    :goto_0
    array-length v3, v1

    if-gt v2, v3, :cond_1

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mep_mode"

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_euicc"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "card_state"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "port_cnt"

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 486
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 489
    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendSchgInfo(IIILjava/lang/String;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSchgInfo() slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " err : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccHqmController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v1, "SLOT"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string p1, "SEVT"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string p1, "REST"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string p1, "RSFE"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-string p1, "SCHG"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccHqmAgent;->sendUiccInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method private blacklist sendUiccHqm()V
    .locals 4

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->checkSimLoadedComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->checkPbCheckComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiccHqmController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->setAlarm(J)V

    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/uicc/UiccHqmController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 239
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendUiccInfo()V
    .locals 5

    .line 254
    const-string v0, "UiccHqmController"

    const-string v1, "sendUiccInfo()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getDsdsCapa()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getPinEnabledState(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PIN1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getPinEnabledState(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PIN2"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getUsedPbCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SPB1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getUsedPbCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPB2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimSupport()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESIM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimProfileEnabledStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESIE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimProfileCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESIC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSwitchStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSlotMapping()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getArrayString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SLMP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getDefaultSlots()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getArrayString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DFSL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "SLST"

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->makeUiccSlstVal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "SIST"

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->makeUiccSistVal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-string v1, "UICC"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/telephony/uicc/UiccHqmAgent;->sendUiccInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Z

    return-void
.end method

.method private blacklist setAlarm(J)V
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 425
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.UICC_HQM_TIME_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 435
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "uicc_hqm_alarm_time"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist setPbStateBySimState(I)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aput v1, p0, p1

    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v2, v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-ne v0, v3, :cond_2

    .line 152
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0x493e0

    .line 153
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aput v2, p0, p1

    return-void
.end method


# virtual methods
.method public blacklist getApiAttempts(I)[I
    .locals 0

    .line 473
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getSimApiAttempts()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    .line 475
    new-array p0, p0, [I

    return-object p0
.end method

.method public blacklist getDsdsCapa()I
    .locals 2

    .line 274
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimSupport()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getEsimProfileCount()J
    .locals 2

    .line 339
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 341
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda2;-><init>()V

    .line 342
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEsimProfileEnabledStatus()I
    .locals 5

    .line 347
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    .line 348
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 349
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda1;-><init>()V

    .line 350
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v3, 0x2

    cmp-long p0, v0, v3

    if-ltz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/16 v3, 0x1

    cmp-long p0, v0, v3

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getEsimSupport()I
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.euicc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getPbCapa(I)[I
    .locals 7

    const/16 p0, 0xd

    .line 302
    new-array v0, p0, [I

    const/4 v1, 0x1

    .line 303
    new-array v2, p0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_0

    .line 310
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 311
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v5

    .line 312
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v5

    aget v6, v2, v4

    .line 313
    invoke-virtual {v5, v6, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    aput v5, v0, v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 315
    :catch_0
    aput v3, v0, v4

    :goto_1
    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public blacklist getPinEnabledState(I)I
    .locals 0

    .line 285
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSwitchStatus()I
    .locals 1

    .line 330
    const-string p0, "persist.ril.esim.slotswitch"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tsds2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 332
    :cond_0
    const-string p0, "ril.simslottype2"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public blacklist getUsedPbCount(I)I
    .locals 1

    .line 291
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 292
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x3

    .line 294
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v2, v0, p1

    if-nez v2, :cond_1

    .line 133
    aput v1, v0, p1

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccHqm()V

    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 126
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccHqm()V

    return-void
.end method

.method public blacklist sendHqmBipOpenChannel(I)V
    .locals 3

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 224
    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendSchgInfo(IIILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendHqmRildReset(I)V
    .locals 3

    .line 213
    const-string v0, "ril.rildreset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendSchgInfo(IIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist sendHqmSimRefreshed(Landroid/os/AsyncResult;I)V
    .locals 2

    .line 194
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    if-eqz p1, :cond_0

    .line 198
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 200
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    const-string p1, "OoR"

    goto :goto_0

    .line 197
    :cond_0
    const-string p1, "null"

    const/4 v0, 0x0

    :goto_0
    if-ltz p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/16 v1, 0x9

    .line 209
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendSchgInfo(IIILjava/lang/String;)V

    return-void
.end method
