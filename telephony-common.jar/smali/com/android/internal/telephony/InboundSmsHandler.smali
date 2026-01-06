.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/telephony/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static blacklist ACTION_OPEN_SMS_APP:Ljava/lang/String; = null

.field public static final blacklist ADDRESS_COLUMN:I = 0x6

.field public static final blacklist COUNT_COLUMN:I = 0x5

.field public static final blacklist DATE_COLUMN:I = 0x3

.field protected static final blacklist DBG:Z = true

.field public static final blacklist DELETED_FLAG_COLUMN:I = 0xa

.field public static final blacklist DESTINATION_PORT_COLUMN:I = 0x2

.field public static final blacklist DISPLAY_ADDRESS_COLUMN:I = 0x9

.field public static final blacklist EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final blacklist EVENT_BROADCAST_SMS:I = 0x2

.field public static final blacklist EVENT_FINISH_SEND_IOTPOS:I = 0x25

.field public static final blacklist EVENT_GET_IOT_REGI_RESPONSE:I = 0x20

.field public static final blacklist EVENT_INJECT_SMS:I = 0x7

.field public static final blacklist EVENT_LOCATION_TIME_REACHED:I = 0x23

.field public static final blacklist EVENT_NEW_SMS:I = 0x1

.field protected static final blacklist EVENT_REASSEMBLE_TIMEOUT:I = 0x17

.field public static final blacklist EVENT_RECEIVER_TIMEOUT:I = 0x9

.field public static final blacklist EVENT_SATELLITE_IOT_REG_STATE_CHANGED:I = 0x21

.field public static final blacklist EVENT_SATELLITE_IOT_REG_STATE_TIMEOUT:I = 0x22

.field public static final blacklist EVENT_SEND_LOCATION_DATA_RESULT:I = 0x26

.field public static final blacklist EVENT_START_ACCEPTING_SMS:I = 0x6

.field protected static final blacklist EVENT_STOP_REASSEMBLE:I = 0x18

.field public static final blacklist EVENT_UPDATE_TRACKER:I = 0x8

.field public static final blacklist EVENT_USERCONFIRM_TIMEOUT:I = 0x24

.field public static final blacklist EVENT_WRITE_SMS_COMPLETE:I = 0xb

.field public static final blacklist ID_COLUMN:I = 0x7

.field private static blacklist LMS_REASSEMBLE_TIMEOUTS_CTC:Z = false

.field public static final blacklist MESSAGE_BODY_COLUMN:I = 0x8

.field public static final blacklist NOTIFICATION_ID_NEW_MESSAGE:I = 0x1

.field public static final blacklist NOTIFICATION_TAG:Ljava/lang/String; = "InboundSmsHandler"

.field public static final blacklist PDU_COLUMN:I = 0x0

