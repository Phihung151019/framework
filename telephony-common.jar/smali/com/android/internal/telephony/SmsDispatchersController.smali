.class public Lcom/android/internal/telephony/SmsDispatchersController;
.super Landroid/os/Handler;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;,
        Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;,
        Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;,
        Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_SMS_HANDLER_EXITING_WAITING_STATE:I = 0x11

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field public static final blacklist SMS_STATUS_1X:I = 0x3

.field public static final blacklist SMS_STATUS_3GPP:I = 0x4

.field public static final blacklist SMS_STATUS_IMS:I = 0x2

.field public static final blacklist SMS_STATUS_INVALID:I = 0x0

.field public static final blacklist SMS_STATUS_NO_SMS:I = 0x1

.field private static blacklist gcf_flag:Z

.field private static blacklist retryGetSmsc:I

.field private static blacklist sBootCompleted:Z

.field private static blacklist sSimLoaded:Z


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private blacklist mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentWaitElapsedDuration:J

.field private blacklist mCurrentWaitStartTime:J

.field private blacklist mDcnAddress:Ljava/lang/String;

.field private blacklist mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

.field private blacklist mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

.field private blacklist mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

.field private blacklist mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mGcfModeReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private blacklist mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private blacklist mIms:Z

.field private blacklist mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

.field private blacklist mImsSmsFormat:Ljava/lang/String;

.field private blacklist mIsSmsBlockedInNbIotNtn:Z

.field private blacklist mLastInServiceTime:J

.field private blacklist mLteSmsStatus:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPrevVolteRegi:Z

.field private final blacklist mResultReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSatInboundSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

.field private blacklist mSatSmsDispatcher:Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;

.field private final blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSmsc:Ljava/lang/String;

