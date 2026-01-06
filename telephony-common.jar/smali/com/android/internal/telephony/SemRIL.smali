.class public Lcom/android/internal/telephony/SemRIL;
.super Lcom/android/internal/telephony/SemBaseCommands;
.source "SemRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/SemCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;,
        Lcom/android/internal/telephony/SemRIL$SemRilHandler;
    }
.end annotation


# static fields
.field public static final blacklist FOR_ACK_WAKELOCK:I = 0x1

.field public static final blacklist FOR_WAKELOCK:I = 0x0

.field static final blacklist HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final blacklist INVALID_WAKELOCK:I = -0x1

.field public static final blacklist SEH_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_RADIO_HAL_VERSION_3_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static blacklist sRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final blacklist mAckWakeLockTimeout:I

.field volatile blacklist mAckWlSequenceNum:I

.field private blacklist mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final blacklist mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

.field private blacklist mDataIndication:Lcom/android/internal/telephony/SehDataIndication;

.field private blacklist mDataResponse:Lcom/android/internal/telephony/SehDataResponse;

.field private final blacklist mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisabledRadioServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mHidlSetResponseFunctionsCalled:Z

.field private blacklist mIsCellularSupported:Z

.field private final blacklist mLinkedServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingIndication:Lcom/android/internal/telephony/SehMessagingIndication;

.field private blacklist mMessagingResponse:Lcom/android/internal/telephony/SehMessagingResponse;

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mNetworkIndication:Lcom/android/internal/telephony/SehNetworkIndication;

.field private blacklist mNetworkResponse:Lcom/android/internal/telephony/SehNetworkResponse;

.field final blacklist mPhoneId:Ljava/lang/Integer;

.field private blacklist mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private blacklist mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

.field private volatile blacklist mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

.field greylist mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

.field private blacklist mSehHalVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

.field private final blacklist mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

.field private blacklist mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

.field private final blacklist mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/SehRadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimIndication:Lcom/android/internal/telephony/SehSimIndication;

.field private blacklist mSimResponse:Lcom/android/internal/telephony/SehSimResponse;

.field final greylist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field blacklist mWakeLockCount:I

.field final blacklist mWakeLockTimeout:I

.field volatile blacklist mWlSequenceNum:I


