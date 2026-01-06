.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
    }
.end annotation


# static fields
.field protected static final blacklist EMERGENCY_SEARCH_END:I = 0x3

.field protected static final blacklist EMERGENCY_SEARCH_END_ECBM:I = 0x2

.field protected static final blacklist EMERGENCY_SEARCH_START:I = 0x0

.field protected static final blacklist EMERGENCY_SEARCH_SUCCESS:I = 0x1

.field protected static final blacklist EVENT_EMERGENCY_DELAYED_MSG:I = 0x1f

.field protected static final blacklist EVENT_EMERGENCY_DELAYED_MSG_RETRY:I = 0x20

.field protected static final blacklist EVENT_GET_IMS_SERVICE:I = 0x10

.field protected static final blacklist EVENT_ICC_CHANGED:I = 0xf

.field protected static final blacklist EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final blacklist EVENT_NEW_SMS_STATUS_REPORT:I = 0xa

.field protected static final blacklist EVENT_RETRY_SMMA:I = 0xb

.field protected static final blacklist EVENT_SEND_EMEGENCY_CALLBACK_MODE_DONE:I = 0x22

.field protected static final blacklist EVENT_SEND_EMEGENCY_NETWORK_CONTROL_DONE:I = 0x21

.field protected static final blacklist EVENT_SEND_RETRY:I = 0x3

.field protected static final blacklist EVENT_SEND_SMS_COMPLETE:I = 0x2

.field public static final blacklist LAST_SENT_MSG_EXTRA:Ljava/lang/String; = "LastSentMsg"

.field protected static final blacklist MAP_KEY_DATA:Ljava/lang/String; = "data"

.field protected static final blacklist MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field protected static final blacklist MAP_KEY_DEST_PORT:Ljava/lang/String; = "destPort"

.field protected static final blacklist MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field protected static final blacklist MAP_KEY_SC_ADDR:Ljava/lang/String; = "scAddr"

.field protected static final blacklist MAP_KEY_SMSC:Ljava/lang/String; = "smsc"

.field protected static final blacklist MAP_KEY_TEXT:Ljava/lang/String; = "text"

.field protected static final blacklist MAX_SEND_RETRIES:I = 0x3

.field protected static final blacklist MAX_SEND_RETRIES_SPR:I = 0x1

.field protected static final blacklist MAX_SEND_RETRIES_VZW:I = 0x0

.field public static final blacklist SEND_RETRY_DELAY:I = 0x7d0

.field private static blacklist mIsBlockedDialogDisplayed:Z

.field private static final blacklist sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

.field private static final blacklist sAnomalyUnexpectedCallback:Ljava/util/UUID;

.field private static blacklist sConcatenatedRef:I


# instance fields
.field protected final blacklist EVENT_BLOCK_SMS_BY_SIM:I

.field protected final blacklist EVENT_CONFIRM_SEND_SMS_BACKGROUND:I

.field blacklist mBackgroundSMSmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mBackgroundSmsPopupCount:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public blacklist mCarrierMessagingTimeout:I

.field protected final greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final greylist mContext:Landroid/content/Context;

.field protected blacklist mIsDisposed:Z

.field private blacklist mIsEmergencySearch:I

.field protected final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mMessageRef:I

.field private blacklist mPendingTrackerCount:I

.field protected greylist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist mRPSmmaRetried:Z

.field protected final greylist mResolver:Landroid/content/ContentResolver;

.field protected final blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field protected blacklist mSendingEmergencySmsCount:I

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected blacklist mSmsCapable:Z

.field protected blacklist mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

.field protected blacklist mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

.field protected blacklist mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

.field protected final blacklist mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mSmsSendDisabled:Z