.field private static final blacklist PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist RAW_PROJECTION:[Ljava/lang/String;

.field public static final blacklist REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static final blacklist SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final blacklist SEQUENCE_COLUMN:I = 0x1

.field public static final blacklist SOURCE_INJECTED_FROM_IMS:I = 0x1

.field public static final blacklist SOURCE_INJECTED_FROM_UNKNOWN:I = 0x2

.field public static final blacklist SOURCE_NOT_INJECTED:I = 0x0

.field public static final blacklist SUBID_COLUMN:I = 0xb

.field public static final blacklist TAG_CARRIERFEATURE_COMMON_SUPPORTHUXAPPDIRECTEDSMS:Ljava/lang/String; = "CarrierFeature_Common_SupportHuxAppDirectedSms"

.field protected static final blacklist VDBG:Z = false

.field private static blacklist gcf_flag:Z = false

.field public static final blacklist limitNormalRef:I = 0x10000

.field public static final blacklist limitReassembleRef:I = 0x100

.field protected static blacklist mNeedSetWakeLockTimeout:Z

.field protected static blacklist mPendingSMSduringLockState:Z

.field protected static final blacklist mRawUri:Landroid/net/Uri;

.field protected static greylist-max-r mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field private static blacklist sIsUserUnlocked:Z

.field protected static blacklist sPendingSegmentSmsHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist sRawUri:Landroid/net/Uri;

.field protected static final blacklist sRawUriPermanentDelete:Landroid/net/Uri;

.field protected static blacklist sReassembleRef:I

.field public static blacklist sTimeoutDurationMillis:I


# instance fields
.field private final blacklist CRYPTO_TYPE:Ljava/lang/String;

.field private final blacklist DELETE_PERMANENTLY:I

.field private final blacklist MARK_DELETED:I

.field private blacklist mApplicationID:Ljava/lang/String;

.field private blacklist mApplicationName:Ljava/lang/String;

.field private blacklist mApplicationSpecificData:[B

.field private blacklist mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

.field protected final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mCommand:Ljava/lang/String;

.field protected final greylist-max-r mContext:Landroid/content/Context;

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field private final greylist-max-r mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field protected greylist mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field protected final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field blacklist mHandler:Landroid/os/Handler;

.field private final greylist-max-r mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected blacklist mLatestSmsAddress:Ljava/lang/String;

.field protected blacklist mLatestSmsTimestamp:Ljava/lang/String;

.field protected blacklist mLatestSmsType:Ljava/lang/String;

.field protected final blacklist mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

.field private blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field protected greylist-max-r mPhone:Lcom/android/internal/telephony/Phone;

.field blacklist mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private final greylist-max-r mResolver:Landroid/content/ContentResolver;

.field private blacklist mSmsFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

.field protected blacklist mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

.field private final blacklist mSmsReceiveDisabled:Z

.field private final blacklist mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected blacklist mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private blacklist mUI:Ljava/lang/String;

.field private greylist-max-r mUserManager:Landroid/os/UserManager;

.field private final greylist-max-r mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field private final greylist-max-r mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mWakeLockTimeout:I

.field protected blacklist misWapPush:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$ZTWD4uG56xKQcXySC6EYc6xheAU(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->lambda$createDefaultSmsFilters$2([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lZWl59T5MB5c9KF3R5_GMGhZ1U0(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->lambda$createDefaultSmsFilters$0([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uEpbsVJskhyf7sBt4kDlyCUx4PA(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->lambda$createDefaultSmsFilters$1([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeliveringState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserManager(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteFromRawTable(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSmsDeliveryIntent(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdropFilteredSms(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInjectSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNewSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSmsWhitelisting(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSkipNotifyFlagSet(Lcom/android/internal/telephony/InboundSmsHandler;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSkipNotifyFlagSet(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessMessagePart(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->setWakeLockTimeout(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowNewMessageNotification(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_OPEN_SMS_APP()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfilterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 14

    .line 218
    const-string v0, "deleted"

    const-string v1, "pdu"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 224
    invoke-static {v2, v2, v3, v4}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 229
    const-string v3, "display_originating_addr"

    const-string v5, "date"

    const-string v12, "sequence"

    const-string v13, "destination_port"

    filled-new-array {v1, v12, v13, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x2

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v3, 0x9

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v3, 0x4

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v3, v2

    move-object v5, v4

    move-object v7, v6

    move-object v10, v9

    .line 238
    invoke-static/range {v2 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 307
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "raw"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 308
    const-string v4, "raw/permanentDelete"

    .line 309
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 369
    const-string v4, "com.android.internal.telephony.OPEN_DEFAULT_SMS_APP"

    sput-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    const v4, 0x927c0

    .line 2613
    sput v4, Lcom/android/internal/telephony/InboundSmsHandler;->sTimeoutDurationMillis:I

    .line 3242
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    .line 3245
    const-string v2, "reference_number"

    filled-new-array {v1, v2, v12, v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    .line 3284
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I

    .line 3285
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sPendingSegmentSmsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3307
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->gcf_flag:Z

    .line 3311
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    .line 3323
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->mNeedSetWakeLockTimeout:Z

    .line 3326
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    .line 3334
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->sIsUserUnlocked:Z

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 13

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 390
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 327
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 330
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 333
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 337
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v7, p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 341
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v8, p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 355
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 357
    new-instance v9, Lcom/android/internal/telephony/LocalLog;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 358
    new-instance v9, Lcom/android/internal/telephony/LocalLog;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v9, 0x1

    .line 365
    iput v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    const/4 v10, 0x2

    .line 367
    iput v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    .line 3291
    const-string v10, "latest_sms_address"

    iput-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsAddress:Ljava/lang/String;

    .line 3293
    const-string v10, "latest_sms_timestamp"

    iput-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsTimestamp:Ljava/lang/String;

    .line 3295
    const-string v10, "latest_sms_type"

    iput-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsType:Ljava/lang/String;

    const/4 v10, 0x0

    .line 3304
    iput-boolean v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    .line 3332
    const-string v11, "ro.crypto.type"

    const-string v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->CRYPTO_TYPE:Ljava/lang/String;

    .line 3363
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v11, p0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    .line 392
    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 393
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v11, p3

    .line 394
    iput-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 395
    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 397
    iget-object v11, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 399
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 400
    new-instance v11, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v11, p2, v3}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v11, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 402
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 403
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isDeviceSmsCapable()Z

    move-result v3

    .line 407
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 408
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    .line 407
    invoke-virtual {v11, v12, v9}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v11

    if-ne v11, v9, :cond_1

    if-nez v3, :cond_1

    .line 411
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v11, "VZW"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    iput-boolean v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    goto :goto_0

    .line 414
    :cond_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    goto :goto_0

    :cond_1
    xor-int/lit8 v3, v11, 0x1

    .line 417
    iput-boolean v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 420
    :goto_0
    const-string v3, "power"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 421
    invoke-virtual {v3, v9, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 422
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 423
    const-string p1, "user"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 425
    const-string p1, "deviceidle"

    .line 426
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 425
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 428
    const-string p1, "power_whitelist"

    .line 429
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerWhitelistManager;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 430
    new-instance p1, Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-direct {p1, p2, v1}, Lcom/android/internal/telephony/CellBroadcastServiceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    .line 432
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->createDefaultSmsFilters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    .line 434
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 435
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 436
    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 437
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 438
    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 440
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 443
    invoke-static {p0}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->getInstance(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string p1, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v3, "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 445
    invoke-static {p0}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->getInstance(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string p1, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 450
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string v1, "sms_display_policy_partial_long_sms"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/internal/telephony/InboundSmsHandler;->LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    if-eqz p1, :cond_2

    .line 454
    new-instance p1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    goto :goto_1

    .line 456
    :cond_2
    iput-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    .line 460
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    .line 462
    invoke-static {p2}, Lcom/android/internal/telephony/SmsHQMAgent;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    .line 464
    const-string p1, "created InboundSmsHandler"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 13

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2540
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result p2

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2543
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->checkAndHandleDuplicate(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result p2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    const/4 p0, 0x5

    return p0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTrackerToRawTable: Can\'t access SMS database, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2547
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0xa

    return p0

    .line 2552
    :cond_0
    const-string p2, "addTrackerToRawTable: Skipped message de-duping logic"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 2555
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 2556
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2557
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2558
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 2560
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sim_slot"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2567
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 2568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable: URI of new row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 2571
    :try_start_1
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 2572
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 2574
    const-string p2, "_id=?"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .line 2577
    :cond_2
    filled-new-array {p2, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2578
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2580
    const-string v2, "address=? AND reference_number=? AND date < ?"

    .line 2581
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v4

    .line 2583
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v7, "CHN"

    const-string v8, "CHU"

    const-string v9, "CHM"

    const-string v10, "CBK"

    const-string v11, "CHC"

    const-string v12, "TGY"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/32 v6, 0xa4cb800

    goto :goto_0

    .line 2585
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v7, "H3G"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/32 v6, 0xdbba00

    goto :goto_0

    :cond_4
    const-wide/32 v6, 0x927c0

    .line 2588
    :goto_0
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "collectionTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v4, v6

    .line 2590
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p2, v1, v4}, [Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    .line 2592
    invoke-direct {p0, v2, p2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v0

    .line 2597
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTrackerToRawTable: error parsing URI for new row: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2597
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0xb

    return p0
.end method

.method static blacklist cancelNewMessageNotification(Landroid/content/Context;)V
    .locals 2

    .line 2039
    const-string v0, "notification"

    .line 2040
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2041
    const-string v0, "InboundSmsHandler"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist checkAndHandleDuplicate(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2430
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 2435
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2439
    const-string v9, " rows"

    const-string v10, "1"

    const/4 v11, 0x1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2440
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eq v5, v11, :cond_0

    .line 2441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndHandleDuplicate: Exact match query returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v6

    .line 2441
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto/16 :goto_4

    .line 2447
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/16 v6, 0xa

    .line 2448
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2447
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndHandleDuplicate: Discarding duplicate message/segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;)V

    .line 2451
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 2453
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v0, "ISH_checkAndHandleDuplicate_Discarded"

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, v10, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2475
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v11

    .line 2460
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 2462
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v5, v0, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndHandleDuplicate: Replacing duplicate message: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;)V

    .line 2466
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 2468
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v5, "ISH_checkAndHandleDuplicate_Replaced"

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v10, v5, v6}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v2, :cond_3

    .line 2475
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2482
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    if-le v0, v11, :cond_7

    .line 2483
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getInexactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    move-object v5, v4

    move-object v4, v3

    .line 2487
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2491
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2492
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v11, :cond_4

    .line 2493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndHandleDuplicate: Inexact match query returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v3

    .line 2493
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 2497
    :cond_4
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndHandleDuplicate: Replacing duplicate message segment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;)V

    .line 2501
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 2503
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v0, "ISH_checkAndHandleDuplicate_ReplacedSegment"

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, v10, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz v1, :cond_7

    .line 2508
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2510
    :cond_6
    throw p0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    :goto_4
    if-eqz v1, :cond_8

    .line 2475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2477
    :cond_8
    throw p0
.end method

.method private blacklist createDefaultSmsFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;"
        }
    .end annotation

    .line 2055
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2056
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2076
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2087
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private greylist-max-r deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2293
    :try_start_0
    sget-object p3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 2294
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 2296
    const-string p1, "No rows were deleted from raw table!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 2298
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleted "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows from raw table."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2301
    :goto_1
    const-string p2, "Deletion from raw table failed."

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private blacklist dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;II)I
    .locals 10

    .line 1102
    const-string v0, "InboundSmsHandler"

    const-string v1, "1"

    if-nez p1, :cond_0

    .line 1103
    const-string p1, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1105
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    const-string p3, "ISH_dispatchMessage_NullMessage"

    invoke-virtual {p1, v1, p3, p2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1106
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string p2, "dispatchMessage : Parsing Failed"

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p0, 0x8

    return p0

    .line 1111
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1113
    const-string p1, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1116
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string p2, "ISH_dispatchMessage_DonotSupport"

    invoke-virtual {p1, v1, p2, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v3

    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isSmsBlockedForOneNumberService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    const-string p0, "New message is blocked due to OneNumberService"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1127
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isMtSmsPollingMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    const-string p1, "Received MT SMS polling message. Ignored."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v3

    .line 1133
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1134
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1135
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldDropSms(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1136
    const-string p1, "SMS not supported during satellite session."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v3

    .line 1141
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I

    move-result v7

    .line 1144
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->isInternationalNumber(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1145
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "STIN"

    invoke-virtual {p3, v1, v0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    .line 1147
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1148
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "STEN"

    invoke-virtual {p3, v1, v0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendDRCSToImsLogAgent(Ljava/lang/String;I)V

    :cond_6
    if-eq v7, v3, :cond_7

    const/4 p3, -0x1

    if-eq v7, p3, :cond_7

    .line 1155
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p3, :cond_7

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v1

    invoke-virtual {v0, p3, v1, p2, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsError(IZII)V

    .line 1157
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    .line 1158
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    move v6, p2

    .line 1157
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsError(ZIIZI)V

    .line 1160
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 1162
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 1164
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onIncomingSmsError(II)V

    :cond_7
    return v7
.end method

.method private blacklist dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V
    .locals 7

    .line 2347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2348
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2349
    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long p2, p7, v1

    if-eqz p2, :cond_0

    .line 2351
    const-string p2, "messageId"

    invoke-virtual {v0, p2, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const/4 p2, -0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_4

    .line 2356
    const-string p2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2359
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, p6}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2360
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p3, v2, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p3

    .line 2362
    const-string v3, "InboundSmsHandler"

    if-eqz p3, :cond_1

    .line 2364
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2365
    invoke-virtual {p0, v1, p7, p8}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    .line 2369
    iget-object p7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p8

    .line 2369
    invoke-virtual {p7, v3, p3, p8}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2373
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2376
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p3

    iget-object p7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p7

    const-string p8, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {p3, p7, p8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2377
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const/4 p7, 0x0

    aget-object p1, p1, p7

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object p7

    invoke-static {p3, p1, p7}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2379
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2381
    iget-boolean p1, p1, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    if-ne p1, v2, :cond_2

    .line 2382
    const-string p3, "twoPhoneNoti"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2383
    const-string p1, "putExtra twoPhoneNoti"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p1

    .line 2390
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/AppSmsManager;->handleSmsReceivedIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2392
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void

    :cond_3
    move-object v1, p2

    goto :goto_1

    .line 2396
    :cond_4
    const-string p1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sms://localhost:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2398
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    const/high16 p1, 0x10000000

    .line 2402
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v1, :cond_5

    .line 2406
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 2411
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 2413
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string p5, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {p2, p3, p5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2414
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 2417
    :cond_6
    const-string p2, "android.permission.RECEIVE_SMS"

    const-string p3, "android:receive_sms"

    move-object p5, p4

    move p7, p6

    move-object p6, v1

    move-object p4, p1

    move-object p1, v0

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method private blacklist dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2113
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    .line 2112
    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 2115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 2117
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method private blacklist dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 2

    .line 2902
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 2903
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZ)Z
    .locals 1

    .line 2132
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    move v0, p6

    move-object p6, p0

    move-object p0, p1

    move p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static blacklist filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BI",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)Z"
        }
    .end annotation

    .line 2138
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2139
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2140
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;

    .line 2142
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v10, p6

    invoke-interface {v10, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    .line 2141
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getCDMASmsReassembly()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected static declared-synchronized blacklist getNextReassembleRef()I
    .locals 3

    const-class v0, Lcom/android/internal/telephony/InboundSmsHandler;

    monitor-enter v0

    .line 3880
    :try_start_0
    sget v1, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I

    add-int/lit8 v1, v1, 0x1

    .line 3881
    rem-int/lit16 v1, v1, 0x100

    sput v1, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    .line 3882
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getPduLength(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 2928
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2929
    array-length p0, p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 4103
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    .line 4104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 4105
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTotalPduLength([[B)I
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 2935
    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge p0, v0, :cond_1

    aget-object v2, p1, p0

    if-eqz v2, :cond_0

    .line 2937
    array-length v2, v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return p0
.end method

.method private greylist-max-r handleInjectSms(Landroid/os/AsyncResult;ZI)V
    .locals 5

    .line 1045
    const-string v0, "1"

    .line 1047
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SmsMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1050
    :try_start_0
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1052
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isBlockSmsForNonAIS()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 1054
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string p3, "ISH_handleInjectSms_AISNetworkLock"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {p2, v0, p3, v3}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v3, p1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 1058
    const-string p2, "Null injected sms"

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 v4, 0x7

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    move v4, v2

    .line 1063
    :cond_2
    iget-object p2, v1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, p2, v4, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;II)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception p2

    .line 1067
    :goto_0
    const-string p1, "Exception dispatching message"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1069
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    const-string p3, "ISH_handleInjectSms_ExceptionDispatching"

    invoke-virtual {p1, v0, p3, p2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x6

    move-object p1, v3

    :goto_1
    const/16 p2, 0x17

    if-ne v4, p2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 1081
    iget-object p2, v1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->accountSMStoMDM(ILcom/android/internal/telephony/SmsMessageBase;)V

    :cond_4
    move v2, v4

    :goto_2
    if-eqz p1, :cond_5

    .line 1087
    invoke-interface {p1, v2}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    :cond_5
    return-void
.end method

.method private greylist-max-r handleNewSms(Landroid/os/AsyncResult;)V
    .locals 12

    .line 877
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0xf4

    const-string v2, "1"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception processing incoming SMS: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 882
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 881
    invoke-static {p1, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 886
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ISH_handleNewSms_Exception"

    invoke-virtual {p1, v2, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v4, "InboundSmsHandler"

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v0, v5, :cond_1

    .line 890
    const-string p1, "SubId Is Not Ready."

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 892
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ISH_handleNewSms_SubIdIsNotReady"

    invoke-virtual {p1, v2, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 896
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isBlockSmsForNonAIS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 898
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ISH_handleNewSms_AISNetworkLock"

    invoke-virtual {p1, v2, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    const-string v9, "RILJ > New SMS Message Received"

    invoke-virtual {v0, v4, v9, v8}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 904
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isDeviceEncryptionOngoing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 909
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 908
    invoke-static {p1, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 912
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ISH_handleNewSms_Encryption"

    invoke-virtual {p1, v2, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v8, "sms_smsp"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSMSPavailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 918
    invoke-direct {p0, v3, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 922
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 921
    invoke-static {p1, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 925
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ISH_handleNewSms_Unavailable"

    invoke-virtual {p1, v2, v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 942
    :cond_4
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsMessage;

    .line 946
    :try_start_0
    iget-object v8, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, v8, v3, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 948
    const-string v9, "Exception dispatching message"

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_5

    .line 951
    iget-object v8, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->removeDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z

    .line 953
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    const-string v10, "ISH_handleNewSms_ExceptionDispatching"

    invoke-virtual {v8, v2, v10, v9}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x6

    :goto_0
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    .line 960
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v9

    if-nez v9, :cond_6

    .line 962
    const-string p1, "SatelliteController is not initialized"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void

    .line 965
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSmsReceived(I)V

    :cond_7
    const/16 v9, 0x17

    if-ne v2, v9, :cond_8

    move v2, v8

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 976
    iget-object v10, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v2, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->accountSMStoMDM(ILcom/android/internal/telephony/SmsMessageBase;)V

    :cond_9
    :goto_1
    if-ne v2, v8, :cond_a

    .line 983
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 984
    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 985
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 986
    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSmsReceived(I)V

    :cond_a
    if-eq v2, v5, :cond_12

    if-ne v2, v6, :cond_b

    .line 998
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    new-array v10, v3, [Ljava/lang/Object;

    .line 997
    invoke-static {v6, v1, v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x5

    if-ne v2, v1, :cond_c

    .line 1004
    invoke-direct {p0, v8, v8, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void

    :cond_c
    const/16 v1, 0x15

    if-ne v2, v1, :cond_f

    .line 1008
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsMessage;

    if-eqz p1, :cond_e

    .line 1010
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1011
    iget-object v2, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v2, :cond_d

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    if-le v2, v5, :cond_d

    .line 1013
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1014
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sPendingSegmentSmsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x493e0

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1017
    :cond_d
    const-string p1, "it\'s not proper segmented message"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_2
    move v2, v8

    :cond_f
    if-ne v2, v8, :cond_10

    move v3, v8

    .line 1027
    :cond_10
    sget-object p1, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {p1}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushManagerSupported()Z

    move-result p1

    if-eqz p1, :cond_11

    if-eqz v0, :cond_11

    .line 1028
    iget-object p1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1029
    iget-object p1, p1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz p1, :cond_11

    const/16 v0, 0xb84

    iget p1, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v0, p1, :cond_11

    .line 1030
    iput-boolean v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    .line 1034
    :cond_11
    invoke-direct {p0, v3, v2, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    :cond_12
    return-void
.end method

.method private greylist-max-r handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .locals 9

    if-eqz p1, :cond_0

    .line 2311
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2312
    const-string v0, "sms-app"

    goto :goto_0

    .line 2314
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2315
    const-string v0, "sms-broadcast"

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2320
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    .line 2321
    invoke-virtual {p2, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 2322
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 2324
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/16 v2, 0x13a

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    if-nez p2, :cond_2

    .line 2326
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    :cond_2
    move-object v3, p2

    const/16 v7, 0x13a

    .line 2327
    const-string v8, ""

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2331
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 2271
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 2272
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2273
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist hexToByte(Ljava/lang/String;)B
    .locals 2

    const/4 v0, 0x0

    .line 3143
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->toDigit(C)I

    move-result v0

    const/4 v1, 0x1

    .line 3144
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->toDigit(C)I

    move-result p0

    shl-int/lit8 p1, v0, 0x4

    add-int/2addr p1, p0

    int-to-byte p0, p1

    return p0
.end method

.method private blacklist isBlockSmsForNonAIS()Z
    .locals 2

    .line 4979
    const-string v0, "ro.boot.carrierid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4980
    const-string v0, "[Thailand AIS] AIS network lock is supported"

    const-string v1, "InboundSmsHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string v0, "sms_networklock_allow_sms"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4982
    const-string p0, "[Thailand AIS] Blocked Non-AIS SIM card"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist isCurrentFormat3gpp2()Z
    .locals 2

    .line 2608
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isDish()Z
    .locals 3

    .line 4092
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "DSA"

    const-string v1, "DSG"

    const-string v2, "DSH"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2

    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1949
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 1951
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isInternationalNumber(Ljava/lang/String;)Z
    .locals 1

    .line 5014
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 5015
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 5017
    :try_start_0
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 5018
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p0

    .line 5019
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    if-eq p1, p0, :cond_0

    .line 5021
    const-string p0, "InboundSmsHandler"

    const-string p1, "international number"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 5025
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isMainUser(I)Z
    .locals 0

    .line 2279
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isMtSmsPollingMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 2

    .line 2907
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 2908
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2911
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040396

    .line 2912
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2913
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2914
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private greylist-max-r isSkipNotifyFlagSet(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p1, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSmsBlockedForOneNumberService()Z
    .locals 3

    .line 4995
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v0, "InboundSmsHandler"

    if-eqz p0, :cond_1

    .line 4996
    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4999
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isMsgBlockedForOneNumberService()Z

    move-result p0

    goto :goto_0

    .line 5001
    :cond_0
    const-string p0, "Fail to isOneNumberService"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    .line 5004
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsBlockedForOneNumberService ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private blacklist isSpr()Z
    .locals 4

    .line 4081
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "VMU"

    const-string v1, "XAS"

    const-string v2, "SPR"

    const-string v3, "BST"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static blacklist isTherePendingMessage()Z
    .locals 2

    .line 3265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingSMSduringLockState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InboundSmsHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    sget-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    return v0
.end method

.method private synthetic blacklist lambda$createDefaultSmsFilters$0([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 14

    .line 2059
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;

    .line 2061
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    .line 2063
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->isClass0()Z

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v10

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZIJZLjava/util/List;)V

    .line 2065
    new-instance v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    move-object v6, v0

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2066
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2067
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "::CarrierServicesSmsFilter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 2068
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v9

    move-object v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;Lcom/android/internal/telephony/LocalLog;J)V

    .line 2069
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2070
    const-string p1, "SMS is being handled by carrier service"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$createDefaultSmsFilters$1([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 2

    .line 2079
    iget-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 2080
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    .line 2079
    invoke-static {p5, p1, p7, p2, v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2081
    const-string p1, "Visual voicemail SMS dropped"

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    .line 2082
    invoke-direct {p0, p3, p4, p6}, Lcom/android/internal/telephony/InboundSmsHandler;->dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$createDefaultSmsFilters$2([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .locals 2

    .line 2090
    new-instance p2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;

    iget-object p7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p2, p7}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2093
    iget-object p7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p7

    const-string v0, "DCM"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_0

    if-eqz p5, :cond_1

    .line 2095
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p1, p5}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->filter([[BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2096
    const-string p1, "Missed incoming call SMS received"

    .line 2097
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 2096
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    if-nez p7, :cond_1

    .line 2099
    invoke-direct {p0, p3, p4, p6}, Lcom/android/internal/telephony/InboundSmsHandler;->dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 3

    .line 2517
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2517
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2519
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v0

    .line 2520
    invoke-static {p1}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 2521
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: dup message PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is different from existing PDU of length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2524
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 2522
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private blacklist notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1206
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "subId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1213
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1221
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    .line 1224
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "L3Ack"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1226
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v3, "SPRINT"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_1

    .line 1228
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    :cond_1
    return-void

    .line 1231
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private greylist-max-r processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1475
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v8

    .line 1480
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v0

    .line 1482
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1485
    const-string v9, "1"

    const/4 v10, 0x0

    if-gtz v8, :cond_0

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart: returning false due to invalid message count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1486
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    .line 1489
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1490
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 1489
    const-string v2, "ISH_processMessagePart_InvalidMessageCount"

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v10

    :cond_0
    const/4 v11, 0x0

    const/4 v13, -0x1

    .line 1495
    const-string v14, "InboundSmsHandler"

    const/4 v15, 0x1

    if-ne v8, v15, :cond_1

    .line 1497
    new-array v6, v15, [[B

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v7

    aput-object v7, v6, v10

    .line 1498
    new-array v7, v15, [J

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v16

    aput-wide v16, v7, v10

    move/from16 v16, v15

    .line 1499
    iget-object v15, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/16 v17, 0x3

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDisplayAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v11}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    move-object v10, v6

    move-object/from16 v26, v7

    const/16 v18, 0x2

    move v6, v3

    :goto_0
    move v3, v0

    goto/16 :goto_5

    :cond_1
    move/from16 v16, v15

    const/16 v17, 0x3

    .line 1505
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1506
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1509
    filled-new-array {v4, v3, v6}, [Ljava/lang/String;

    move-result-object v22

    .line 1510
    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v19, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v20, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 1511
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v18, v6

    .line 1510
    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1513
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1515
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x2

    const-string v12, "cursorCount : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", messageCount : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v7, v8, :cond_3

    .line 1523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMessagePart: returning false. Only "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " segments  have arrived. refNumber: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1525
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v11

    .line 1523
    invoke-virtual {v1, v3, v11, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 1527
    sget-boolean v3, Lcom/android/internal/telephony/InboundSmsHandler;->LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    if-eqz v3, :cond_2

    if-ne v0, v13, :cond_2

    .line 1530
    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v3, v8, v5}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 1531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lmsToken = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->hasScheduledFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1533
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->scheduleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v11, v6

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    move-object v11, v6

    goto/16 :goto_19

    :catch_1
    move-exception v0

    move-object v11, v6

    goto/16 :goto_1a

    .line 1636
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v10

    .line 1544
    :cond_3
    :try_start_2
    new-array v7, v8, [[B

    .line 1545
    new-array v12, v8, [J

    move v15, v10

    .line 1546
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v10

    .line 1548
    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 1549
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1548
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1549
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v21

    sub-int v5, v5, v21

    if-ge v5, v8, :cond_7

    if-gez v5, :cond_4

    goto/16 :goto_4

    .line 1567
    :cond_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1566
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v7, v5

    if-nez v5, :cond_5

    .line 1572
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1571
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1574
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1573
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1576
    invoke-static {v11}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v11

    if-eq v11, v13, :cond_5

    move v0, v11

    .line 1583
    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1582
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    aput-wide v22, v12, v5

    if-nez v15, :cond_6

    .line 1593
    iget-object v5, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/16 v11, 0x9

    .line 1595
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1594
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 1593
    invoke-static {v5, v10, v11}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v15

    :cond_6
    :goto_3
    move/from16 v10, v19

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1555
    :cond_7
    :goto_4
    const-string v10, "processMessagePart: invalid seqNumber = %d, messageCount = %d"

    .line 1557
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v11

    add-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1558
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v5, v11}, [Ljava/lang/Object;

    move-result-object v5

    .line 1555
    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1559
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v10

    .line 1555
    invoke-virtual {v1, v5, v10, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    .line 1561
    iget-object v5, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v10, "ISH_processMessagePart_InvalidIndex"

    iget-object v11, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    move/from16 v19, v10

    .line 1598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processMessagePart: all "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " segments  received. refNumber: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1599
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v10

    .line 1598
    invoke-virtual {v1, v5, v10, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 1602
    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sPendingSegmentSmsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SmsMessage;

    .line 1603
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getCDMASmsReassembly()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v5, :cond_9

    .line 1604
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop reassemble for refNum : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x18

    invoke-virtual {v1, v10, v5}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1609
    :cond_9
    sget-boolean v3, Lcom/android/internal/telephony/InboundSmsHandler;->LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    if-eqz v3, :cond_a

    const/16 v3, 0xb84

    if-eq v0, v3, :cond_a

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LMS receive completely : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v3, v8, v5}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 1614
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->cancelFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    .line 1615
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    move/from16 v3, v19

    .line 1616
    invoke-virtual {v1, v7, v0, v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusCTC([[BLcom/samsung/android/telephony/cdma/SemLmsTokenCTC;ILcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1636
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v16

    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v10, v7

    move-object/from16 v26, v12

    move v6, v15

    goto/16 :goto_0

    .line 1641
    :goto_5
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v5, "SKT"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x4244

    if-ne v3, v0, :cond_e

    .line 1644
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v8, :cond_d

    .line 1646
    iget-object v5, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    aget-object v6, v10, v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    if-nez v5, :cond_b

    .line 1648
    const-string v0, "processMessagePart: SmsMessage.semCreateFromPdu returned null."

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "ISH_processMessagePart_PortMessageNullPdu"

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x0

    return v6

    :cond_b
    const/4 v6, 0x0

    if-lez v4, :cond_c

    .line 1657
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v5

    goto :goto_7

    .line 1659
    :cond_c
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v5

    .line 1661
    :goto_7
    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1663
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSKTFOTAPortAddressedPdus([BI)V

    .line 1664
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    invoke-virtual {v1, v10, v3, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BII)V

    .line 1666
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    move/from16 v4, v18

    invoke-direct {v1, v0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMS_PORT_ADDRESSED_MESSAGE] processMessagePart Dispatch PORT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    .line 1668
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return v16

    :cond_e
    const/16 v0, 0xb84

    if-ne v3, v0, :cond_f

    move/from16 v0, v16

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    .line 1674
    :goto_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v11

    .line 1677
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1678
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_34

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_17

    .line 1703
    :cond_10
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v0, :cond_1e

    .line 1705
    array-length v7, v10

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v7, :cond_19

    aget-object v13, v10, v12

    const/16 v22, 0x4

    .line 1707
    const-string v5, "3gpp"

    if-ne v11, v5, :cond_17

    move/from16 v23, v0

    .line 1709
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, v13, v5}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1710
    const-string v5, "3gpp wap push"

    invoke-static {v14, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_11

    .line 1712
    const-string v0, "processMessagePart: SmsMessage.semCreateFromPdu returned null"

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "ISH_processMessagePart_WapPushNullPdu"

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_a
    const/16 v19, 0x0

    return v19

    .line 1717
    :cond_11
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 1718
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v24, v0

    const v0, 0x1110165

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1719
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v13, "sms_check_duplicate_port_omadm_wappush"

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    .line 1730
    :cond_12
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    move/from16 v13, v22

    move/from16 v22, v7

    move v7, v13

    move-object v13, v0

    move-object/from16 v25, v4

    move/from16 v27, v6

    goto :goto_c

    .line 1720
    :cond_13
    :goto_b
    const-string v0, "CheckForDuplicatePortsInOmadmWapPush"

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->checkDuplicatedOmadmPort([BLcom/android/internal/telephony/SmsHeader;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1722
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    .line 1723
    new-array v13, v0, [B

    move-object/from16 v25, v4

    .line 1724
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    move/from16 v27, v22

    move/from16 v22, v7

    move/from16 v7, v27

    move/from16 v27, v6

    const/4 v6, 0x0

    invoke-static {v4, v7, v13, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_14
    move/from16 v25, v22

    move/from16 v22, v7

    move/from16 v7, v25

    move-object/from16 v25, v4

    move/from16 v27, v6

    .line 1727
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    move-object v13, v0

    .line 1733
    :goto_c
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v4, "sms_safe_message_indication"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "] = "

    if-eqz v0, :cond_15

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smsHeader.safeMessageIndication["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v5, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    iget-boolean v6, v5, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushSafeNoti(Z)V

    .line 1738
    :cond_15
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v6, "sms_link_warning_indication"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smsHeader.linkWarningIndication["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader;->linkWarningIndication:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    iget-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader;->linkWarningIndication:Z

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushLinkWarningNoti(Z)V

    .line 1743
    :cond_16
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v6, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsHeader.twoPhoneIndication : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    iget-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushTwoPhoneNoti(Z)V

    goto :goto_d

    :cond_17
    move/from16 v23, v22

    move/from16 v22, v7

    move/from16 v7, v23

    move/from16 v23, v0

    move-object/from16 v25, v4

    move/from16 v27, v6

    .line 1760
    :cond_18
    :goto_d
    array-length v0, v13

    const/4 v6, 0x0

    invoke-virtual {v15, v13, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v22

    move/from16 v0, v23

    move-object/from16 v4, v25

    move/from16 v6, v27

    const/4 v13, -0x1

    goto/16 :goto_9

    :cond_19
    move/from16 v23, v0

    move-object/from16 v25, v4

    move/from16 v27, v6

    const/4 v7, 0x4

    .line 1763
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1764
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1765
    const-string v0, "isWapPushForMms is true. drop it."

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    move/from16 v3, v16

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 1772
    :cond_1a
    sget-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->sIsUserUnlocked:Z

    if-nez v0, :cond_1d

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Credential-encrypted storage not available. Port: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const-string v0, "set mPendingSMSduringLockState."

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    .line 1776
    sput-boolean v16, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    .line 1778
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1779
    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    goto/16 :goto_a

    :cond_1b
    const/16 v19, 0x0

    .line 1781
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForSupl([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1782
    const-string v0, "SUPL Message received at LockState."

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1c
    return v19

    .line 1788
    :cond_1d
    :goto_e
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushAddress(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    move/from16 v23, v0

    move-object/from16 v25, v4

    move/from16 v27, v6

    const/4 v7, 0x4

    .line 1792
    :goto_f
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsBroadcastReceiver(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v5

    .line 1795
    sget-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->sIsUserUnlocked:Z

    if-nez v0, :cond_20

    const/16 v0, 0xb84

    if-eq v3, v0, :cond_20

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMessagePart: !isUserUnlocked; calling processMessagePartWithUserLocked. Port: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1798
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v6

    .line 1797
    invoke-virtual {v1, v0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    if-eqz v23, :cond_1f

    const/4 v0, 0x1

    .line 1801
    new-array v10, v0, [[B

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v19, 0x0

    aput-object v0, v10, v19

    :cond_1f
    move v4, v3

    move-object v3, v10

    move/from16 v6, v27

    .line 1799
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v0

    return v0

    :cond_20
    move v12, v3

    if-eqz v23, :cond_26

    .line 1808
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v2, v5

    .line 1809
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v5

    move/from16 v22, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v6

    move-object/from16 v3, p0

    move/from16 v9, v22

    move-object/from16 v4, v25

    .line 1808
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IJ)I

    move-result v0

    move-object v13, v3

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart: dispatchWapPdu() returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1812
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1811
    invoke-virtual {v13, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 1817
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v13, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1818
    invoke-virtual {v13, v9}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_21
    if-eq v0, v1, :cond_23

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    goto :goto_10

    :cond_22
    const/16 v27, 0x0

    goto :goto_11

    :cond_23
    :goto_10
    const/16 v27, 0x1

    :goto_11
    if-eqz v27, :cond_24

    .line 1826
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    move v7, v1

    goto :goto_12

    :cond_24
    const/4 v7, 0x0

    .line 1827
    :goto_12
    iget-object v1, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v24

    .line 1828
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v28

    move-object/from16 v22, v1

    move-object/from16 v25, v11

    .line 1827
    invoke-virtual/range {v22 .. v29}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingWapPush(IILjava/lang/String;[JZJ)V

    .line 1829
    iget-object v1, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v1

    move v3, v0

    move-object v0, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v1

    .line 1830
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    move v2, v8

    .line 1829
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsWapPush(IIIJZI)V

    const/4 v1, -0x1

    if-ne v3, v1, :cond_25

    const/16 v16, 0x1

    return v16

    .line 1836
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v13, v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1838
    const-string v0, "processMessagePart: returning false as the ordered broadcast for WAP push was not sent"

    .line 1839
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    .line 1838
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    goto/16 :goto_a

    :cond_26
    move-object/from16 v13, p0

    move v2, v8

    move-object/from16 v25, v11

    move-object v11, v5

    .line 1848
    iget-object v0, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v24

    .line 1849
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v28

    move-object/from16 v22, v0

    .line 1848
    invoke-virtual/range {v22 .. v29}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSession(IILjava/lang/String;[JZJ)V

    .line 1850
    iget-object v0, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v1

    move v3, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v2

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v5

    .line 1852
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v13, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->getTotalPduLength([[B)I

    move-result v8

    move/from16 v4, v27

    .line 1850
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsSuccess(ZIIZJZI)V

    move v2, v3

    .line 1853
    iget-object v0, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1854
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getInstance(I)Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    move-result-object v0

    .line 1855
    iget-object v1, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onIncomingSms(I)V

    .line 1858
    invoke-virtual {v13}, Lcom/android/internal/telephony/InboundSmsHandler;->checkIfVVMReceiver()Z

    move-result v0

    const/4 v1, -0x1

    if-ne v12, v1, :cond_2b

    const/4 v3, 0x1

    if-le v2, v3, :cond_2b

    .line 1861
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget-object v2, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CarrierFeature_Common_SupportHuxAppDirectedSms"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6, v6}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_27

    if-eqz v0, :cond_2b

    .line 1863
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    array-length v1, v10

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_29

    aget-object v3, v10, v2

    .line 1865
    iget-object v4, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v13}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1866
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1867
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1871
    :cond_29
    sget-object v1, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    iget-object v2, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1872
    invoke-virtual {v0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappdirsmsstatus()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_2b

    .line 1874
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {v13, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1876
    invoke-virtual {v0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->checkifcomponentpresent()Z

    move-result v1

    if-ne v3, v1, :cond_2a

    .line 1877
    const-string v1, "Dispatch multi part AppDirectedSMS"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-virtual {v0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getcomponentnameDirectedSms()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappMsgBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getAppPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v2, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    :cond_2a
    const-string v0, "Received AppDirectedSMS"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1887
    :cond_2b
    iget-object v0, v13, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2c

    .line 1888
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1890
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1892
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onIncomingSmsSuccess(I)V

    :cond_2c
    const/4 v6, 0x1

    move-object/from16 v4, p1

    move-object v2, v10

    move-object v5, v11

    move v3, v12

    move-object v1, v13

    move/from16 v7, v27

    .line 1901
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZ)Z

    move-result v0

    move v4, v3

    if-nez v0, :cond_33

    .line 1907
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1910
    const-string v0, "com.samsung.android.messaging"

    .line 1912
    :cond_2d
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1914
    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 1917
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    :cond_2e
    const/4 v11, 0x0

    :goto_14
    if-eqz v27, :cond_31

    if-eqz v11, :cond_30

    .line 1920
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_15

    .line 1930
    :cond_2f
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setBlockedNumber(Z)V

    goto :goto_16

    .line 1921
    :cond_30
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultSmsPackage is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Number is blocked"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "ISH_processMessagePart_BlockedNumber"

    invoke-virtual {v0, v9, v3, v2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1925
    const-string v0, "processMessagePart: returning false as the phone number is blocked"

    .line 1926
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1925
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 1932
    :cond_31
    :goto_16
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    if-eqz v0, :cond_32

    .line 1933
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1934
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1935
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1936
    const-string v0, "Device does not support receiving sms."

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1941
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->isClass0()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v8

    move-object/from16 v3, v25

    .line 1940
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V

    :cond_33
    const/16 v16, 0x1

    return v16

    .line 1679
    :cond_34
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart: returning false due to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "pduList.size() == 0"

    goto :goto_18

    :cond_35
    const-string v2, "pduList.contains(null)"

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    .line 1683
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_36

    .line 1684
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v2

    .line 1685
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v4

    .line 1686
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x7

    .line 1684
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsError(ZIIZI)V

    .line 1688
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "ISH_processMessagePart_NullPduList"

    invoke-virtual {v0, v9, v3, v2}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1690
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1692
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1695
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v1

    const/4 v2, 0x7

    .line 1694
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onIncomingSmsError(II)V

    :cond_36
    const/16 v19, 0x0

    return v19

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    goto :goto_1b

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    goto :goto_19

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    goto :goto_1a

    .line 1630
    :goto_19
    :try_start_3
    const-string v2, "Can\'t handle multipart sms"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1631
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v2, "ISH_processMessagePart_Exception"

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v11, :cond_37

    .line 1636
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_37
    const/16 v19, 0x0

    return v19

    :catchall_2
    move-exception v0

    goto :goto_1b

    .line 1622
    :goto_1a
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart: Can\'t access multipart SMS database, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1622
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1625
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v2, "ISH_processMessagePart_SMSDBAccess"

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v11, :cond_38

    .line 1636
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_38
    const/16 v19, 0x0

    return v19

    :goto_1b
    if-eqz v11, :cond_39

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_39
    throw v0
.end method

.method private blacklist processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .locals 10

    .line 1966
    const-string v0, "InboundSmsHandler"

    const-string v1, "set mPendingSMSduringLockState."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1967
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    const/16 v1, 0xb84

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 1969
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    aget-object v3, p2, v2

    invoke-virtual {v1, v3, p0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return v2

    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move v9, p5

    .line 1975
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    if-nez v9, :cond_2

    .line 1985
    invoke-direct {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    :cond_2
    return v2
.end method

.method static blacklist registerNewMessageNotificationActionHandler(Landroid/content/Context;)V
    .locals 3

    .line 3162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3163
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3164
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected static blacklist setUserUnlocked()V
    .locals 1

    const/4 v0, 0x1

    .line 4749
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->sIsUserUnlocked:Z

    return-void
.end method

.method private blacklist setWakeLockTimeout(I)V
    .locals 0

    .line 3090
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return-void
.end method

.method private greylist-max-r showNewMessageNotification()V
    .locals 5

    .line 2003
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2006
    :cond_0
    const-string v0, "Show new message notification."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x44000000    # 512.0f

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2013
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108008e

    .line 2014
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 2015
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2016
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, -0x1

    .line 2017
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x104093c

    .line 2018
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x104093b

    .line 2019
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2020
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "sms"

    .line 2021
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2022
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.showSmallIcon"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2025
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    .line 2026
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2028
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object p0

    .line 2029
    const-string v3, "InboundSmsHandler"

    if-eqz p0, :cond_1

    .line 2031
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2030
    invoke-virtual {v1, v3, v2, v0, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    .line 2034
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 2033
    invoke-virtual {v1, v3, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist toDigit(C)I
    .locals 0

    const/16 p0, 0x10

    .line 3149
    invoke-static {p1, p0}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method protected blacklist accountSMStoMDM(ILcom/android/internal/telephony/SmsMessageBase;)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 3524
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3527
    iget-object p1, p1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz p1, :cond_0

    const/16 v1, 0xb84

    iget p1, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v1, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3531
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 3532
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3533
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3534
    invoke-virtual {p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3535
    invoke-virtual {p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    :cond_1
    return-void
.end method

.method protected abstract greylist-max-r acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected blacklist addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 1

    .line 1452
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    return p2

    :cond_0
    return v0

    :cond_1
    const/4 p2, 0x2

    .line 1455
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return v0
.end method

.method protected blacklist checkDuplicatedOmadmPort([BLcom/android/internal/telephony/SmsHeader;)Z
    .locals 5

    .line 3890
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    .line 3893
    iget-object p0, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz p0, :cond_2

    iget-object v2, p2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v2, v3, :cond_2

    .line 3895
    :cond_1
    iget p0, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v2, 0xb84

    if-ne p0, v2, :cond_2

    .line 3896
    new-array p0, v1, [B

    .line 3898
    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3901
    iget-object p1, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean p1, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-nez p1, :cond_2

    .line 3902
    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    const/4 v1, 0x2

    .line 3903
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    .line 3905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dPort : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oPort : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InboundSmsHandler"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destPort : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " origPort : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    iget-object p2, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne p0, v1, :cond_2

    iget p0, p2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    if-ne p1, p0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method protected blacklist checkIfVVMReceiver()Z
    .locals 4

    .line 3341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3342
    const-string v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3346
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 3347
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    move v0, v1

    .line 3349
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3350
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3351
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3352
    const-string v3, "com.samsung.vvm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public blacklist checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 4877
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 4880
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 4881
    const-string v2, "C6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0x00C6"

    .line 4882
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 4885
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4886
    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "0x20"

    .line 4887
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "0x0020"

    .line 4888
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    return p0

    :cond_1
    const/4 v2, 0x2

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 4896
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4897
    const-string v0, "TRIGGER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_2
    const/16 v3, 0xa

    if-le v0, v3, :cond_3

    .line 4901
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4902
    const-string v0, "VNCHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v1

    .line 4909
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InboundSmsHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p0
.end method

.method protected blacklist decodeHexString(Ljava/lang/String;)[B
    .locals 4

    if-eqz p1, :cond_2

    .line 3132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3136
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3137
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->hexToByte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchAppDirectedSMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InboundSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10000020

    .line 4120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4121
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4122
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4123
    const-string p1, "parameters"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4124
    const-string p1, "originator"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4125
    const-string p1, "prefix"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4126
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected blacklist dispatchAppSMSforSPR(Ljava/lang/String;[[B)V
    .locals 2

    .line 4067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 4068
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4069
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4070
    const-string p2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4072
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4073
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist dispatchAutoLoginMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 9

    .line 4934
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4935
    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4936
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "10659401"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "+8610659401"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 4939
    :cond_0
    const-string v0, "dispatchAutoLoginMessage"

    const-string v2, "InboundSmsHandler"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    const/4 v0, 0x3

    move v4, v0

    move v3, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v5, :cond_4

    .line 4945
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    aget-object v7, p1, v3

    invoke-static {v6, v7}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 4946
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    .line 4947
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 4949
    aget-byte v4, v6, v1

    const/4 v7, 0x4

    if-ne v4, v0, :cond_1

    .line 4950
    aget-byte v8, v6, v5

    if-ne v8, v7, :cond_1

    .line 4951
    const-string p1, "ims auto login success"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v5

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_2

    .line 4954
    aget-byte v8, v6, v5

    if-ne v8, v7, :cond_2

    .line 4955
    const-string p1, "cdma auto login success"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 v8, 0x9

    if-ne v4, v8, :cond_3

    .line 4958
    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_3

    .line 4959
    const-string p1, "tiantong auto login success"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4965
    :cond_4
    :goto_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.AUTO_LOGIN_NOTI_SMS_RECEIVED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4966
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4967
    const-string v0, "autoLoginSmsState"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4968
    const-string v0, "autoLoginSmsType"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4969
    const-string v0, "com.samsung.chn.apps.devicemanagement"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4970
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v5

    :cond_5
    :goto_3
    return v1
.end method

.method protected blacklist dispatchBlockedSms([BI)V
    .locals 10

    .line 3701
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3704
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 3706
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3708
    iget-object p0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    .line 3709
    invoke-virtual/range {v2 .. v9}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3712
    :cond_0
    iget-object p1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 3715
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3716
    const-string p1, "update number of incoming smss"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 3717
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    .line 3720
    :cond_1
    iget-object p1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3721
    iget-object p1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 3722
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 3723
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3721
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public greylist-max-r dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V
    .locals 14

    move-object/from16 v10, p5

    move-object/from16 v0, p6

    const/high16 v2, 0x8000000

    .line 2162
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2163
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2164
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    .line 2165
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.provider.Telephony.WAP_PUSH_DELIVER"

    .line 2166
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 2167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/high16 v2, 0x10000000

    .line 2174
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2176
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {p1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2180
    invoke-static/range {p7 .. p7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v2, p7

    .line 2181
    invoke-static {p1, v2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 2184
    :cond_2
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_f

    .line 2187
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v11}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    .line 2188
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 2189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 2191
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2192
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2195
    :cond_4
    invoke-virtual {v5, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_6

    if-eqz v10, :cond_5

    .line 2201
    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmInboundSmsTracker(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v7

    .line 2196
    :cond_5
    const-string v5, "dispatchIntent: MAIN user is not running"

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_0

    .line 2203
    :cond_6
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v10, :cond_7

    .line 2209
    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmInboundSmsTracker(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v7

    .line 2204
    :cond_7
    const-string v5, "dispatchIntent: SYSTEM user is not running"

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_0

    .line 2214
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 2215
    new-array v2, v3, [I

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    aput v0, v2, v11

    :cond_9
    move-object v12, v2

    goto :goto_2

    .line 2217
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    move v0, v11

    .line 2218
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 2219
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2224
    :goto_2
    array-length v0, v12

    sub-int/2addr v0, v3

    move v13, v0

    :goto_3
    if-ltz v13, :cond_11

    .line 2225
    aget v0, v12, v13

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2227
    aget v2, v12, v13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUser(I)Z

    move-result v2

    if-nez v2, :cond_c

    aget v2, v12, v13

    .line 2228
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2231
    const-string v2, "no_sms"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 2235
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v3, v12, v13

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v10, :cond_d

    .line 2242
    :try_start_0
    aget v2, v12, v13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUser(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2244
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    .line 2246
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 2248
    aget v2, v12, v13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUser(I)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v5, v10

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    move-object v5, v2

    .line 2249
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    .line 2247
    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_f
    if-eqz v10, :cond_10

    .line 2258
    :try_start_1
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    .line 2261
    :cond_10
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 2263
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object v5, v10

    .line 2262
    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_11
    return-void
.end method

.method protected blacklist dispatchKTMobileCarePdus([BI[[BI)V
    .locals 2

    .line 4376
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 4379
    const-string v0, "tpUdLength"

    array-length v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4380
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 4381
    const-string v0, "tpDcs"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4382
    const-string p2, "tpUd"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4386
    :cond_0
    const-string p1, "InboundSmsHandler"

    packed-switch p4, :pswitch_data_0

    .line 4409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchKTMobileCarePdus - not supported port : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4406
    :pswitch_0
    const-string p2, "com.kt.menu.action.MOBILE_CARE_USB_TETHERING"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4403
    :pswitch_1
    const-string p2, "com.kt.menu.action.MOBILE_CARE_ROAMING_MNO_SELECTION"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4400
    :pswitch_2
    const-string p2, "com.kt.menu.action.MOBILE_CARE_DATA_ROAMING"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4397
    :pswitch_3
    const-string p2, "com.kt.menu.action.MOBILE_CARE_DATA"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4394
    :pswitch_4
    const-string p2, "com.kt.menu.action.MOBILE_CARE_ROAMING"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4391
    :pswitch_5
    const-string p2, "com.kt.menu.action.MOBILE_CARE_NETWORK"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4388
    :pswitch_6
    const-string p2, "com.kt.menu.action.MOBILE_CARE_REBOOT"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4412
    :goto_0
    const-string p2, "com.kt.olleh.servicemenu"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x1000000

    .line 4413
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4414
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 4416
    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    .line 4417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKTMobileCarePdus - port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", mInIdleMode = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 4419
    const-string p2, "KTMobileCarePdus msg received in doze mode. It will wakeup"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string p2, "MobileCare"

    invoke-interface {p1, p2}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4425
    :catch_0
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xc223
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist dispatchKTToAppManagerPdus([[BII)V
    .locals 8

    .line 4267
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPdusToKTAppManager PORT = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InboundSmsHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4271
    const-string p1, "port_address"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 4272
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4274
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4275
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchKTToLbsServicePdus([[BII)V
    .locals 8

    .line 4284
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKTToLbsServicePdus PORT = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InboundSmsHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x20

    .line 4287
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x1000000

    .line 4288
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4289
    const-string p2, "pdus"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4291
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4292
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchKTTwoPhonePdus([[BILjava/lang/String;)V
    .locals 4

    .line 4301
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 4302
    const-string v0, "InboundSmsHandler"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4303
    const-string p0, "block dispatchKTTwoPhonePdus for eSIM"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4306
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.kt.menu.action.TWO_CALL_REG_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4307
    const-string v1, "PhoneNum"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 4308
    const-string v2, "Register"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x2

    .line 4316
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    .line 4313
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 4310
    :pswitch_2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4319
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKTTwoPhonePdus port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " PhoneNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    const-string p3, "com.kt.olleh.servicemenu"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x1000000

    .line 4322
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4323
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 4325
    invoke-virtual {p3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p3

    .line 4326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKTTwoPhonePdus - port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mInIdleMode = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v1, :cond_1

    .line 4328
    const-string p2, "KTTwoPhonePdus msg received in doze mode. It will wakeup"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string p3, "TwoPhonePdu"

    invoke-interface {p2, p3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4334
    :catch_0
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xc401
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist dispatchKTWPSPortAddressedPdus([[BII)V
    .locals 3

    .line 4342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms://localhost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4343
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4344
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4345
    const-string p1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 4346
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 4347
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchKTWPSPortAddressedPdus PORT = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InboundSmsHandler"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 4350
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    .line 4351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KTWPS msg received. mInIdleMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4353
    const-string p1, "KTWPS msg received in doze mode. It will wakeup"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string p2, "WPS-search"

    invoke-interface {p1, p2}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4359
    :catch_0
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 4360
    :goto_0
    const-string p2, "com.kt.serviceagent"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4361
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {v1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4365
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4366
    invoke-static {v1, p3}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 4368
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected blacklist dispatchLGTCATPTPdus([B)V
    .locals 3

    .line 4483
    const-string v0, "dispatchLGTCATPTPdus"

    const-string v1, "InboundSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4485
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 4488
    const-string p1, "getCatService returned null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4490
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->parseGstkSmsTpdu([B)[B

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeforSMSPPdownload([B[B)V

    :goto_1
    const/4 p1, 0x1

    .line 4493
    invoke-virtual {p0, p1, p1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method protected blacklist dispatchLGTFOTAPdus([[BI)V
    .locals 8

    .line 4434
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.PUSH_CONFIRM"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4436
    const-string v0, "InboundSmsHandler"

    const-string v2, "dispatchLGTFOTAPdus PDU"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 4438
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4440
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4441
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;II)V
    .locals 1

    .line 4537
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    filled-new-array {v0}, [[B

    move-result-object v0

    sparse-switch p2, :sswitch_data_0

    .line 4559
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTUnknownTIDPdus(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 4541
    :sswitch_0
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTFOTAPdus([[BI)V

    return-void

    :sswitch_1
    const/4 p1, 0x0

    .line 4556
    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTCATPTPdus([B)V

    return-void

    .line 4553
    :sswitch_2
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdus([[BI)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_2
        0x1003 -> :sswitch_2
        0x1007 -> :sswitch_1
        0xc00a -> :sswitch_2
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_2
        0xc010 -> :sswitch_2
        0xc263 -> :sswitch_2
        0xc265 -> :sswitch_2
        0xc267 -> :sswitch_2
        0xc277 -> :sswitch_0
        0x40000 -> :sswitch_2
    .end sparse-switch
.end method

.method protected blacklist dispatchLGTUnknownTIDPdus(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 4501
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.lgt.action.APM_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 4503
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchLGTUnknownTIDPdus PDU = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Tid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InboundSmsHandler"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    const-string v0, "ctn"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4506
    const-string p2, "tid"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4507
    const-string p2, "body"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xc033

    if-eq p3, p1, :cond_0

    const p1, 0xc02e

    if-ne p3, p1, :cond_1

    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 4524
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4525
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void

    .line 4509
    :goto_0
    iget-object p0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 4510
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    .line 4511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "U+WPS msg received. mInIdleMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    .line 4512
    iget-object p0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz p0, :cond_2

    .line 4513
    const-string p0, "U+WPS msg received in doze mode. It will wakeup"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    :try_start_0
    iget-object p0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string p1, "WPS-search"

    invoke-interface {p0, p1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/16 p0, 0x20

    .line 4519
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4520
    const-string p0, "com.lguplus.lgugpsnwps"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4521
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    goto :goto_1

    :cond_3
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 4522
    :goto_1
    iget-object p1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected blacklist dispatchLGUMMSNotitication([BILjava/lang/String;I)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 4574
    const-string v4, "sequence"

    const-string v5, "pdu"

    const/4 v6, 0x0

    .line 4579
    aget-byte v7, v1, v6

    .line 4580
    const-string v8, "InboundSmsHandler"

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 4581
    const-string v0, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 4584
    :cond_0
    aget-byte v10, v1, v9

    const/4 v11, 0x2

    .line 4585
    aget-byte v12, v1, v11

    const/4 v13, 0x3

    if-nez v12, :cond_1

    .line 4590
    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/4 v14, 0x4

    .line 4591
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v13, v14

    const/4 v14, 0x5

    .line 4592
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    const/4 v15, 0x6

    .line 4593
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    const/4 v15, 0x7

    :goto_0
    move/from16 v16, v9

    goto :goto_1

    :cond_1
    move v14, v6

    move v15, v13

    move v13, v14

    goto :goto_0

    .line 4597
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v6, "reference_number ="

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4598
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4599
    const-string v6, " AND address = ?"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4600
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v21

    .line 4602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received WAP PDU. Type = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", originator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", src-port = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", dst-port = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", segment# = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 4609
    :try_start_0
    iget-object v7, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v19, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object/from16 v7, v21

    if-eqz v6, :cond_c

    .line 4611
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4612
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4613
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v17, v9

    .line 4615
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v14

    const-string v14, "segment count in db!! : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    .line 4616
    :goto_2
    const-string v14, "Received duplicated segment!! : "

    if-ge v9, v2, :cond_3

    .line 4617
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v20, v9

    move/from16 v19, v10

    .line 4618
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 4619
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string v7, "segment in db!! : "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v9, v12, :cond_2

    .line 4621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v16

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v19

    move-object/from16 v7, v21

    goto :goto_2

    :cond_3
    move-object/from16 v21, v7

    move/from16 v19, v10

    add-int/lit8 v10, v19, -0x1

    .line 4625
    const-string v7, "destination_port"

    if-eq v2, v10, :cond_4

    .line 4627
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4628
    const-string v9, "date"

    new-instance v10, Ljava/lang/Long;

    const-wide/16 v13, 0x0

    invoke-direct {v10, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4629
    array-length v9, v1

    sub-int/2addr v9, v15

    invoke-static {v1, v15, v9}, Lcom/android/internal/telephony/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    const-string v1, "address"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    const-string v1, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4632
    const-string v1, "count"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4633
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4634
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4636
    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v16

    :cond_4
    move/from16 v3, v19

    .line 4641
    :try_start_3
    new-array v4, v3, [[B

    .line 4642
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move/from16 v5, v18

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_6

    move/from16 v18, v9

    .line 4644
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-nez v9, :cond_5

    .line 4647
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object v10, v4

    .line 4648
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v4

    goto :goto_4

    :cond_5
    move-object v10, v4

    .line 4651
    :goto_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4650
    invoke-static {v4}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v10, v9

    .line 4652
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v18, 0x1

    move-object v4, v10

    goto :goto_3

    :cond_6
    move-object v10, v4

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_9

    if-eq v4, v12, :cond_8

    .line 4658
    aget-object v7, v10, v4

    if-eqz v7, :cond_7

    array-length v7, v7

    if-nez v7, :cond_8

    .line 4659
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v16

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4666
    :cond_9
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v21

    const/4 v4, 0x2

    invoke-direct {v0, v2, v7, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4678
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_b

    if-ne v4, v12, :cond_a

    .line 4683
    array-length v6, v1

    sub-int/2addr v6, v15

    invoke-virtual {v2, v1, v15, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v8, 0x0

    goto :goto_7

    .line 4685
    :cond_a
    aget-object v6, v10, v4

    array-length v7, v6

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4689
    :cond_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 4698
    filled-new-array {v1}, [[B

    move-result-object v1

    move/from16 v2, p4

    .line 4700
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BII)V

    const/4 v0, -0x1

    return v0

    :cond_c
    if-eqz v6, :cond_d

    .line 4674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v23, 0x2

    return v23

    :cond_d
    const/16 v23, 0x2

    return v23

    .line 4671
    :goto_8
    :try_start_5
    const-string v1, "Can\'t access multipart SMS database"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_e

    .line 4674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    const/16 v23, 0x2

    return v23

    :goto_9
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4675
    :cond_f
    throw v0
.end method

.method protected abstract blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I
.end method

.method protected blacklist dispatchNSRI([[BI)V
    .locals 8

    .line 4711
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4713
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4715
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4716
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SECURITY_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected greylist-max-r dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I
    .locals 42

    move-object/from16 v1, p0

    .line 1254
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    .line 1258
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchAutoLoginMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 1262
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    const-string v4, "1"

    const-string v5, "InboundSmsHandler"

    if-eqz v2, :cond_1

    .line 1263
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v6, "Discard duplicated message."

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1264
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "ISH_dispatchNormalMessage_Duplicated"

    invoke-virtual {v0, v4, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v3

    .line 1268
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v7, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_2

    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSpr()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDish()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1269
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1272
    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1274
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_9

    .line 1280
    const-string v8, "//ANDROID"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "//CM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1281
    const-string v2, "message body starts with //ANDROID and ends with //CM"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1283
    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDish()Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    .line 1286
    :cond_4
    const-string v2, "com.coremobility.app.vnotes"

    goto :goto_0

    .line 1287
    :cond_5
    const-string v8, "//VVM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1288
    const-string v2, "message body starts with //VVM"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1290
    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDish()Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    .line 1293
    :cond_6
    const-string v2, "com.dish.vvm"

    goto :goto_0

    .line 1294
    :cond_7
    const-string v7, "//OMA_START TEST_SMS //OMA_END"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1295
    const-string v2, "message is OMA Test SMS"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v2, "com.sec.omadmspr"

    goto :goto_0

    :cond_8
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_9

    .line 1301
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    filled-new-array {v0}, [[B

    move-result-object v0

    .line 1302
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchAppSMSforSPR(Ljava/lang/String;[[B)V

    return v3

    .line 1308
    :cond_9
    const-class v2, Lcom/android/internal/telephony/InboundSmsTracker;

    if-eqz v0, :cond_18

    iget-object v9, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v9, :cond_a

    goto/16 :goto_b

    .line 1343
    :cond_a
    iget-object v10, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v10, :cond_b

    .line 1344
    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v16, v10

    goto :goto_1

    :cond_b
    const/16 v16, -0x1

    .line 1346
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getCDMASmsReassembly()Z

    move-result v10

    if-eqz v10, :cond_16

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    if-gez v10, :cond_16

    if-gez v16, :cond_16

    .line 1349
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "count ="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1350
    iget v11, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1351
    const-string v11, " AND deleted = 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    const-string v11, " AND address = ?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v21

    .line 1355
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    :try_start_0
    iget-object v13, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v19, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 1360
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_e

    .line 1367
    :cond_c
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1368
    const-string v4, "reference_number"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1369
    const-string v10, "sequence"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1370
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    long-to-int v4, v13

    .line 1371
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    long-to-int v10, v13

    iget v13, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v10, v13, :cond_d

    .line 1372
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 1373
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1380
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refNumList: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sameSeqRefNumList: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 1382
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    .line 1383
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1384
    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This segment can be inserted as refNum: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_4

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_10
    move v4, v3

    const/4 v13, -0x1

    :goto_4
    if-nez v4, :cond_11

    .line 1393
    const-string v0, "it\'s not first segment"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refNum: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iput v13, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 1397
    :cond_11
    :try_start_1
    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getNextReassembleRef()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new segment : [ "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1400
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v11

    iget-object v12, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v13

    .line 1401
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v17

    .line 1402
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v4, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1403
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v24

    .line 1404
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v8

    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v8, v7, :cond_12

    move/from16 v25, v3

    goto :goto_6

    :cond_12
    const/16 v25, 0x0

    :goto_6
    iget-object v7, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v26

    const/16 v23, 0x0

    move/from16 v27, p2

    move/from16 v20, v0

    move/from16 v21, v4

    move/from16 v22, v10

    .line 1400
    invoke-virtual/range {v11 .. v27}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    .line 1405
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x15

    return v0

    .line 1409
    :cond_13
    :try_start_2
    const-string v0, "cursor is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v7, "ISH_dispatchNormalMessage_NullCursor"

    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v0, v4, v7, v8}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    if-eqz v6, :cond_14

    .line 1416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_14
    return v0

    .line 1414
    :goto_7
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_16

    goto/16 :goto_5

    :goto_8
    if-eqz v6, :cond_15

    .line 1416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1417
    :cond_15
    throw v0

    .line 1420
    :cond_16
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 1421
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v11

    iget-object v12, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1422
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v13

    .line 1423
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v17

    .line 1424
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v2, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v4, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1426
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v5, v6, :cond_17

    move/from16 v25, v3

    goto :goto_a

    :cond_17
    const/16 v25, 0x0

    :goto_a
    iget-object v5, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1427
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v26

    const/16 v23, 0x0

    move/from16 v27, p2

    move/from16 v20, v0

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1422
    invoke-virtual/range {v11 .. v27}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    goto/16 :goto_e

    .line 1312
    :cond_18
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    filled-new-array {v4}, [[B

    move-result-object v4

    if-eqz v0, :cond_19

    .line 1315
    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_19

    .line 1317
    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destination port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    move/from16 v33, v0

    goto :goto_c

    .line 1321
    :cond_19
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v9, "SLK"

    const-string v10, "SLI"

    const-string v5, "INU"

    const-string v6, "INS"

    const-string v7, "TML"

    const-string v8, "BNG"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1322
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->checkImeiTrackerMessage(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_1a

    .line 1323
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    const-string v2, "pdus"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 1326
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1327
    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return v3

    :cond_1a
    const/16 v33, -0x1

    .line 1333
    :goto_c
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 1334
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v28

    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1335
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v30

    .line 1336
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v31

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v34

    .line 1337
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v37

    .line 1338
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v2, v4, :cond_1b

    move/from16 v39, v3

    goto :goto_d

    :cond_1b
    const/16 v39, 0x0

    :goto_d
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1339
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v40

    const/16 v35, 0x0

    move/from16 v41, p2

    move-object/from16 v29, v0

    .line 1335
    invoke-virtual/range {v28 .. v41}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    .line 1435
    :goto_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v3, 0x0

    .line 1434
    :goto_f
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0
.end method

.method protected blacklist dispatchPdus([[BI)V
    .locals 8

    .line 4037
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4038
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4039
    const-string p1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4041
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4042
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchPdus([[BZI)V
    .locals 8

    .line 4051
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4052
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4053
    const-string p1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4054
    const-string p1, "reassembleTimeout"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 4055
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4056
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchPdusCTC([[BLcom/samsung/android/telephony/cdma/SemLmsTokenCTC;ILcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 8

    .line 3734
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPdusCTC lmsToken : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lmsStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InboundSmsHandler"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    .line 3745
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3742
    :cond_0
    const-string v3, "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3739
    :cond_1
    const-string v3, "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3749
    :goto_0
    const-string v3, "pdus"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 3750
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3752
    array-length p1, p1

    if-le p1, v0, :cond_2

    .line 3753
    const-string p1, "lms_token_ctc"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3756
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchPdusCTC simSlot : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v1, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3758
    const-string p1, "format"

    iget-object p2, p2, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_7

    .line 3760
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_5

    .line 3764
    invoke-virtual {p4, p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsBroadcastReceiver(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v5

    .line 3765
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p3, v0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 3769
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3770
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering SMS to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3771
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 3770
    invoke-virtual {v0, v2, p3, v4}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3773
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    if-eqz p1, :cond_4

    :goto_1
    move-object v6, p1

    goto :goto_2

    .line 3775
    :cond_4
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    goto :goto_1

    :goto_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v7

    .line 3774
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void

    :cond_5
    move-object v0, p0

    .line 3778
    invoke-direct {v0, v3, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    if-eqz p1, :cond_6

    :goto_3
    move-object v6, p1

    goto :goto_4

    .line 3780
    :cond_6
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    goto :goto_3

    :goto_4
    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v7

    .line 3779
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    :cond_7
    return-void
.end method

.method protected blacklist dispatchPortAddressedPdus([[BII)V
    .locals 9

    .line 4137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms://localhost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4138
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4139
    const-string v0, "pdus"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4140
    const-string p1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 4142
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p1, 0x9199

    if-eq p2, p1, :cond_0

    const/16 p1, 0x4244

    if-ne p2, p1, :cond_1

    :cond_0
    const/high16 p1, 0x10000000

    .line 4145
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4147
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    .line 4148
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "android:receive_sms"

    move-object v1, p0

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchPortAddressedVoiceMailPdus([[BIILjava/lang/String;)V
    .locals 8

    .line 4159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms://localhost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4160
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4161
    const-string p2, "pdus"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4162
    const-string p1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 4164
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x1000000

    .line 4166
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4167
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4168
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchSKTAndroidCommonSMSPushPdus([[B)Z
    .locals 8

    .line 4204
    array-length v0, p1

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    .line 4205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 4206
    :goto_0
    array-length v4, p1

    const-string v5, "InboundSmsHandler"

    if-ge v3, v4, :cond_2

    const/4 v4, -0x1

    .line 4207
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v6

    if-eq v4, v6, :cond_0

    .line 4208
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    aget-object v6, p1, v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_1

    .line 4210
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    aget-object v6, p1, v3

    invoke-static {v4, v6}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4212
    :goto_1
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    .line 4213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchSKTAndroidCommonSMSPushPdus: msgs["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4216
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4220
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    .line 4223
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 4224
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUI:Ljava/lang/String;

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4227
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 4228
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationName:Ljava/lang/String;

    add-int/2addr v3, v2

    .line 4231
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 4232
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCommand:Ljava/lang/String;

    add-int/2addr v1, v2

    .line 4235
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 4236
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    add-int/2addr v0, v2

    .line 4239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationSpecificData:[B

    .line 4241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchSKTAndroidCommonSMSPushPdus  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.push.SMS_PUSH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 4248
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4250
    const-string v1, "aid"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4251
    const-string v1, "AID"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4252
    const-string v1, "msg_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IN : [ Send Intent(action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to APP(Broadcast)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SMSPushSender"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@#   "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4257
    invoke-virtual {p0, v2, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return v2
.end method

.method protected blacklist dispatchSKTFOTAPortAddressedPdus([BI)V
    .locals 10

    .line 4176
    const-string v0, "dispatchSKTFOTAPortAddressedPdus"

    const-string v1, "InboundSmsHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 4178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDU : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent, phoneId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    const-string v0, "DMAGENT"

    const/16 v1, 0xa0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4183
    const-string v0, "pdus"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4184
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "sim_slot_id"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x20

    .line 4188
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4189
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    .line 4190
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    const-string v5, "android:receive_wap_push"

    move-object v2, p0

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method protected blacklist dispatchTMOUSDiagandroid([[BI)Z
    .locals 2

    .line 4724
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 4725
    const-string p2, "InboundSmsHandler"

    if-eqz p1, :cond_3

    .line 4726
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4727
    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4728
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4730
    :cond_1
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_2

    .line 4731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTMOUSDiagandroid getMessageBody="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "diagandroid.phone.BinaryPushData"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4734
    const-string p2, "com.tmobile.echolocate"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4735
    const-string p2, "data"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4736
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string p2, "diagandroid.phone.receiveBinaryData"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 4740
    :cond_3
    const-string p0, "dispatchTMOUSDiagandroid failure."

    invoke-static {p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist dispose()V
    .locals 0

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quit()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 3053
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3054
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends StateMachine:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 3056
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3057
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    if-eqz p2, :cond_0

    .line 3058
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3060
    :cond_0
    const-string p2, "mLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 3062
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3063
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 3064
    const-string p2, "mCarrierServiceLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 3066
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3067
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 3068
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method protected abstract blacklist getEncoding()I
.end method

.method protected abstract blacklist getFormat()Ljava/lang/String;
.end method

.method public greylist-max-r getPhone()Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public blacklist getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 3078
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public blacklist getWakeLockTimeout()I
    .locals 0

    .line 3083
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return p0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN EVENT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 544
    :pswitch_0
    const-string p0, "EVENT_SEND_LOCATION_DATA_RESULT"

    return-object p0

    .line 541
    :pswitch_1
    const-string p0, "EVENT_FINISH_SEND_IOTPOS"

    return-object p0

    .line 538
    :pswitch_2
    const-string p0, "EVENT_USERCONFIRM_TIMEOUT"

    return-object p0

    .line 532
    :pswitch_3
    const-string p0, "EVENT_LOCATION_TIME_REACHED"

    return-object p0

    .line 535
    :pswitch_4
    const-string p0, "EVENT_SATELLITE_IOT_REG_STATE_TIMEOUT"

    return-object p0

    .line 529
    :pswitch_5
    const-string p0, "EVENT_SATELLITE_IOT_REG_STATE_CHANGED"

    return-object p0

    .line 526
    :pswitch_6
    const-string p0, "EVENT_GET_IOT_REGI_RESPONSE"

    return-object p0

    .line 522
    :pswitch_7
    const-string p0, "EVENT_RECEIVER_TIMEOUT"

    return-object p0

    .line 519
    :pswitch_8
    const-string p0, "EVENT_UPDATE_TRACKER"

    return-object p0

    .line 516
    :pswitch_9
    const-string p0, "EVENT_INJECT_SMS"

    return-object p0

    .line 513
    :pswitch_a
    const-string p0, "EVENT_START_ACCEPTING_SMS"

    return-object p0

    .line 510
    :pswitch_b
    const-string p0, "EVENT_RELEASE_WAKELOCK"

    return-object p0

    .line 507
    :pswitch_c
    const-string p0, "EVENT_RETURN_TO_IDLE"

    return-object p0

    .line 504
    :pswitch_d
    const-string p0, "EVENT_BROADCAST_COMPLETE"

    return-object p0

    .line 501
    :pswitch_e
    const-string p0, "EVENT_BROADCAST_SMS"

    return-object p0

    .line 498
    :pswitch_f
    const-string p0, "EVENT_NEW_SMS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handleBlockedSms([BI)V
    .locals 0

    .line 3693
    const-string p1, "handleBlockedSms() - Default implementation"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist handleReassembleTimeout(Landroid/telephony/SmsMessage;)V
    .locals 10

    .line 3921
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    .line 3923
    const-string v1, "InboundSmsHandler"

    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 3928
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sPendingSegmentSmsHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3930
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3931
    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3932
    const-string v3, " AND deleted = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3933
    const-string v3, " AND address = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3934
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 3936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing reference number : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3938
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3940
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3943
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no segmented sms with reference number "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3964
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 3947
    :cond_1
    :try_start_1
    const-string v0, "pdu"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 3951
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3952
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    filled-new-array {v6}, [[B

    move-result-object v6

    .line 3953
    aget-object v8, v6, v4

    if-eqz v8, :cond_2

    .line 3954
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdus([[BZI)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3957
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 3964
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 3962
    :goto_1
    :try_start_2
    const-string v0, "NullPointerException while handle reassemble timeout"

    invoke-static {v1, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 3964
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 3960
    :goto_3
    :try_start_3
    const-string v0, "can\'t access multipart sms database"

    invoke-static {v1, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    return-void

    :goto_5
    if-eqz p1, :cond_6

    .line 3964
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3965
    :cond_6
    throw p0

    .line 3924
    :cond_7
    :goto_6
    const-string p0, "it\'s not proper segmented message"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract blacklist handleSatelliteEvent(Landroid/os/Message;)V
.end method

.method protected abstract blacklist is3gpp2()Z
.end method

.method protected blacklist isDeviceEncryptionOngoing()Z
    .locals 2

    .line 3858
    const-string p0, "vold.decrypt"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    .line 3859
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3860
    :cond_1
    :goto_0
    const-string p0, "InboundSmsHandler"

    const-string v0, "On Encryption"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method protected abstract blacklist isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
.end method

.method protected blacklist isMMSBlocked(Ljava/lang/String;Z)Z
    .locals 7

    .line 3620
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 3622
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 3623
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    .line 3624
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 3627
    const-string v4, "com.samsung.android.app.telephonyui"

    invoke-virtual {v0, v4, v3}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 3628
    const-string v4, "InboundSmsHandler"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "telephonyui_simcard_manager_text_preference"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3629
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "value"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3630
    const-string v5, "SlotId : "

    if-eqz v0, :cond_2

    const-string v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_2

    .line 3632
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", MDM MMS Blocked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3635
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", MDM MMS Allowed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 3639
    invoke-virtual {v1, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3641
    const-string p1, "Incoming MDM MMS Blocked"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v2

    goto :goto_2

    .line 3644
    :cond_4
    const-string p1, "Incoming MDM MMS Allowed"

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move p1, v3

    :goto_2
    if-eqz v1, :cond_8

    .line 3650
    invoke-virtual {v1, v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p2, :cond_9

    .line 3654
    invoke-virtual {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v3

    .line 3659
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isMMSBlocked="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    .line 3662
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    const/16 p1, 0xf5

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :cond_a
    return v0
.end method

.method protected blacklist isSMSBlocked(Ljava/lang/String;Z)Z
    .locals 8

    .line 3547
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 3550
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 3551
    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 3552
    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 3555
    const-string v5, "com.samsung.android.app.telephonyui"

    invoke-virtual {v1, v5, v4}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 3556
    const-string v5, "InboundSmsHandler"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "telephonyui_simcard_manager_text_preference"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3557
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "value"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3558
    const-string v6, "SlotId : "

    if-eqz v1, :cond_2

    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v3, :cond_2

    .line 3561
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", MDM SMS Blocked"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_2

    .line 3565
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", MDM SMS Allowed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_6

    .line 3569
    invoke-virtual {v2, v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3571
    const-string v1, "Outgoing MDM SMS Blocked"

    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    .line 3574
    :cond_4
    const-string v1, "Outgoing MDM SMS Allowed"

    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 3576
    :goto_0
    invoke-virtual {v2, v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3578
    const-string v0, "Incoming MDM SMS Blocked"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v1, v3

    goto :goto_3

    .line 3581
    :cond_5
    const-string v0, "Incoming MDM SMS Allowed"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v1, v4

    goto :goto_3

    :cond_6
    :goto_1
    move v0, v4

    :goto_2
    move v1, v0

    :goto_3
    if-eqz v2, :cond_a

    .line 3587
    invoke-virtual {v2, v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz p2, :cond_9

    .line 3591
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowed()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3592
    invoke-virtual {v2, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v3, v4

    :cond_8
    :goto_4
    move v5, v3

    goto :goto_5

    .line 3597
    :cond_9
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowed()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3598
    invoke-virtual {v2, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_a
    move v5, v4

    .line 3604
    :cond_b
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSMSBlocked="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_c

    .line 3607
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    const/16 p1, 0xe6

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :cond_c
    return v5
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .locals 0

    .line 2989
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist log(Ljava/lang/String;J)V
    .locals 1

    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logWithLocalLog(Ljava/lang/String;)V
    .locals 0

    .line 2949
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2950
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logWithLocalLog(Ljava/lang/String;J)V
    .locals 1

    .line 2959
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 2960
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected greylist-max-r loge(Ljava/lang/String;)V
    .locals 0

    .line 3008
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;J)V
    .locals 1

    .line 3017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3027
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist logeWithLocalLog(Ljava/lang/String;)V
    .locals 0

    .line 2968
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 2969
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logeWithLocalLog(Ljava/lang/String;J)V
    .locals 1

    .line 2978
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    .line 2979
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist onQuitting()V
    .locals 1

    .line 479
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->disable()V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected blacklist onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 4924
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4925
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 4926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdatePhoneObject: phone="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist parseGstkSmsTpdu([B)[B
    .locals 6

    .line 4450
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result p0

    invoke-static {v0, p1, p0}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BI)Landroid/telephony/SmsMessage;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4452
    const-string p0, "InboundSmsHandler"

    const-string p1, "parseGstkSmsTpdu: msg is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 4455
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getBearerData()[B

    move-result-object p0

    const/4 p1, 0x0

    .line 4458
    aget-byte v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4459
    aget-byte v0, p0, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 4461
    aget-byte v3, p0, v2

    if-ne v3, v1, :cond_2

    add-int/lit8 v2, v0, 0x2

    .line 4462
    aget-byte v0, p0, v2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    add-int/2addr v2, v1

    .line 4466
    new-array v3, v0, [B

    .line 4468
    invoke-static {p0, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4470
    new-array p0, v0, [B

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_3

    .line 4473
    aget-byte v2, v3, p1

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x5

    add-int/lit8 v4, p1, 0x1

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xf8

    shr-int/lit8 v5, v5, 0x3

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v4

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method protected blacklist parseOTAUnlockMessage(Ljava/lang/String;)V
    .locals 8

    .line 4757
    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "parseOTAUnlockMessage"

    const-string v2, "InboundSmsHandler"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 4759
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x78

    if-ge v1, v3, :cond_0

    goto/16 :goto_4

    .line 4767
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x48

    const/16 v4, 0x57

    .line 4768
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4770
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_1

    .line 4771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device IMEI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", IMEI for unlock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v4, 0x28

    const/4 v5, 0x0

    .line 4774
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4775
    const-string v6, "XMOUNLOCKCOMMAND"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_5

    const/16 v0, 0x38

    const/16 v4, 0x40

    .line 4776
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x68

    const/16 v6, 0x70

    .line 4777
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4779
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4780
    const-string v1, "IMEI is matched with unlock message. Network depersonalization using spck"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    const-string v1, "F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 4785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4787
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4790
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v0, v7, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 4792
    :cond_4
    const-string p0, "IMEI is not matched with unlock message"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4794
    :cond_5
    const-string p1, "XMOUNLOCKSTATUS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4795
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p1

    if-ne p1, v7, :cond_6

    .line 4796
    const-string p0, "acknowledgement SMS will be sent only in domestic"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4800
    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4801
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4802
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x4

    .line 4805
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x2

    .line 4806
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4807
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4808
    const-string v4, "Get unlock status for the response of unlock status quary message"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4809
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4815
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 4816
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    .line 4818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4811
    :catch_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4444"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->sendAckSMSforCCTUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 4812
    const-string p0, "IOException during get lock status"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4815
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 4816
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    .line 4818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 4815
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 4816
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 4818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    :goto_3
    throw p0

    .line 4822
    :cond_7
    const-string p1, "IMEI is not matched with unlock status quary message"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    const-string p1, "FFFFFFFFFFFFFFFF"

    const-string v0, "3333"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendAckSMSforCCTUnlock(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4826
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid operator text= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4760
    :cond_9
    :goto_4
    const-string p0, "Invalid OTA Unlock message"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 4762
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "userData.length= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    return-void
.end method

.method protected abstract blacklist removeDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
.end method

.method protected blacklist sendAckSMSforCCTUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4835
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "InboundSmsHandler"

    if-ne v0, v1, :cond_0

    .line 4836
    const-string p0, "acknowledgement SMS will be sent only in domestic"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4839
    :cond_0
    const-string v0, "sendAckSMSforCCTUnlock"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    .line 4842
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 4845
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendAckSMSforCCTUnlock(ILjava/lang/String;)V

    return-void

    .line 4847
    :cond_1
    const-string p0, "Fail to sendAckSMSforCCTUnlock"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist setCarrierLockEnabled(Ljava/lang/String;)V
    .locals 8

    .line 3466
    const-string p0, "FileNotFoundException : "

    const-string v0, "IOException : "

    const-string v1, "/efs/sms/sktcarrierlockmode"

    const-string v2, "InboundSmsHandler"

    .line 3468
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sms"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 3471
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 3473
    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3474
    invoke-virtual {v3, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3475
    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "make folder /efs/sms  directory creation status: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    .line 3479
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3480
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3481
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 3482
    const-string v4, "make /efs/sms/sktcarrierlockmode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3488
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3486
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    const/4 v3, 0x0

    .line 3492
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3493
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3494
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 3495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufW.write + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v3, v4

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p1

    goto :goto_6

    :goto_4
    if-eqz v3, :cond_2

    .line 3509
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 3511
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 3514
    :cond_2
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_6
    if-eqz v3, :cond_3

    .line 3500
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 3502
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3505
    :cond_3
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method

.method public blacklist setSmsFiltersForTesting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3101
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->createDefaultSmsFilters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    return-void

    .line 3103
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    return-void
.end method

.method protected blacklist storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 3674
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object p0

    .line 3675
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    if-nez p4, :cond_0

    .line 3676
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3677
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    :cond_0
    if-eqz p0, :cond_1

    .line 3679
    invoke-virtual {p0}, Landroid/sec/enterprise/DeviceInventory;->isSMSCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3680
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3683
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0xe7

    invoke-static {p0, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    const/16 v0, 0x19

    .line 3257
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected blacklist updateVoicemailCount(I)V
    .locals 6

    .line 3983
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating Unread count badge phoneID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SYsPRoperties = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3985
    const-string v2, "ro.HorizontalVVM"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", def data slot => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3984
    const-string v4, "InboundSmsHandler"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v5, "VZW"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    .line 3988
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3989
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3991
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3992
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3993
    const-string v1, "package"

    const-string v2, "com.samsung.vvm"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3994
    const-string v1, "class"

    const-string v2, "com.samsung.vvm.vvmapp.VVMApplication"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3995
    const-string v1, "badgecount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3996
    const-string v1, "package=\'com.samsung.vvm\' AND class=\'com.samsung.vvm.vvmapp.VVMApplication\'"

    .line 3997
    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 3998
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3999
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating Unread count badge: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4002
    const-string p1, "Excecption for upgrading Badge count"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