# direct methods
.method public static synthetic blacklist $r8$lambda$SOLgjUwgwDfzZ-uPZbnOOQqgMDg(Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 405
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yYg-PSz6als3igzdB85AiIjCYYA(Lcom/android/internal/telephony/SehRadioServiceProxy;)V
    .locals 0

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->clear()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkedServices(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mLinkedServices:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/SemRIL;)Lcom/android/internal/telephony/RadioBugDetector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearWakeLock(Lcom/android/internal/telephony/SemRIL;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestListAll(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->resetProxyAndRequestListAll()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smserviceToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 122
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 128
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 134
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_3_1:Lcom/android/internal/telephony/HalVersion;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    .line 219
    const-string v0, "slot2"

    const-string v1, "slot3"

    const-string v2, "slot1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 7

    .line 704
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBaseCommands;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    .line 155
    iput v0, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    .line 157
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    .line 177
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 190
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 195
    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 204
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    .line 205
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    .line 206
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 209
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mLinkedServices:Landroid/util/SparseArray;

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemRIL: init instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 709
    iput-object p1, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 712
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->isRadioBugDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    new-instance v2, Lcom/android/internal/telephony/RadioBugDetector;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 716
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 719
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 721
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p2

    const/4 v3, 0x1

    if-nez p2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v3

    :goto_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemRIL;->mIsCellularSupported:Z

    .line 723
    new-instance p2, Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SemRIL$SemRilHandler;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    .line 724
    new-instance p2, Lcom/android/internal/telephony/SehRadioResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehRadioResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

    .line 725
    new-instance p2, Lcom/android/internal/telephony/SehRadioIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehRadioIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

    .line 726
    new-instance p2, Lcom/android/internal/telephony/SehDataResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehDataResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mDataResponse:Lcom/android/internal/telephony/SehDataResponse;

    .line 727
    new-instance p2, Lcom/android/internal/telephony/SehDataIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehDataIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mDataIndication:Lcom/android/internal/telephony/SehDataIndication;

    .line 728
    new-instance p2, Lcom/android/internal/telephony/SehMessagingResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehMessagingResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingResponse:Lcom/android/internal/telephony/SehMessagingResponse;

    .line 729
    new-instance p2, Lcom/android/internal/telephony/SehMessagingIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehMessagingIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingIndication:Lcom/android/internal/telephony/SehMessagingIndication;

    .line 730
    new-instance p2, Lcom/android/internal/telephony/SehNetworkResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehNetworkResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkResponse:Lcom/android/internal/telephony/SehNetworkResponse;

    .line 731
    new-instance p2, Lcom/android/internal/telephony/SehNetworkIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehNetworkIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkIndication:Lcom/android/internal/telephony/SehNetworkIndication;

    .line 732
    new-instance p2, Lcom/android/internal/telephony/SehSimResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehSimResponse;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSimResponse:Lcom/android/internal/telephony/SehSimResponse;

    .line 733
    new-instance p2, Lcom/android/internal/telephony/SehSimIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SehSimIndication;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSimIndication:Lcom/android/internal/telephony/SehSimIndication;

    .line 734
    new-instance p2, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/SemRIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    move p2, v0

    :goto_2
    const/4 v2, 0x4

    if-gt p2, v2, :cond_5

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 738
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    invoke-direct {v4, p0, p2}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/SemRIL;I)V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 743
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-direct {v4}, Lcom/android/internal/telephony/SehRadioDataProxy;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {p2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-direct {v4}, Lcom/android/internal/telephony/SehRadioMessagingProxy;-><init>()V

    invoke-virtual {p2, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-direct {v4}, Lcom/android/internal/telephony/SehRadioNetworkProxy;-><init>()V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-direct {v4}, Lcom/android/internal/telephony/SehRadioSimProxy;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {p2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 749
    const-string v4, "*telephony-sem-radio*"

    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 750
    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 751
    const-string v4, "SEM_RILJ_ACK_WL"

    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 752
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 753
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const v3, 0xea60

    .line 754
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockTimeout:I

    .line 755
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const/16 v3, 0xc8

    .line 756
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLockTimeout:I

    .line 757
    iput v0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 758
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 759
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 760
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    :goto_3
    if-gt v0, v2, :cond_7

    if-nez v0, :cond_6

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    goto :goto_4

    .line 766
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    .line 770
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SehRadio HAL version of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private greylist acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 7

    .line 2063
    monitor-enter p1

    .line 2064
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2065
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to aquire wakelock for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2066
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemRIL;->riljLogw(Ljava/lang/String;)V

    .line 2116
    monitor-exit p1

    return-void

    .line 2105
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2107
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    .line 2109
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2110
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2111
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    iget p0, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2112
    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    .line 2071
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2072
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2073
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 2074
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    .line 2080
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SEM_RILJ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    .line 2082
    :cond_3
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2083
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2084
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2085
    array-length v4, v0

    if-lt v4, v3, :cond_4

    .line 2086
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v5

    aget-object v0, v0, v2

    invoke-virtual {v4, v5, v0}, Landroid/os/WorkSource;->set(ILjava/lang/String;)V

    .line 2089
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    .line 2091
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SemClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2096
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/SemClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2100
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2101
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    iget p0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2102
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2118
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 2119
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 2102
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    .line 2119
    :goto_3
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method private blacklist addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3

    const/4 v0, 0x0

    .line 782
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemRIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 784
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 785
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 786
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 5

    .line 2230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2231
    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    .line 2233
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2234
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyHistogram;

    if-nez v1, :cond_0

    .line 2237
    new-instance v1, Landroid/telephony/TelephonyHistogram;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 2239
    sget-object v2, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2241
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 2242
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private greylist clearRequestList(IZ)V
    .locals 9

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2193
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    .line 2195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList  mWakeLockCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 2200
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    .line 2202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2203
    invoke-static {v5}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2202
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2207
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget-wide v7, v3, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingRequestTimeout(IIJ)V

    const/4 v4, 0x0

    .line 2208
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2209
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2210
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2212
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2213
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private greylist clearWakeLock(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2165
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 2166
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2167
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2169
    iput v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 2170
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2171
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 2172
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 2173
    monitor-exit p1

    return v0

    .line 2174
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2176
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 2177
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p1

    return v1

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 2178
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2179
    monitor-exit p1

    return v0

    .line 2180
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static blacklist convertToHalSehCdmaSmsMessageAidl([B)Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;
    .locals 7

    .line 2423
    new-instance v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;-><init>()V

    .line 2424
    new-instance v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;-><init>()V

    iput-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->address:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    .line 2425
    new-instance v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;-><init>()V

    iput-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->subAddress:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;

    .line 2429
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2430
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2433
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->teleserviceId:I

    .line 2434
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->isServicePresent:Z

    .line 2435
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->serviceCategory:I

    .line 2436
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->address:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;->digitMode:I

    .line 2437
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->address:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    .line 2438
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;->isNumberModeDataNetwork:Z

    .line 2439
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->address:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;->numberType:I

    .line 2440
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->address:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;->numberPlan:I

    .line 2441
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 2442
    new-array v4, v1, [B

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_2

    .line 2444
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2446
    :cond_2
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->address:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;

    iput-object v4, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsAddress;->digits:[B

    .line 2447
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->subAddress:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;->subaddressType:I

    .line 2448
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->subAddress:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iput-boolean v3, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;->odd:Z

    .line 2449
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 2450
    new-array v3, v1, [B

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_4

    .line 2452
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2454
    :cond_4
    iget-object v1, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->subAddress:Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;

    iput-object v3, v1, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsSubaddress;->digits:[B

    .line 2456
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 2457
    new-array v3, v1, [B

    :goto_5
    if-ge v2, v1, :cond_5

    .line 2459
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2461
    :cond_5
    iput-object v3, v0, Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;->bearerData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static blacklist convertToHalSehGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;
    .locals 1

    .line 2475
    new-instance v0, Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;-><init>()V

    .line 2476
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 2477
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method private greylist decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 9

    .line 2124
    monitor-enter p1

    .line 2125
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_4

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLogw(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2130
    iget v7, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_1

    sub-int/2addr v7, v2

    goto :goto_0

    :cond_1
    move v7, v8

    .line 2128
    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/SemClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 2135
    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    .line 2137
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SemClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2138
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 2139
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 2142
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    if-le v3, v2, :cond_3

    sub-int/2addr v3, v2

    .line 2143
    iput v3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    goto :goto_2

    .line 2145
    :cond_3
    iput v8, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    .line 2146
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2148
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    .line 2158
    :cond_4
    :goto_4
    iput v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 2159
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private greylist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 2

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2220
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 2222
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2224
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1746
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz p0, :cond_0

    .line 1747
    const-string p0, "xxxx"

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static blacklist getOutgoingSmsMessageId(Landroid/os/Message;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 1875
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1878
    :cond_0
    check-cast p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static blacklist getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2412
    sget-object p0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 2410
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_3_1:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 2408
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public static blacklist getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 225
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 226
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/android/internal/telephony/SemRIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 227
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 229
    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 797
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 799
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->resetProxyAndRequestListAll()V

    return-void
.end method

.method private blacklist isRadioBugDetectionEnabled()Z
    .locals 2

    .line 777
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_radio_bug_detection"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 790
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 791
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 2005
    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez p2, :cond_0

    .line 2006
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2008
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1
    return-void
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 2038
    iget p2, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->type:I

    if-nez p2, :cond_0

    .line 2039
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 2041
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1
    return-void
.end method

.method private blacklist processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;
    .locals 2

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 1933
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1934
    :try_start_0
    iget-object p4, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/RILRequest;

    .line 1935
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_0

    .line 1937
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected solicited ack response! sn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLogw(Ljava/lang/String;)V

    return-object p4

    .line 1939
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SemRIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 1940
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_1

    .line 1941
    iget v0, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v0, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 1944
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Ack from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1945
    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1944
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object p4

    :catchall_0
    move-exception p0

    .line 1935
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1951
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1953
    const-string p0, "SEM_RILJ"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processResponse: Unexpected response! serial: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1959
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemRIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 1960
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_4

    .line 1961
    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    :cond_4
    const/4 p2, 0x2

    if-ne p4, p2, :cond_5

    .line 1964
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->sendAck()V

    .line 1966
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Response received from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Sending ack to ril.cpp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1966
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method static greylist requestToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2727

    if-eq p0, v0, :cond_5

    const/16 v0, 0x272d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x4e5f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4eb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x272f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2730

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 885
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 884
    :pswitch_0
    const-string p0, "OEM_SET_CPAI_DEV_APP_MESSAGE"

    return-object p0

    .line 882
    :pswitch_1
    const-string p0, "OEM_EVT_CPAI_DATA_GATHERING"

    return-object p0

    .line 880
    :pswitch_2
    const-string p0, "OEM_SET_CPAI_DATA_GATHERING"

    return-object p0

    .line 878
    :pswitch_3
    const-string p0, "OEM_CFRM_CPAI_FEATURE_INFO"

    return-object p0

    .line 876
    :pswitch_4
    const-string p0, "OEM_GET_CPAI_FEATURE_INFO"

    return-object p0

    .line 874
    :pswitch_5
    const-string p0, "OEM_EXEC_CPAI_MODEL_UPDATE"

    return-object p0

    .line 872
    :pswitch_6
    const-string p0, "OEM_GET_CPAI_MODEL_VERSION"

    return-object p0

    .line 870
    :pswitch_7
    const-string p0, "SET_VENDOR_CONFIGURATION"

    return-object p0

    .line 868
    :pswitch_8
    const-string p0, "GET_VENDOR_CONFIGURATION"

    return-object p0

    .line 858
    :pswitch_9
    const-string p0, "GET_NR_ICON_TYPE"

    return-object p0

    .line 856
    :pswitch_a
    const-string p0, "GET_NR_DISABLE_MODE"

    return-object p0

    .line 854
    :pswitch_b
    const-string p0, "SET_NR_DISABLE_MODE"

    return-object p0

    .line 860
    :pswitch_c
    const-string p0, "OEM_READ_SMS_FROM_SIM"

    return-object p0

    .line 862
    :pswitch_d
    const-string p0, "OEM_GET_STORED_MSG_COUNT_FROM_SIM"

    return-object p0

    .line 852
    :pswitch_e
    const-string p0, "SET_MOBILE_DATA_SETTING"

    return-object p0

    .line 850
    :pswitch_f
    const-string p0, "SELECT_CSG_MANUAL"

    return-object p0

    .line 848
    :pswitch_10
    const-string p0, "QUERY_CSG_LIST"

    return-object p0

    .line 846
    :pswitch_11
    const-string p0, "SET_SIM_ONOFF"

    return-object p0

    .line 844
    :pswitch_12
    const-string p0, "SIM_GET_ATR"

    return-object p0

    .line 842
    :pswitch_13
    const-string p0, "EMERGENCY_CONTROL"

    return-object p0

    .line 840
    :pswitch_14
    const-string p0, "EMERGENCY_SEARCH"

    return-object p0

    .line 812
    :pswitch_15
    const-string p0, "SEND_ENCODED_USSD"

    return-object p0

    .line 832
    :pswitch_16
    const-string p0, "ENTER_SIM_PERSO"

    return-object p0

    .line 834
    :pswitch_17
    const-string p0, "CHANGE_SIM_PERSO"

    return-object p0

    .line 810
    :pswitch_18
    const-string p0, "GET_PREFERRED_NETWORK_LIST"

    return-object p0

    .line 808
    :pswitch_19
    const-string p0, "SET_PREFERRED_NETWORK_LIST"

    return-object p0

    .line 830
    :pswitch_1a
    const-string p0, "STK_SIM_INIT_EVENT"

    return-object p0

    .line 828
    :pswitch_1b
    const-string p0, "LOCK_INFO"

    return-object p0

    .line 826
    :pswitch_1c
    const-string p0, "USIM_PB_CAPA"

    return-object p0

    .line 838
    :pswitch_1d
    const-string p0, "ACCESS_PHONEBOOK_ENTRY"

    return-object p0

    .line 836
    :pswitch_1e
    const-string p0, "GET_PHONEBOOK_ENTRY"

    return-object p0

    .line 822
    :pswitch_1f
    const-string p0, "GET_PHONEBOOK_STORAGE_INFO"

    return-object p0

    .line 820
    :pswitch_20
    const-string p0, "GET_CELL_BROADCAST_CONFIG"

    return-object p0

    .line 816
    :cond_0
    const-string p0, "SET_DISABLE_2G"

    return-object p0

    .line 814
    :cond_1
    const-string p0, "GET_DISABLE_2G"

    return-object p0

    .line 866
    :cond_2
    const-string p0, "CDMA_SEND_SMS_EXPECT_MORE"

    return-object p0

    .line 864
    :cond_3
    const-string p0, "SEC_WRITE_SMS_TO_SIM"

    return-object p0

    .line 818
    :cond_4
    const-string p0, "QUERY_CNAP"

    return-object p0

    .line 824
    :cond_5
    const-string p0, "SET_SIM_POWER"

    return-object p0

    .line 806
    :cond_6
    const-string p0, "SET_IMS_CALL_LIST"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2718
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2736
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2773
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized blacklist resetProxyAndRequestListAll()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    .line 400
    :try_start_0
    iput-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SehRadioServiceProxy;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 405
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 v1, 0x1

    .line 410
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/SemRIL;->clearRequestList(IZ)V

    :goto_2
    if-gt v0, v2, :cond_3

    if-nez v0, :cond_2

    .line 414
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SemRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    goto :goto_3

    .line 416
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 419
    :cond_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static greylist responseToString(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 949
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 947
    :sswitch_0
    const-string p0, "UNSOL_OEM_CPAI_DEV_APP_MESSAGE_NOTI"

    return-object p0

    .line 945
    :sswitch_1
    const-string p0, "UNSOL_OEM_CPAI_DATA_GATHERING_NOTI"

    return-object p0

    .line 943
    :sswitch_2
    const-string p0, "UNSOL_OEM_CPAI_FEATURE_INFO_NOTI"

    return-object p0

    .line 941
    :sswitch_3
    const-string p0, "UNSOL_OEM_CPAI_MODEL_UPDATE_NOTI"

    return-object p0

    .line 939
    :sswitch_4
    const-string p0, "UNSOL_OEM_VENDOR_CONFIGURATION_CHANGED"

    return-object p0

    .line 937
    :sswitch_5
    const-string p0, "UNSOL_OEM_NR_ICON_TYPE_CHANGED"

    return-object p0

    .line 933
    :sswitch_6
    const-string p0, "UNSOL_OEM_SIGNAL_LEVEL_INFOS"

    return-object p0

    .line 929
    :sswitch_7
    const-string p0, "UNSOL_OEM_EXECUTE"

    return-object p0

    .line 931
    :sswitch_8
    const-string p0, "UNSOL_OEM_RRC_STATE_CHANGED"

    return-object p0

    .line 935
    :sswitch_9
    const-string p0, "UNSOL_EXTENDED_REGISTRATION_STATE"

    return-object p0

    .line 927
    :sswitch_a
    const-string p0, "UNSOL_OEM_FIVEG_STATUS_CHANGED"

    return-object p0

    .line 925
    :sswitch_b
    const-string p0, "UNSOL_OEM_NR_BEARER_ALLOCATION_CHANGED"

    return-object p0

    .line 923
    :sswitch_c
    const-string p0, "UNSOL_SIM_ONOFF_NOTI"

    return-object p0

    .line 903
    :sswitch_d
    const-string p0, "UNSOL_TURN_RADIO_ON"

    return-object p0

    .line 899
    :sswitch_e
    const-string p0, "UNSOL_TIMER_STATUS_CHANGED_NOTI"

    return-object p0

    .line 897
    :sswitch_f
    const-string p0, "UNSOL_IMS_PREFERENCE_CHANGED"

    return-object p0

    .line 917
    :sswitch_10
    const-string p0, "UNSOL_SIM_COUNT_MISMATCHED"

    return-object p0

    .line 915
    :sswitch_11
    const-string p0, "UNSOL_SIM_SWAP_STATE_CHANGED"

    return-object p0

    .line 901
    :sswitch_12
    const-string p0, "UNSOL_HOME_NETWORK_NOTI"

    return-object p0

    .line 907
    :sswitch_13
    const-string p0, "UNSOL_PB_INIT_COMPLETE"

    return-object p0

    .line 895
    :sswitch_14
    const-string p0, "UNSOL_CS_FALLBACK"

    return-object p0

    .line 905
    :sswitch_15
    const-string p0, "UNSOL_SIM_PB_READY"

    return-object p0

    .line 921
    :sswitch_16
    const-string p0, "UNSOL_SAP"

    return-object p0

    .line 909
    :sswitch_17
    const-string p0, "UNSOL_DEVICE_READY_NOTI"

    return-object p0

    .line 893
    :sswitch_18
    const-string p0, "UNSOL_ACB_INFO_CHANGED"

    return-object p0

    .line 913
    :sswitch_19
    const-string p0, "UNSOL_STK_CALL_CONTROL_RESULT"

    return-object p0

    .line 911
    :sswitch_1a
    const-string p0, "UNSOL_STK_SEND_SMS_RESULT"

    return-object p0

    .line 919
    :sswitch_1b
    const-string p0, "UNSOL_RELEASE_COMPLETE_MESSAGE"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2af9 -> :sswitch_1b
        0x2afa -> :sswitch_1a
        0x2afb -> :sswitch_19
        0x2afd -> :sswitch_18
        0x2b00 -> :sswitch_17
        0x2b05 -> :sswitch_16
        0x2b0d -> :sswitch_15
        0x2b16 -> :sswitch_14
        0x2b1b -> :sswitch_13
        0x2b23 -> :sswitch_12
        0x2b31 -> :sswitch_11
        0x2b32 -> :sswitch_10
        0x2b35 -> :sswitch_f
        0x2b3b -> :sswitch_e
        0x2b44 -> :sswitch_d
        0x2b46 -> :sswitch_c
        0x2b48 -> :sswitch_b
        0x2b49 -> :sswitch_a
        0x2b4e -> :sswitch_9
        0x2b50 -> :sswitch_8
        0x2b52 -> :sswitch_7
        0x2b53 -> :sswitch_6
        0x2b54 -> :sswitch_5
        0x2b55 -> :sswitch_4
        0x2b6a -> :sswitch_3
        0x2b6b -> :sswitch_2
        0x2b6c -> :sswitch_1
        0x2b6d -> :sswitch_0
    .end sparse-switch
.end method

.method static greylist retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    .line 2247
    const-string p0, ""

    return-object p0

    .line 2252
    :cond_0
    instance-of v0, p1, [I

    const-string v1, "}"

    const-string v2, ", "

    const/4 v3, 0x0

    const-string v4, "{"

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 2253
    check-cast p1, [I

    .line 2254
    array-length v0, p1

    .line 2255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_2

    const/16 v4, 0x2736

    if-ne p0, v4, :cond_1

    .line 2259
    aget p0, p1, v3

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogUtils;->emergencySearchResultToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2261
    :cond_1
    aget p0, p1, v3

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v5, v0, :cond_2

    .line 2264
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v5, 0x1

    aget v3, p1, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, p0

    goto :goto_0

    .line 2267
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2269
    :cond_3
    instance-of p0, p1, [Ljava/lang/String;

    if-eqz p0, :cond_5

    .line 2270
    check-cast p1, [Ljava/lang/String;

    .line 2271
    array-length p0, p1

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_4

    .line 2275
    aget-object v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v5, p0, :cond_4

    .line 2277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, 0x1

    aget-object v4, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v3

    goto :goto_1

    .line 2280
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2283
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendAck()V
    .locals 0

    .line 0
    return-void
.end method

.method private static blacklist serviceToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEH_UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2390
    :cond_0
    const-string p0, "SEH_MESSAGING"

    return-object p0

    .line 2394
    :cond_1
    const-string p0, "SEH_SIM"

    return-object p0

    .line 2388
    :cond_2
    const-string p0, "SEH_DATA"

    return-object p0

    .line 2392
    :cond_3
    const-string p0, "SEH_NETWORK"

    return-object p0

    .line 2386
    :cond_4
    const-string p0, "SEH_RADIO"

    return-object p0
.end method

.method private blacklist translateStatus(I)I
    .locals 2

    .line 0
    const/4 p0, 0x7

    and-int/2addr p1, p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist accessPhoneBookEntry(IIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 1451
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p6}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1452
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x271b

    .line 1453
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p6, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p6

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", command = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fileid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pin2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1461
    :try_start_0
    iget v2, p6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SehRadioSimProxy;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x3

    .line 1463
    const-string p3, "accessPhonebookEntry"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist cfrmCpaiFeatureInfo(II[BLandroid/os/Message;)V
    .locals 3

    .line 2537
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2538
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2776

    .line 2539
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 2542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aiInfoName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", aiInfoStringLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", aiInfoString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2547
    :try_start_0
    iget p4, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->cfrmCpaiFeatureInfo(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 2549
    const-string p3, "cfrmCpaiFeatureInfo"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1776
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1777
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2721

    .line 1778
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "oldPass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / newPass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1783
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1788
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1789
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1790
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1788
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSimProxy;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1792
    const-string p3, "changeIccSimPerso"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 2350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SemRIL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLockTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockTimeout:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2354
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2355
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemRIL;->mWakeLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2357
    :try_start_2
    iget-object p3, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequestList count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2360
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 2361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2363
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2364
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    return-void

    :catchall_1
    move-exception p0

    .line 2356
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 2363
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public blacklist emergencyControl(ILandroid/os/Message;)V
    .locals 3

    .line 1109
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1110
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2737

    .line 1111
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->emergencyControlCommandToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1118
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->emergencyControl(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1120
    const-string v0, "emergencyControl"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist emergencySearch(Landroid/os/Message;)V
    .locals 3

    .line 1091
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1092
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2736

    .line 1093
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1100
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->emergencySearch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1102
    const-string v1, "emergencySearch"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist evtCpaiDataGathering(I[BLandroid/os/Message;)V
    .locals 3

    .line 2575
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2576
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2778

    .line 2577
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2584
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->evtCpaiDataGathering(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 2586
    const-string p3, "evtCpaiDataGathering"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist execCpaiModelUpdate(ILandroid/os/Message;)V
    .locals 3

    .line 2501
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2502
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2774

    .line 2503
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cpaiDataVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2510
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->execCpaiModelUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 2512
    const-string v0, "execCpaiModelUpdate"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getAtr(Landroid/os/Message;)V
    .locals 3

    .line 1434
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1435
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2738

    .line 1436
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1443
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getAtr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 1445
    const-string v1, "getAtr"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 3

    .line 1353
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1354
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x30

    .line 1355
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1361
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getAvailableNetworks(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1363
    const-string v1, "getAvailableNetworks"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getCbConfig(Landroid/os/Message;)V
    .locals 3

    .line 1726
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1728
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2718

    .line 1729
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1738
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getCellBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 1740
    const-string v1, "getCbConfig"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getClientRequestStats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 2368
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCpaiFeatureInfo(ILandroid/os/Message;)V
    .locals 3

    .line 2519
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2520
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2775

    .line 2521
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aiInfoName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2528
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getCpaiFeatureInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 2530
    const-string v0, "getCpaiFeatureInfo"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getCpaiModelVersion(Landroid/os/Message;)V
    .locals 3

    .line 2483
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2484
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2773

    .line 2485
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2492
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getCpaiModelVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 2494
    const-string v1, "getCpaiModelVersion"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getDisable2g(Landroid/os/Message;)V
    .locals 3

    .line 1055
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1056
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x272f

    .line 1057
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1064
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getDisable2g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1066
    const-string v1, "getDisable2g"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 0

    .line 2378
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/HalVersion;

    if-eqz p0, :cond_0

    return-object p0

    .line 2380
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .locals 3

    .line 981
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 982
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 983
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 989
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getIccCardStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 991
    const-string v1, "getIccCardStatus"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getModemCapability(Landroid/os/Message;)V
    .locals 5

    .line 1820
    const-string v0, "close fail!!!"

    const-string v1, "SEM_RILJ"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1821
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1823
    const-string v4, "getModemCapability"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 1825
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x61

    .line 1826
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 1827
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1828
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/SemRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1835
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1837
    :catch_0
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1830
    :try_start_2
    const-string p1, "IOException"

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1834
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1835
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    .line 1834
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1835
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1837
    :catch_2
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :goto_2
    throw p0
.end method

.method public blacklist getNrDisableMode(Landroid/os/Message;)V
    .locals 3

    .line 1224
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1225
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2740

    .line 1226
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1232
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getNrMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1234
    const-string v1, "getNrMode"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getNrIconType(Landroid/os/Message;)V
    .locals 3

    .line 1241
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1242
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2741

    .line 1243
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1250
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getNrIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1252
    const-string v1, "getNrIconType"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1489
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1490
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x271a

    .line 1491
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 1495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fileid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pin2 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1500
    :try_start_0
    iget p1, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioSimProxy;->getPhonebookEntry(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1502
    const-string p3, "getPhonebookEntry"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 3

    .line 1469
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1470
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2719

    .line 1471
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1481
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getPhonebookStorageInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1483
    const-string v0, "getPhonebookStorageInfo"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getPreferredNetworkList(Landroid/os/Message;)V
    .locals 3

    .line 1015
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1016
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2720

    .line 1017
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1023
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getPreferredNetworkList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1025
    const-string v1, "getPreferredNetworkList"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized blacklist getRadioProxy(Landroid/os/Message;)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    .locals 7

    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 426
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 429
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mIsCellularSupported:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 433
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 432
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 434
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_1
    monitor-exit p0

    return-object v2

    .line 439
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v0, :cond_3

    .line 440
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 444
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy: mSehRadioProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 449
    :cond_4
    :try_start_4
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 450
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 449
    invoke-static {v0, v3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_2/ISehRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 455
    :catch_1
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_5

    .line 457
    :try_start_6
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 458
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 457
    invoke-static {v0, v3}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_1/ISehRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 464
    :catch_2
    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_6

    .line 466
    :try_start_8
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 467
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 466
    invoke-static {v0, v3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 473
    :catch_3
    :cond_6
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v0, :cond_7

    .line 474
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    if-nez v0, :cond_9

    .line 475
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 477
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 476
    invoke-interface {v0, v4, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

    invoke-interface {v0, v1, v4}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    goto :goto_1

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy: set mRadioProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 485
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 489
    :goto_0
    :try_start_a
    iput-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 493
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_a

    .line 495
    const-string v0, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 498
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 497
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 499
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 503
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method public blacklist getRilStatus(Landroid/os/Message;)V
    .locals 5

    .line 1370
    const-string v0, "getRilStatus close is fail. "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1371
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1373
    const-string v3, "getRilStatus"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/16 v3, 0x11

    .line 1375
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xa0

    .line 1376
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 1377
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1378
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SemRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1385
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1380
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRilStatus is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1384
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1385
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 1384
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1385
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 1389
    :goto_3
    throw p1
.end method

.method public blacklist getSIMLockInfo(IILandroid/os/Message;)V
    .locals 3

    .line 1526
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1527
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x271d

    .line 1528
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "numLockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1536
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSimProxy;->getSimLockInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1538
    const-string p3, "getSIMLockInfo"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized blacklist getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;
    .locals 13

    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    if-ltz p1, :cond_19

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    goto/16 :goto_3

    .line 542
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemRIL;->mIsCellularSupported:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 546
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 545
    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 547
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 549
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 552
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SehRadioServiceProxy;

    .line 553
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isEmpty()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_4

    .line 554
    monitor-exit p0

    return-object v1

    .line 558
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSehRadioServiceProxy: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 560
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object p1, p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disabled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq p1, v3, :cond_c

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_8

    if-eq p1, v0, :cond_6

    goto/16 :goto_0

    .line 615
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v7, :cond_7

    .line 616
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    .line 617
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 620
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 622
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 620
    invoke-static {v7}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 625
    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    iget-object v11, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/HalVersion;

    .line 627
    invoke-static {v7}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    move-result-object v7

    .line 625
    invoke-virtual {v10, v11, v7}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 598
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v7, :cond_9

    .line 599
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    .line 600
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 603
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 605
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 603
    invoke-static {v7}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 608
    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Lcom/android/internal/telephony/SehRadioSimProxy;

    iget-object v11, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    .line 609
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/HalVersion;

    .line 610
    invoke-static {v7}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move-result-object v7

    .line 608
    invoke-virtual {v10, v11, v7}, Lcom/android/internal/telephony/SehRadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/sim/ISehRadioSim;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 581
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v7, :cond_b

    .line 582
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    .line 583
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 586
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/samsung/hardware/radio/data/ISehRadioData;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 588
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 586
    invoke-static {v7}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 591
    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Lcom/android/internal/telephony/SehRadioDataProxy;

    iget-object v11, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/HalVersion;

    .line 593
    invoke-static {v7}, Lvendor/samsung/hardware/radio/data/ISehRadioData$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/data/ISehRadioData;

    move-result-object v7

    .line 591
    invoke-virtual {v10, v11, v7}, Lcom/android/internal/telephony/SehRadioDataProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/data/ISehRadioData;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-eqz v7, :cond_d

    .line 566
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HalVersion;

    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/telephony/SehRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/V2_0/ISehRadio;)V

    .line 567
    iget-object v7, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 572
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 570
    invoke-static {v7}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 575
    iget-object v8, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    iget-object v11, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    .line 576
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/HalVersion;

    .line 577
    invoke-static {v7}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    move-result-object v7

    .line 575
    invoke-virtual {v10, v11, v7}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_e
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 633
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v7

    if-eqz v7, :cond_13

    if-eq p1, v3, :cond_12

    if-eq p1, v5, :cond_11

    if-eq p1, v4, :cond_10

    if-eq p1, v0, :cond_f

    goto/16 :goto_2

    .line 642
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 643
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getAidl()Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    move-result-object v0

    invoke-interface {v0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 642
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 644
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getAidl()Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingResponse:Lcom/android/internal/telephony/SehMessagingResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mMessagingIndication:Lcom/android/internal/telephony/SehMessagingIndication;

    invoke-interface {p1, v0, v4}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;->setResponseFunctions(Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;)V

    goto/16 :goto_2

    .line 654
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 655
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->getAidl()Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move-result-object v0

    invoke-interface {v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 654
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 656
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getAidl()Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSimResponse:Lcom/android/internal/telephony/SehSimResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSimIndication:Lcom/android/internal/telephony/SehSimIndication;

    invoke-interface {p1, v0, v4}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->setResponseFunctions(Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;)V

    goto/16 :goto_2

    .line 636
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 637
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioDataProxy;->getAidl()Lvendor/samsung/hardware/radio/data/ISehRadioData;

    move-result-object v0

    invoke-interface {v0}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 636
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 638
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioDataProxy;->getAidl()Lvendor/samsung/hardware/radio/data/ISehRadioData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDataResponse:Lcom/android/internal/telephony/SehDataResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mDataIndication:Lcom/android/internal/telephony/SehDataIndication;

    invoke-interface {p1, v0, v4}, Lvendor/samsung/hardware/radio/data/ISehRadioData;->setResponseFunctions(Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;)V

    goto/16 :goto_2

    .line 648
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 649
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getAidl()Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    move-result-object v0

    invoke-interface {v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 648
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 650
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getAidl()Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkResponse:Lcom/android/internal/telephony/SehNetworkResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mNetworkIndication:Lcom/android/internal/telephony/SehNetworkIndication;

    invoke-interface {p1, v0, v4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;->setResponseFunctions(Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;)V

    goto/16 :goto_2

    .line 661
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 664
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    if-nez p1, :cond_17

    .line 665
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 666
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->getHidl()Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioProxyDeathRecipient:Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 667
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 666
    invoke-interface {p1, v0, v4, v5}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 668
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->getHidl()Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioResponse:Lcom/android/internal/telephony/SehRadioResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mSehRadioIndication:Lcom/android/internal/telephony/SehRadioIndication;

    invoke-interface {p1, v0, v4}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    goto :goto_2

    .line 662
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "serviceProxy shouldn\'t be HIDL with HAL 3.0"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 673
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL;->mSehHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SemRIL;->SEH_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSehRadioServiceProxy: set "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 678
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object p1, p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as disabled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 682
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->clear()V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 686
    :cond_17
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 688
    const-string p1, "getSehRadioServiceProxy: serviceProxy == null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    .line 691
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 690
    invoke-static {p2, v2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 692
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 696
    :cond_18
    monitor-exit p0

    return-object v1

    .line 537
    :cond_19
    :goto_3
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSehRadioServiceProxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/SemRIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is not supported\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 539
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 537
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 540
    iget-object p2, p0, Lcom/android/internal/telephony/SemRIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SehRadioServiceProxy;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public blacklist getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/SehRadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 513
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 516
    :cond_0
    const-class v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 517
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 519
    :cond_1
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 522
    :cond_2
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 523
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(ILandroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 525
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSehRadioServiceProxy: unrecognized "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUsimPBCapa(Landroid/os/Message;)V
    .locals 3

    .line 1508
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1509
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x271c

    .line 1510
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1518
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->getUsimPhonebookCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 1520
    const-string v1, "getUsimPhonebookCapability"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist getVendorSpecificConfiguration(Landroid/os/Message;)V
    .locals 3

    .line 1259
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1260
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2742

    .line 1261
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1268
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getVendorSpecificConfiguration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1270
    const-string v1, "getVendorSpecificConfiguration"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public greylist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 8

    .line 1296
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1297
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x3b

    .line 1298
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1301
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    const-string v2, "]"

    const-string v3, "["

    const-string v4, "> "

    if-eqz v1, :cond_0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1306
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7d0

    if-le v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x4e20

    if-ge v5, v7, :cond_2

    .line 1308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SEM_RILJ"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    .line 1310
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1313
    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1316
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1322
    :goto_0
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->sendRequestRaw(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1324
    const-string v0, "invokeOemRilRequestRaw"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1331
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1332
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3c

    .line 1333
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1336
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1340
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " strings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1344
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->sendRequestStrings(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1346
    const-string p2, "invokeOemRilRequestStrings"

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public blacklist oemGetStoredMsgCountFromSim(Landroid/os/Message;)V
    .locals 3

    .line 1625
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1626
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x273d

    .line 1627
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1634
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->getStoredMsgCountFromSim(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 1636
    const-string v1, "oemGetStoredMsgCountFromSim"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist oemReadSmsFromSim(ILandroid/os/Message;)V
    .locals 3

    .line 1643
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1645
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x273e

    .line 1646
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1653
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->readSmsFromSim(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 1655
    const-string v0, "oemReadSmsFromSim"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method blacklist processIndication(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1894
    invoke-direct {p0}, Lcom/android/internal/telephony/SemRIL;->sendAck()V

    .line 1895
    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 2

    .line 1925
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->serial:I

    iget v1, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    iget p2, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 3

    .line 1910
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 3

    .line 1987
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1990
    invoke-static {v1, p3}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1989
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1994
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1997
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1999
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemRIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V
    .locals 3

    .line 2022
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1, p3}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2030
    iget v0, p2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2032
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemRIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist queryCNAP(Landroid/os/Message;)V
    .locals 3

    .line 1127
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1128
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x272d

    .line 1129
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1136
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getCnap(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1138
    const-string v1, "queryCNAP"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist queryCsgList(Landroid/os/Message;)V
    .locals 3

    .line 1145
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1146
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x273a

    .line 1147
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1156
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->getCsgList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 1158
    const-string v1, "getCsgList"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method greylist riljLog(Ljava/lang/String;)V
    .locals 5

    .line 2291
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->getRilLocalLogIdentifier(Ljava/lang/String;)I

    move-result v0

    .line 2292
    const-string v1, "]"

    const-string v2, " [PHONE"

    const-string v3, "SEM_RILJ"

    if-eqz v0, :cond_1

    .line 2293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "][GCCT"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2297
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2299
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLogFromRilRequest(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2304
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLoge(Ljava/lang/String;)V
    .locals 1

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SEM_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLogv(Ljava/lang/String;)V
    .locals 1

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SEM_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLogw(Ljava/lang/String;)V
    .locals 1

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SEM_RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist secSendCdmaSms([BLandroid/os/Message;)V
    .locals 10

    .line 1682
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1684
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x57

    .line 1685
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1692
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendCdmaSms(I[B)V

    .line 1693
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1694
    invoke-static {p2}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 1693
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x4

    .line 1696
    const-string v0, "secSendCdmaSms"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist secSendCdmaSmsMore([BLandroid/os/Message;)V
    .locals 10

    .line 1562
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1564
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4eb4

    .line 1565
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1572
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendCdmaSmsExpectMore(I[B)V

    .line 1573
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1574
    invoke-static {p2}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 1573
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x4

    .line 1576
    const-string v0, "sendCdmaSmsMore"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist secSendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10

    .line 1583
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1585
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1593
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendSms(ILjava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1595
    invoke-static {p3}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1594
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x4

    .line 1597
    const-string p3, "sendSMS"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist secSendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10

    .line 1604
    const-class v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1606
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    .line 1607
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1614
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->sendSMSExpectMore(ILjava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1616
    invoke-static {p3}, Lcom/android/internal/telephony/SemRIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v8

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1615
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x4

    .line 1618
    const-string p3, "sendSMSExpectMore"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist secSetDataAllowed(ZLandroid/os/Message;I)V
    .locals 3

    .line 1703
    const-class v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 1705
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x7b

    .line 1706
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " allowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1714
    new-instance v1, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;-><init>()V

    .line 1715
    iput p3, v1, Lvendor/samsung/hardware/radio/data/SehAllowDataParam;->defaultDataPhoneId:I

    .line 1718
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/internal/telephony/SehRadioDataProxy;->setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 1720
    const-string p3, "secSetDataAllowed"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist secWriteSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    .line 1662
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemRIL;->translateStatus(I)I

    move-result v3

    .line 1663
    const-class p2, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    invoke-virtual {p0, p2, p5}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/SehRadioMessagingProxy;

    .line 1665
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x4e5f

    .line 1666
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, p2, p5, v1}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1670
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1673
    :try_start_0
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SehRadioMessagingProxy;->writeSmsToSim(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x4

    .line 1675
    const-string p3, "secWriteSmsToSim"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3

    .line 1165
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1166
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x273b

    .line 1167
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1175
    :try_start_0
    iget p4, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->selectCsgManual(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1177
    const-string p3, "selectCsgManual"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist sendEncodedUssd([BIILandroid/os/Message;)V
    .locals 3

    .line 1799
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1800
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2723

    .line 1801
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", DCS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1806
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1811
    :try_start_0
    iget p4, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->sendEncodedUssd(I[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1813
    const-string p3, "sendEncodedUssd"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setAirplaneModeOff()V
    .locals 3

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 975
    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 976
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method

.method public blacklist setCpaiDataGathering(IIIILandroid/os/Message;)V
    .locals 7

    .line 2556
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2557
    invoke-virtual {v1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2777

    .line 2558
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " controlMsg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intervalMs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxWaitSec:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2566
    :try_start_0
    iget v2, p5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setCpaiDataGathering(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x1

    .line 2568
    const-string p3, "setCpaiDataGathering"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setCpaiDevAppMessage(II[BLandroid/os/Message;)V
    .locals 3

    .line 2593
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 2594
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2779

    .line 2595
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 2598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " controlMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2603
    :try_start_0
    iget p4, p4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setCpaiDevAppMessage(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 2605
    const-string p3, "setCpaiDevAppMessage"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setDisable2g(ILandroid/os/Message;)V
    .locals 3

    .line 1073
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1074
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2730

    .line 1075
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1082
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setDisable2g(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1084
    const-string v0, "setDisable2g"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setImsCallList(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 998
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 999
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2714

    .line 1000
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1006
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setImsCallList(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1008
    const-string v0, "setImsCallList"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setMobileDataSetting(ZZLandroid/os/Message;)V
    .locals 3

    .line 1185
    const-class v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioDataProxy;

    .line 1187
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x273c

    .line 1188
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with mobile data setting : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1197
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioDataProxy;->setMobileDataSetting(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 1199
    const-string p3, "setMobileDataSetting"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setNrDisableMode(IZLandroid/os/Message;)V
    .locals 3

    .line 1206
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1207
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x273f

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1211
    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disable mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1215
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setNrDisableMode(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1217
    const-string p3, "setNrMode"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 11

    move-object/from16 v0, p8

    .line 1033
    const-class v1, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1034
    invoke-virtual {v2}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x271f

    .line 1035
    iget-object v3, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1046
    :try_start_0
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setPreferredNetworkList(IILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x1

    .line 1048
    const-string p3, "setPreferredNetworkList"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setSimInitEvent(Landroid/os/Message;)V
    .locals 3

    .line 1544
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1545
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x271e

    .line 1546
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1553
    :try_start_0
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->setSimInitEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 1555
    const-string v1, "setSimInitEvent"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setSimOnOff(ILandroid/os/Message;)V
    .locals 3

    .line 1415
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1416
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2739

    .line 1417
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1425
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->setSimOnOff(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1427
    const-string v0, "setSimOnOff"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1277
    const-class v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioNetworkProxy;

    .line 1278
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2743

    .line 1279
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1286
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioNetworkProxy;->setVendorSpecificConfiguration(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1288
    const-string v0, "getVendorSpecificConfiguration"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1754
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1755
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2722

    .line 1756
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1761
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1766
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1767
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1766
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/SehRadioSimProxy;->supplyIccPersonalization(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1769
    const-string v0, "supplyIccPerso"

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3

    .line 1394
    const-class v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/SemRIL;->getSehRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/internal/telephony/SehRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SehRadioSimProxy;

    .line 1395
    invoke-virtual {v0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 1396
    iget-object v2, p0, Lcom/android/internal/telephony/SemRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/SemRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " netpin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemRIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1400
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 1405
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1406
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1405
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/internal/telephony/SehRadioSimProxy;->supplyNetworkDepersonalization(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 1408
    const-string p3, "supplyNetworkDepersonalization"

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/telephony/SemRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method greylist unsljLog(I)V
    .locals 2

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2323
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    return-void
.end method

.method greylist unsljLogMore(ILjava/lang/String;)V
    .locals 2

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2330
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    return-void
.end method

.method greylist unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2335
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 2338
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    return-void
.end method

.method greylist unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2343
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemRIL;->riljLogv(Ljava/lang/String;)V

    .line 2346
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    return-void
.end method

.method public blacklist updateStackBinding(IILandroid/os/Message;)V
    .locals 5

    .line 1844
    const-string v0, "close fail!!!"

    const-string v1, "SEM_RILJ"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1845
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1847
    const-string v4, "updateStackBinding"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 1849
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x62

    .line 1850
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    .line 1851
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1852
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1853
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1854
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/SemRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1860
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1861
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1863
    :catch_0
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1856
    :try_start_2
    const-string p1, "IOException"

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1860
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1861
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    .line 1860
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1861
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1863
    :catch_2
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :goto_2
    throw p0
.end method