.field protected final greylist-max-r mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->logWithLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessSendMultipartSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendMultipartSmsResponse([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAnomalyNoResponseFromCarrierMessagingService()Ljava/util/UUID;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAnomalyUnexpectedCallback()Ljava/util/UUID;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyUnexpectedCallback:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmIsBlockedDialogDisplayed(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsBlockedDialogDisplayed:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 258
    const-string v0, "279d9fbc-462d-4fc2-802c-bf21ddd9dd90"

    .line 259
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

    .line 261
    const-string v0, "0103b6d2-ad07-4d86-9102-14341b9074ef"

    .line 262
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->sAnomalyUnexpectedCallback:Ljava/util/UUID;

    .line 270
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    const/4 v0, 0x0

    .line 293
    sput-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIsBlockedDialogDisplayed:Z

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 6

    .line 299
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 239
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 240
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

    const/4 v2, 0x0

    .line 250
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    const v3, 0x927c0

    .line 281
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCarrierMessagingTimeout:I

    const/4 v3, -0x1

    .line 285
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    .line 330
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v4, 0x15

    .line 4076
    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->EVENT_CONFIRM_SEND_SMS_BACKGROUND:I

    const/4 v4, 0x0

    .line 4077
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    const/16 v5, 0x16

    .line 4080
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->EVENT_BLOCK_SMS_BY_SIM:I

    .line 4091
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsDisposed:Z

    const/4 v5, 0x3

    .line 4114
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsEmergencySearch:I

    .line 4115
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    .line 4153
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    .line 4159
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 300
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 301
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 302
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 304
    iget-object v4, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 306
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 308
    const-string p1, "phone"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 309
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-direct {v4, p0, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 310
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "sms_short_code_rule"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDeviceSmsCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 314
    invoke-virtual {p1, v0, v2}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSmsSendDisabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    .line 321
    invoke-static {p2}, Lcom/android/internal/telephony/SmsHQMAgent;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    .line 323
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 326
    invoke-virtual {p2, v3, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist denyIfQueueLimitReached([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 5

    .line 2918
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 2920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Denied because queue limit reached "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2920
    const-string v3, "SMSDispatcher"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2922
    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return v1

    :cond_0
    add-int/2addr v0, v1

    .line 2926
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    .line 2936
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2939
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x0

    .line 2938
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 2940
    invoke-virtual {p2, p0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2942
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PackageManager Name Not Found for package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SMSDispatcher"

    invoke-static {p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static blacklist getCDMASmsReassembly()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getEnableMultiSim()Z
    .locals 2

    .line 4794
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J
    .locals 0

    .line 2358
    array-length p0, p1

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 p0, 0x0

    .line 2361
    aget-object p0, p1, p0

    iget-wide p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    return-wide p0
.end method

.method private blacklist getNewSubmitPduTracker(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 26

    move-object/from16 v2, p0

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    move-object/from16 v12, p6

    .line 2373
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v4

    const/4 v10, 0x0

    const-string v11, "SMSDispatcher"

    const/4 v5, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_8

    .line 2374
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2375
    iput-object v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2377
    iget-object v6, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v6

    const-string v7, "sms_segmented_sms"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2378
    iput-object v12, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    :cond_0
    move/from16 v6, p7

    if-ne v6, v14, :cond_3

    .line 2381
    iget-object v6, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v8, "HKG"

    const-string v9, "TPE"

    const-string v15, "CHN"

    filled-new-array {v15, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2384
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 2386
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v5, 0x9

    .line 2387
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 2389
    :cond_2
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2393
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message encoding for proper 7 bit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    .line 2395
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2397
    :goto_1
    iput-boolean v14, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz p9, :cond_4

    if-eqz p10, :cond_4

    move v6, v14

    :goto_2
    move/from16 v5, p15

    goto :goto_3

    :cond_4
    move v6, v13

    goto :goto_2

    .line 2405
    :goto_3
    invoke-static {v1, v4, v6, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2409
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 2412
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz p10, :cond_5

    if-eqz p16, :cond_6

    :cond_5
    move v13, v14

    :cond_6
    const/16 v19, 0x0

    const/16 v23, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v14, p14

    move/from16 v18, p17

    move-wide/from16 v20, p18

    move/from16 v22, p20

    move-wide/from16 v24, p21

    move/from16 v17, v5

    move-object v5, v0

    .line 2411
    invoke-virtual/range {v2 .. v25}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 2417
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    invoke-static/range {p18 .. p19}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2417
    invoke-static {v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_8
    move/from16 v6, p7

    move-object v15, v12

    move-object v12, v2

    .line 2424
    invoke-virtual {v12, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p8, :cond_9

    .line 2426
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 2427
    invoke-virtual {v0, v5}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 2429
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2430
    const-string v2, "LastSentMsg"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2431
    iget-object v2, v12, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 2432
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p0, p8

    move-object/from16 p7, v0

    move-object/from16 p3, v1

    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    .line 2431
    invoke-virtual/range {p0 .. p7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 2434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v10

    :cond_9
    if-eqz p9, :cond_a

    move v3, v14

    goto :goto_5

    :cond_a
    move v3, v13

    .line 2443
    :goto_5
    invoke-static {v15}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    iget v6, v15, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, v15, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v2, p5

    move/from16 v5, p7

    move/from16 v8, p17

    move/from16 v9, p20

    .line 2441
    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2446
    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 2448
    invoke-virtual {v12}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz p10, :cond_b

    if-eqz p16, :cond_c

    :cond_b
    move v13, v14

    :cond_c
    const/16 v19, 0x0

    const/16 v23, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v14, p14

    move/from16 v17, p15

    move/from16 v18, p17

    move-wide/from16 v20, p18

    move/from16 v22, p20

    move-wide/from16 v24, p21

    move-object v2, v12

    move-object/from16 v12, p6

    .line 2447
    invoke-virtual/range {v2 .. v25}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    .line 2454
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsmSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    invoke-static/range {p18 .. p19}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2454
    invoke-static {v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method protected static greylist-max-r getNextConcatenatedRef()I
    .locals 1

    .line 289
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static blacklist getNotInServiceError(I)I
    .locals 1

    .line 0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method private blacklist getTpmrValueFromSIM()I
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmssTpmrValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist handleMessageRefStatus(Landroid/os/Message;)V
    .locals 2

    .line 599
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 600
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "SMSDispatcher"

    if-eqz p1, :cond_0

    .line 601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update TP - Message reference value to SIM "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 603
    :cond_0
    const-string p0, "TP - Message reference updated to SIM Successfully"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 3100
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_0

    return-void

    .line 3101
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3103
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3104
    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move/from16 v8, p3

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 3105
    invoke-virtual {v0, v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3107
    :cond_1
    array-length v2, v1

    if-lez v2, :cond_2

    .line 3110
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_2

    .line 3111
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v2

    move-object v1, v2

    .line 3112
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    const-string v4, "3gpp2"

    .line 3113
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aget-object v6, p1, v3

    iget-wide v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 3117
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v6

    aget-object v9, p1, v3

    .line 3118
    invoke-virtual {v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v9

    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object v12, p1, v3

    iget-object v12, v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 3119
    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    aget-object v12, p1, v3

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 3120
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v12

    aget-object v3, p1, v3

    .line 3121
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v13

    move v3, v4

    const/4 v4, 0x0

    move-wide/from16 v16, v7

    move v8, v6

    move-wide/from16 v6, v16

    .line 3111
    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZI)V

    .line 3122
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3124
    invoke-virtual {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3127
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    .line 3126
    invoke-virtual {v1, v0, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3134
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3135
    throw v0
.end method

.method private blacklist isBlockSmsForNonAIS()Z
    .locals 2

    .line 4803
    const-string v0, "ro.boot.carrierid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4804
    const-string v0, "[Thailand AIS] AIS network lock is supported"

    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string v0, "sms_networklock_allow_sms"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4806
    const-string p0, "[Thailand AIS] Blocked Non-AIS SIM card"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isInternationalNumber(Ljava/lang/String;)Z
    .locals 1

    .line 4846
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 4847
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 4849
    :try_start_0
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 4850
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p0

    .line 4851
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    if-eq p1, p0, :cond_0

    .line 4853
    const-string p0, "SMSDispatcher"

    const-string p1, "international number"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4857
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNotMonitoringApp(Ljava/lang/String;)Z
    .locals 0

    .line 4238
    const-string p0, "com.sec.android.app.safetyassurance"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logWithLocalLog(Ljava/lang/String;)V
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 756
    const-string p0, "SMSDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist makeBlockedSmsDialog()V
    .locals 3

    .line 4814
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIsBlockedDialogDisplayed:Z

    if-nez v0, :cond_0

    .line 4815
    const-string v0, "SMSDispatcher"

    const-string v1, "Show Dialog for Non-AIS SIM card."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 4816
    sput-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIsBlockedDialogDisplayed:Z

    .line 4817
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 4818
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104092d

    .line 4819
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 4820
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 4827
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 4828
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 4829
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4831
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4832
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4833
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4834
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4836
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private blacklist processSendMultipartSmsResponse([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I[I)V
    .locals 9

    .line 1155
    const-string v0, "SMSDispatcher"

    if-nez p1, :cond_0

    .line 1156
    const-string p0, "processSendMultipartSmsResponse: null trackers"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    const/4 v5, 0x1

    if-eq p2, v5, :cond_3

    if-eq p2, v3, :cond_1

    .line 1213
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSendMultipartSmsResponse: Unknown result "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Retry on carrier network. "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p1, v4

    iget-wide v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1215
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1213
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1183
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSendMultipartSmsResponse: Sending SMS by CarrierMessagingService failed. "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    iget-wide v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1185
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1183
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    .line 1188
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_6

    if-eqz p3, :cond_2

    .line 1190
    array-length v0, p3

    if-le v0, p2, :cond_2

    .line 1191
    aget v0, p3, p2

    goto :goto_1

    :cond_2
    move v0, v4

    .line 1193
    :goto_1
    new-instance v5, Landroid/os/AsyncResult;

    aget-object v6, p1, p2

    new-instance v7, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v5, v6, v7, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1194
    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1193
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1205
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processSendMultipartSmsResponse: Sending SMS by CarrierMessagingService failed. Retry on carrier network. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, v4

    iget-wide v1, p3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1207
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1205
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1162
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSendMultipartSmsResponse: Sending SMS by CarrierMessagingService succeeded. "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    iget-wide v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1164
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1162
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    .line 1167
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_6

    if-eqz p3, :cond_5

    .line 1169
    array-length v0, p3

    if-le v0, p2, :cond_5

    .line 1170
    aget v0, p3, p2

    goto :goto_3

    :cond_5
    move v0, v4

    .line 1172
    :goto_3
    new-instance v5, Landroid/os/AsyncResult;

    aget-object v6, p1, p2

    new-instance v7, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {v5, v6, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1173
    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1172
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private greylist-max-r processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 7

    .line 954
    const-string v0, "SMSDispatcher"

    if-nez p1, :cond_0

    .line 955
    const-string p0, "processSendSmsResponse: null tracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 959
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v4, -0x1

    iget-wide v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    const/4 v3, 0x0

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 962
    iput p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    const/4 p3, 0x2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 1017
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSendSmsResponse: Unknown result "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Retry on carrier network. "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1019
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1017
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->resetResultCodeFromCarrierMessagingService(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1023
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 998
    :cond_1
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSendSmsResponse: Sending SMS by CarrierMessagingService failed. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1002
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 998
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance p2, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p2, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1008
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processSendSmsResponse: Sending SMS by CarrierMessagingService failed. Retry on carrier network. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1010
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1008
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->resetResultCodeFromCarrierMessagingService(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 967
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSendSmsResponse: Sending SMS by CarrierMessagingService succeeded. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 969
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 967
    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist resetResultCodeFromCarrierMessagingService(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    const/4 p0, 0x0

    .line 1029
    iput p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    return-void
.end method

.method private blacklist rilErrorToSmsManagerResult(Lcom/android/internal/telephony/CommandException$Error;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I
    .locals 4

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rilErrorToSmsManagerResult: rilError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rilError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", MessageId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1604
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/32 v2, 0xee6f52e

    .line 1607
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1608
    invoke-static {v2, v3, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1609
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->NO_SMS_TO_ACK:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_BUSY:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUBSCRIPTION:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->NO_NETWORK_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->DEVICE_IN_USE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, p0, :cond_1

    goto/16 :goto_0

    .line 1626
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/SMSDispatcher$3;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 1704
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rilErrorToSmsManagerResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1705
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1704
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x7c

    return p0

    :pswitch_0
    const/16 p0, 0x89

    return p0

    :pswitch_1
    const/16 p0, 0x88

    return p0

    :pswitch_2
    const/16 p0, 0x87

    return p0

    :pswitch_3
    const/16 p0, 0x86

    return p0

    :pswitch_4
    const/16 p0, 0x85

    return p0

    :pswitch_5
    const/16 p0, 0x84

    return p0

    :pswitch_6
    const/16 p0, 0x83

    return p0

    :pswitch_7
    const/16 p0, 0x82

    return p0

    :pswitch_8
    const/16 p0, 0x81

    return p0

    :pswitch_9
    const/16 p0, 0x80

    return p0

    :pswitch_a
    const/16 p0, 0x7f

    return p0

    :pswitch_b
    const/16 p0, 0x7e

    return p0

    :pswitch_c
    const/16 p0, 0x7d

    return p0

    :pswitch_d
    const/16 p0, 0x13

    return p0

    :pswitch_e
    const/16 p0, 0x7b

    return p0

    :pswitch_f
    const/16 p0, 0x7a

    return p0

    :pswitch_10
    const/16 p0, 0x79

    return p0

    :pswitch_11
    const/4 p0, 0x6

    return p0

    :pswitch_12
    const/16 p0, 0x78

    return p0

    :pswitch_13
    const/16 p0, 0x77

    return p0

    :pswitch_14
    const/16 p0, 0x76

    return p0

    :pswitch_15
    const/16 p0, 0x75

    return p0

    :pswitch_16
    const/16 p0, 0x74

    return p0

    :pswitch_17
    const/16 p0, 0x73

    return p0

    :pswitch_18
    const/16 p0, 0x72

    return p0

    :pswitch_19
    const/16 p0, 0x71

    return p0

    :pswitch_1a
    const/16 p0, 0x70

    return p0

    :pswitch_1b
    const/16 p0, 0x6f

    return p0

    :pswitch_1c
    const/16 p0, 0x6d

    return p0

    :pswitch_1d
    const/16 p0, 0x6c

    return p0

    :pswitch_1e
    const/16 p0, 0x6b

    return p0

    :pswitch_1f
    const/16 p0, 0x6a

    return p0

    :pswitch_20
    const/16 p0, 0x69

    return p0

    :pswitch_21
    const/16 p0, 0x68

    return p0

    :pswitch_22
    const/16 p0, 0x67

    return p0

    :pswitch_23
    const/16 p0, 0x66

    return p0

    :pswitch_24
    const/16 p0, 0x65

    return p0

    :pswitch_25
    const/16 p0, 0x64

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3

    .line 2112
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found carrier package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMSDispatcher"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2117
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 2119
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2121
    :goto_0
    new-instance p2, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected static blacklist storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 4625
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v0

    .line 4626
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    if-nez p3, :cond_0

    .line 4627
    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4628
    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    :cond_0
    if-eqz v0, :cond_1

    .line 4630
    invoke-virtual {v0}, Landroid/sec/enterprise/DeviceInventory;->isSMSCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4631
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4634
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0xed

    invoke-static {p0, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist toSmsManagerResultForSendSms(I)I
    .locals 1

    .line 1035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toSmsManagerResultForSendSms: carrierMessagingServiceResult="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    const/16 p0, 0x1d

    return p0

    :pswitch_2
    const/16 p0, 0x18

    return p0

    :pswitch_3
    const/16 p0, 0x17

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x12

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/16 p0, 0xc

    return p0

    :pswitch_a
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x8

    return p0

    :pswitch_d
    const/4 p0, 0x7

    return p0

    :pswitch_e
    const/4 p0, 0x6

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x4

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 p0, 0x7c

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 2089
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x2

    .line 2090
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 2093
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 2092
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2096
    :catch_0
    const-string p0, "SMSDispatcher"

    const-string p1, "Intent has been canceled!"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist triggerSentIntentForFailure(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 2106
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 2107
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist updateSIMLastTPMRValue(I)V
    .locals 1

    const/16 v0, 0x11

    .line 621
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 622
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setSmssTpmrValue(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private blacklist updateTPMessageReference()V
    .locals 5

    .line 608
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->updateSIMLastTPMRValue(I)V

    .line 609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 611
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v3

    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    invoke-virtual {v2, v3, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setLastUsedTPMessageReference(II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 614
    :try_start_1
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception caused on messageRef updation to DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    throw p0
.end method


# virtual methods
.method protected blacklist bNeedBackgroundSMSdialogShow([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 5

    .line 4249
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 4250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    .line 4253
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4255
    const-string v2, "[MBS] "

    const-string v3, "SMSDispatcher"

    if-nez v0, :cond_1

    .line 4256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a fresh package to show Bg Dialog"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4258
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4259
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4260
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    .line 4267
    const-string p0, "[MBS] bNeedBackgroundSMSdialogShow leave."

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4262
    :cond_1
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4263
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Already popup a alert dialog "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected blacklist bNeedMonitorBackgroundSMS([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 4

    .line 4221
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 4222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MBS] calling packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMSDispatcher"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 4223
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4224
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4225
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4226
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->isNotMonitoringApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method protected abstract greylist-max-r calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method protected abstract blacklist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method blacklist checkDestination([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 10

    .line 2747
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SMSDispatcher"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmIsForVvm(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmSkipShortCodeDestAddrCheck(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v4, "com.android.mms"

    .line 2751
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2752
    const-string v4, "com.samsung.android.messaging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2754
    const-string p0, "checkDestination: app pre-approved"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2757
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_1

    .line 2760
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2761
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2762
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v5, :cond_5

    .line 2763
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get SIM country Iso: trying network country Iso "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2765
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v7

    .line 2764
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2763
    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2767
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v6

    .line 2770
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 2771
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/SmsUsageMonitor;->setSimOperator(Ljava/lang/String;)V

    .line 2773
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2775
    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v7

    aget-object v8, p1, v3

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2776
    invoke-virtual {v7, v8, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2777
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDestination: simCountryIso="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_9

    .line 2780
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2781
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2782
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_8

    .line 2783
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get Network country Iso: trying SIM country Iso "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v8

    .line 2784
    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2783
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2787
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 2790
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2794
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v6

    aget-object v8, p1, v3

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2795
    invoke-virtual {v6, v8, v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2791
    invoke-static {v7, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v7

    .line 2797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDestination: networkCountryIso="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDestination: smsCategory="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v6, "sms_read_confirm"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2802
    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const-string v6, "#431"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2803
    const-string v0, "it\'s KT read confirm address. Allow send sms"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    .line 2808
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v6, "sms_allow_email_sms_address"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2809
    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const-string v6, "6245"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2810
    const-string v0, "it\'s email address"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    :cond_b
    if-eqz v7, :cond_c

    .line 2816
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    .line 2817
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->getShortCodeXmlFileVersion()I

    move-result v0

    .line 2818
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v6

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingShortCodeSms(II)V

    :cond_c
    if-eqz v7, :cond_14

    if-eq v7, v1, :cond_14

    if-ne v7, v5, :cond_d

    goto/16 :goto_3

    .line 2828
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "device_provisioned"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t send premium sms during Setup Wizard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide p0

    .line 2830
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2829
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2836
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->shouldBlockPremiumSmsInSatelliteMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block premium SMS in satellite mode. messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide p0

    .line 2838
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2837
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2844
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2846
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    aget-object v6, p1, v3

    .line 2847
    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :cond_10
    if-eq v0, v5, :cond_13

    if-eq v0, v4, :cond_12

    if-ne v7, v4, :cond_11

    const/16 v0, 0x8

    goto :goto_2

    :cond_11
    const/16 v0, 0x9

    .line 2876
    :goto_2
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3

    .line 2855
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User approved this app to send to premium SMS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide p0

    .line 2856
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2855
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2861
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User denied this app from sending to premium SMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v4

    .line 2862
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2861
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 2864
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2865
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3

    :cond_14
    :goto_3
    return v1
.end method

.method public greylist-max-r dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsDisposed:Z

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 4051
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4052
    const-string p2, "SMSDispatcher"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4055
    const-string p2, "mLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4057
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4058
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4060
    const-string p2, "mSmsOutgoingErrorCodes:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4062
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsOutgoingErrorCodes:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4063
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4065
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method protected greylist-max-r getCarrierAppPackageName()Ljava/lang/String;
    .locals 5

    .line 3997
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4001
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4002
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4004
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 p0, 0x0

    .line 4005
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4010
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v2}, Lcom/android/internal/telephony/CarrierSmsUtils;->getImsRcsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    .line 4012
    const-string v0, "com.google.android.ims"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method public blacklist getEmergencySearchMode()I
    .locals 0

    .line 4679
    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsEmergencySearch:I

    return p0
.end method

.method protected abstract blacklist getFormat()Ljava/lang/String;
.end method

.method protected blacklist getMaxSmsRetryCount()I
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "sms_max_retries_zero"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string v0, "sms_max_retries_one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method protected greylist-max-r getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3986
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3987
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3989
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3992
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSmsRetryDelayValue()I
    .locals 0

    .line 0
    const/16 p0, 0x7d0

    return p0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZIIZJIZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move-wide/from16 v19, p15

    move/from16 v21, p17

    move/from16 v22, p18

    move-wide/from16 v23, p19

    .line 3819
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZZJIJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    const/16 v17, -0x1

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v18, p12

    move-wide/from16 v19, p13

    move/from16 v21, p15

    move-wide/from16 v23, p16

    .line 3805
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZIIZJIZJ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v12, p12

    .line 3746
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 3747
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3749
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3750
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :cond_0
    const/16 v3, 0x40

    move-object/from16 v5, p1

    .line 3755
    :try_start_0
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    .line 3760
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 3761
    const-string v7, "destAddr"

    if-eqz v6, :cond_4

    array-length v8, v6

    if-lez v8, :cond_4

    .line 3764
    :try_start_1
    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    const-string v9, "O2U"

    const-string v10, "H3G"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, "SMSDispatcher"

    if-eqz v8, :cond_5

    :try_start_2
    const-string v8, "112"

    .line 3765
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "999"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    if-eqz v12, :cond_5

    const-string v8, "A\"ML=1;lt="

    .line 3766
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "mcc"

    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    array-length v8, v6

    const/4 v10, 0x1

    if-le v8, v10, :cond_5

    .line 3768
    const-string v8, "It has AML text "

    invoke-static {v9, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v4

    .line 3769
    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 3770
    const-string v9, "com.android.server.telecom"

    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3771
    aget-object v8, v6, v8

    invoke-virtual {v2, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 3776
    aget-object v4, v6, v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    :catch_1
    :cond_4
    move/from16 v10, p2

    goto :goto_3

    :cond_5
    if-nez v5, :cond_4

    .line 3781
    aget-object v8, v6, v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v10, p2

    :try_start_3
    invoke-virtual {v2, v8, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 3783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found packageNames[0] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v6, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :goto_3
    move-object v4, v5

    .line 3792
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3793
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 3795
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v13

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3796
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v22

    const/16 v27, 0x0

    move-object/from16 v3, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-wide/from16 v20, p18

    move/from16 v23, p20

    move/from16 v24, p21

    move-wide/from16 v25, p22

    move-object v0, v2

    move/from16 v16, v10

    move-object/from16 v2, p4

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v27}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJLcom/android/internal/telephony/SMSDispatcher-IA;)V

    return-object v0
.end method

.method protected blacklist getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;II[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 1

    .line 4524
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4525
    const-string v0, "destAddr"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4526
    const-string p1, "scAddr"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4527
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "destPort"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4528
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "origPort"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4529
    const-string p1, "data"

    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    .line 4531
    const-string p1, "smsc"

    iget-object p2, p6, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4532
    const-string p1, "pdu"

    iget-object p2, p6, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method protected blacklist getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3843
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3844
    const-string v0, "destAddr"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3845
    const-string p1, "scAddr"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3846
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "destPort"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3847
    const-string p1, "data"

    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 3850
    const-string p1, "smsc"

    iget-object p2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3851
    const-string p1, "pdu"

    iget-object p2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method protected blacklist getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3828
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3829
    const-string v0, "destAddr"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3830
    const-string p1, "scAddr"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3831
    const-string p1, "text"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 3834
    const-string p1, "smsc"

    iget-object p2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3835
    const-string p1, "pdu"

    iget-object p2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method protected greylist-max-r getSubId()I
    .locals 0

    .line 4022
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    return p0
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected greylist-max-r handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7

    .line 2992
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x1040f1f

    goto :goto_0

    :cond_1
    const p1, 0x1040f25

    :goto_0
    const/4 v0, 0x0

    .line 3003
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3004
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3005
    aget-object v3, p2, v0

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x1040f23

    .line 3007
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3006
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 3012
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x10901bf

    const/4 v5, 0x0

    .line 3014
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3017
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v5, 0x102061e

    .line 3021
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-direct {v4, p0, p2, v6, v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    const p2, 0x1020619

    .line 3024
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3025
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x102061a

    .line 3027
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x102061b

    .line 3029
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3031
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3034
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez p1, :cond_2

    const p1, 0x102061c

    .line 3035
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 3037
    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x102061d

    .line 3040
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3041
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3046
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 3047
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v1, 0x20

    if-ne p1, v1, :cond_3

    const p1, 0x10302d1

    goto :goto_1

    :cond_3
    const p1, 0x10302d2

    .line 3050
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3051
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3052
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040f20

    .line 3053
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040f22

    .line 3054
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 3055
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 3056
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 3058
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 3060
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 3061
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x20000

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3062
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3063
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3065
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p1, -0x1

    .line 3067
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    const/4 p1, -0x2

    .line 3068
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 446
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    const/16 v1, 0x12

    const/4 v2, -0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "SMSDispatcher"

    if-eq v0, v1, :cond_8

    const/16 v1, 0x16

    if-eq v0, v1, :cond_7

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    return-void

    .line 470
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 466
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 506
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 507
    const-string v0, "SMSDispatcher: EVENT_SENDING_NOT_ALLOWED - sending SHORT_CODE_NEVER_ALLOWED error code."

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void

    .line 515
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 517
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 518
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_0

    .line 520
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NEVER_ALLOWED error code."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    :cond_0
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NOT_ALLOWED error code."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 529
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending LIMIT_EXCEEDED error code."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    goto :goto_0

    .line 533
    :cond_2
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - unexpected cases."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1c

    .line 536
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    .line 537
    iget p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 539
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez p1, :cond_b

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->stopBackgroundSMS([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 485
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 486
    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v1, p1, v3

    .line 488
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v2, :cond_3

    .line 489
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 491
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 496
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 498
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez v0, :cond_b

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendBackgroundSMS([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 462
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 454
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS retry... SentIntent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] mMessageRef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 456
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 455
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 449
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 567
    :cond_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 568
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_b

    .line 569
    const-string p0, "EVENT_SEND_EMEGENCY_CALLBACK_MODE_DONE"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 558
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 559
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_b

    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SEND_EMEGENCY_CONTROL_DONE: command = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne v0, p1, :cond_b

    .line 562
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->setEmergencyCallbackMode(I)V

    return-void

    .line 552
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->makeBlockedSmsDialog()V

    return-void

    .line 474
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->bNeedBackgroundSMSdialogShow([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 476
    const-string v0, "[MBS] call handleConfirmShortCode"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 480
    :cond_9
    iget p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    return-void

    .line 583
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getTpmrValueFromSIM()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    if-ne v0, v2, :cond_b

    .line 585
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 586
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 588
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getLastUsedTPMessageReference()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    :cond_b
    return-void

    .line 574
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessageRefStatus(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleReachSentLimit([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5

    .line 2953
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2957
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2958
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040f1b

    .line 2959
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 2962
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    .line 2965
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x1040f1d

    .line 2966
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x108008a

    .line 2967
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2968
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040f1e

    .line 2969
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040f1c

    .line 2970
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2971
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2972
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 2974
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 2976
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 2977
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2978
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2979
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2981
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected blacklist handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1272
    const-string v2, "destAddr"

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1273
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1275
    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_0

    goto/16 :goto_19

    .line 1277
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_19

    .line 1282
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->setTPMRvalueToSim()V

    .line 1284
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SmsResponse;

    .line 1286
    const-string v6, "SMSDispatcher"

    if-eqz v5, :cond_2

    .line 1287
    iget v7, v5, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    goto :goto_0

    .line 1289
    :cond_2
    const-string v7, "SmsResponse was null"

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :goto_0
    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v7

    const-string v8, "sms_network_search_for_e911"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1293
    iget v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    if-le v7, v10, :cond_3

    .line 1294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Do not sent EMERGENCY_MODE_END_WITH_ECBM.. mSendingEmergencySmsCount = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    sub-int/2addr v7, v10

    iput v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    goto :goto_1

    .line 1296
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v7

    if-eq v7, v8, :cond_4

    .line 1297
    const-string v7, "EMERGENCY_MODE_END_WITH_ECBM.."

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x5

    .line 1298
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    .line 1302
    :cond_4
    :goto_1
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v11, "3gpp2"

    const/4 v12, 0x0

    if-nez v7, :cond_a

    .line 1309
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS send complete. Broadcasting intent: ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1311
    iget-object v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Application : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1318
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1319
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1318
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    throw v0

    .line 1324
    :cond_6
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 1327
    :goto_2
    iget-object v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 1329
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SmsDispatchersController;->putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1331
    iget-object v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->setPendingDeliveryIntent(Landroid/app/PendingIntent;)V

    .line 1337
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/16 v2, 0xed

    new-array v3, v12, [Ljava/lang/Object;

    .line 1336
    invoke-static {v0, v2, v3}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 1340
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    .line 1341
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1342
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isSinglePartOrLastPart()Z

    move-result v2

    .line 1341
    invoke-virtual {v0, v4, v12, v2, v10}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    .line 1344
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v13

    iget v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v0, :cond_8

    move v14, v10

    goto :goto_3

    :cond_8
    move v14, v12

    .line 1346
    :goto_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    iget-wide v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1350
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v20

    .line 1351
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v21

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1352
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v23

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1353
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v24

    .line 1354
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v25

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v18, v2

    .line 1344
    invoke-virtual/range {v13 .. v25}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZI)V

    .line 1355
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_24

    .line 1356
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1358
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1360
    iget v1, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_9

    goto :goto_4

    :cond_9
    move v10, v12

    :goto_4
    invoke-virtual {v0, v10, v12}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    return-void

    .line 1376
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/16 v7, 0xee

    new-array v9, v12, [Ljava/lang/Object;

    .line 1375
    invoke-static {v3, v7, v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 1377
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1378
    invoke-virtual {v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1380
    invoke-virtual {v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    .line 1386
    :cond_b
    iget v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    if-eqz v3, :cond_c

    .line 1390
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->toSmsManagerResultForSendSms(I)I

    move-result v3

    goto :goto_5

    .line 1393
    :cond_c
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 1395
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 1394
    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->rilErrorToSmsManagerResult(Lcom/android/internal/telephony/CommandException$Error;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v3

    .line 1398
    :goto_5
    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1400
    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    if-eqz v7, :cond_d

    move v7, v10

    goto :goto_6

    :cond_d
    move v7, v12

    .line 1401
    :goto_6
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v9

    iget-object v14, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    .line 1402
    iget v14, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    const/16 v15, 0x14

    if-lez v14, :cond_e

    if-eqz v13, :cond_e

    iget-object v14, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1403
    invoke-interface {v14}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    if-eq v14, v15, :cond_e

    if-eqz v9, :cond_f

    if-eqz v7, :cond_e

    goto :goto_7

    :cond_e
    move/from16 v16, v9

    move/from16 v27, v10

    goto :goto_8

    .line 1409
    :cond_f
    :goto_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getMaxSmsRetryCount()I

    move-result v14

    iput v14, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1411
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v10

    const-string v10, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " mRetryCount="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mImsRetry="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mMessageRef="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " SS= "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1416
    invoke-interface {v10}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v9

    iget-wide v8, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 1417
    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1411
    invoke-static {v6, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v6

    const/4 v8, -0x1

    if-nez v6, :cond_10

    if-eqz v13, :cond_10

    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1424
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    if-eq v6, v15, :cond_10

    if-eqz v16, :cond_11

    if-nez v7, :cond_11

    :cond_10
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    .line 1426
    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_15

    .line 1428
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1431
    :try_start_1
    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v6

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1432
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9

    const/4 v7, -0x1

    .line 1431
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1434
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1435
    throw v0

    .line 1437
    :cond_12
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v2

    invoke-virtual {v4, v0, v2, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1440
    :goto_9
    invoke-virtual {v1, v4, v12}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 1441
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v14

    iget v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v0, :cond_13

    move/from16 v15, v27

    goto :goto_a

    :cond_13
    move v15, v12

    .line 1443
    :goto_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1445
    invoke-static {v13}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v18

    iget-wide v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1447
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v21

    .line 1448
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v22

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1449
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1450
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v25

    .line 1451
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v26

    const/16 v17, 0x0

    move-wide/from16 v19, v2

    .line 1441
    invoke-virtual/range {v14 .. v26}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZI)V

    .line 1452
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_24

    .line 1453
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1455
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1457
    iget v1, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_14

    move/from16 v10, v27

    goto :goto_b

    :cond_14
    move v10, v12

    .line 1459
    :goto_b
    invoke-static {v13}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    .line 1457
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    return-void

    :cond_15
    const/16 v13, 0x65

    if-ne v3, v13, :cond_18

    .line 1465
    iget v6, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1466
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getMaxSmsRetryCount()I

    move-result v7

    if-ge v6, v7, :cond_18

    .line 1475
    iget v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v5, :cond_16

    .line 1477
    iget v8, v5, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    :cond_16
    move/from16 v18, v8

    const/4 v10, 0x3

    .line 1479
    invoke-virtual {v1, v10, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1480
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsRetryDelayValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1481
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v13

    iget v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v0, :cond_17

    move/from16 v14, v27

    goto :goto_c

    :cond_17
    move v14, v12

    .line 1483
    :goto_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    iget-wide v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1488
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v21

    .line 1489
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v22

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1490
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1491
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v25

    .line 1492
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v26

    const/16 v16, 0x0

    const/16 v17, 0x65

    move-wide/from16 v19, v2

    .line 1481
    invoke-virtual/range {v13 .. v26}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZI)V

    return-void

    .line 1494
    :cond_18
    iget-object v6, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1f

    .line 1496
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v5, :cond_19

    const/4 v3, 0x6

    move/from16 v32, v3

    goto :goto_d

    :cond_19
    move/from16 v32, v27

    .line 1503
    :goto_d
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1504
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1b

    .line 1505
    check-cast v3, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v3, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 1507
    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmData(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Ljava/util/HashMap;

    move-result-object v3

    .line 1508
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1509
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mOrigAddr:Ljava/lang/String;

    goto :goto_e

    :catch_0
    move/from16 v6, v32

    goto :goto_12

    .line 1512
    :cond_1a
    :goto_e
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    const-string v3, "sms_error_class_retry"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1513
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SmsResponse;

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->mErrorClass:I

    iput v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1b
    move v7, v8

    .line 1516
    :try_start_3
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1519
    :try_start_4
    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1520
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v6, v32

    .line 1519
    :try_start_5
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1522
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    :catch_1
    :goto_f
    move v8, v7

    goto :goto_12

    :catchall_2
    move-exception v0

    goto :goto_10

    :catchall_3
    move-exception v0

    move/from16 v6, v32

    :goto_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    throw v0

    :catch_2
    move/from16 v6, v32

    goto :goto_f

    :cond_1c
    move/from16 v6, v32

    .line 1525
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_11
    move/from16 v33, v7

    goto :goto_13

    :goto_12
    move/from16 v33, v8

    .line 1529
    :goto_13
    invoke-virtual {v1, v4, v12}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 1530
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v28

    iget v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v0, :cond_1d

    move/from16 v29, v27

    goto :goto_14

    :cond_1d
    move/from16 v29, v12

    .line 1532
    :goto_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    iget-wide v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1537
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v36

    .line 1538
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v37

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1539
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v39

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1540
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v40

    .line 1541
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v41

    const/16 v31, 0x0

    move-wide/from16 v34, v2

    move/from16 v32, v6

    .line 1530
    invoke-virtual/range {v28 .. v41}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZI)V

    .line 1542
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_24

    .line 1543
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1545
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1547
    iget v1, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_1e

    move/from16 v10, v27

    goto :goto_15

    :cond_1e
    move v10, v12

    :goto_15
    invoke-virtual {v0, v10, v13}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    goto/16 :goto_19

    :cond_1f
    if-eqz v5, :cond_20

    .line 1556
    iget v8, v5, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    :cond_20
    move/from16 v18, v8

    .line 1558
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1561
    :try_start_7
    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1562
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9

    move v6, v3

    move/from16 v7, v18

    .line 1561
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1564
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    :catchall_4
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    throw v0

    :cond_21
    move v6, v3

    move/from16 v7, v18

    .line 1567
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1570
    :goto_16
    invoke-virtual {v1, v4, v12}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    .line 1572
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v13

    iget v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v0, :cond_22

    move/from16 v14, v27

    goto :goto_17

    :cond_22
    move v14, v12

    .line 1574
    :goto_17
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    iget-wide v2, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1579
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v21

    .line 1580
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v22

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1581
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1582
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v25

    .line 1583
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v26

    const/16 v16, 0x0

    move-wide/from16 v19, v2

    move/from16 v17, v6

    move/from16 v18, v7

    .line 1572
    invoke-virtual/range {v13 .. v26}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZI)V

    .line 1584
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_24

    .line 1585
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1587
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1589
    iget v1, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v1, :cond_23

    move/from16 v10, v27

    goto :goto_18

    :cond_23
    move v10, v12

    :goto_18
    invoke-virtual {v0, v10, v6}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    :cond_24
    :goto_19
    return-void
.end method

.method protected blacklist handleStatusReport(Ljava/lang/Object;)V
    .locals 0

    .line 433
    const-string p0, "SMSDispatcher"

    const-string p1, "handleStatusReport() called with no subclass."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist isCdmaMo()Z
    .locals 0

    .line 4026
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1

    .line 4722
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string v0, "VZW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "911"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ro.product.first_api_level"

    .line 4723
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    .line 4724
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isE911 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isIms()Z
    .locals 1

    .line 3974
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz p0, :cond_0

    .line 3975
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result p0

    return p0

    .line 3977
    :cond_0
    const-string p0, "SMSDispatcher"

    const-string v0, "mSmsDispatchersController is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMessageRefIncrementViaTelephony()Z
    .locals 3

    .line 668
    const-string v0, "SMSDispatcher"

    .line 670
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1110264

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    :catch_0
    const-string p0, "isMessageRefIncrementViaTelephony NotFoundException Exception"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 676
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bool.config_stk_sms_send_support= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected blacklist isSMSBlocked(Ljava/lang/String;Z)Z
    .locals 7

    .line 4553
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    .line 4556
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 4557
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    .line 4558
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v0

    .line 4560
    const-string v2, "SMSDispatcher"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 4561
    const-string v5, "com.samsung.android.app.telephonyui"

    invoke-virtual {v0, v5, v4}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4562
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "telephonyui_simcard_manager_text_preference"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4563
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "value"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4564
    const-string v5, "SlotId : "

    if-eqz v0, :cond_2

    const-string v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p0, v3, :cond_2

    .line 4567
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", MDM SMS Blocked"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    goto :goto_2

    .line 4571
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", MDM SMS Allowed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_6

    .line 4575
    invoke-virtual {v1, p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4577
    const-string v0, "Outgoing MDM SMS Blocked"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_0

    .line 4580
    :cond_4
    const-string v0, "Outgoing MDM SMS Allowed"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 4582
    :goto_0
    invoke-virtual {v1, p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result p0

    if-nez p0, :cond_5

    .line 4584
    const-string p0, "Incoming MDM SMS Blocked"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    move v0, v3

    goto :goto_3

    .line 4587
    :cond_5
    const-string p0, "Incoming MDM SMS Allowed"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    move v0, v4

    goto :goto_3

    :cond_6
    :goto_1
    move p0, v4

    :goto_2
    move v0, p0

    :goto_3
    if-eqz v1, :cond_a

    .line 4593
    invoke-virtual {v1, v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz p2, :cond_9

    .line 4597
    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowed()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 4598
    invoke-virtual {v1, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move v3, v4

    :cond_8
    :goto_4
    move v5, v3

    goto :goto_5

    .line 4603
    :cond_9
    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowed()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 4604
    invoke-virtual {v1, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_a
    move v5, v4

    .line 4610
    :cond_b
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSMSBlocked="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_c

    .line 4613
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    const/16 p1, 0xef

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :cond_c
    return v5
.end method

.method public blacklist nextMessageRef()I
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isMessageRefIncrementViaTelephony()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 654
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    .line 655
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateTPMessageReference()V

    .line 656
    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMessageRef:I

    return p0
.end method

.method protected blacklist notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .locals 2

    .line 1258
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void
.end method

.method protected blacklist sendAckSMSforCCTUnlock(ILjava/lang/String;)V
    .locals 0

    .line 4445
    const-string p0, "SMSDispatcher"

    const-string p1, "sendAckSMSforCCTUnlock is supported by phone type"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendBackgroundSMS([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8

    .line 4276
    const-string v0, "[MBS] sendBackgroundSMS enter"

    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 4280
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 4282
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_7

    .line 4284
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4286
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v4, :cond_1

    .line 4287
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v4

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 4290
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 4292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MBS] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v2

    iget-object v7, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") sendBackgroundSMS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " remained."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v6, :cond_2

    .line 4294
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 4296
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 4298
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4300
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 4301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MBS] all background sms in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " have been sent."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    goto :goto_3

    .line 4305
    :cond_4
    const-string p0, "[MBS] sendBackgroundSMS never touch here !!!"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-gt v4, v0, :cond_8

    .line 4308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MBS] sendBackgroundSMS mBackgroundSmsPopupCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    if-lez v3, :cond_6

    .line 4311
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 4314
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    if-nez v0, :cond_8

    .line 4315
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4319
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MBS] there is no other background sms in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4323
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[MBS] There is no background SMS in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected greylist sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v7, 0x1

    move-object/from16 v1, p3

    .line 1808
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p7, :cond_0

    .line 1810
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x2

    .line 1811
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 1813
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1814
    const-string v2, "LastSentMsg"

    invoke-virtual {v3, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v2, v1

    .line 1815
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1816
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p7

    .line 1815
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1824
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v6

    if-eqz p8, :cond_1

    move v5, v7

    :goto_0
    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object v2, v1

    move-object/from16 v1, p4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v5, v2

    goto :goto_0

    .line 1825
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    .line 1828
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    const-wide/16 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v14, p9

    move-wide/from16 v18, p10

    move/from16 v17, v6

    move v0, v7

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 1829
    invoke-virtual/range {v2 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v1

    .line 1835
    invoke-direct {v2, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1836
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v6, p7

    .line 1839
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-direct {v2, v6}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 1842
    iget-object v0, v2, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "0"

    const-string v3, "GSD_sendData_getSubmitPduNull"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected abstract blacklist sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public blacklist sendDomainChangeSms(Ljava/lang/String;IB)V
    .locals 0

    .line 4377
    const-string p0, "SMSDispatcher"

    const-string p1, "DomainChangeSMS is only supported in CdmaSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendEmergencyNetworkControl(I)V
    .locals 7

    .line 4643
    const-string v0, "Failed to close stream, exception is: "

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 4644
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->setEmergencySearchMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v1, 0x3

    .line 4646
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->setEmergencySearchMode(I)V

    .line 4647
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 4649
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->setEmergencySearchMode(I)V

    .line 4650
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    .line 4652
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4653
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEmergencyControl: command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMSDispatcher"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x25

    .line 4656
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x7

    .line 4657
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4658
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4659
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4661
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v6, 0x21

    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4666
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 4667
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 4663
    :catch_1
    :try_start_2
    const-string p0, "IOException during send emgergency Control"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4666
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 4667
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 4669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_2
    return-void

    .line 4666
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 4667
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    :goto_4
    throw p0
.end method

.method protected abstract blacklist sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IZJ)V"
        }
    .end annotation
.end method

.method public blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZIZIJJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 2262
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 2263
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 2265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 2267
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2271
    :cond_0
    new-array v7, v5, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v9, v5, :cond_4

    .line 2275
    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v11

    const-string v12, "SPRINT"

    const-string v13, "USCC"

    const-string v14, "VZW"

    filled-new-array {v14, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "3gpp2"

    .line 2276
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2277
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v1, v11, v8, v6}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v11

    goto :goto_1

    .line 2279
    :cond_1
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v1, v11, v8}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v11

    .line 2282
    :goto_1
    iget v12, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v12, :cond_3

    if-eqz v10, :cond_2

    if-ne v10, v6, :cond_3

    :cond_2
    move v10, v12

    .line 2287
    :cond_3
    aput-object v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2290
    :cond_4
    new-array v9, v5, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 2293
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2294
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v11, v8

    .line 2296
    :goto_2
    const-string v14, "SMSDispatcher"

    if-ge v11, v5, :cond_b

    .line 2297
    new-instance v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2298
    iput v4, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v6, v11, 0x1

    .line 2299
    iput v6, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2300
    iput v5, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v1, 0x1

    .line 2307
    iput-boolean v1, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    move-object/from16 v17, v7

    .line 2308
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2309
    iput-object v8, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-ne v10, v1, :cond_5

    .line 2313
    aget-object v8, v17, v11

    iget v1, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v1, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2314
    iget v1, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v1, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_5
    if-eqz v2, :cond_6

    .line 2318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_6

    .line 2319
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 2323
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v11, :cond_7

    .line 2324
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 2326
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v21

    .line 2328
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, v1

    add-int/lit8 v1, v5, -0x1

    move/from16 v30, v11

    if-ne v11, v1, :cond_8

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v16, p10

    move/from16 v18, p12

    move-wide/from16 v22, p15

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v24, v6

    move-object v0, v9

    move-object/from16 v31, v14

    move-object/from16 v28, v17

    move-object/from16 v6, v19

    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v14, p6

    move/from16 v17, p11

    move-object v9, v8

    move v8, v10

    move-object/from16 v10, v20

    move-wide/from16 v19, p13

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    :goto_6
    invoke-direct/range {v1 .. v23}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZIJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v6

    aput-object v6, v0, v30

    if-eqz v26, :cond_a

    .line 2334
    aget-object v2, v0, v29

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v2, p9

    .line 2341
    invoke-static {v6, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fputmPersistMessage(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v9, v0

    move v10, v8

    move/from16 v11, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v8, v29

    move-object/from16 v0, p3

    goto/16 :goto_2

    .line 2336
    :cond_a
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot send multipart text. parts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " trackers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v31

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "0"

    const-string v3, "SD_sendMultipartText_null"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_b
    move-object v3, v0

    move-object v0, v9

    move-object v2, v14

    .line 2344
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 2346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found carrier package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2346
    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2349
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    return-void

    .line 2351
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No carrier package. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2351
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected abstract blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZIIIZJ)V"
        }
    .end annotation
.end method

.method protected blacklist sendOTADomestic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4427
    const-string p0, "SMSDispatcher"

    const-string p1, "sendOTADomestic is only supported in GsmSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 4213
    filled-new-array {p1}, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendRawPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2544
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2545
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2547
    iget-boolean v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "0"

    const/4 v7, 0x1

    const-string v8, "SMSDispatcher"

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    .line 2548
    const-string v2, "Device does not support sending sms."

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v11, "SD_sendRawPdu_mSmsSendDisabled"

    invoke-virtual {v2, v6, v11, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v5

    :cond_0
    :goto_0
    move-object v3, v10

    goto/16 :goto_4

    :cond_1
    if-eqz v2, :cond_2

    .line 2552
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2554
    const-string v2, "[us cdma tablet] Device does not support sending sms."

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v11, "SD_sendRawPdu_isSmsCapable"

    invoke-virtual {v2, v6, v11, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    move v2, v7

    goto :goto_0

    .line 2556
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, v1, v9

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2557
    const-string v3, "com.android.vending"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2559
    const-string v2, "[us att] Device does not support sending sms."

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v11, "SD_sendRawPdu_AttTablet"

    invoke-virtual {v2, v6, v11, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 2563
    :cond_3
    array-length v2, v1

    move v3, v9

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v11, v1, v3

    .line 2564
    invoke-virtual {v11}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "pdu"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    .line 2565
    const-string v2, "Empty PDU"

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v11, "SD_sendRawPdu_EmptyPDU"

    invoke-virtual {v2, v6, v11, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v2, v9

    :goto_3
    if-nez v2, :cond_0

    .line 2575
    aget-object v3, v1, v9

    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 2577
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 2578
    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2579
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2580
    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v3, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2586
    :cond_6
    :try_start_0
    aget-object v3, v1, v9

    .line 2588
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x2040

    .line 2587
    invoke-virtual {v12, v3, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2593
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get calling app package info: refusing to send SMS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultiTrackermessageId([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)J

    move-result-wide v11

    .line 2594
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2593
    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v11, "SD_sendRawPdu_getPackageFailure"

    invoke-virtual {v2, v6, v11, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallingUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2607
    :goto_4
    invoke-direct {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isBlockSmsForNonAIS()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_7

    .line 2608
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "SD_sendRawPdu_AISNetworkLock"

    invoke-virtual {v2, v6, v4, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2609
    invoke-direct {v0, v1, v7, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    const/16 v2, 0x16

    .line 2610
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2615
    :cond_7
    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    const-string v13, "CHN"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-boolean v11, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez v11, :cond_9

    .line 2616
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->bNeedMonitorBackgroundSMS([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2617
    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v11

    aget-object v13, v1, v9

    iget-object v13, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v11

    .line 2618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[MBS] calling packageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v1, v9

    iget-object v14, v14, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " permission: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v11, v7, :cond_8

    const/16 v2, 0x15

    .line 2620
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_8
    const/4 v13, 0x2

    if-ne v11, v13, :cond_9

    .line 2624
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    const-string v13, "SD_sendRawPdu_BackgroundPermission"

    invoke-virtual {v2, v6, v13, v11}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v7

    :cond_9
    if-eqz v2, :cond_a

    .line 2630
    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void

    .line 2637
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2639
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 2640
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v2

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    array-length v11, v1

    .line 2641
    invoke-virtual {v2, v3, v11}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2642
    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2646
    :cond_b
    const-string v2, "ril.call_block"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2647
    const-string v3, "slot1call"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-eq v7, v3, :cond_d

    :cond_c
    const-string v3, "slot2call"

    .line 2648
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_e

    .line 2649
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject send sms ,  DSDS isCallBlock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-direct {v0, v1, v7, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    .line 2652
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "SD_sendRawPdu_DSDSReject"

    invoke-virtual {v1, v6, v2, v0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2657
    :cond_e
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    const-string v3, "LGU"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2658
    aget-object v2, v1, v9

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2659
    const-string v3, "112"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "119"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "118"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2660
    :cond_f
    const-string v3, "Send DETECT_EMERGENCY_STATE intent for LGT"

    invoke-static {v8, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2662
    const-string v5, "+82"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2665
    :cond_10
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lgt.action.DETECT_EMERGENCY_STATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    .line 2666
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2667
    const-string v5, "type"

    const-string v6, "sms"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2668
    const-string v5, "number"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2669
    const-string v2, "ctn"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2670
    const-string v2, "com.lguplus.lgugpsnwps"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2671
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    goto :goto_5

    :cond_11
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2672
    :goto_5
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2676
    :cond_12
    array-length v2, v1

    move v3, v9

    :goto_6
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 2684
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.samsung.rcs.serviceprovider/rcs_big_data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2685
    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_14

    .line 2687
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_15

    .line 2688
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_15

    move-object v6, v10

    move-object v7, v6

    move-object v11, v7

    .line 2690
    :cond_13
    :try_start_3
    const-string v12, "remoteRcsStatus"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2691
    const-string v12, "remoteLegacyLatching"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2692
    const-string v12, "phoneNumber"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2693
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v12, :cond_13

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v10, v5

    goto/16 :goto_f

    :catch_1
    move-object v6, v10

    :goto_7
    move-object v7, v6

    move-object v11, v7

    goto :goto_a

    .line 2697
    :cond_14
    :try_start_4
    const-string v6, "no record for RCS found"

    invoke-static {v8, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_15
    move-object v6, v10

    move-object v7, v6

    move-object v11, v7

    :goto_8
    if-eqz v5, :cond_16

    .line 2703
    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :catch_2
    move-object v5, v10

    move-object v6, v5

    goto :goto_7

    .line 2700
    :catch_3
    :goto_a
    :try_start_5
    const-string v12, "failed to get record for RCS"

    invoke-static {v8, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_16

    goto :goto_9

    .line 2705
    :cond_16
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remoteRcsStatus= "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " remoteLegacyLatching= "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " phoneNumber= "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    sget-boolean v12, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v12, :cond_17

    goto :goto_c

    :cond_17
    const-string v11, "xxxx"

    :goto_c
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2705
    invoke-static {v8, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const-string v5, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2709
    const-string v5, "Latching. Send SMSL bigdata"

    invoke-static {v8, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v7, "SMSL"

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    goto :goto_d

    .line 2711
    :cond_18
    const-string v5, "remote_offline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2712
    const-string v5, "remote_offline. Send SMOF bigdata"

    invoke-static {v8, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v7, "SMOF"

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    .line 2716
    :cond_19
    :goto_d
    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v5, :cond_1a

    .line 2717
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_e

    .line 2719
    :cond_1a
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :goto_f
    if-eqz v10, :cond_1b

    .line 2703
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2704
    :cond_1b
    throw v0

    .line 2726
    :cond_1c
    aget-object v2, v1, v9

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isInternationalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2727
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "SOIN"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    .line 2729
    :cond_1d
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object v3, v1, v9

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2730
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "SOEN"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    .line 2733
    :cond_1e
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2734
    new-instance v1, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;-><init>(Landroid/content/Context;)V

    new-array v0, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1f
    return-void
.end method

.method protected blacklist sendRawPduSat(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 20

    .line 4505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRawPduSat: format= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sentIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " deliveryIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4509
    const-string v0, "smsc"

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4510
    const-string v0, "pdu"

    move-object/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4511
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v17

    const-wide/16 v15, 0x0

    .line 4514
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 4512
    invoke-virtual/range {v2 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 4515
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3

    .line 3086
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v0, :cond_0

    .line 3087
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 3089
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is null. Retry failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 3090
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3089
    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "0"

    const-string v1, "SD_sendRetrySms_ISDnull"

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected abstract greylist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected greylist-max-r sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 1225
    filled-new-array {p1}, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2

    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->shouldBlockSmsForEcbm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    const-string v0, "SMSDispatcher"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1d

    const/4 v1, -0x1

    .line 1234
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsTrackersFailure([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    .line 1237
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "0"

    const-string v1, "CSD_sendSubmitPdu_ECM"

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 1241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected abstract blacklist sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IJ)V
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V
    .locals 19

    const/16 v16, 0x0

    .line 1954
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    .line 1952
    invoke-virtual/range {v0 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V
    .locals 22

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendText id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p14 .. p15}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "SMSDispatcher"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v18

    const/4 v10, 0x0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v10

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v6, p10

    move/from16 v7, p12

    move/from16 v8, v18

    .line 2065
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    .line 2069
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 2071
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v2, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v9, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move/from16 v19, p16

    move-wide/from16 v20, p17

    move-object v1, v0

    move v0, v10

    move-object v10, v3

    move/from16 v3, p8

    .line 2070
    invoke-virtual/range {v1 .. v21}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 2075
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2076
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsDispatcher.sendText(): getSubmitPdu() returned null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-static/range {p14 .. p15}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2079
    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p4

    .line 2081
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected blacklist sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZI)V
    .locals 22

    move-object/from16 v8, p7

    const/4 v9, 0x0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v6, p10

    move/from16 v7, p12

    .line 4459
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v4

    .line 4462
    const-string v1, "SMSDispatcher"

    if-eqz v4, :cond_2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    .line 4463
    invoke-virtual {v0, v2, v3, v10, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 4465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    const-string v1, "callingPkg"

    invoke-virtual {v4, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4468
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v18

    .line 4469
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    .line 4472
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v20

    const/4 v11, 0x1

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v3, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p12

    move-object v1, v0

    move-object v2, v8

    move v0, v9

    move-object/from16 v8, p6

    move/from16 v9, p11

    .line 4469
    invoke-virtual/range {v1 .. v21}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    move-object v3, v1

    .line 4474
    invoke-direct {v3, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4475
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_1
    return-void

    :cond_2
    move-object v3, v0

    .line 4478
    const-string v0, "SmsDispatcher.sendTextAutoLogin(): getSubmitPduForAutoLogin() returned null"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p4

    .line 4479
    invoke-direct {v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected blacklist sendTextNSRI(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 0

    .line 4437
    const-string p0, "SMSDispatcher"

    const-string p1, "sendTextNSRI is only supported in GsmSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIIIJ)V
.end method

.method public blacklist setEmergencyCallbackMode(I)V
    .locals 6

    .line 4695
    const-string v0, "Failed to close stream, exception is: "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4696
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEmergencyCallbackMode: command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMSDispatcher"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x25

    .line 4699
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x8

    .line 4700
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 4701
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4702
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4704
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v5, 0x22

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4709
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 4710
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4706
    :catch_1
    :try_start_2
    const-string p0, "IOException during set sms emgergency callback mode"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4709
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 4710
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 4712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 4709
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 4710
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 4712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    :goto_3
    throw p0
.end method

.method public blacklist setEmergencySearchMode(I)V
    .locals 0

    .line 4687
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsEmergencySearch:I

    return-void
.end method

.method protected blacklist setTPMRvalueToSim()V
    .locals 4

    .line 4171
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    .line 4172
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 4173
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_4

    .line 4174
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 4175
    const-string v2, "SMSDispatcher"

    if-eqz v1, :cond_3

    .line 4176
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4178
    const-string p0, "mUsimRecords is null Can not update SMSS"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 4181
    const-string p0, "SMS over IMS. Usim is exists. set SMSS to SIM"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setSMSS()V

    return-void

    .line 4184
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteModeStatus()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4185
    const-string p0, "SMS over Satellite. Usim is exists. set SMSS to SIM"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setSMSS()V

    return-void

    .line 4189
    :cond_2
    const-string p0, "SMS over CS. Usim is exists. get SMSS from SIM"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getSMSS()V

    return-void

    .line 4194
    :cond_3
    const-string p0, "UsimUiccApplication is null"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public blacklist shouldBlockPremiumSmsInSatelliteMode()Z
    .locals 6

    .line 2885
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    .line 2887
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteBeingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SMSDispatcher"

    if-eqz v0, :cond_0

    .line 2888
    const-string p0, "shouldBlockPremiumSmsInSatelliteMode: block premium sms when satellite is being enabled"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2893
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2894
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 2895
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSupportedServicesOnCarrierRoamingNtn(I)[I

    move-result-object p0

    const/4 v3, 0x3

    .line 2896
    invoke-static {p0, v3}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v3

    .line 2898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldBlockPremiumSmsInSatelliteMode: satelliteSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isSmsSupported="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " services="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2898
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, v3, 0x1

    return p0

    .line 2904
    :cond_1
    const-string p0, "shouldBlockPremiumSmsInSatelliteMode: return false."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract blacklist shouldBlockSmsForEcbm()Z
.end method

.method protected blacklist stopBackgroundSMS([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7

    .line 4331
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4334
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4335
    const-string v2, "SMSDispatcher"

    if-eqz v0, :cond_6

    .line 4336
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 4338
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4339
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v4

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 4341
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 4343
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 4344
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4346
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MBS] all background sms in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " have been rejected."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4350
    :cond_2
    const-string p0, "[MBS] stopBackgroundSMS never touch here !!!"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-gt v4, v6, :cond_6

    .line 4353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MBS] stopBackgroundSMS mBackgroundSmsPopupCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    if-lez v0, :cond_4

    .line 4356
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(Z[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 4359
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSmsPopupCount:I

    if-nez v0, :cond_6

    .line 4360
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4364
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MBS] there is no other background sms in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mBackgroundSMSmap:Ljava/util/HashMap;

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4368
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[MBS] There is no background SMS in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 4204
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Active phone changed to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