.field private final blacklist mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method public static synthetic blacklist $r8$lambda$9IZlH3lMqlk8Dga9zlxh4j1pmL4(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SmsDispatchersController;->lambda$handleSendSmsUsingDomainSelection$2(Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9Xc15fBiK8GQEMfmDqc6iRhZfJQ(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->lambda$requestDomainSelection$0(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DtttI0kwf4PvR9nDPk9Gc_7yIK8(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->lambda$requestDomainSelection$1(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rgEYpP7iDWqwKeOuykQAvVPrVwg(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;)Z
    .locals 1

    const/16 v0, 0x20

    .line 1558
    invoke-virtual {p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/SmsDispatchersController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmsc(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPHONE_ON_KEY()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBootCompleted()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sBootCompleted:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSimLoaded()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sSimLoaded:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputretryGetSmsc(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBootCompleted(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/internal/telephony/SmsDispatchersController;->sBootCompleted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsSimLoaded(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/internal/telephony/SmsDispatchersController;->sSimLoaded:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 2617
    const-string v0, "phone4_on"

    const-string v1, "phone5_on"

    const-string v2, "phone1_on"

    const-string v3, "phone2_on"

    const-string v4, "phone3_on"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2622
    sput-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->gcf_flag:Z

    .line 2644
    sput v0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    .line 2655
    sput-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sBootCompleted:Z

    .line 2656
    sput-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sSimLoaded:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 10

    .line 472
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, -0x1

    .line 167
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v2, 0x0

    .line 169
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 171
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 178
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const/4 v1, 0x0

    .line 195
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 196
    const-string v2, "unknown"

    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 199
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    .line 206
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIsSmsBlockedInNbIotNtn:Z

    .line 237
    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsDispatchersController$1;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    .line 537
    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsDispatchersController$2;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2611
    const-string v3, "4437501000"

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    .line 2612
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    .line 2639
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    .line 2658
    iput v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    .line 3482
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$3;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 3626
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$4;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGcfModeReceiver:Landroid/content/BroadcastReceiver;

    .line 474
    const-string v1, "SmsDispatchersController"

    const-string v3, "SmsDispatchersController created"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    .line 477
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 478
    iget-object p3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 479
    iput-object p5, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 481
    iget-object v3, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 483
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 487
    new-instance v3, Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v4, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, p1, p0, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 488
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, p1, p4, p5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 491
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 492
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v7, v3

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    move-object v6, p1

    move-object v5, p2

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 496
    new-instance p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p1, v6, p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 498
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    new-instance p1, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;

    invoke-direct {p1, v6, p0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatSmsDispatcher:Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;

    .line 500
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5, v6, v8, v9}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->makeSatInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatInboundSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    .line 502
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object p4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    iget-object p5, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatInboundSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {p1, p2, p4, p5, v9}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object p4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-static {p1, p2, p4, v0, v9}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 509
    :goto_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->registerNewMessageNotificationActionHandler(Landroid/content/Context;)V

    const/16 p1, 0xb

    .line 511
    invoke-interface {p3, p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p1, 0xc

    .line 512
    invoke-interface {p3, p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 514
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->registerSamsungEvent()V

    .line 517
    const-string p1, "user"

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 518
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 523
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p2, 0xe

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    .line 529
    :cond_1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 530
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 532
    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 6

    .line 466
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method private static blacklist asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist broadcastCbSettingsAvailable()V
    .locals 1

    const/4 v0, -0x1

    .line 3350
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable(I)V

    return-void
.end method

.method private blacklist broadcastCbSettingsAvailable(I)V
    .locals 4

    .line 2709
    const-string v0, "[CB] broadcastCbSettingsAvailable method"

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 2712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CB] broadcastCbSettingsAvailable method with phoneId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2715
    :cond_0
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] broadcastCbSettingsAvailable method phoneIdSimOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 p1, 0x10000000

    .line 2718
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 2719
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2720
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2721
    const-string p1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2722
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 3254
    new-array v0, v0, [Ljava/lang/String;

    .line 3255
    invoke-static {p1}, Lcom/android/internal/telephony/SmsDispatchersController;->extractSmscNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3258
    const-string p1, "NotSet"

    aput-object p1, v0, v1

    goto :goto_0

    .line 3260
    :cond_0
    aput-object p1, v0, v1

    .line 3261
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    .line 3264
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_SMSC_ACTION smsc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3265
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 3264
    const-string v4, "SmsDispatchersController"

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/internal/telephony/SmsLogger;->addTimeline(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsc = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 3269
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSmsServiceCenter function is not applicable for CDMA smsc: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3274
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.provider.Telephony.GET_SMSC"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 3276
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3277
    const-string v1, "smsc"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3278
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3282
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist disposeSamsungEvent()V
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2691
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unSetOnSmsDeviceReady(Landroid/os/Handler;)V

    .line 2692
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public static blacklist extractSmscNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 3129
    const-string v0, "NotSet"

    const-string v1, "SmsDispatchersController"

    if-nez p0, :cond_0

    .line 3130
    const-string p0, "smsc is null.\n"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3135
    :cond_0
    const-string v2, "\"?(\\+?)([0-9]+)\"?,([0-9]*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3136
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3138
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 3139
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    .line 3143
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 3145
    :try_start_0
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const/16 v6, 0x90

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 3160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3162
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilSmsc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " smsc = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 3154
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid smsc format. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1573
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1579
    invoke-virtual {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->finishSelection()V

    :cond_1
    if-eqz p1, :cond_3

    .line 1583
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getPendingRequests()Ljava/util/List;

    move-result-object v1

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDomainSelection: pendingRequests="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 1587
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1588
    iget-object v2, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    goto :goto_1

    .line 1591
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->clearAllRequests()V

    .line 1592
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    :cond_3
    return-void
.end method

.method private blacklist getCurrentTimeAsSemiOctet()Ljava/lang/String;
    .locals 4

    .line 3465
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 3466
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3467
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 3468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3469
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3470
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 3471
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 3475
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 775
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmscAddressFromIccEf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 779
    :cond_0
    :try_start_1
    const-string p0, "SmsDispatchersController"

    const-string p1, "getSmscAddressFromIccEf iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    throw p0
.end method

.method private blacklist getTpmr()V
    .locals 3

    .line 2730
    const-string v0, "getTpmr"

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 2733
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2735
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2737
    const-string p0, "UsimRecords is null Can not update SMSS"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2739
    :cond_0
    const-string v0, "Usim is exists so get SMSS"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSMSS()V

    return-void

    .line 2743
    :cond_1
    const-string p0, "usimUiccApplication is null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleDomainSelectionTerminatedAbnormally(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .locals 2

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDomainSelectionTerminatedAbnormally: pendingRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getPendingRequests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1605
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    const/4 p0, 0x0

    .line 1606
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-void
.end method

.method private blacklist handleInService(J)V
    .locals 5

    .line 823
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 827
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 828
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    iget-wide v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long/2addr v1, v3

    .line 827
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 832
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private blacklist handleOutOfService(J)V
    .locals 0

    const-wide/16 p1, -0x1

    .line 842
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private blacklist handlePartialSegmentTimerExpiry(J)V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitingState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 867
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    .line 849
    :cond_1
    :goto_0
    const-string p1, "handlePartialSegmentTimerExpiry: ignoring timer expiry as InboundSmsHandler is in WaitingState"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleRadioStateChanged()V
    .locals 9

    .line 2755
    const-string v0, "gsm.sim.state"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRadioStateChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsDispatchersController"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    .line 2759
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 2760
    iget-object v7, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 2761
    sget-boolean v7, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v7, :cond_1

    .line 2762
    :cond_0
    const-string v7, "LOADED"

    invoke-static {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2764
    const-string v0, "get smsc because mSmsc is null and SimState is on and ready(loaded)"

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 2769
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 2771
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_3

    .line 2772
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v6, :cond_3

    .line 2773
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneId SIM off is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    rsub-int/lit8 v0, v0, 0x1

    aget-object v3, v3, v0

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 2778
    const-string v1, "LOADED,LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RADIO_OFF and SIM state is Ready(loaded), broadcast for SIM is on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleSendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    .locals 4

    .line 1429
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-nez v0, :cond_0

    .line 1431
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-wide v2, p2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    .line 1435
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    .line 1436
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isTestEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 1434
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->startEmergencySms(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1437
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 1446
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSmsReceivedViaIms(Ljava/lang/String;)V
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1536
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencySmsReceived()V

    :cond_0
    return-void
.end method

.method private blacklist handleSmsSentCompletedUsingDomainSelection(Ljava/lang/String;JZZZ)V
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-eqz v0, :cond_1

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1483
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p1, p4, p2, p6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->endSms(Ljava/lang/String;ZIZ)V

    :cond_1
    return-void
.end method

.method private blacklist isCdmaMo(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1306
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1309
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2

    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2327
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    return v1

    .line 2329
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isInService()Z
    .locals 0

    .line 897
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 898
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSmsDomainSelectionEnabled()Z
    .locals 0

    .line 1292
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    .line 1293
    invoke-interface {p0}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;->isDomainSelectionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isTestEmergencyNumber(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1553
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1554
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    return v0

    .line 1556
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    .line 1557
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private synthetic blacklist lambda$handleSendSmsUsingDomainSelection$2(Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .locals 3

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEmergencySms("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SmsDispatchersController;->logi(Ljava/lang/String;)V

    .line 1443
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestDomainSelection$0(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .locals 0

    .line 1359
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    .line 1360
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestDomainSelection$1(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .locals 0

    .line 1371
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    .line 1372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 2590
    const-string p0, "SmsDispatchersController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2

    .line 2594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsDispatchersController ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifySmsSentToDatagramDispatcher(JZZ)V
    .locals 2

    .line 1521
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1523
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object p3

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1524
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 1523
    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->onSendSmsDone(IJZ)V

    :cond_0
    return-void
.end method

.method private blacklist notifySmsSentToEmergencyStateTracker(Ljava/lang/String;JZZZ)V
    .locals 1

    .line 1507
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1510
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1511
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1512
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1513
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1514
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg5:Ljava/lang/Object;

    const/16 p1, 0x13

    .line 1515
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist reevaluateTimerStatus()V
    .locals 6

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 791
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 796
    iget-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 804
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 806
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    return-void

    .line 808
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 809
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleInService(J)V

    return-void

    .line 811
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleOutOfService(J)V

    return-void
.end method

.method private blacklist registerSamsungEvent()V
    .locals 9

    .line 2667
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2668
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x21

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2671
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2672
    const-string v0, "com.samsung.action.SIM_REFRESH_INIT"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2673
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2674
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2675
    const-string v0, "com.samsung.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2676
    const-string v0, "android.intent.action.LTE_SMS_STATUS"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2677
    const-string v0, "com.samsung.ims.dm.DM_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2678
    const-string v0, "android.provider.action.DEFAULT_MSG_APP_INFO_LOGGING"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2680
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "com.sec.android.phone.permission.AT_COMMAND"

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGcfModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.GCF_MODE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .locals 4

    .line 1343
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1344
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1345
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;-><init>(III)V

    .line 1346
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->build()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object v0

    .line 1349
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;

    .line 1353
    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;->requestDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1354
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    new-instance p1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 1364
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;

    .line 1365
    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;->requestDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1366
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    new-instance p1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private blacklist requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    .locals 4

    .line 1388
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isDomainSelectionRequested()Z

    move-result v0

    .line 1391
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->addRequest(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    .line 1393
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1394
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    .line 1396
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v3

    .line 1395
    invoke-interface {p2, v1, v2, v3}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;->getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestDomainSelection: fallback for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1401
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    return-void

    .line 1404
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    :cond_1
    if-nez v0, :cond_2

    .line 1412
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    :cond_2
    return-void
.end method

.method private blacklist resetPartialSegmentWaitTimer()V
    .locals 4

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 873
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 880
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    .line 882
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    .line 881
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 889
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 890
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    :goto_0
    const-wide/16 v0, 0x0

    .line 893
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    return-void
.end method

.method private blacklist sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V
    .locals 8

    .line 1620
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getPendingRequests()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 1632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAllPendingRequests: fallback - imsAvailable="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 1633
    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1632
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 1637
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    move v4, v1

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1644
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1645
    iget v6, v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    if-eq v6, v1, :cond_7

    if-eq v6, v2, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    goto :goto_1

    .line 1663
    :cond_2
    iget-object v5, v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-ne p2, v2, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    goto :goto_1

    .line 1660
    :cond_4
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    if-eq p2, v2, :cond_6

    .line 1652
    iget-object v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v7, v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    .line 1654
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move p2, v2

    .line 1657
    :cond_6
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    goto :goto_1

    .line 1647
    :cond_7
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendData(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    goto :goto_1

    .line 1671
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->clearAllRequests()V

    return-void
.end method

.method private blacklist sendData(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    move/from16 v4, p1

    if-ne v4, v2, :cond_0

    .line 1685
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1687
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/PendingIntent;

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 1685
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1689
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1690
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1692
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/PendingIntent;

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 1690
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1695
    :cond_1
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1697
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroid/app/PendingIntent;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/app/PendingIntent;

    iget-boolean v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v25, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v26, v9

    .line 1695
    invoke-virtual/range {v16 .. v27}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void
.end method

.method private blacklist sendMultipartText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    move/from16 v3, p1

    if-ne v3, v2, :cond_0

    .line 1749
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 1755
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1756
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 1762
    :cond_1
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v31, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move-wide/from16 v29, v14

    invoke-virtual/range {v16 .. v32}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void
.end method

.method private blacklist sendMultipartTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextInternal: messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 2334
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2335
    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 2336
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v2

    const-string v3, "sendMultipartText"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void

    .line 2342
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2344
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 2350
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2351
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 2357
    :cond_2
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v31, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move-wide/from16 v29, v14

    invoke-virtual/range {v16 .. v32}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void
.end method

.method private blacklist sendMultipartTextWithCallbackNumberAndPriorityInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2937
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 2938
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2939
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callbackNumber:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-virtual/range {v3 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZJ)V

    return-void

    .line 2943
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callbackNumber:Ljava/lang/String;

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    iget-wide v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move-wide/from16 v27, v12

    invoke-virtual/range {v16 .. v28}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZJ)V

    return-void
.end method

.method private blacklist sendMultipartTextWithOptionsInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2980
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 2981
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2982
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->replyPath:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expiry:I

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->serviceType:I

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->encodingType:I

    iget-boolean v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    iget-wide v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/4 v9, 0x0

    move/from16 v16, v0

    move-wide/from16 v17, v1

    invoke-virtual/range {v3 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZJ)V

    return-void

    .line 2987
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->replyPath:Z

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expiry:I

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->serviceType:I

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->encodingType:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move-wide/from16 v30, v14

    invoke-virtual/range {v16 .. v31}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZJ)V

    return-void
.end method

.method private blacklist sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    .locals 1

    .line 1463
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1464
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1465
    iput-object p2, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1466
    iput-object p3, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 p1, 0x12

    .line 1467
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist sendText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    move/from16 v4, p1

    if-ne v4, v2, :cond_0

    .line 1713
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1714
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move/from16 v20, v15

    const/4 v15, 0x0

    move-wide/from16 v21, v0

    move-wide/from16 v18, v2

    .line 1713
    invoke-virtual/range {v4 .. v22}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 1720
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1721
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1722
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move/from16 v16, v0

    iget-boolean v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move/from16 v20, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v21, v0

    move-wide/from16 v18, v2

    .line 1721
    invoke-virtual/range {v4 .. v22}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 1728
    :cond_1
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1729
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move-object/from16 v21, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v38, v0

    move-object/from16 v22, v2

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-wide/from16 v35, v12

    move/from16 v37, v14

    .line 1728
    invoke-virtual/range {v21 .. v39}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void
.end method

.method private blacklist sendTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextInternal: messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", uniqueMessageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 2155
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2156
    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 2157
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v2

    const-string v3, "sendText"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void

    .line 2163
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 2172
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2173
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2174
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move/from16 v16, v0

    iget-boolean v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move/from16 v20, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v21, v0

    move-wide/from16 v18, v2

    .line 2173
    invoke-virtual/range {v4 .. v22}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 2180
    :cond_2
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2181
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move-object/from16 v21, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v38, v0

    move-object/from16 v22, v2

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-wide/from16 v35, v12

    move/from16 v37, v14

    .line 2180
    invoke-virtual/range {v21 .. v39}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 2165
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2166
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v31, v5

    check-cast v31, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/16 v38, 0x0

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v33, v3

    move-object/from16 v29, v4

    move-object/from16 v34, v5

    move/from16 v35, v6

    move/from16 v36, v7

    move/from16 v37, v8

    move/from16 v39, v9

    move/from16 v40, v10

    move-wide/from16 v41, v11

    move/from16 v43, v13

    move-wide/from16 v44, v14

    .line 2165
    invoke-virtual/range {v27 .. v45}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void
.end method

.method private blacklist sendTextWithCallbackNumberAndPriorityInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2835
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 2836
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2837
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2838
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callbackNumber:Ljava/lang/String;

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 2837
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IJ)V

    return-void

    .line 2841
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2842
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v7

    check-cast v22, Landroid/app/PendingIntent;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callbackNumber:Ljava/lang/String;

    iget v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-wide v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v24, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    .line 2841
    invoke-virtual/range {v16 .. v27}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IJ)V

    return-void
.end method

.method private blacklist sendTextWithOptionsInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2878
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 2879
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2880
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2881
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->replyPath:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expiry:I

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->serviceType:I

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->encodingType:I

    iget v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->confirmId:I

    move/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v18, v0

    move/from16 v17, v2

    .line 2880
    invoke-virtual/range {v4 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIIIJ)V

    return-void

    .line 2885
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 2886
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->replyPath:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expiry:I

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->serviceType:I

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->encodingType:I

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->confirmId:I

    iget-wide v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move-wide/from16 v31, v12

    .line 2885
    invoke-virtual/range {v17 .. v32}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIIIJ)V

    return-void
.end method

.method private blacklist setImsSmsFormat(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 910
    const-string p1, "unknown"

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void

    .line 907
    :cond_0
    const-string p1, "3gpp2"

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void

    .line 904
    :cond_1
    const-string p1, "3gpp"

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void
.end method

.method private blacklist setNbIotNtNSmsSupport(ZI)V
    .locals 6

    .line 3373
    const-string v0, "Failed to close stream, exception is: "

    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNbIotNtNSmsSupport: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "SmsDispatchersController"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    xor-int/lit8 v1, p1, 0x1

    .line 3374
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIsSmsBlockedInNbIotNtn:Z

    .line 3376
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3377
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 3379
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xad

    .line 3380
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 3381
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3382
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3383
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v5, 0x24

    invoke-virtual {p0, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3388
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 3389
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3391
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

    .line 3385
    :catch_1
    :try_start_2
    const-string p0, "IOException during setNbIotNtNSmsSupport"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3388
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 3389
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 3391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 3388
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 3389
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 3391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :goto_3
    throw p0
.end method

.method private blacklist triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z
    .locals 2

    .line 2474
    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2476
    const-string v1, "pdu"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2477
    const-string p3, "format"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist triggerDeliveryIntentForSatellite(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;II)Z
    .locals 3

    .line 3431
    const-string v0, "00"

    if-ltz p3, :cond_0

    const/16 v1, 0xff

    if-gt p3, v1, :cond_0

    .line 3432
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%02X"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 3435
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0006"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "0E91683108200005F0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->getCurrentTimeAsSemiOctet()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "23"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->getCurrentTimeAsSemiOctet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 3442
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 3444
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "40"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3446
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "status report = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "SmsDispatchersController"

    invoke-static {v0, p4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 3449
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 3450
    const-string v0, "pdu"

    invoke-static {p3}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3451
    const-string p3, "format"

    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3453
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2, p4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1773
    const-string p1, "sentIntent is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1777
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1779
    :catch_0
    const-string p1, "Intent has been canceled!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

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

    .line 1785
    const-string p1, "sentIntents is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 1788
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

    .line 1789
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 3

    .line 916
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x1

    .line 917
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsSmsFormat(I)V

    const/4 v1, 0x0

    .line 918
    aget p1, p1, v1

    if-ne p1, v0, :cond_0

    const-string p1, "unknown"

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS registration state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsDispatchersController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->disposeSamsungEvent()V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    .line 559
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatSmsDispatcher:Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->dispose()V

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatInboundSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->dispose()V

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2583
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2584
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2585
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2586
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getDcnAddress()Ljava/lang/String;
    .locals 3

    .line 3290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDcnAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ACG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 3292
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3293
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3292
    const-string v2, "312130"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3294
    const-string v0, "DcnAddress for ACG Appalachian"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    const-string v0, "6066262100"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    .line 3298
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;
    .locals 1

    if-eqz p1, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    if-nez v0, :cond_0

    .line 1324
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 1326
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    return-object p0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    if-nez v0, :cond_2

    .line 1329
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 1331
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    return-object p0
.end method

.method public blacklist getImsSmsFormat()Ljava/lang/String;
    .locals 0

    .line 1206
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;
    .locals 1

    .line 2491
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatInboundSmsHandler:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2495
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    return-object p0

    .line 2496
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    return-object p0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 0

    .line 2377
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getSmsc()Ljava/lang/String;
    .locals 2

    .line 3171
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3172
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 3174
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmscNumber([BZ)Ljava/lang/String;
    .locals 10

    .line 3192
    new-instance p0, Ljava/lang/StringBuffer;

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    .line 3199
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 3200
    const-string p0, "NotSet"

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 3203
    aget-byte v2, p1, v1

    const/16 v3, -0x6f

    if-ne v2, v3, :cond_1

    .line 3204
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/16 v3, 0xa

    .line 3209
    new-array v4, v3, [B

    .line 3210
    array-length v5, p1

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {p1, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 3213
    aget-byte v7, v4, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit16 v8, v7, 0xff

    .line 3216
    div-int/lit8 v8, v8, 0x10

    and-int/lit8 v7, v7, 0xf

    .line 3218
    const-string v9, "0123456789abcdef"

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3219
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3223
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3224
    aget-byte p1, p1, v0

    sub-int/2addr p1, v1

    mul-int/2addr p1, v6

    .line 3226
    const-string v3, "SmsDispatchersController"

    if-eqz v2, :cond_4

    add-int/2addr p1, v1

    .line 3227
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "international even smsc = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3230
    :cond_4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-eqz p2, :cond_5

    .line 3234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3237
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "smsc = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist getSmscWithoutNullcheck()Ljava/lang/String;
    .locals 0

    .line 3246
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 0

    .line 2393
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x24

    const/4 v2, 0x1

    const-string v3, "SmsDispatchersController"

    if-eq v0, v1, :cond_c

    const-string v1, " messageId="

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x1f

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_1

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 767
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 645
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->handleRadioStateChanged()V

    return-void

    .line 604
    :pswitch_1
    sput v4, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    .line 605
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 607
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v0, :cond_3

    .line 608
    :cond_1
    const-string v0, "gsm.sim.state"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 610
    const-string p1, "[CB] SimState is on and ready(loaded)"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-nez p1, :cond_2

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable()V

    .line 614
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 617
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->getTpmr()V

    return-void

    .line 631
    :pswitch_2
    const-string v0, "EVENT_GET_SMSC_DONE_EXTEND"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 634
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_e

    .line 635
    sget p1, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_e

    .line 636
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 637
    sget p0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    add-int/2addr p0, v2

    sput p0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "retryGetSmsc count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 621
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 622
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    .line 623
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    .line 624
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 627
    :cond_4
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    return-void

    .line 596
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_e

    .line 597
    const-string p1, "Radio state is OFF, mPrevVolteRegi = false"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    return-void

    .line 737
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SEND_TEXT_OVER_NTN_ERROR: type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 740
    iget-object p1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 715
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 716
    iget v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 717
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 719
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    :cond_6
    const/16 v2, 0x65

    if-ne v0, v2, :cond_7

    .line 722
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextWithCallbackNumberAndPriorityInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    :cond_7
    const/16 v2, 0x66

    if-ne v0, v2, :cond_8

    .line 724
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextWithOptionsInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    :cond_8
    const/16 v2, 0x67

    if-ne v0, v2, :cond_9

    .line 726
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextWithCallbackNumberAndPriorityInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    :cond_9
    const/16 v2, 0x68

    if-ne v0, v2, :cond_a

    .line 728
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextWithOptionsInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 731
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_SEND_TEXT: type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 702
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 703
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 705
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 706
    iget-object v2, p1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 708
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 711
    throw p0

    .line 698
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsReceivedViaIms(Ljava/lang/String;)V

    return-void

    .line 693
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleDomainSelectionTerminatedAbnormally(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void

    .line 678
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 679
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 680
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 681
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 682
    iget-object v3, p1, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 683
    iget-object v4, p1, Lcom/android/internal/telephony/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 686
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-wide v3, v5

    move v5, v0

    move v6, v1

    move-object v1, p0

    .line 685
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsSentCompletedUsingDomainSelection(Ljava/lang/String;JZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 689
    throw p0

    :pswitch_b
    move-object v1, p0

    .line 665
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/SomeArgs;

    .line 666
    iget-object p1, p0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 669
    iget-object v2, p0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 671
    :try_start_2
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 674
    throw p1

    :pswitch_c
    move-object v1, p0

    .line 661
    iget-object p0, v1, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p1, 0xe

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 662
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    :pswitch_d
    move-object v1, p0

    .line 654
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    return-void

    :pswitch_e
    move-object v1, p0

    .line 650
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->reevaluateTimerStatus()V

    return-void

    :pswitch_f
    move-object v1, p0

    .line 585
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 587
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_b

    .line 588
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->updateImsInfo(Landroid/os/AsyncResult;)V

    return-void

    .line 590
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS State query failed with exp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_10
    move-object v1, p0

    .line 581
    iget-object p0, v1, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    return-void

    :cond_c
    move-object v1, p0

    .line 745
    const-string p0, "EVENT_SET_NB_IOT_NTN_SMS_SUPPORT_DONE"

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 747
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_e

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_d

    goto :goto_0

    .line 751
    :cond_d
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 752
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_NB_IOT_NTN_SMS_SUPPORT_DONE: retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p1, -0x1

    if-lez p1, :cond_e

    .line 754
    iget-boolean p1, v1, Lcom/android/internal/telephony/SmsDispatchersController;->mIsSmsBlockedInNbIotNtn:Z

    xor-int/2addr p1, v2

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->setNbIotNtNSmsSupport(ZI)V

    :cond_e
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist handleSatSmsStatusReport(Ljava/lang/Object;)V
    .locals 5

    .line 3401
    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lvendor/samsung/hardware/radio/satellite/SehSatStatusReport;

    .line 3407
    iget v0, p1, Lvendor/samsung/hardware/radio/satellite/SehSatStatusReport;->messageRef:I

    .line 3408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tiantong_handleSmsStatusReport: messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " smstatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lvendor/samsung/hardware/radio/satellite/SehSatStatusReport;->smStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tpStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lvendor/samsung/hardware/radio/satellite/SehSatStatusReport;->tpStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsDispatchersController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v1, :cond_2

    .line 3411
    iget v3, p1, Lvendor/samsung/hardware/radio/satellite/SehSatStatusReport;->tpStatus:I

    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 3414
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 3416
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3418
    :cond_1
    const-string v3, "3gpp"

    iget p1, p1, Lvendor/samsung/hardware/radio/satellite/SehSatStatusReport;->smStatus:I

    invoke-direct {p0, v1, v3, v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntentForSatellite(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    .line 3421
    const-string p0, "handleSatSmsStatusReport: can not handle the status report!"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public blacklist handleSmsStatusReport(Ljava/lang/String;[B)V
    .locals 7

    .line 2406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2409
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2413
    iget v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 2414
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v4, :cond_0

    .line 2420
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    if-eqz v4, :cond_7

    .line 2428
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    .line 2431
    iget-object v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    if-eqz v5, :cond_2

    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2440
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    :cond_3
    :goto_1
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v2

    goto :goto_2

    .line 2448
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2449
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2452
    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 2453
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_7

    .line 2455
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v0

    if-ge v0, v1, :cond_5

    const/16 v1, 0x20

    if-ge v0, v1, :cond_6

    .line 2458
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 2460
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    :cond_6
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v2

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 2468
    const-string p0, "SmsDispatchersController"

    const-string p1, "handleSmsStatusReport: can not handle the status report!"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public blacklist injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZI)V
    .locals 7

    .line 961
    const-string v0, "SmsDispatchersController:injectSmsPdu"

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 965
    :try_start_0
    const-string p0, "injectSmsPdu: semCreateFromPdu returned null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 972
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p4

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq p4, v2, :cond_1

    .line 973
    const-string p0, "injectSmsPdu: not class 1"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    .line 978
    :cond_1
    new-instance p4, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p4, p3, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 980
    const-string v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    const-string v4, ", format="

    const-string v5, "SmsDispatchersController:injectSmsText Sending msg="

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 981
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to mGsmInboundSmsHandler"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {p0, v3, p5, p6, p4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 985
    :cond_2
    const-string p6, "3gpp2"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    iget-object p6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz p6, :cond_3

    .line 986
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to mCdmaInboundSmsHandler"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p0, v3, p5, v6, p4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 992
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid pdu format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 996
    :goto_0
    const-string p1, "injectSmsPdu failed: "

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void
.end method

.method public blacklist injectSmsPdu([BLjava/lang/String;ZLcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V
    .locals 8

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 938
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move v6, p3

    move-object v4, p4

    .line 940
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZI)V

    return-void
.end method

.method public blacklist isCdmaFormat(Ljava/lang/String;)Z
    .locals 0

    .line 1277
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isCdmaMo()Z
    .locals 8

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lteStatus] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    const-string v2, "SPRINT"

    const/4 v3, 0x2

    const-string v4, "VZW"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1223
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "USCC"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->useLte3GPPSms()Z

    move-result v0

    if-eqz v0, :cond_1

    return v6

    .line 1228
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_2

    return v5

    :cond_2
    return v6

    .line 1229
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "LRA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1230
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "ACG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 1236
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1237
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    iget-object v7, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->hasImsCall()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1239
    const-string v0, "hybrid lte should send 3gpp2 sms over 1xrtt during cs call"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_5

    return v5

    :cond_5
    return v6

    .line 1242
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->hasImsCall()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1244
    const-string v0, "device should send 3gpp2 sms over 1xrtt during cs call (SPR)"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_7

    return v5

    :cond_7
    return v6

    .line 1250
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsSmsFormat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1254
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1255
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "gsm.operator.isroaming"

    const/4 v7, 0x0

    .line 1254
    invoke-static {v0, v2, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1256
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_9

    goto :goto_0

    :cond_9
    move v5, v6

    .line 1258
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1259
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v2

    if-eq v2, v3, :cond_b

    :cond_a
    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    .line 1261
    :cond_b
    const-string p0, "SMS Format 3GPP for Volte Roaming or CDMALESS"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1265
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1231
    :cond_d
    :goto_1
    const-string v0, "device should send 3gpp sms for LRA and ACG if does not support CDMA"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v0, "ro.product.first_api_level"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_f

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result p0

    if-ne p0, v5, :cond_e

    return v5

    :cond_e
    return v6

    :cond_f
    return v5
.end method

.method public blacklist isIms()Z
    .locals 6

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isImsforNonLegacyImsSms()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPrevVolteRegi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 1183
    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isPreVolteRegi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1187
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " datareg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " imsreg : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    .line 1190
    const-string p0, "ps is no service"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1193
    :cond_1
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    return p0
.end method

.method public blacklist notifyCarrierRoamingNtnAvailableServicesChanged([I)V
    .locals 5

    .line 3360
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    if-ne v4, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3366
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->setNbIotNtNSmsSupport(ZI)V

    return-void
.end method

.method protected blacklist notifySmsReceivedViaImsToEmergencyStateTracker(Ljava/lang/String;)V
    .locals 1

    .line 1545
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    .line 1547
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected blacklist notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V
    .locals 7

    .line 1496
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSentToEmergencyStateTracker(Ljava/lang/String;JZZZ)V

    .line 1498
    iget-wide p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    .line 1499
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isSinglePartOrLastPart()Z

    move-result p0

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isAnyPartFailed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1498
    :goto_0
    invoke-direct {v0, p2, p3, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSentToDatagramDispatcher(JZZ)V

    return-void
.end method

.method public blacklist onSendCarrierRoamingNbIotNtnTextError(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V
    .locals 3

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendCarrierRoamingNbIotNtnTextError: messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    const/16 p2, 0x18

    .line 2533
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1

    .line 457
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist reportSmsMemoryStatus(Landroid/os/Message;)V
    .locals 3

    .line 1160
    const-string v0, "reportSmsMemoryStatus: "

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1162
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onMemoryAvailable()V

    .line 1163
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1164
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1166
    const-string v2, "reportSmsMemoryStatus Failed "

    invoke-static {v1, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1168
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist requestInitialImsRegistration()V
    .locals 3

    .line 3339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.UPDATE_IMS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 3340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3341
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3342
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3343
    const-string p0, "SmsDispatchersController"

    const-string v0, "requestInitialImsRegistration"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendAckSMSforCCTUnlock(ILjava/lang/String;)V
    .locals 1

    .line 3029
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 3030
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->sendAckSMSforCCTUnlock(ILjava/lang/String;)V

    return-void

    .line 3033
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->sendAckSMSforCCTUnlock(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendCarrierRoamingNbIotNtnText(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 1

    const/16 v0, 0x17

    .line 2513
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 24

    move-object/from16 v0, p0

    .line 1884
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1887
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    .line 1891
    :goto_1
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1892
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1894
    invoke-static/range {p7 .. p7}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1895
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move/from16 v13, p5

    move-object/from16 v12, p6

    move/from16 v11, p9

    move-object v8, v6

    move/from16 v6, p2

    invoke-direct/range {v2 .. v23}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    const-string v3, "sendData"

    .line 1892
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void

    .line 1902
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1903
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 1905
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 1903
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1906
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1907
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 1909
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 1907
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1911
    :cond_4
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 1913
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 1911
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void
.end method

.method protected blacklist sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12

    .line 2898
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2899
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 2900
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2901
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 2903
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendDomainChangeSms(Ljava/lang/String;IB)V
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    move v3, v0

    .line 3099
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isE911Dan = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNeededReset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmsDispatchersController"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isPreVolteRegi()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    .line 3101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrevVolteRegi = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 3103
    iget-boolean v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    if-eqz v4, :cond_5

    .line 3104
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 3105
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3106
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(Ljava/lang/String;IB)V

    goto :goto_1

    .line 3108
    :cond_3
    const-string p1, "DomainChangeSMS is not supported in GsmSmsDispatcher"

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_4

    .line 3111
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setPreVolte(Z)V

    :cond_4
    if-nez v0, :cond_5

    .line 3113
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3114
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 3115
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->requestInitialImsRegistration()V

    :cond_5
    return-void
.end method

.method public blacklist sendMtSmsPollingMessage()V
    .locals 25

    move-object/from16 v0, p0

    .line 2543
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2544
    const-string v1, "sendMtSmsPollingMessage: not in roaming nb iot ntn"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 2548
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    .line 2549
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 2550
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 2551
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2552
    const-string v1, "sendMtSmsPollingMessage: destAddr is null or empty."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 2556
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040396

    .line 2557
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2558
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2559
    const-string v1, "sendMtSmsPollingMessage: mtSmsPollingText is null or empty."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 2563
    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2564
    new-instance v3, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 2565
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget-object v9, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2567
    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2569
    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x5

    const-wide/16 v21, 0x0

    invoke-direct/range {v3 .. v24}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    .line 2572
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2573
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    :cond_3
    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 29
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
            "IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2914
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v2, 0x67

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v13, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v23, p8

    move/from16 v16, p9

    move/from16 v21, p10

    invoke-direct/range {v1 .. v28}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZLjava/lang/String;ZIIII)V

    .line 2918
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2920
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2922
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2923
    const-string v2, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget-object v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2929
    :cond_1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextWithCallbackNumberAndPriorityInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJ)V
    .locals 24
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
            "IZIZIJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2299
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2302
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object/from16 v5, p7

    if-eqz v1, :cond_0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p7

    move-object/from16 v8, p2

    .line 2306
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v14, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v15, p6

    move/from16 v6, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-wide/from16 v20, p13

    invoke-direct/range {v2 .. v23}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    .line 2311
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2313
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2315
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2316
    const-string v1, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-object v1, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2322
    :cond_3
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method protected blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZ)V
    .locals 29
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
            "IZIIIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2957
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    const/16 v23, 0x0

    const/16 v28, -0x1

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v22, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v24, p9

    move/from16 v25, p10

    move/from16 v26, p11

    move/from16 v27, p12

    move/from16 v21, p13

    invoke-direct/range {v1 .. v28}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZLjava/lang/String;ZIIII)V

    .line 2961
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2963
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2965
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2966
    const-string v2, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    iget-object v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2972
    :cond_1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextWithOptionsInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method protected blacklist sendOTADomestic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 3001
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 3002
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    const-string p0, "SmsDispatchersController"

    const-string p1, "sendOTADomestic is only supported in GSM"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3005
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendOTADomestic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist sendRawPduSat(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8

    if-nez p3, :cond_0

    .line 3068
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3069
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 3072
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3073
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduSat(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    :cond_1
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 3074
    const-string p1, "3gpp2"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduSat(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 3077
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduSat(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1022
    iget-boolean v1, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    if-nez v1, :cond_1

    .line 1023
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1027
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v2

    .line 1028
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1029
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v2

    const/4 v2, 0x4

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/16 v5, -0x2710

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v23, v19

    const-wide/16 v19, 0x0

    move-object/from16 v0, v23

    invoke-direct/range {v1 .. v22}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    iput-object v1, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1034
    const-string v1, "sendRetrySms"

    iput-object v1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 v1, 0x16

    move-object/from16 v2, p0

    .line 1035
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move-object v2, v0

    .line 1040
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 1041
    const-string v1, "destAddr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1042
    iget-object v1, v2, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :cond_2
    const/4 v0, 0x0

    .line 1050
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1060
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1065
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 1067
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 1070
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old format("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") ==> new format ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmsDispatchersController"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1073
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 1077
    const-string v4, "scAddr"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_f

    const-string v6, "destAddr"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1078
    const-string v11, "text"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "destPort"

    const-string v14, "data"

    if-nez v12, :cond_2

    .line 1079
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_9

    .line 1087
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 1088
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1090
    const-string v2, "sendRetrySms failed due to null destAddr"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    xor-int/lit8 v2, p2, 0x1

    .line 1092
    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void

    .line 1099
    :cond_3
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_8

    .line 1100
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sms failed was text with length: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_4

    move-object v14, v12

    goto :goto_1

    .line 1102
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_1
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1101
    invoke-static {v5, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1105
    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_5

    move v11, v10

    goto :goto_2

    :cond_5
    move v11, v9

    :goto_2
    invoke-static {v15, v4, v6, v11, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    :goto_3
    move-object v12, v4

    goto/16 :goto_8

    .line 1108
    :cond_6
    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_7

    move/from16 v18, v10

    goto :goto_4

    :cond_7
    move/from16 v18, v9

    :goto_4
    const/16 v23, -0x1

    iget v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v24, v11

    invoke-static/range {v15 .. v24}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    goto :goto_3

    .line 1112
    :cond_8
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1113
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1114
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1115
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sms failed was data with length: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_9

    const/4 v12, 0x0

    goto :goto_5

    .line 1116
    :cond_9
    array-length v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_5
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1115
    invoke-static {v5, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d

    .line 1119
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1121
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_a

    move v12, v10

    goto :goto_6

    :cond_a
    move v12, v9

    .line 1120
    :goto_6
    invoke-static {v15, v4, v11, v6, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v12

    goto :goto_8

    .line 1125
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_c

    move/from16 v19, v10

    goto :goto_7

    :cond_c
    move/from16 v19, v9

    :goto_7
    iget v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move/from16 v20, v11

    .line 1124
    invoke-static/range {v15 .. v20}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v12

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    if-nez v12, :cond_e

    .line 1135
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1133
    const-string v3, "sendRetrySms failed to encode message.scAddr: %s, destPort: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    xor-int/lit8 v2, p2, 0x1

    .line 1137
    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void

    .line 1142
    :cond_e
    const-string v4, "smsc"

    iget-object v5, v12, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string v4, "pdu"

    iget-object v5, v12, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    iput-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    goto :goto_a

    .line 1081
    :cond_f
    :goto_9
    const-string v2, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    xor-int/lit8 v2, p2, 0x1

    .line 1083
    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void

    :cond_10
    :goto_a
    if-eqz p2, :cond_11

    .line 1149
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    goto :goto_b

    .line 1150
    :cond_11
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_b

    :cond_12
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 1152
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2

    .line 2792
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteModeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2793
    const-string v0, "SmsDispatchersController"

    const-string v1, "Send Tiantong Satellite SMS"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSatSmsDispatcher:Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2797
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 2798
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2799
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 2801
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 29

    move-object/from16 v0, p0

    .line 2812
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 2813
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2814
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v23, p8

    move/from16 v16, p9

    invoke-direct/range {v1 .. v28}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZLjava/lang/String;ZIIII)V

    .line 2816
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2818
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2820
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2821
    const-string v2, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    iget-object v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2827
    :cond_1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextWithCallbackNumberAndPriorityInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V
    .locals 17

    const/16 v16, 0x0

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

    .line 2018
    invoke-virtual/range {v0 .. v16}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZ)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZ)V
    .locals 24

    move-object/from16 v0, p0

    .line 2125
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2128
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object/from16 v5, p7

    if-eqz v1, :cond_0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p7

    move-object/from16 v8, p2

    .line 2132
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 2133
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2134
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v14

    const/16 v23, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v15, p6

    move/from16 v6, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move/from16 v11, p13

    move-wide/from16 v20, p14

    move/from16 v22, p16

    invoke-direct/range {v2 .. v23}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    .line 2138
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2140
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2142
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2143
    const-string v1, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v1, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2149
    :cond_3
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method protected blacklist sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZI)V
    .locals 28

    move-object/from16 v0, p0

    .line 3045
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3046
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v12, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZI)V

    return-void

    .line 3050
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3051
    iget-object v15, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v24, p9

    move/from16 v25, p10

    move/from16 v26, p11

    move/from16 v27, p12

    invoke-virtual/range {v15 .. v27}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZI)V

    return-void

    .line 3055
    :cond_1
    iget-object v15, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v24, p9

    move/from16 v25, p10

    move/from16 v26, p11

    move/from16 v27, p12

    invoke-virtual/range {v15 .. v27}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZI)V

    return-void
.end method

.method protected blacklist sendTextNSRI(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 10

    .line 3016
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 3017
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3018
    const-string p0, "SmsDispatchersController"

    const-string p1, "sendTextNSRI is only supported in GSM"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3020
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextNSRI(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    return-void
.end method

.method protected blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIII)V
    .locals 29

    move-object/from16 v0, p0

    .line 2854
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 2855
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2856
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v14, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v24, p9

    move/from16 v25, p10

    move/from16 v26, p11

    move/from16 v27, p12

    move/from16 v28, p13

    invoke-direct/range {v1 .. v28}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZLjava/lang/String;ZIIII)V

    .line 2859
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2861
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2863
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2864
    const-string v2, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    iget-object v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2870
    :cond_1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextWithOptionsInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method public blacklist setDcnAddress(Ljava/lang/String;)V
    .locals 2

    .line 3306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDcnAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDomainSelectionResolverProxy(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    return-void
.end method

.method public blacklist setImsManager(Lcom/android/ims/ImsManager;)Z
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz p0, :cond_0

    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->setImsManager(Lcom/android/ims/ImsManager;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setImsSmsDispatcher(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    return-void
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 0

    .line 2389
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setSmsc(Ljava/lang/String;)V
    .locals 1

    .line 3182
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    .line 3183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSmsc = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsDispatchersController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 2701
    const-string v0, "SmsDispatchersController"

    const-string v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 2703
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 2704
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 2705
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist useLte3GPPSms()Z
    .locals 4

    .line 3320
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3321
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 3323
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3325
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_2

    iget p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method
