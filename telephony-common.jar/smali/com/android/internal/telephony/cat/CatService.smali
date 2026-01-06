.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# static fields
.field private static final blacklist JIO_IMPI_LIST:[Ljava/lang/String;

.field protected static final blacklist MSG_ID_ALPHA_NOTIFY:I = 0x9

.field protected static final blacklist MSG_ID_CALL_SETUP:I = 0x4

.field protected static final blacklist MSG_ID_EVENT_NOTIFY:I = 0x3

.field protected static final blacklist MSG_ID_ICC_CHANGED:I = 0x8

.field protected static final blacklist MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field protected static final blacklist MSG_ID_SESSION_END:I = 0x1

.field private static blacklist is_stk_icon_label_update:Z

.field static blacklist mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

.field private static blacklist mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static blacklist mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static blacklist mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static blacklist mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static final greylist sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private static greylist-max-r sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final greylist sInstanceLock:Ljava/lang/Object;

.field private static blacklist sLocalLog:Lcom/android/internal/telephony/LocalLog;


# instance fields
.field blacklist alpha_id_display:Ljava/lang/String;

.field private blacklist bBIPSuccess:Z

.field private blacklist isTerminalResponseForSEUPMENU:Z

.field private blacklist isUsingBackUpCmd:Z

.field private blacklist mCallControlResultCode:I

.field private blacklist mCallState:Z

.field private blacklist mCallType:I

.field private blacklist mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private blacklist mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

.field private greylist mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private greylist mContext:Landroid/content/Context;

.field private blacklist mCurCmdParam:Lcom/android/internal/telephony/cat/CommandParams;

.field private greylist-max-r mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private blacklist mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

.field private blacklist mForegroundId:Ljava/lang/String;

.field private blacklist mImpi:Ljava/lang/String;

.field private blacklist mImsPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mIsStoredParam:Z

.field private greylist mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private greylist mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private blacklist mNotificationManager:Landroid/app/NotificationManager;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSendTerminalResponseExpectedByCallSetup:Z

.field private blacklist mSetupCallDisc:Z

.field private blacklist mSimNumeric:Ljava/lang/String;

.field private greylist-max-r mSlotId:I

.field public final blacklist mSmsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private greylist mStkAppInstalled:Z

.field private blacklist mTimeoutDest:I

.field private greylist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist stkRefreshReset:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendTerminalResponse(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 23

    .line 279
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 280
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 281
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/IccSmsInterfaceManager;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 282
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 283
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 291
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 293
    new-instance v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v1}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 314
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v0, 0x0

    .line 388
    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    .line 440
    const-string v21, "405873"

    const-string v22, "405874"

    const-string v1, "405840"

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405857"

    const-string v6, "405858"

    const-string v7, "405859"

    const-string v8, "405860"

    const-string v9, "405861"

    const-string v10, "405862"

    const-string v11, "405863"

    const-string v12, "405864"

    const-string v13, "405865"

    const-string v14, "405866"

    const-string v15, "405867"

    const-string v16, "405868"

    const-string v17, "405869"

    const-string v18, "405870"

    const-string v19, "405871"

    const-string v20, "405872"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->JIO_IMPI_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V
    .locals 6

    .line 451
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 300
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 307
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    const/4 v1, 0x0

    .line 309
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 312
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    .line 313
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    .line 315
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurCmdParam:Lcom/android/internal/telephony/cat/CommandParams;

    .line 316
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mForegroundId:Ljava/lang/String;

    .line 317
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCallState:Z

    .line 322
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 389
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    .line 390
    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 392
    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 393
    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 394
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 395
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 397
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 398
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 405
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 429
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 431
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIsStoredParam:Z

    .line 432
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 439
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    .line 1462
    new-instance v2, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSmsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    const-string v3, "Service: Input parameters must not be null"

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    if-eqz p5, :cond_a

    if-eqz p6, :cond_a

    .line 462
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 463
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 464
    iput p7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 467
    invoke-virtual {p6}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_9

    .line 472
    iget-object v3, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 474
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_0

    .line 477
    const-string p1, "mImsPhone is maked"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x70

    invoke-virtual {p1, p0, v3, v0}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x6f

    invoke-virtual {p1, p0, v3, v0}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x6e

    invoke-virtual {p1, p0, v3, v0}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 486
    :cond_0
    invoke-static {p0, p5, p4, p7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez p1, :cond_1

    .line 488
    const-string p1, "Null RilMessageDecoder instance"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 494
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p5, 0x1

    invoke-interface {p1, p0, p5, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 495
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {p1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {p1, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x4

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 500
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1e

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 501
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x9

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 503
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v5, 0x64

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 504
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v5, 0x67

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 505
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, p0, v5, v0}, Lcom/android/internal/telephony/Phone;->setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 506
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v5, 0x68

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 507
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, p0, v5, v0}, Lcom/android/internal/telephony/Phone;->regitserForCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 508
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x6c

    invoke-interface {p1, p0, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 509
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x69

    invoke-virtual {p1, p0, v5, v0}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 511
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object p3, p1, v5

    .line 512
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object p2, p1, v5

    .line 514
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of p1, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p1, :cond_3

    .line 515
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p2

    aput-object p2, p1, v5

    .line 516
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p1, p1, p2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 517
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "mIccSms should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 520
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 526
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p1, p1, p2

    const/16 p2, 0x14

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerForRecordsLoaded slotid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instance:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p6, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 534
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    aput-object p1, p2, p7

    .line 535
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object p1, p1, p7

    if-eqz p1, :cond_4

    const/16 p2, 0x15

    .line 536
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 542
    :cond_4
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p1, p1, p2

    const/4 p2, 0x7

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 545
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 547
    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 548
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->createWakelock()V

    .line 549
    new-instance p1, Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget p3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p1, p4, p2, p0, p3}, Lcom/android/internal/telephony/cat/CatBIPManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    .line 552
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz p1, :cond_5

    .line 553
    const-string p2, "gsm.STK_SETUP_MENU"

    iget p3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 554
    const-string p3, ""

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 555
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 556
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->loadBackUpProactiveCmd()Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 558
    iput-boolean p5, p0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 559
    iget-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 566
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 568
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Running CAT service on Slotid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". STK app installed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string p3, "notification"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 572
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "com.android.internal.telephony.cat.SMS_DELIVERY_ACTION"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, p3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 573
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "com.android.internal.telephony.cat.SMS_SENT_ACTION"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, p3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 574
    const-string p2, "CatService["

    if-nez p1, :cond_6

    goto :goto_1

    .line 575
    :cond_6
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]: isCPSupportBip: : True"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 577
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p1

    iget p3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string p4, "CarrierFeature_RIL_STKHandlingBIPbyAP"

    invoke-virtual {p1, p3, p4, v1, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 578
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TMO"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 579
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "DSG"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return-void

    .line 580
    :cond_8
    :goto_2
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]: isAPSupportBip: : True"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 469
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist SetupCallFromStk(Ljava/lang/String;)V
    .locals 4

    .line 3528
    const-string v0, "SetupCallFromStk()"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3529
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3530
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3531
    new-instance v0, Landroid/content/Intent;

    const-string v3, "tel"

    invoke-static {v3, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3533
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->getPhoneAccountHandleForCurrentPhone()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 3535
    :try_start_0
    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3537
    :catch_0
    const-string p1, "activePhoneAccount is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3539
    :goto_0
    const-string p1, "simSlot"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3540
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3542
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 3544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException 3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3549
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v0, 0x104078c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3550
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3551
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3556
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    const/4 p1, 0x4

    const/16 v0, 0x2710

    .line 3560
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    return-void
.end method

.method public static blacklist addLocalLog(Ljava/lang/String;)V
    .locals 1

    .line 3750
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 3711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ltz p2, :cond_0

    .line 3713
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    if-eqz p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 3714
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3716
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimSlot value is bigger than SIMSLOT_COUNT or smaller than 0.(text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", simSlot : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3718
    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "appendSimSlot method exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 3721
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3725
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist broadcastAlphaMessage(Ljava/lang/String;)V
    .locals 2

    .line 2490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting CAT Alpha message from card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.alpha_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2492
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2493
    const-string v1, "alpha_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    const-string p1, "SLOT_ID"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2496
    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2497
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTK2Application()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 2499
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2503
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 5

    .line 2459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.icc_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2460
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2464
    const-string v3, "refresh_result"

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending IccResult with Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2470
    :cond_1
    const-string p2, "card_status"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2472
    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne p2, v2, :cond_2

    .line 2473
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTK2Application()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 2475
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    const/high16 p2, 0x10000000

    .line 2477
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2479
    const-string p2, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2480
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Card Status: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cardPresent: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "SLOT_ID: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2483
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3

    .line 1524
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.internal.stk2.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTK2Application()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1528
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1529
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x10000000

    .line 1531
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1533
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1534
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on slotid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1541
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cancelTimeOut()V
    .locals 1

    const/16 v0, 0x65

    .line 2972
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2973
    iput v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    return-void
.end method

.method private blacklist changeDisconnectCauseToCallFailCause(I)I
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/16 p0, 0xd

    if-eq p1, p0, :cond_3

    const/16 p0, 0x14

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    const/16 p0, 0x22

    return p0

    :cond_1
    const/16 p0, 0x11

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    const/16 p0, 0x13

    return p0

    :cond_4
    const/16 p0, 0x10

    return p0
.end method

.method private blacklist changeLanguage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    .line 2941
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 2943
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 2945
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    goto :goto_0

    .line 2947
    :cond_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/util/Locale;

    .line 2949
    :goto_0
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    .line 2951
    :goto_1
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    if-eq v1, p1, :cond_1

    .line 2953
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2959
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance p1, Landroid/os/LocaleList;

    invoke-direct {p1, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->setDeviceLocales(Landroid/os/LocaleList;)V

    .line 2960
    const-string p0, "com.android.providers.settings"

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist createWakelock()V
    .locals 3

    .line 3564
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 3565
    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private blacklist displayOpenChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 4

    .line 3266
    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 3267
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    if-eqz v0, :cond_1

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3271
    iget-object v0, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    if-nez v0, :cond_0

    .line 3273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer Size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Network Access Name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Bearer Mode Parameters are: Demand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Auto Reconnect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Background Mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", User Password: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Network Access Name for defaultbearer is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3284
    :cond_1
    const-string v0, "The BearerDescription is: null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport Level Protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v1, v1, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Port Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3290
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: Transport Level Protocol: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Port Number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3292
    iget-object v0, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    if-eqz v0, :cond_2

    .line 3294
    iget-object v0, v0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    .line 3295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination Address Type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Destination Address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3296
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3295
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3297
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: Destination Address:  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3299
    :cond_2
    const-string v0, "Data Destination Address is: null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3302
    :cond_3
    const-string v0, "The Transport Level is: null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3305
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Text Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 1832
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1834
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1853
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1841
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p2

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz p1, :cond_2

    .line 1843
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    return-void

    .line 1847
    :cond_1
    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    .line 1848
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1849
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    :cond_2
    return-void

    .line 1857
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist eventDownload(III[BZ)V
    .locals 6

    .line 1937
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0xd6

    .line 1941
    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    .line 1944
    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1947
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    const/16 v2, 0x80

    or-int/2addr v1, v2

    .line 1948
    invoke-virtual {p5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    .line 1949
    invoke-virtual {p5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1950
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1954
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v5, "CarrierFeature_RIL_NTTSTK"

    .line 1955
    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1957
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    goto :goto_0

    .line 1959
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/2addr v3, v2

    .line 1962
    :goto_0
    invoke-virtual {p5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x2

    .line 1963
    invoke-virtual {p5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1964
    invoke-virtual {p5, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1965
    invoke-virtual {p5, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_4

    if-eq p1, v3, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 2008
    :cond_1
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string p2, " Sending IMS Registration event download to ICC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1984
    :cond_2
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string p2, " Sending Language Selection event download to ICC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1985
    sget-object p1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    or-int/2addr p1, v2

    .line 1986
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1988
    invoke-virtual {p5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1981
    :cond_3
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string p2, " Sending Idle Screen Available event download to ICC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1996
    :cond_4
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string p3, " Sending Call event download to ICC"

    invoke-static {p2, p3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x9c

    .line 1999
    invoke-virtual {p5, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2000
    invoke-virtual {p5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2002
    iget p2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string p3, "CHN"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    move v2, v0

    .line 2005
    :cond_5
    invoke-virtual {p5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    if-eqz p4, :cond_6

    .line 2017
    array-length p1, p4

    :goto_2
    if-ge v0, p1, :cond_6

    aget-byte p2, p4, v0

    .line 2018
    invoke-virtual {p5, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2022
    :cond_6
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 2025
    array-length p2, p1

    sub-int/2addr p2, v3

    int-to-byte p2, p2

    .line 2026
    aput-byte p2, p1, v1

    .line 2028
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 2030
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ENVELOPE COMMAND: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CatService["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]: eventDownload envelope:  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2033
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 0

    .line 1862
    sget-object p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p0

    .line 1864
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x2

    .line 1865
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1866
    iget-object p0, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1867
    iget-object p0, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget p0, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 4

    .line 2044
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2045
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 2046
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v2

    .line 2045
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2051
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 2055
    invoke-static {v0, v0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    const/4 v0, 0x0

    .line 2064
    invoke-static {v0, v0, v0, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 615
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 617
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 618
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v3, v1

    move-object v4, v3

    :goto_0
    const/4 v5, 0x3

    .line 621
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    move-object v11, v5

    move-object v5, v3

    move-object v3, v4

    move-object v4, v11

    goto :goto_1

    :cond_1
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_1
    if-ltz p3, :cond_b

    .line 625
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-lt p3, v8, :cond_2

    goto/16 :goto_6

    .line 629
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 630
    :try_start_0
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v9, :cond_3

    .line 631
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v9

    .line 632
    new-array v10, v9, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v10, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    :goto_2
    if-ge v0, v9, :cond_3

    .line 634
    sget-object v10, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aput-object v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 637
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v9, p3

    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    if-eqz v5, :cond_5

    if-nez p2, :cond_4

    goto :goto_3

    .line 652
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V

    aput-object v0, v9, p3

    goto/16 :goto_4

    .line 640
    :cond_5
    :goto_3
    monitor-exit v8

    return-object v1

    :cond_6
    if-eqz v3, :cond_a

    .line 655
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, p3

    if-eq v5, v3, :cond_a

    if-eqz v5, :cond_7

    .line 657
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 659
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p3

    if-eqz v0, :cond_8

    .line 660
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, p3

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 663
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v3, v0, p3

    .line 664
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v2, v3, p3

    .line 666
    aget-object v0, v0, p3

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    if-eqz v4, :cond_9

    .line 670
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    aput-object v2, v0, p3

    .line 671
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p3

    if-eqz v0, :cond_9

    .line 672
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 676
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p3

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    :cond_a
    :goto_4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p3

    monitor-exit v8

    return-object v0

    .line 681
    :goto_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    :goto_6
    return-object v1
.end method

.method private blacklist getPhoneAccountHandleForCurrentPhone()Landroid/telecom/PhoneAccountHandle;
    .locals 6

    .line 3731
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 3732
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    .line 3733
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 3734
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    const/4 v4, 0x4

    .line 3735
    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3736
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 3737
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    .line 3743
    const-string v1, "NullPointerException is occured"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 1872
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1876
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1877
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1878
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1879
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private blacklist getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3669
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3670
    iget p0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3672
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleCallControlResultNoti(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 3320
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v6, 0x0

    .line 3323
    aget-byte v2, v1, v6

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    const/4 v2, 0x1

    .line 3324
    aget-byte v3, v1, v2

    iput v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 3326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The call control result by SIM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 3328
    :try_start_0
    aget-byte v5, v1, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v5, v2, :cond_1

    .line 3330
    :try_start_1
    aget-byte v5, v1, v3

    if-lez v5, :cond_0

    const/4 v7, 0x4

    .line 3331
    invoke-static {v1, v7, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 3332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The call control result by SIM : alpha_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move v5, v2

    goto :goto_2

    :cond_0
    :goto_0
    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v6

    .line 3338
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The call control result by SIM : alphaidpresent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move v5, v6

    .line 3343
    :catch_2
    :goto_2
    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_c

    .line 3344
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 3345
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v8

    iget v10, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v11, "CarrierFeature_RIL_EnableNotiPopupWhenStkCallControl"

    .line 3346
    invoke-virtual {v8, v10, v11, v6, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v8

    .line 3348
    sget-object v10, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    iget v11, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v11}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const v11, 0x104027e

    const-string v12, " : "

    const-string v13, "*"

    const-string v14, "#"

    const/16 v15, 0x48

    if-eq v10, v2, :cond_5

    if-eq v10, v4, :cond_4

    if-eq v10, v3, :cond_2

    goto/16 :goto_8

    .line 3400
    :cond_2
    aget-byte v3, v1, v15

    move v4, v6

    :goto_3
    if-ge v4, v3, :cond_3

    add-int/lit8 v9, v4, 0x49

    .line 3402
    aget-byte v10, v1, v9

    packed-switch v10, :pswitch_data_0

    goto :goto_4

    .line 3420
    :pswitch_0
    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 3417
    :pswitch_1
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_2
    add-int/lit8 v10, v10, 0x30

    int-to-byte v10, v10

    .line 3413
    aput-byte v10, v1, v9

    .line 3414
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3426
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3428
    :try_start_3
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v4, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v4}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3437
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x1040280

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_8

    .line 3432
    :catch_3
    const-string v1, "fail to send SS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3433
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 3434
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 3394
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3395
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_5
    const/16 v3, 0x46

    .line 3351
    :try_start_4
    aget-byte v3, v1, v3

    if-ne v3, v2, :cond_7

    if-eqz v8, :cond_6

    .line 3353
    const-string v3, "Brazil Feature - Remove \'+\' from voicecall_ss_modified_address "

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 3355
    :cond_6
    const-string v3, "+"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3358
    :cond_7
    :goto_5
    aget-byte v3, v1, v15

    move v4, v6

    :goto_6
    if-ge v4, v3, :cond_8

    add-int/lit8 v9, v4, 0x49

    .line 3360
    aget-byte v10, v1, v9

    packed-switch v10, :pswitch_data_1

    goto :goto_7

    .line 3378
    :pswitch_3
    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 3375
    :pswitch_4
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_5
    add-int/lit8 v10, v10, 0x30

    int-to-byte v10, v10

    .line 3371
    aput-byte v10, v1, v9

    .line 3372
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3386
    :catch_4
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Modified number by SIM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3388
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3443
    :goto_8
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-eq v1, v3, :cond_9

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v3, :cond_11

    if-eqz v8, :cond_11

    .line 3445
    :cond_9
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v14, "FIZ"

    const-string v15, "CA"

    const-string v10, "CLN"

    const-string v11, "KDO"

    const-string v12, "TLS"

    const-string v13, "VTR"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v3, "TMO"

    const-string v4, "DSG"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 3446
    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    if-ne v5, v2, :cond_a

    .line 3447
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    if-ne v5, v2, :cond_b

    .line 3450
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 3452
    :cond_b
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 3456
    :cond_c
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v3, :cond_f

    if-ne v5, v2, :cond_e

    .line 3458
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    move-object v1, v9

    goto :goto_9

    .line 3462
    :cond_e
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x104027f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3463
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3465
    :goto_9
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v9, v1, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3466
    iput-object v9, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    goto :goto_a

    :cond_f
    if-ne v5, v2, :cond_10

    .line 3469
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-nez v1, :cond_10

    goto :goto_a

    :cond_10
    if-ne v5, v2, :cond_11

    .line 3472
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3473
    iput-object v9, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 3478
    :cond_11
    :goto_a
    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 3479
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_12

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 3480
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_12

    .line 3481
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 3482
    iput-boolean v6, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 3483
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto :goto_c

    .line 3484
    :cond_12
    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 3485
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_14

    .line 3486
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_13

    .line 3487
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_b

    .line 3489
    :cond_13
    const-string v1, "mCurrntCmd = null error handle is needed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3491
    :goto_b
    iput-boolean v6, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 3492
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    :cond_14
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private blacklist handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 13

    .line 2565
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2570
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2

    .line 2571
    iget v0, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 2577
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :cond_1
    :goto_1
    :pswitch_0
    move-object v1, p0

    move-object p0, v8

    move-object v6, p0

    goto/16 :goto_6

    .line 2795
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_2

    .line 2796
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 2797
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    .line 2801
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 2804
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_5

    .line 2805
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v0

    .line 2806
    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v0, :cond_4

    .line 2807
    new-instance v1, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Lcom/android/internal/telephony/cat/Duration;)V

    move-object v6, v1

    goto :goto_2

    :cond_4
    move-object v6, v8

    :cond_5
    :goto_2
    move-object v1, p0

    :cond_6
    :goto_3
    move-object p0, v8

    goto/16 :goto_6

    .line 2778
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_1

    .line 2779
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isCPSupportBip()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isAPHandlingBip()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2780
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 2781
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    .line 2784
    :cond_7
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    .line 2785
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :pswitch_3
    move-object v1, p0

    move p0, v7

    goto :goto_4

    :pswitch_4
    move-object v1, p0

    move p0, v3

    .line 2593
    :goto_4
    sget-object v4, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_1d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_17

    const/16 v5, 0x10

    if-eq v0, v5, :cond_c

    const/16 v3, 0x12

    if-eq v0, v3, :cond_a

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 2615
    :pswitch_5
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_6

    .line 2616
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v0

    .line 2617
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v3, :cond_8

    if-nez p0, :cond_6

    .line 2621
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v6, p0, v3, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 2625
    :cond_8
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-boolean p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    goto :goto_3

    .line 2610
    :pswitch_6
    new-instance v6, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    iget p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    goto :goto_3

    .line 2642
    :pswitch_7
    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p0, v0, :cond_9

    .line 2644
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    goto :goto_3

    .line 2646
    :cond_9
    iput-boolean v7, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 2647
    iput v7, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    goto/16 :goto_3

    .line 2653
    :cond_a
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatService;->isCPSupportBip()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatService;->isAPHandlingBip()Z

    move-result p0

    if-nez p0, :cond_b

    .line 2654
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    invoke-interface {p0, p1, v8}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 2655
    iput-object v8, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    .line 2659
    :cond_b
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    return-void

    .line 2664
    :cond_c
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez p0, :cond_d

    .line 2665
    const-string p0, "setup call address is null"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2666
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2667
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2671
    :cond_d
    iget-boolean p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez p0, :cond_e

    .line 2672
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2673
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2676
    :cond_e
    const-string p0, "setup call in handleCmdResponse"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2678
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->hasIMSCall()Z

    move-result p0

    const v0, 0x1040ec3

    if-ne p0, v3, :cond_f

    .line 2679
    const-string p0, "show Notification - Can\'t call by InIMScall"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2680
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 2681
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2683
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 2684
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 2685
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2688
    :cond_f
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result p0

    if-nez p0, :cond_10

    .line 2689
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    return-void

    .line 2692
    :cond_10
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object p0

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne p0, v4, :cond_11

    .line 2695
    const-string p0, "show Notification - Can\'t call by Incall"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2696
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 2697
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2699
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 2701
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 2703
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2705
    :cond_11
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v4, "fail to setup call"

    if-ne p0, v0, :cond_12

    .line 2708
    :try_start_0
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->switchHoldingAndActive()V

    const/4 p0, 0x3

    const/16 v0, 0x1388

    .line 2709
    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2713
    :catch_0
    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2714
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2715
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2718
    :cond_12
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne p0, v0, :cond_16

    .line 2721
    :try_start_1
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    .line 2722
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2723
    iget-object v5, v1, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2724
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_13

    .line 2725
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_5

    .line 2726
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result p0

    if-nez p0, :cond_14

    .line 2727
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_5

    .line 2728
    :cond_14
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result p0

    if-nez p0, :cond_15

    .line 2729
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 2732
    :cond_15
    :goto_5
    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 2736
    :catch_1
    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2737
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2738
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2742
    :cond_16
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    return-void

    :cond_17
    move-object p0, v8

    .line 2751
    iget v8, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    const/4 v0, -0x1

    if-ne v0, v8, :cond_18

    .line 2752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resMsg.mEventValue = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    const/16 p0, 0x17

    if-ne p0, v8, :cond_19

    .line 2755
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    const/4 v12, 0x0

    const/16 v9, 0x83

    const/16 v10, 0x81

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    :cond_19
    const/4 p0, 0x5

    if-ne p0, v8, :cond_1a

    .line 2759
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    const/4 v12, 0x0

    const/4 v9, 0x2

    const/16 v10, 0x81

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    .line 2762
    :cond_1a
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    const/4 v12, 0x0

    const/16 v9, 0x82

    const/16 v10, 0x81

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    :cond_1b
    move-object p0, v8

    .line 2632
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v4, :cond_1c

    .line 2635
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    goto :goto_6

    .line 2637
    :cond_1c
    iput-boolean v7, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 2638
    iput v7, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    .line 2828
    :goto_6
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iget v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2830
    iput-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void

    .line 2596
    :cond_1d
    iget-boolean p0, v1, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    if-eqz p0, :cond_1f

    .line 2597
    iget-boolean p0, v1, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    if-nez p0, :cond_1e

    .line 2598
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2600
    :cond_1e
    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 2601
    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 2602
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    return-void

    .line 2606
    :cond_1f
    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p0, v0, :cond_20

    goto :goto_7

    :cond_20
    move v3, v7

    .line 2607
    :goto_7
    iget p0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 877
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 881
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CatService["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: ProactiveCommand  cmdParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 889
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 891
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 892
    iput-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 893
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 895
    sget-object v3, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v10, "ro.csc.country_code"

    const/4 v11, -0x1

    const-string v12, ", Text Message: "

    const-string v13, "Ch ID: "

    const-string v14, "Does not send Terminal response "

    const-string v15, ""

    const-string v8, "Default Message"

    move/from16 v16, v3

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    packed-switch v16, :pswitch_data_0

    .line 1419
    const-string v1, "Unsupported command"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1415
    :pswitch_0
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1401
    :pswitch_1
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/cat/GetChannelDataParams;

    .line 1402
    sput-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Channel ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/internal/telephony/cat/GetChannelDataParams;->mChannelId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V

    return-void

    .line 1385
    :pswitch_2
    check-cast v1, Lcom/android/internal/telephony/cat/SendDataParams;

    .line 1386
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isCPSupportBip()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isAPHandlingBip()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1387
    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1389
    :cond_1
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Ch Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Send Immediate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1392
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V

    .line 1394
    :goto_0
    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_e

    .line 1369
    :pswitch_3
    check-cast v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .line 1370
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isCPSupportBip()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isAPHandlingBip()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1371
    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1373
    :cond_2
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Ch Data Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1376
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V

    .line 1378
    :goto_1
    iget-object v1, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_e

    .line 1353
    :pswitch_4
    check-cast v1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .line 1354
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isCPSupportBip()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isAPHandlingBip()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1355
    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1357
    :cond_3
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Close Ch Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1360
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    .line 1362
    :goto_2
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_2f

    goto/16 :goto_e

    .line 1250
    :pswitch_5
    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 1252
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getInstance()Lcom/android/internal/telephony/uicc/UiccHqmController;

    move-result-object v8

    iget v10, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendHqmBipOpenChannel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :catch_0
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isCPSupportBip()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isAPHandlingBip()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1257
    iget-object v2, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    .line 1258
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with null alpha id "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_e

    .line 1265
    :cond_5
    iget v8, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1267
    aget v8, v8, v4

    goto :goto_3

    :cond_6
    const v8, 0x7fffffff

    :goto_3
    const/16 v10, 0x6d

    .line 1270
    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1271
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mIsStoredParam:Z

    .line 1272
    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    :cond_7
    invoke-virtual {v2, v8}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v12

    .line 1276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tm.getNetworkType() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    iget-object v13, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v13

    if-ne v13, v9, :cond_8

    .line 1279
    const-string v2, "SERVER mode not supported"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :cond_8
    if-nez v12, :cond_c

    .line 1287
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1288
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 1289
    invoke-virtual {v12, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 1290
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_5

    .line 1295
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v2

    .line 1296
    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/CatService;->mIsStoredParam:Z

    if-nez v5, :cond_b

    .line 1297
    iput-boolean v9, v0, Lcom/android/internal/telephony/cat/CatService;->mIsStoredParam:Z

    .line 1299
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-ne v1, v11, :cond_a

    if-le v2, v9, :cond_a

    const/16 v1, 0x1f40

    goto :goto_4

    :cond_a
    const/16 v1, 0x7d0

    .line 1302
    :goto_4
    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1305
    :cond_b
    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurCmdParam:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1306
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mIsStoredParam:Z

    .line 1309
    const-string v2, "NETWORK_TYPE_UNKNOWN "

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1314
    :cond_c
    :goto_5
    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurCmdParam:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1315
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mIsStoredParam:Z

    .line 1318
    invoke-virtual {v2, v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v8}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 1319
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1320
    const-string v2, "Data Roaming is disabled in network roaming state. Hence, Open Channel is failed."

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1325
    :cond_d
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1326
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->displayOpenChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1328
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get current radio techonology = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v2, v9, :cond_e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 1330
    :cond_e
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1331
    const-string v2, "send terminal response, TERMINAL_CRNTLY_UNABLE_TO_PROCESS, ME_CURRENTLY_BUSY_ON_CALL"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    .line 1333
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1337
    :cond_f
    iget-object v1, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    .line 1338
    :cond_10
    const-string v1, "no alphaID or alphaID 0 : no user confirm"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    .line 1340
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1341
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v3, "CarrierFeature_RIL_RemoveToastDuringBipOperation"

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_e

    .line 1343
    :cond_11
    iget-object v1, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 1344
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v1, "open channel for BIP"

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    .line 1237
    :pswitch_6
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/cat/LanguageParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LanguageParams;->mLanguage:Ljava/lang/String;

    .line 1238
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eqz v2, :cond_12

    .line 1239
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 1241
    :try_start_1
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->changeLanguage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 1243
    :catch_1
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_12
    :goto_6
    move-object v2, v3

    .line 1246
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1209
    :pswitch_7
    const-string v2, "setup call"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->hasIMSCall()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1214
    :cond_13
    const-string v2, "phone is in call"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    iget-object v2, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v3, :cond_14

    .line 1217
    const-string v2, "show Notification - Can\'t call by Incall"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040ec3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1219
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1220
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1222
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1229
    :cond_14
    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 1230
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1232
    :cond_15
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10400ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1233
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_d

    .line 1186
    :pswitch_8
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v2, :cond_16

    .line 1187
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_16

    .line 1188
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1193
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1195
    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 1196
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1197
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040ea6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1198
    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_d

    .line 1200
    :cond_17
    const-string v1, "wakelock for USSD"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1201
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_d

    .line 1165
    :pswitch_9
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v2, :cond_18

    .line 1166
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_18

    .line 1167
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1172
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1174
    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 1176
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_d

    .line 1179
    :cond_19
    const-string v1, "wakelock for SS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_d

    .line 1147
    :pswitch_a
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 1148
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1151
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInForegroundCall()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1152
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :cond_1b
    move-object/from16 v0, p0

    .line 1156
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1158
    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto/16 :goto_e

    .line 1089
    :pswitch_b
    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-nez v3, :cond_1c

    const-string v3, "voicecall_type"

    goto :goto_7

    :cond_1c
    const-string v3, "voicecall_type2"

    .line 1091
    :goto_7
    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1d

    move v4, v9

    .line 1092
    :cond_1d
    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v4, :cond_1e

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/SendSMSParams;->mFormat:Ljava/lang/String;

    const-string v3, "3gpp2"

    if-ne v2, v3, :cond_1e

    .line 1093
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1097
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_d

    .line 1072
    :pswitch_c
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v1, v2, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSimNumeric:Ljava/lang/String;

    .line 1074
    const-string v1, "KOREA"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1075
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 1051
    :pswitch_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->isVodafone()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1052
    const-string v2, "Doing Setup Wizard"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1057
    :cond_1f
    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 1058
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1059
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040777

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1060
    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_e
    move-object v2, v1

    .line 1035
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_21

    const/4 v5, 0x4

    if-eq v4, v5, :cond_20

    .line 1045
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1041
    :cond_20
    new-instance v5, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 1042
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 1037
    :cond_21
    new-instance v5, Lcom/android/internal/telephony/cat/DTTZResponseData;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 1038
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :cond_22
    :pswitch_f
    move-object/from16 v0, p0

    goto/16 :goto_d

    :pswitch_10
    move-object v2, v1

    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->launchIdleText()V

    .line 1018
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_d

    :pswitch_11
    move-object v2, v1

    .line 1005
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_22

    .line 1006
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_d

    :pswitch_12
    move-object v2, v1

    .line 898
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const-string v5, "US Cellular"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 899
    const-string v1, "Disabled US Cellular SETUP_MENU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 904
    :cond_23
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v5, "SKT"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 905
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v8, "UsimDownload"

    invoke-virtual {v1, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 906
    const-string v8, "ril.domesticOtaStart"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "true"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "Download"

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    if-nez v1, :cond_25

    .line 907
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 913
    :cond_25
    const-string v1, "gsm.STK_SETUP_MENU"

    iget v8, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 915
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 916
    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 918
    invoke-static {v1, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 922
    const-string v1, "Send set up menu TR Alpha Id length ==0 ."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v3

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 924
    iput-boolean v8, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 925
    iput-boolean v8, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    goto/16 :goto_c

    :cond_26
    move v8, v4

    .line 929
    iput-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 932
    const-string v4, "Feature for is_stk_icon_label_update is enabled"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 934
    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v11, :cond_29

    .line 935
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    .line 936
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_8

    .line 940
    :cond_27
    sput-boolean v8, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto :goto_9

    .line 937
    :cond_28
    :goto_8
    const-string v4, "Condition for STK refresh detected enabling the intent to be fired"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    sput-boolean v9, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto :goto_9

    .line 943
    :cond_29
    sput-boolean v8, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    .line 946
    :goto_9
    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v11, "SIM Toolkit"

    invoke-direct {v0, v11, v4}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 948
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v12, :cond_2a

    .line 950
    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 951
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x1e

    if-le v12, v13, :cond_2a

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SETUP_MENU title.length : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const/16 v12, 0x1d

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 957
    :cond_2a
    iget v12, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 958
    const-string v4, "SETUP_MENU property Setting : for SKT "

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v5, 0x10401f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 960
    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v5

    iput-object v4, v5, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 964
    :cond_2b
    :try_start_2
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    .line 966
    :catch_2
    const-string v4, "Failed to set SETUP_MENU property, set default title"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v0, v11, v4}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :goto_a
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 971
    const-string v1, "Send set up menu TR."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    iget-object v1, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v11, v3

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 973
    iput-boolean v8, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 974
    iput-boolean v8, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    goto :goto_b

    :cond_2c
    move-object v11, v3

    .line 978
    :goto_b
    sget-boolean v1, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    if-nez v1, :cond_2d

    const-string v1, "China"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 981
    :cond_2d
    const-string v1, "com.android.stk"

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 982
    new-instance v2, Landroid/content/Intent;

    const-string v3, "package"

    invoke-static {v3, v1, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "com.sec.android.intent.action.STK_TITLE_IS_LOADED"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 983
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 984
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 995
    :cond_2e
    :goto_c
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 996
    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_30

    const/4 v5, 0x4

    if-ne v1, v5, :cond_2f

    goto :goto_e

    .line 1422
    :cond_2f
    :goto_d
    :pswitch_13
    iput-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1423
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1425
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v9, :cond_30

    .line 1426
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    :cond_30
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_13
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

.method private blacklist handleMmiComplete(Landroid/os/AsyncResult;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 3929
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 3931
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3932
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/MmiCode;

    .line 3933
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 3934
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->isOperatorSupportUssdByPS(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isLatinSubOperator(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3935
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object p1

    .line 3936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mmi Complete state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3937
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3940
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 3941
    iput v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    const/16 v1, 0x64

    .line 3942
    iput v1, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    .line 3943
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3947
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq p1, v0, :cond_3

    .line 3948
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_3

    .line 3949
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    return-void

    .line 3953
    :cond_2
    const-string p1, "Ussd was not sent by PS"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3956
    :catch_0
    const-string p1, "ClassCastException from MmiComplete"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 3959
    :cond_4
    const-string p1, "Mmi complete msg : ar.result is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 17

    move-object/from16 v0, p0

    .line 3163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF String is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v3, v2, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3165
    iget-object v1, v2, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    mul-int/lit8 v4, v1, 0x2

    .line 3166
    new-array v4, v4, [B

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v3, v1, :cond_7

    .line 3172
    iget-object v7, v2, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v3, v3, 0x1

    aget-byte v8, v7, v3

    const/16 v9, 0xf

    and-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v10, 0x23

    const/16 v11, 0xb

    const/16 v12, 0x2a

    const/16 v13, 0xa

    const/16 v14, 0x70

    const/16 v15, 0xc

    if-ne v8, v15, :cond_0

    move v8, v14

    goto :goto_1

    :cond_0
    if-ne v8, v13, :cond_1

    move v8, v12

    goto :goto_1

    :cond_1
    if-ne v8, v11, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x30

    int-to-byte v8, v8

    :goto_1
    add-int/lit8 v16, v6, 0x1

    .line 3177
    aput-byte v8, v4, v6

    add-int/lit8 v8, v5, 0x1

    .line 3179
    aget-byte v7, v7, v3

    shr-int/lit8 v7, v7, 0x4

    and-int/2addr v7, v9

    int-to-byte v7, v7

    if-eq v7, v9, :cond_6

    if-ne v7, v15, :cond_3

    move v10, v14

    goto :goto_2

    :cond_3
    if-ne v7, v13, :cond_4

    move v10, v12

    goto :goto_2

    :cond_4
    if-ne v7, v11, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x30

    int-to-byte v10, v7

    :goto_2
    add-int/lit8 v6, v6, 0x2

    .line 3185
    aput-byte v10, v4, v16

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_6
    move v5, v8

    move/from16 v6, v16

    goto :goto_0

    .line 3190
    :cond_7
    const-string v1, "wakelock for DTMF"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3191
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3193
    new-instance v1, Lcom/android/internal/telephony/cat/DtmfString;

    invoke-direct {v1, v5, v4}, Lcom/android/internal/telephony/cat/DtmfString;-><init>(I[B)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    .line 3194
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->processDTMFString()V

    return-void
.end method

.method private blacklist handleProactiveCommandSendSMS(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 11

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Smscaddress is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "The Sms Pdu is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3246
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3248
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3249
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3250
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v1, v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v0, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v0, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 3251
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mFormat:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3250
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRawPduSat(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/4 v0, 0x2

    const v1, 0xea60

    .line 3253
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 3255
    iget-object p1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mDisplayText:Lcom/android/internal/telephony/cat/DisplayTextParams;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "Default Message"

    .line 3258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 3259
    :cond_1
    :goto_0
    const-string p1, "wakelock for SMS"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3260
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xfde8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private blacklist handleProactiveCommandSendSS(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 12

    .line 3085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssString is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/SendSSParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3087
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v1, "ORO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v2, "XFA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3088
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v2, "XFM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3089
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3092
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setmMmiInitBySTK(Z)V

    goto :goto_1

    :catch_0
    move-object v0, p0

    goto :goto_2

    .line 3090
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setmMmiInitBySTK(Z)V

    .line 3094
    :goto_1
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v0, :cond_3

    .line 3096
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/SendSSParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->isMmiDialString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3097
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3098
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/cat/SendSSParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    const/16 p1, 0x7530

    .line 3099
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    return-void

    .line 3101
    :cond_2
    const-string p1, "fail to send SS, Command data not understood by terminal"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3102
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 3108
    :catch_1
    :goto_2
    const-string p0, "fail to send SS"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3109
    iget-object p0, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :cond_3
    return-void
.end method

.method private blacklist handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 12

    .line 3114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ussdString is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    iget v0, p1, Lcom/android/internal/telephony/cat/SendUSSDParams;->dcsCode:I

    .line 3118
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v2, "XXV"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "0"

    const-string v4, "gsm.sim.operator.numeric"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 3119
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v2, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3120
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v5, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3121
    const-string v7, "45205"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    .line 3123
    const-string v0, "change DCS F0 to 0F in STK Module"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    :cond_1
    move v9, v0

    .line 3128
    iget v8, p1, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    .line 3129
    iget-object v7, p1, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    .line 3130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dcsCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3131
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3132
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->isOperatorSupportUssdByPS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 3134
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ATT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3135
    const-string p1, "hide release complete msg"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3136
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setmMmiInitBySTK(Z)V

    goto :goto_1

    .line 3137
    :cond_4
    iget-object p1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    .line 3138
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setmMmiInitBySTK(Z)V

    .line 3141
    :cond_6
    :goto_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsPhone: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_7

    const-string v1, "existed"

    goto :goto_2

    :cond_7
    const-string v1, "null"

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3143
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUssdOverImsEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->isOperatorSupportUssdByPS(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isLatinSubOperator(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3145
    :cond_8
    const-string p1, "set preferred domain as PS"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3146
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/16 v0, 0x71

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_3

    .line 3148
    :cond_9
    const-string p1, "set preferred domain as CS"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3149
    const-string p1, "com.samsung.telephony.extra.START_CALL_WITH_DOMAIN"

    const-string v0, "CS"

    invoke-virtual {v11, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    :goto_3
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3153
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, p1

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleUssdRequest([BIILandroid/os/ResultReceiver;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x7530

    .line 3154
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    return-void

    .line 3156
    :cond_a
    const-string p1, "fail to send Ussd"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3157
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method private blacklist handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 776
    :cond_0
    iget v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 829
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_6

    .line 831
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    .line 778
    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v3, :cond_6

    .line 779
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_6

    .line 781
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    .line 787
    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    .line 814
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v4, :cond_4

    .line 816
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurCmdParam:Lcom/android/internal/telephony/cat/CommandParams;

    .line 818
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    .line 823
    :cond_4
    iget-object v2, v2, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 790
    :catch_0
    const-string v2, "Fail to parse proactive command"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    new-instance v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 800
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 802
    aget-byte v4, v1, v3

    const/16 v6, -0x7f

    if-ne v4, v6, :cond_5

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_0
    add-int/lit8 v4, v3, 0x4

    .line 805
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    add-int/lit8 v4, v3, 0x5

    .line 806
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    add-int/lit8 v3, v3, 0x6

    .line 807
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    move-object v1, v2

    .line 808
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :cond_6
    :goto_1
    return-void

    .line 835
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    return-void
.end method

.method private blacklist handleSessionEnd()V
    .locals 3

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SESSION END on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1556
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1560
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTK2Application()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1562
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x10000000

    .line 1564
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1567
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isAPHandlingBip()Z
    .locals 5

    .line 3903
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 3904
    const-string v2, "CarrierFeature_RIL_STKHandlingBIPbyAP"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    .line 3905
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 3906
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget p0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 3907
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DSG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v4
.end method

.method public static blacklist isBIPCmdBeingProcessed()Z
    .locals 1

    .line 3665
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isCPSupportBip()Z
    .locals 1

    .line 3911
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDeviceProvisioned()Z
    .locals 2

    const/4 v0, 0x0

    .line 2965
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private blacklist isInCall()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3502
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3503
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 3504
    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3505
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 3506
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-nez v2, :cond_1

    .line 3507
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3508
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3509
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 3510
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is in call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3511
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CatService["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: Is in call: : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return v2
.end method

.method private blacklist isInForegroundCall()Z
    .locals 3

    .line 3858
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3859
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 3861
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3864
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3865
    const-string v0, "CS foreground call state isAlive"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz v1, :cond_2

    .line 3869
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3870
    const-string v0, "Volte foreground call state isAlive"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isMonitoringEvent(II)Z
    .locals 3

    const/4 v0, 0x1

    .line 3920
    const-string v1, "gsm.sim.eventList"

    if-lez p0, :cond_0

    .line 3921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 p0, 0x0

    .line 3923
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    shl-int p1, v0, p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private blacklist isNumeric(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 3834
    const-string p0, "[0-9]*"

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isOperatorSupportUssdByPS(Ljava/lang/String;)Z
    .locals 0

    .line 3899
    const-string p0, "51009"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "51028"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "51011"

    .line 3900
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "51001"

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

.method private blacklist isSetUpMenu(Ljava/lang/String;)Z
    .locals 3

    .line 3625
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x1

    .line 3627
    aget-byte v0, p0, p1

    const/16 v1, -0x7f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x5

    .line 3630
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    return p1

    :cond_1
    return v2
.end method

.method private greylist-max-r isStkAppInstalled()Z
    .locals 3

    .line 2837
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2838
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.internal.stk2.command"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2840
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.stk.command"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2843
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    .line 2845
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    .line 2846
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-lez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private blacklist launchIdleText()V
    .locals 7

    .line 3573
    const-string v0, "launchIdleText"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3574
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 3577
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1bc

    goto :goto_0

    :cond_0
    const/16 v1, 0x14d

    .line 3581
    :goto_0
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 3582
    const-string v0, "REMOVE IDLE TEXT "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3583
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 3584
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 3585
    const-string v0, "REMOVE IDLE TEXT  due to text length is 0"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3586
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 3588
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3591
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3594
    const-string v5, "gsm.STK_SETUP_MENU"

    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3595
    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3597
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 3599
    :cond_3
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    const v5, 0x1080be9

    .line 3603
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3604
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3605
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 3607
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_4

    .line 3608
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3609
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v5, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 3610
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3613
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x106001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 3615
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 3616
    const-string v0, "sim"

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 3617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3618
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.showSmallIcon"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3619
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist launchSimRefreshMsgAndCancelNoti(I)V
    .locals 6

    .line 3679
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x14d

    .line 3682
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3684
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3686
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3687
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v4, "CarrierFeature_RIL_RemoveToastDuringStkRefresh"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 3692
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3693
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3698
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v0, 0x1040ef2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3701
    :cond_3
    const-string p1, ""

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "24214"

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 3704
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v0, 0x1040ef1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3707
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist loadBackUpProactiveCmd()Lcom/android/internal/telephony/cat/RilMessage;
    .locals 3

    .line 3652
    const-string v0, "backUpProactiveCmd"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3653
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3655
    const-string v0, "load back up SharedPreferences open error"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3658
    :cond_0
    const-string p0, "id"

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 3659
    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3661
    new-instance v1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private blacklist onImsCallDisconnect(Landroid/os/AsyncResult;)V
    .locals 2

    .line 3773
    const-string v0, "onImsCallDisconnect"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3776
    const-string p1, "AsyncResult is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3779
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Connection;

    if-nez p1, :cond_1

    .line 3781
    const-string p1, "Connection is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3784
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result p1

    .line 3785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3786
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->changeDisconnectCauseToCallFailCause(I)I

    move-result p1

    .line 3787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call fail cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3788
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->sendCallDisconnected(I)V

    return-void
.end method

.method private blacklist onMtCall(Ljava/lang/String;)V
    .locals 9

    .line 3840
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3842
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3843
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v1, 0x86

    .line 3845
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3846
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3847
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 3848
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3852
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x83

    const/16 v6, 0x81

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void
.end method

.method private blacklist removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 3

    const/4 v0, 0x1

    .line 2538
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    return v2

    .line 2542
    :catch_0
    const-string p1, "Unable to get Menu\'s items size"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private blacklist saveBackUpProactiveCmd(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 3

    .line 3637
    const-string v0, "backUpProactiveCmd"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3638
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3640
    const-string p1, "save back up SharedPreferences open error"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3644
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3645
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3646
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const-string v1, "id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3647
    iget-object p1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "data"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3648
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist sendCallDisconnected(I)V
    .locals 7

    .line 3811
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1a

    .line 3814
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x2

    .line 3815
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0xe2

    .line 3816
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit16 p1, p1, 0x80

    .line 3818
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 3820
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3821
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3823
    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 3824
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 3825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    .line 3826
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 3827
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3828
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x83

    const/16 v4, 0x81

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void
.end method

.method private blacklist sendMenuSelection(IZ)V
    .locals 6

    .line 1885
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xd3

    .line 1889
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    .line 1892
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1896
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 1897
    const-string v4, "CarrierFeature_RIL_NTTSTK"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1899
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    goto :goto_0

    .line 1901
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1904
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 1905
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1906
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x81

    .line 1907
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1910
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    .line 1911
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1912
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1913
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_1

    .line 1917
    sget-object p1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    .line 1918
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1919
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1922
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1925
    array-length p2, p1

    sub-int/2addr p2, v2

    int-to-byte p2, p2

    .line 1926
    aput-byte p2, p1, v5

    .line 1928
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 1929
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: sendMenuSelection envelope:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1931
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/SSReleaseCompleteNotification;Lcom/android/internal/telephony/cat/ResponseData;)V
    .locals 11

    .line 1679
    const-string v0, "fail make ussd string"

    const-string v1, "sendTerminalResponse"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1681
    const-string p1, "(cmdDet == null) "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1685
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1688
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 1689
    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v3, :cond_1

    or-int/lit16 v2, v2, 0x80

    .line 1692
    :cond_1
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x3

    .line 1693
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1694
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1695
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1696
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1698
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    .line 1699
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x2

    .line 1700
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x82

    .line 1701
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x81

    .line 1702
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1705
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v5, v5, 0x80

    .line 1706
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1712
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    const-string v7, "fail make additionalInfo"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v5, v6, :cond_6

    .line 1713
    const-string p1, "making Send SS Terminal Response "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1714
    iget p1, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    if-eqz p1, :cond_2

    add-int/2addr p1, v9

    goto :goto_0

    :cond_2
    move p1, v10

    :goto_0
    if-nez p1, :cond_3

    move p1, v9

    .line 1720
    :cond_3
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1722
    iget p1, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    if-ne p1, v2, :cond_4

    .line 1724
    const-string p1, "SS Release complete error info "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1725
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1727
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p1, :cond_5

    .line 1728
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result p1

    if-ne p1, v9, :cond_5

    .line 1729
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1732
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1738
    :goto_1
    :try_start_0
    iget-object p1, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1741
    :catch_0
    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v8

    :goto_2
    if-eqz p1, :cond_e

    .line 1744
    iget p2, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v1, p1, v10, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_6

    .line 1746
    :cond_6
    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    if-ne p1, v5, :cond_e

    .line 1747
    const-string p1, "making Send USSD Terminal Response "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1748
    iget p1, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    if-ne p1, v2, :cond_8

    .line 1750
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1751
    const-string p1, "USSD result error "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1752
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1755
    :try_start_1
    iget-object p1, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1758
    :catch_1
    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v8

    :goto_3
    if-eqz p1, :cond_e

    .line 1762
    aget-byte p2, p1, v10

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    aput-byte v10, p1, v10

    .line 1763
    :cond_7
    iget p2, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v1, p1, v10, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_6

    .line 1766
    :cond_8
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1768
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p1, :cond_9

    .line 1769
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v2, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result p1

    if-ne p1, v9, :cond_9

    .line 1770
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1773
    :cond_9
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1774
    sget-object p1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1778
    :try_start_2
    iget-object p1, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1781
    :catch_2
    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v8

    :goto_4
    if-eqz p1, :cond_e

    .line 1783
    array-length p2, p1

    if-le p2, v9, :cond_e

    .line 1784
    aget-byte p2, p1, v9

    add-int/2addr p2, v9

    and-int/lit16 p2, p2, 0xff

    const/16 v2, 0x7f

    if-le p2, v2, :cond_a

    .line 1785
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1787
    :cond_a
    aget-byte p2, p1, v9

    add-int/2addr p2, v9

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1788
    aget-byte p2, p1, v10

    const/16 v2, 0x11

    if-ne p2, v2, :cond_b

    const/16 p2, 0x8

    .line 1789
    aput-byte p2, p1, v10

    goto :goto_5

    :cond_b
    and-int/lit16 v2, p2, 0xf0

    if-nez v2, :cond_c

    .line 1791
    const-string p2, "CBS DCS for GSM 7bit will be changed to SMS DCS for GSM 7bit!!! "

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1792
    aput-byte v10, p1, v10

    goto :goto_5

    :cond_c
    const/4 v2, 0x4

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_d

    .line 1794
    const-string p2, "CBS DCS for GSM 8bit will be changed to SMS DCS for GSM 8bit!!! "

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1795
    aput-byte v2, p1, v10

    .line 1798
    :cond_d
    :goto_5
    aget-byte p2, p1, v10

    and-int/lit8 p2, p2, 0xf

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1801
    :try_start_3
    iget p2, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v1, p1, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 1807
    :catch_3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1804
    :catch_4
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    :goto_6
    if-eqz p4, :cond_f

    .line 1815
    invoke-virtual {p4, v1}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1818
    :cond_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1819
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 1820
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TERMINAL RESPONSE: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1821
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1822
    const-string p2, "wakelock release"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1823
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1825
    :cond_10
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p2, p1, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1826
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-void
.end method

.method private greylist-max-r sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1582
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1585
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1586
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1590
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    .line 1591
    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v4, :cond_2

    or-int/lit16 v3, v3, 0x80

    .line 1594
    :cond_2
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x3

    .line 1595
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1596
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1597
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1598
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1607
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    .line 1608
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x2

    .line 1609
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x82

    .line 1610
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x81

    .line 1611
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1616
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1617
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v6, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasTextAttribute()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1618
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1623
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v4, :cond_4

    .line 1624
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v6, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1625
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1630
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1631
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_5

    or-int/lit16 v4, v4, 0x80

    .line 1634
    :cond_5
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    move v3, v5

    .line 1636
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1637
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_7

    .line 1641
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_7
    if-eqz p5, :cond_8

    .line 1646
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 1648
    :cond_8
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    .line 1651
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1652
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 1657
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1658
    const-string p2, "wakelock release"

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1659
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1662
    :cond_9
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p2, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1665
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CatService["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]: mBIPCurrntCmd : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " TerminalResponse="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1667
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p1, :cond_a

    .line 1668
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, p2, :cond_a

    .line 1669
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterReceiver()V

    .line 1671
    :cond_a
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1672
    sput-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    return-void
.end method

.method private blacklist startTimeOut(II)V
    .locals 2

    .line 2977
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2978
    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/16 p1, 0x65

    .line 2979
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3

    .line 2521
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 2522
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 2526
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 2527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resMsg CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrntCmd CmdType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 2523
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public greylist dispose()V
    .locals 5

    .line 688
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    const-string v1, "Disposing CatService object"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 694
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1bc

    goto :goto_0

    :cond_0
    const/16 v1, 0x14d

    .line 698
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_1

    .line 699
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 702
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 703
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSmsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 710
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmsBroadcastReceiver: was not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 716
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 724
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unSetOnCatSendSmsResult(Landroid/os/Handler;)V

    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unSetOnCatSendSmsResult(Landroid/os/Handler;)V

    .line 727
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unSetOnCatCallControlResult(Landroid/os/Handler;)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregitserForCallControlResult(Landroid/os/Handler;)V

    .line 729
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 731
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_3

    .line 732
    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;I)V

    .line 733
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_4

    .line 736
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 738
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 740
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 742
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    .line 743
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 746
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v1, :cond_6

    .line 747
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 748
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 750
    :cond_6
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->dispose()V

    .line 754
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_8

    .line 755
    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ltz v3, :cond_7

    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 756
    aput-object v2, v1, v3

    goto :goto_3

    .line 758
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: invaild slot id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    :cond_8
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 3754
    new-instance p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3755
    const-string p2, "sLocalLog= "

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    invoke-virtual {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3757
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 766
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2071
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_29

    const/16 v1, 0x15

    if-eq v0, v1, :cond_27

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_23

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    .line 2447
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized CAT command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 2440
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 2441
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 2442
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleMmiComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 2197
    :pswitch_1
    const-string p1, "MSG_ID_IMS_RINGING_CALL"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2198
    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {p1, v1}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result p1

    if-ne p1, v5, :cond_2a

    .line 2199
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2200
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCallState:Z

    if-nez v0, :cond_1

    .line 2201
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2203
    const-string p1, "Connection is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2206
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->onMtCall(Ljava/lang/String;)V

    .line 2208
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCallState:Z

    return-void

    .line 2212
    :pswitch_2
    const-string p1, "MSG_ID_IMS_CALL_CONNECT"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2213
    iget p1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {p1, v5}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result p1

    if-ne p1, v5, :cond_2a

    .line 2214
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2215
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2216
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mForegroundId:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 2217
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2219
    const-string p1, "Connection is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2222
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mForegroundId:Ljava/lang/String;

    .line 2223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "foregroundId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mForegroundId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2224
    iget-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCallState:Z

    if-eqz p1, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x82

    const/16 v4, 0x81

    move-object v1, p0

    .line 2225
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    :cond_3
    move-object v7, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x83

    const/16 v10, 0x81

    .line 2227
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void

    :pswitch_3
    move-object v7, p0

    .line 2233
    const-string p0, "MSG_ID_IMS_PHONE_DISCONNECT"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2234
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result p0

    if-ne p0, v5, :cond_4

    .line 2235
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mForegroundId:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 2236
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->onImsCallDisconnect(Landroid/os/AsyncResult;)V

    .line 2237
    iput-object v4, v7, Lcom/android/internal/telephony/cat/CatService;->mForegroundId:Ljava/lang/String;

    .line 2240
    :cond_4
    iput-boolean v1, v7, Lcom/android/internal/telephony/cat/CatService;->mCallState:Z

    return-void

    :pswitch_4
    move-object v7, p0

    .line 2435
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurCmdParam:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p0, :cond_2a

    .line 2436
    invoke-direct {v7, p0, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void

    :pswitch_5
    move-object v7, p0

    goto/16 :goto_2

    :pswitch_6
    move-object v7, p0

    .line 2424
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_2a

    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p1, :cond_2a

    .line 2425
    check-cast p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 2426
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    iget v11, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    iget-object v12, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :pswitch_7
    move-object v7, p0

    .line 2419
    const-string p0, "pause 3 secs"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatService;->processDTMFString()V

    return-void

    :pswitch_8
    move-object v7, p0

    .line 2190
    const-string p0, "MSG_ID_PHONE_DISCONNECT"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    iget-boolean p0, v7, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    if-ne p0, v5, :cond_2a

    .line 2192
    iput-boolean v1, v7, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    .line 2193
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    return-void

    :pswitch_9
    move-object v7, p0

    .line 2403
    const-string p0, "MSG_ID_CALL_CONTROL_RESULT"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2405
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_5

    .line 2406
    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_5

    .line 2407
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_5

    .line 2409
    :try_start_0
    move-object v4, p0

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2415
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Call control result data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2416
    invoke-direct {v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCallControlResultNoti(Ljava/lang/String;)V

    return-void

    :pswitch_a
    move-object v7, p0

    .line 2358
    const-string p0, "MSG_ID_SEND_SMS_RESULT"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2360
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    if-ne p0, v3, :cond_2a

    .line 2361
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez p0, :cond_6

    goto/16 :goto_5

    .line 2365
    :cond_6
    invoke-direct {v7}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The Msg ID data:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2367
    new-array p0, v5, [I

    .line 2368
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 2369
    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_7

    .line 2370
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 2372
    :try_start_1
    move-object p0, p1

    check-cast p0, [I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2379
    :cond_7
    iget p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne p1, v0, :cond_8

    .line 2380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CALL_CONTROL_NOT_ALLOWED result : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2381
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2383
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "result is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2384
    aget p0, p0, v1

    if-eqz p0, :cond_a

    const p1, 0x802a

    if-eq p0, p1, :cond_9

    const p1, 0x806f

    if-eq p0, p1, :cond_9

    .line 2395
    const-string p0, "SMS SEND FAIL GENERIC FAIL or 0x8016 MEMORY NOT AVAILABLE"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2396
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2391
    :cond_9
    const-string p0, "0x806F NO RP-ACK, 0x802A SMS SEND FAIL RETRY"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2392
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2386
    :cond_a
    const-string p0, "SMS SEND OK"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2387
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :pswitch_b
    move-object v7, p0

    .line 2354
    const-string p0, "MSG_ID_SEND_DTMF_DELAYED_TR"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2355
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :pswitch_c
    move-object v7, p0

    .line 2300
    const-string p0, "MSG_ID_TIMEOUT"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2301
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez p0, :cond_b

    .line 2302
    iput v1, v7, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    return-void

    .line 2305
    :cond_b
    iget p1, v7, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    if-eq p1, v5, :cond_11

    if-eq p1, v3, :cond_f

    if-eq p1, v2, :cond_d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    goto/16 :goto_0

    .line 2348
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2329
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez p0, :cond_e

    .line 2330
    const-string p0, "setup call address is null"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2331
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    .line 2334
    :cond_e
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.CALL_PRIVILEGED"

    const-string v0, "tel"

    iget-object v2, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2335
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 2336
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2337
    iput-boolean v5, v7, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 2338
    const-string p1, "*************call intent"

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2339
    iget-object p1, v7, Lcom/android/internal/telephony/cat/CatService;->mSemCmdIf:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p1, v4}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 2341
    :try_start_2
    iget-object p1, v7, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 2343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActivityNotFoundException 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2321
    :cond_f
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne p0, p1, :cond_10

    .line 2322
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 2324
    :cond_10
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 2308
    :cond_11
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne p0, p1, :cond_12

    .line 2309
    const-string p0, "CALL_CONTROL_NOT_ALLOWED"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2310
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 2311
    :cond_12
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object p1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result p1

    if-ne p0, p1, :cond_13

    .line 2312
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 2313
    :cond_13
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object p1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result p1

    if-ne p0, p1, :cond_14

    .line 2314
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2315
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_14

    .line 2316
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2351
    :cond_14
    :goto_0
    iput v1, v7, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_5

    :pswitch_d
    move-object v7, p0

    .line 2243
    const-string p0, "MSG_ID_RELEASE_COMPLETE_MESSAGE"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2244
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    if-eq p0, v5, :cond_16

    if-eq p0, v2, :cond_15

    goto/16 :goto_5

    .line 2293
    :cond_15
    const-string p0, "mWaitingSetupCallHoldResult = true"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2294
    invoke-direct {v7}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2295
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v11, 0x9d

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_5

    .line 2246
    :cond_16
    invoke-direct {v7}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2248
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_17

    .line 2249
    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_17

    .line 2250
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_17

    .line 2252
    :try_start_3
    check-cast p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_17
    move-object p0, v4

    :goto_1
    if-nez p0, :cond_18

    .line 2260
    new-instance p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    invoke-direct {p0}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 2263
    :cond_18
    const-string p1, "got ReleaseComplete and need it"

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2265
    iget-object p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p1, :cond_1d

    .line 2266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCallType : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2268
    iget-object p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 2269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SSReleaseCompleteNotification.status : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2270
    iget p1, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    if-ne p1, v3, :cond_19

    const p0, 0xea60

    .line 2271
    invoke-direct {v7, v5, p0}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 2272
    const-string p0, "WAITING_USSD_ACTION_REQUIRE_TIME "

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1a

    .line 2275
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_5

    .line 2280
    :cond_1a
    iget p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne p1, v0, :cond_1c

    iget p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 2281
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    if-eq p1, v0, :cond_1b

    iget p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

    if-ne p1, v0, :cond_1c

    .line 2282
    :cond_1b
    const-string p0, "send fail TR "

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2283
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_5

    .line 2285
    :cond_1c
    iget-object p1, v7, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, p1, v0, p0, v4}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/SSReleaseCompleteNotification;Lcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_5

    .line 2288
    :cond_1d
    const-string p0, "mCurrntCmd = null error handle is needed"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_e
    move-object v7, p0

    .line 2131
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void

    :pswitch_f
    move-object v7, p0

    .line 2175
    const-string p0, "Received CAT CC Alpha message from card"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2176
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 2177
    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_1e

    .line 2178
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_1e

    .line 2179
    check-cast p0, Ljava/lang/String;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->broadcastAlphaMessage(Ljava/lang/String;)V

    return-void

    .line 2181
    :cond_1e
    const-string p0, "CAT Alpha message: ar.result is null"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2184
    :cond_1f
    const-string p0, "CAT Alpha message: msg.obj is null"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_10
    move-object v7, p0

    .line 2137
    const-string p0, "MSG_ID_ICC_CHANGED"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    return-void

    .line 2431
    :goto_2
    const-string p0, "Request STK service running now..."

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2432
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    return-void

    :pswitch_11
    move-object v7, p0

    .line 2134
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    return-void

    :pswitch_12
    move-object v7, p0

    .line 2102
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance p1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p1, v0, v4}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void

    :pswitch_13
    move-object v7, p0

    .line 2076
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ril message arrived,slotid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2078
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_20

    .line 2079
    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_20

    .line 2080
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_20

    .line 2082
    :try_start_4
    move-object v4, p0

    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2089
    :cond_20
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz p0, :cond_21

    .line 2090
    iget p0, p1, Landroid/os/Message;->what:I

    if-ne p0, v3, :cond_21

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/cat/CatService;->isSetUpMenu(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 2091
    new-instance p0, Lcom/android/internal/telephony/cat/RilMessage;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->saveBackUpProactiveCmd(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 2095
    :cond_21
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz p0, :cond_22

    .line 2096
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessage;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1, v4}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void

    .line 2098
    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in handleMessage ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") mMsgDecoder is NULL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_23
    move-object v7, p0

    .line 2142
    const-string p0, "MSG_ID_ICC_REFRESH"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2143
    sget-object p0, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: SIM_REFRESH Received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2145
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_26

    .line 2146
    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_25

    .line 2147
    iget-object p1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_25

    .line 2148
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v7, v0, p1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 2152
    :try_start_5
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 2153
    const-string p1, "send refresh"

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne p0, v3, :cond_24

    .line 2156
    iput-boolean v5, v7, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    .line 2157
    :cond_24
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/CatService;->launchSimRefreshMsgAndCancelNoti(I)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2162
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string p1, "SKT"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2163
    const-string p0, "true"

    const-string p1, "ril.domesticOtaStart"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2164
    iput-boolean v5, v7, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    return-void

    .line 2159
    :catch_1
    const-string p0, "ClassCastException from SIM_REFRESH"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2168
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Icc REFRESH with exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2171
    :cond_26
    const-string p0, "IccRefresh Message is null"

    invoke-static {v7, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_27
    move-object v7, p0

    .line 2120
    sget-object p0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2121
    :try_start_6
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v0, v7, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_28

    .line 2122
    check-cast p1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    .line 2123
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_28

    .line 2124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mImpi: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 2127
    :cond_28
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :cond_29
    move-object v7, p0

    .line 2106
    iget p0, v7, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string p1, "LGT"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2108
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v7}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 2109
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v7}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 2110
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v7}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 2112
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v7, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2113
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v7, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2114
    iget-object p0, v7, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v7, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    :catch_2
    :cond_2a
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_5
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
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

.method public blacklist hasIMSCall()Z
    .locals 4

    .line 3519
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3521
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->hasImsCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3522
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasIMSCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3523
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CatService["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]: Is in ims call: : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isRjioSIM()Z
    .locals 7

    .line 3878
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 3879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3881
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3882
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->JIO_IMPI_LIST:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 3883
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3884
    const-string v0, "isJio?: true"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3885
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3890
    :cond_2
    const-string v0, "impi is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3892
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mImpi:Ljava/lang/String;

    .line 3893
    const-string v0, "isJio?: false"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2
.end method

.method public blacklist isVodafone()Z
    .locals 2

    .line 3763
    iget p0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3765
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3766
    const-string v0, "50503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "50506"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public declared-synchronized blacklist onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 2512
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 2515
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2516
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method blacklist processDTMFString()V
    .locals 7

    .line 3199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dtmfStringLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    DTMFString : <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3201
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    iget v2, v0, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_4

    .line 3202
    iget-object v0, v0, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x70

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 3204
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v3, v0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int v4, v3, v2

    iget v5, v0, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    if-ge v4, v5, :cond_0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    add-int/2addr v3, v2

    .line 3205
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3208
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v1, v2, 0xbb8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x6a

    .line 3209
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0xbb8

    int-to-long v5, v2

    mul-long/2addr v5, v3

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3210
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v0, p0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    return-void

    .line 3213
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget v0, v0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->sendDtmfRequest(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3214
    const-string v0, "send TR with NOT_IN_SPEECH_CALL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void

    :cond_2
    move-object v1, p0

    .line 3220
    iget-object p0, v1, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v0, p0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    iget v3, p0, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    .line 3221
    const-string p0, "send delayed TR"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x66

    .line 3222
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 3226
    iput v0, p0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    move-object p0, v1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method blacklist sendDtmfRequest(C)Z
    .locals 2

    .line 3232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3233
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3235
    const-string p1, "Null CallManager instance"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3239
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist sendEnvelopeToTriggerBipforOTA(Z)V
    .locals 9

    const/16 v0, 0x25

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/16 v3, 0x33

    const/16 v4, 0x11

    const/4 v5, 0x0

    monitor-enter p0

    .line 2983
    :try_start_0
    new-array v6, v0, [B

    fill-array-data v6, :array_0

    .line 2993
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v8, 0xd1

    .line 2997
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x34

    .line 3000
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3003
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3004
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x83

    .line 3005
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x81

    .line 3006
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3009
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3010
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x98

    .line 3011
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3012
    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3013
    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3014
    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3015
    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3016
    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3019
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x26

    .line 3020
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3021
    invoke-virtual {v7, v6, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p1, :cond_0

    .line 3023
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x5

    .line 3025
    invoke-virtual {v7, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3027
    :goto_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 3028
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEnvelopeToTriggerBipforOTA cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3031
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: sendEnvelopeToTriggerBipforOTA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3033
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 1
        -0x1ct
        0xat
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0x7ft
        0x16t
        0xct
        0x1t
        0x9t
        0x15t
        0x57t
        0x32t
        0x36t
        0x14t
        0x2t
        0x70t
        0x0t
        0x0t
        0xft
        0xdt
        0x0t
        0x1t
        0x20t
        0x20t
        -0x50t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public declared-synchronized blacklist sendEnvelopeforSMSPPdownload([B[B)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3036
    :try_start_0
    aget-byte v1, p2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move v1, v0

    :goto_0
    if-gtz v1, :cond_1

    .line 3039
    const-string p1, "sendEnvelopeforSMSPPdownload : tpdu is not exist!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3040
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3043
    :try_start_1
    aget-byte v2, p1, v0

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v0, v2, 0x2

    :cond_3
    const/4 v3, 0x4

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x2

    add-int/2addr v3, v0

    .line 3048
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0xd1

    .line 3052
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3055
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3058
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x2

    .line 3059
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x83

    .line 3060
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x81

    .line 3061
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x1

    if-lez v2, :cond_4

    .line 3065
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3066
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3067
    invoke-virtual {v0, p1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3071
    :cond_4
    sget-object p1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3072
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3073
    invoke-virtual {v0, p2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3075
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 3076
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 3078
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendEnvelopeforSMSPPdownload cmd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3079
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: sendEnvelopeforSMSPPdownload : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3081
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3082
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public blacklist sendStkSms(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/cat/CommandParams;Lcom/android/internal/telephony/ProxyController;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1442
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cat.SMS_SENT_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1444
    const-string v5, "cmdDetails"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 1445
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v6, 0x2000000

    .line 1442
    invoke-static {v2, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1447
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.internal.telephony.cat.SMS_DELIVERY_ACTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1449
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 1450
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1447
    invoke-static {v2, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1452
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/ProxyController;->getSmsController()Lcom/android/internal/telephony/SmsController;

    move-result-object v7

    .line 1453
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 1454
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    move/from16 v8, p3

    .line 1453
    invoke-virtual/range {v7 .. v20}, Lcom/android/internal/telephony/SmsController;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZZ)V

    return-void
.end method

.method public declared-synchronized blacklist sentTerminalResponseForSetupMenu(Z)V
    .locals 0

    monitor-enter p0

    .line 3569
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3570
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 4

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2862
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2864
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x3

    .line 2867
    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p2, p1

    move-object p3, p2

    move-object v0, p3

    .line 2871
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_4

    .line 2873
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v3

    if-eq v2, v0, :cond_4

    if-eqz v2, :cond_2

    .line 2875
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 2877
    :cond_2
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 2878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterForReady slotid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "instance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2879
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2882
    :cond_3
    const-string v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2884
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object v0, v2, v3

    .line 2885
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object p2, v0, v3

    .line 2888
    aget-object p2, v2, v3

    const/16 v0, 0x14

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2889
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p2, p2, v0

    const/4 v0, 0x7

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2891
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerForRecordsLoaded slotid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instance:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2894
    :cond_4
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p2, p2, v0

    if-eqz p2, :cond_5

    .line 2895
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    if-eqz p3, :cond_5

    .line 2897
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p3

    aput-object p3, p2, v0

    .line 2898
    sget-object p2, Lcom/android/internal/telephony/cat/CatService;->mIsimIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget p3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object p2, p2, p3

    if-eqz p2, :cond_5

    const/16 p3, 0x15

    .line 2899
    invoke-virtual {p2, p0, p3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2905
    :cond_5
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist updateIccAvailability()V
    .locals 5

    .line 2909
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2913
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2914
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2916
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 2918
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2919
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Old Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2921
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    .line 2923
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void

    :cond_2
    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_3

    .line 2927
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    return-void

    .line 2929
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    if-ne v1, v2, :cond_4

    .line 2931
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 2932
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    :cond_4
    :goto_0
    return-void
.end method
