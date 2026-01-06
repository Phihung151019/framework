.class public Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.super Landroid/os/Handler;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
    }
.end annotation


# static fields
.field private static final blacklist AVG_BW_PER_RAT:[Ljava/lang/String;

.field private static final blacklist AVG_BW_PER_RAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist BW_STATS_COUNT_THRESHOLD:I = 0x5

.field private static final blacklist BYTE_DELTA_THRESHOLD_KB:[[I

.field public static final blacklist LINK_RX:I = 0x1

.field public static final blacklist LINK_TX:I = 0x0

.field static final blacklist MSG_ACTIVE_PHONE_CHANGED:I = 0x8

.field static final blacklist MSG_DATA_REG_STATE_OR_RAT_CHANGED:I = 0x9

.field static final blacklist MSG_DEFAULT_NETWORK_CHANGED:I = 0x4

.field static final blacklist MSG_MODEM_ACTIVITY_RETURNED:I = 0x3

.field static final blacklist MSG_NR_FREQUENCY_CHANGED:I = 0x6

.field static final blacklist MSG_NR_STATE_CHANGED:I = 0x7

.field static final blacklist MSG_SCREEN_STATE_CHANGED:I = 0x1

.field static final blacklist MSG_SIGNAL_STRENGTH_CHANGED:I = 0x5

.field static final blacklist MSG_TRAFFIC_STATS_POLL:I = 0x2

.field public static final blacklist NUM_LINK_DIRECTION:I = 0x2

.field public static final blacklist NUM_SIGNAL_LEVEL:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "LinkBandwidthEstimator"

.field static final blacklist UNKNOWN_TAC:I = 0x7fffffff


# instance fields
.field private blacklist mBandwidthUpdateDataRat:I

.field private blacklist mBandwidthUpdatePlmn:Ljava/lang/String;

.field private blacklist mBandwidthUpdateSignalDbm:I

.field private blacklist mBandwidthUpdateSignalLevel:I

.field private blacklist mCountHiBwDataXfer:I

.field private blacklist mDataActivity:I

.field private blacklist mDataRat:I

.field private final blacklist mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mFilterUpdateTimeMs:J

.field private blacklist mHiBwDataXferThresholdBytes:J

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsCalledHiBwDataXfer:Z

.field private blacklist mIsNewNetworkConnected:Z

.field private blacklist mIsOnActiveData:Z

.field private blacklist mIsOnDefaultRoute:Z

.field private blacklist mLastDrsOrRatChangeTimeMs:J

.field private blacklist mLastMobileRxBytes:J

.field private blacklist mLastMobileTxBytes:J

.field private blacklist mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field private blacklist mLastModemPollTimeMs:J

.field private blacklist mLastPlmnOrRatChangeTimeMs:J

.field private blacklist mLastTrafficValid:Z

.field private final blacklist mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLteRsrp:I

.field private blacklist mLteRssnr:I

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final blacklist mNetworkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutcomeReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/ModemActivityInfo;",
            "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

.field private blacklist mPlmn:Ljava/lang/String;

.field private blacklist mPreTimeSinceLastModemPollMs:J

.field private blacklist mRxBytesDeltaAcc:J

.field private final blacklist mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

.field private blacklist mSavingFlag:Z

.field private blacklist mScreenOn:Z

.field private blacklist mSignalLevel:I

.field private blacklist mSignalStrengthDbm:I

.field private blacklist mTac:I

.field private final blacklist mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private final blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

.field private blacklist mTxBytesDeltaAcc:J

.field private final blacklist mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;


# direct methods
.method public static synthetic blacklist $r8$lambda$-5dB4y2gM4QsRL-wn-ZS0D2ZtL4(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onDataActivityChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3AwkZhr1FsV4aK6MMh25PUMyVU0(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 1

    .line 1053
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FCIO1ge-5s4XiqouadOITEmKfmA(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .locals 0

    .line 1054
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onBandwidthChanged(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Mdgp2VWUKrudS1LXmAOUibjJBaM(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$handleTrafficStatsPollConditionChanged$1(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NNXbw4PjgQfTohOAaKW5zuFHukM(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 0

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onDataRetryForScreenOn()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U3lFWinXL2ZDr1yyL48dYzf8LTs(ILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 1

    .line 580
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aWnEUR2EMYlLByDPcxKtXGKmXeQ(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$handleTrafficStatsPollConditionChanged$0(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m-3_OUxznrwmP9F9o3ZOOsDiDpM(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 1

    .line 1474
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pjwrxdijty7ZPVCKyQXZGdHCPbw(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 1

    .line 555
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q39TfzQbd2yF6sI2pk6YPadXk4I(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .locals 0

    .line 1475
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onHighBandwidthDataTransfer(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdatePlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateSignalDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalStrengthDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTac(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyFacade(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/TelephonyFacade;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNrMode(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getNrMode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misScreenOn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBYTE_DELTA_THRESHOLD_KB()[[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->BYTE_DELTA_THRESHOLD_KB:[[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 20

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const/16 v2, 0x190

    const/16 v3, 0x258

    const/16 v4, 0x3e8

    .line 170
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    const/16 v1, 0x320

    filled-new-array {v2, v3, v1, v4, v4}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->BYTE_DELTA_THRESHOLD_KB:[[I

    .line 178
    const-string v18, "NR:145000,60000"

    const-string v19, "NR_MMWAVE:145000,60000"

    const-string v1, "GPRS:24,24"

    const-string v2, "EDGE:70,18"

    const-string v3, "UMTS:115,115"

    const-string v4, "CDMA:14,14"

    const-string v5, "CDMA - 1xRTT:30,30"

    const-string v6, "CDMA - EvDo rev. 0:750,48"

    const-string v7, "CDMA - EvDo rev. A:950,550"

    const-string v8, "HSDPA:4300,620"

    const-string v9, "HSUPA:4300,1800"

    const-string v10, "HSPA:4300,1800"

    const-string v11, "CDMA - EvDo rev. B:1500,550"

    const-string v12, "CDMA - eHRPD:750,48"

    const-string v13, "HSPA+:13000,3400"

    const-string v14, "TD_SCDMA:115,115"

    const-string v15, "LTE:30000,15000"

    const-string v16, "NR_NSA:47000,18000"

    const-string v17, "NR_NSA_MMWAVE:145000,60000"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT:[Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/TelephonyFacade;)V
    .locals 12

    .line 363
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x200

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p2, 0x0

    .line 200
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    .line 201
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    .line 202
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 211
    new-instance v2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    const/4 v3, -0x1

    .line 215
    iput v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRsrp:I

    .line 216
    iput v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRssnr:I

    .line 217
    iput-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    .line 218
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    const-wide/16 v4, 0x0

    .line 220
    iput-wide v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPreTimeSinceLastModemPollMs:J

    .line 230
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    .line 232
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    .line 237
    iput v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    .line 238
    iput v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    .line 239
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    .line 240
    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    .line 241
    new-instance v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 242
    new-instance v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 246
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    const-wide v5, 0x7fffffffffffffffL

    .line 250
    iput-wide v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    .line 258
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    .line 318
    new-instance p2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 334
    new-instance v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mOutcomeReceiver:Landroid/os/OutcomeReceiver;

    .line 349
    new-instance v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1270
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    .line 1675
    new-instance v7, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v7, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 365
    iput-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    .line 366
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v5, Landroid/telephony/TelephonyManager;

    .line 367
    invoke-virtual {p3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 368
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 369
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_0

    .line 372
    invoke-virtual {v5, p2, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isScreenOn()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleScreenStateChanged(Z)V

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v5, Landroid/net/ConnectivityManager;

    .line 377
    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_1

    .line 379
    invoke-virtual {p2, v3, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 381
    :cond_1
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3, p2, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 382
    new-instance p2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    invoke-direct {p2, p0, v4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    .line 383
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->initAvgBwPerRatTable()V

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerNrStateFrequencyChange()V

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p2, v0, p0, p3, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p2, p0, p3, v1}, Lcom/android/internal/telephony/SignalStrengthController;->registerForSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 390
    iget-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    if-nez p2, :cond_2

    .line 391
    new-instance p2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    const p3, 0xa8c0

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    .line 395
    :cond_2
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    const-string p0, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string p0, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string p0, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x2

    move-object v10, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static blacklist encrypt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1565
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1566
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, p1

    rem-int/lit8 v2, v2, 0x7f

    const/16 v3, 0x60

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x20

    :cond_0
    int-to-char v2, v2

    .line 1570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDataNri()Landroid/telephony/NetworkRegistrationInfo;
    .locals 2

    .line 1182
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataRatName(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1120
    const-string p0, "NR_NSA"

    return-object p0

    :cond_1
    const-string p0, "NR_NSA_MMWAVE"

    return-object p0

    :cond_2
    const/16 v0, 0x14

    if-ne p0, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1123
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "NR_MMWAVE"

    return-object p0

    .line 1125
    :cond_4
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getModemTxTimeMs(Landroid/telephony/ModemActivityInfo;)J
    .locals 4

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 739
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 740
    invoke-virtual {p1, p0}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private blacklist getNrMode(I)I
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    .line 1101
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isNrNsaConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1102
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 1107
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1106
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getTac(Landroid/telephony/CellIdentity;)I
    .locals 0

    .line 1232
    instance-of p0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p0, :cond_0

    .line 1233
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    return p0

    .line 1235
    :cond_0
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_1

    .line 1236
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    return p0

    .line 1238
    :cond_1
    instance-of p0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz p0, :cond_2

    .line 1239
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p0

    return p0

    .line 1241
    :cond_2
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_3

    .line 1242
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    return p0

    .line 1244
    :cond_3
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_4

    .line 1245
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    return p0

    :cond_4
    const p0, 0x7fffffff

    return p0
.end method

.method private blacklist handleActivePhoneChanged(I)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 523
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    if-ne v1, v0, :cond_1

    return-void

    .line 526
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsOnActiveData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " activeDataSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleDefaultNetworkChanged(Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 506
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 513
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 516
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsOnDefaultRoute "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleDrsOrRatChanged(Landroid/os/AsyncResult;)V
    .locals 2

    .line 533
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrsOrRatChanged dataRegState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rilRat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastDrsOrRatChangeTimeMs:J

    return-void
.end method

.method private blacklist handleModemActivityReturned(Landroid/telephony/ModemActivityInfo;)V
    .locals 0

    .line 665
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateBandwidthTxRxSamples(Landroid/telephony/ModemActivityInfo;)V

    .line 666
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 667
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 669
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetByteDeltaAcc()V

    return-void
.end method

.method private blacklist handleScreenStateChanged(Z)V
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setupDataForRetryConnection()V

    .line 501
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleSignalStrengthChanged()V
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    .line 1061
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    .line 1062
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    .line 1063
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 1068
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 1071
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTE_CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 1072
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRsrp:I

    .line 1073
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRssnr:I

    return-void
.end method

.method private blacklist handleTrafficStatsPoll()V
    .locals 22

    move-object/from16 v0, p0

    .line 561
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->invalidateTxRxSamples()V

    .line 562
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyFacade;->getMobileTxBytes()J

    move-result-wide v5

    .line 563
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyFacade;->getMobileRxBytes()J

    move-result-wide v7

    .line 564
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    sub-long v11, v5, v1

    .line 565
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    sub-long v13, v7, v1

    const-wide/16 v15, 0x0

    cmp-long v17, v11, v15

    const/4 v1, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    if-lez v17, :cond_0

    cmp-long v2, v13, v15

    if-lez v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    cmp-long v2, v13, v15

    if-lez v2, :cond_1

    move/from16 v2, v18

    goto :goto_0

    :cond_1
    if-lez v17, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move/from16 v2, v19

    .line 578
    :goto_0
    iget v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    if-eq v3, v2, :cond_3

    .line 579
    iput v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 580
    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v4, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    const-wide/16 v2, 0x3e8

    .line 585
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 588
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v20

    .line 589
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemPollTimeMs:J

    sub-long v9, v20, v1

    .line 590
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    iget-wide v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollBundle(JJJJJ)V

    .line 593
    iput-wide v5, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    .line 594
    iput-wide v7, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    if-ltz v17, :cond_4

    cmp-long v1, v13, v15

    if-ltz v1, :cond_4

    move/from16 v1, v18

    goto :goto_1

    :cond_4
    move/from16 v1, v19

    .line 598
    :goto_1
    iget-boolean v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    if-eqz v2, :cond_b

    if-nez v1, :cond_5

    goto/16 :goto_3

    .line 604
    :cond_5
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    add-long/2addr v1, v11

    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    .line 605
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    add-long/2addr v1, v13

    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    .line 608
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 609
    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->sendHighBandwidthDataTransfer(JJ)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HiBwDataXfer: cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , called="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 616
    :cond_6
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit8 v1, v1, 0x8

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v3, v1

    .line 618
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v11, v3

    if-gez v3, :cond_7

    cmp-long v1, v13, v1

    if-gez v1, :cond_7

    .line 620
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    move/from16 v18, v19

    :cond_7
    const-wide/16 v1, 0x1388

    cmp-long v1, v9, v1

    if-gez v1, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v19, v18

    :goto_2
    if-eqz v19, :cond_9

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    const-string v2, "txByteDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rxByteDelta "

    .line 639
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " txByteDeltaAcc "

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rxByteDeltaAcc "

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " trigger modem activity request"

    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 643
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    .line 645
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->makeRequestModemActivity()V

    return-void

    .line 649
    :cond_9
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mFilterUpdateTimeMs:J

    sub-long v20, v20, v1

    const-wide/16 v1, 0x13ec

    cmp-long v1, v20, v1

    if-ltz v1, :cond_a

    .line 652
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    move-result v1

    if-nez v1, :cond_a

    .line 653
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_a
    return-void

    .line 599
    :cond_b
    :goto_3
    iput-boolean v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    .line 600
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    const-string v1, " run into invalid traffic count"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleTrafficStatsPollBundle(JJJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    .line 1519
    iget-wide v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPreTimeSinceLastModemPollMs:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1520
    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPreTimeSinceLastModemPollMs:J

    const-wide/16 v1, 0x0

    cmp-long v7, p1, v1

    const-wide/16 v8, -0x1

    if-lez v7, :cond_0

    cmp-long v7, p5, v1

    if-lez v7, :cond_0

    sub-long v10, p5, p1

    goto :goto_0

    :cond_0
    move-wide v10, v8

    :goto_0
    cmp-long v7, p3, v1

    if-lez v7, :cond_1

    cmp-long v7, p7, v1

    if-lez v7, :cond_1

    sub-long v8, p7, p3

    .line 1530
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleTrafficStatsPollBundle : sentBytes = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " receivedBytes = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " timeDiff = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    cmp-long v7, v10, v1

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x8

    move-wide/from16 p9, v1

    .line 1532
    const-string v1, " "

    if-lez v7, :cond_2

    cmp-long v2, v8, p9

    if-lez v2, :cond_2

    cmp-long v12, v3, v12

    if-ltz v12, :cond_5

    if-lez v7, :cond_5

    if-lez v2, :cond_5

    mul-long/2addr v8, v14

    .line 1535
    div-long/2addr v8, v3

    div-long/2addr v8, v5

    mul-long/2addr v10, v14

    .line 1536
    div-long/2addr v10, v3

    div-long/2addr v10, v5

    .line 1538
    iget-boolean v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-nez v2, :cond_5

    .line 1539
    iget-object v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRssnr:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v2, -0x1

    if-lez v7, :cond_3

    cmp-long v16, v8, p9

    if-gez v16, :cond_3

    cmp-long v8, v3, v12

    if-ltz v8, :cond_5

    if-lez v7, :cond_5

    .line 1544
    iget-boolean v7, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-nez v7, :cond_5

    mul-long/2addr v10, v14

    .line 1545
    div-long/2addr v10, v3

    div-long/2addr v10, v5

    .line 1546
    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRsrp:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRssnr:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v7, :cond_4

    cmp-long v7, v8, p9

    if-lez v7, :cond_4

    cmp-long v10, v3, v12

    if-ltz v10, :cond_5

    if-lez v7, :cond_5

    .line 1550
    iget-boolean v7, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-nez v7, :cond_5

    mul-long/2addr v8, v14

    .line 1551
    div-long/2addr v8, v3

    div-long/2addr v8, v5

    .line 1552
    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRsrp:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRssnr:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->log(Ljava/lang/String;)V

    return-void

    .line 1556
    :cond_4
    iget-boolean v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-nez v3, :cond_5

    .line 1557
    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRsrp:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLteRssnr:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private blacklist handleTrafficStatsPollConditionChanged()V
    .locals 2

    const/4 v0, 0x2

    .line 539
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPoll()V

    return-void

    .line 544
    :cond_0
    const-string v0, "Traffic status poll stopped"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 545
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 546
    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private blacklist hasRecentDataRegStatePlmnOrRatChange()Z
    .locals 6

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 733
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastDrsOrRatChangeTimeMs:J

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastPlmnOrRatChangeTimeMs:J

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 734
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist initAvgBwPerRatTable()V
    .locals 10

    .line 300
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 303
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 304
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    .line 305
    aget-object v7, v4, v5

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 306
    array-length v8, v7

    const/16 v9, 0xe

    if-ne v8, v6, :cond_0

    .line 308
    :try_start_0
    aget-object v6, v7, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :try_start_1
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    move v5, v9

    move v9, v6

    goto :goto_2

    :catch_1
    move v6, v9

    goto :goto_1

    :cond_0
    move v5, v9

    .line 313
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    aget-object v4, v4, v2

    new-instance v7, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist invalidateTxRxSamples()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    return-void
.end method

.method private blacklist isNrNsaConnected()Z
    .locals 1

    .line 1132
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isScreenOn()Z
    .locals 5

    .line 468
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 475
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    .line 476
    :cond_1
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 479
    array-length v1, p0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 482
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private blacklist isValidNetwork()Z
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$handleTrafficStatsPollConditionChanged$0(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 0

    .line 548
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onDataActivityChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$handleTrafficStatsPollConditionChanged$1(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 1

    .line 547
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist lookupNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .locals 1

    const v0, 0x7fffffff

    .line 1310
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeRequestModemActivity()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemPollTimeMs:J

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mOutcomeReceiver:Landroid/os/OutcomeReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private blacklist registerNrStateFrequencyChange()V
    .locals 3

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist resetBandwidthFilter()V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 1048
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    return-void
.end method

.method private blacklist resetByteDeltaAcc()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 673
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    .line 674
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    return-void
.end method

.method private blacklist sendHighBandwidthDataTransfer(JJ)V
    .locals 5

    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    .line 1448
    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1450
    sget-object p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    const-string p2, "override != NR_ADVANCED"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setHighBandwidthDataTransferThresholdKbps(I)V

    return-void

    :cond_0
    add-long v0, p1, p3

    .line 1455
    iget-wide v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 1456
    iput v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    .line 1457
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    return-void

    .line 1461
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 1462
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    return-void

    .line 1466
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1467
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 1468
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    const-wide/16 v2, 0x400

    .line 1470
    div-long/2addr p1, v2

    long-to-int p1, p1

    mul-long/2addr p3, v0

    .line 1471
    div-long/2addr p3, v2

    long-to-int p2, p3

    .line 1472
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "send HighBwDataTransfer event: txKbps="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", rxKbps="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 1474
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance p3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda6;

    invoke-direct {p3, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-interface {p0, p3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method private blacklist sendLinkBandwidthToDataConnection(II)V
    .locals 2

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to DC tx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1053
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist setupDataForRetryConnection()V
    .locals 1

    .line 555
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist updateBandwidthTxRxSamples(Landroid/telephony/ModemActivityInfo;)V
    .locals 8

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_3

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->hasRecentDataRegStatePlmnOrRatChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v0

    .line 689
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p1}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    .line 696
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getModemTxTimeMs(Landroid/telephony/ModemActivityInfo;)J

    move-result-wide v0

    .line 697
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3

    mul-long/2addr v6, v2

    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    add-long v4, v0, v2

    goto :goto_0

    :cond_2
    move-wide v4, v2

    .line 705
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-wide v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    invoke-static {p1, v6, v7, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V

    .line 706
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-wide v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    invoke-static {p1, v6, v7, v4, v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V

    .line 708
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p1

    .line 709
    iget-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v4

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    const-string v6, "UpdateBwSample"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dBm "

    .line 713
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " level "

    .line 714
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rat "

    .line 715
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " plmn "

    .line 716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " tac "

    .line 717
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reportedTxKbps "

    .line 718
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reportedRxKbps "

    .line 719
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " txMs "

    .line 720
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " rxMs "

    .line 721
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txKB "

    .line 722
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " rxKB "

    .line 723
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txKBThr "

    .line 724
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rxKBThr "

    .line 725
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist updateByteCountThr()V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 1041
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    return-void
.end method

.method private blacklist updateDataRatCellIdentityBandwidth()Z
    .locals 4

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 1196
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getTac(Landroid/telephony/CellIdentity;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    .line 1199
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1200
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1204
    :cond_1
    const-string v0, ""

    .line 1207
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1209
    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1212
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataNri()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1214
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 1215
    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-eq v1, v3, :cond_3

    .line 1217
    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    .line 1218
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValue(I)Z

    .line 1219
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 1224
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetBandwidthFilter()V

    .line 1225
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastPlmnOrRatChangeTimeMs:J

    :cond_4
    return v2
.end method

.method private blacklist updateStaticBwValue(I)Z
    .locals 3

    .line 1140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getStaticAvgBw(I)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1142
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    const/16 v1, 0xe

    iput v1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    .line 1143
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return v0

    .line 1146
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1147
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 1148
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    .line 1149
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return v0
.end method

.method private blacklist updateStaticBwValueResetFilter()V
    .locals 1

    .line 1166
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    .line 1168
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetBandwidthFilter()V

    .line 1169
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_0
    return-void
.end method

.method private blacklist updateTxRxBandwidthFilterSendToDataConnection()V
    .locals 6

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mFilterUpdateTimeMs:J

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->hasLargeBwChange()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 751
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->hasLargeBwChange()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    .line 754
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsNewNetworkConnected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 758
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isValidNetwork()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    const/4 v4, -0x1

    const/16 v5, 0xe

    if-gez v3, :cond_3

    .line 761
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsNewNetworkConnected:Z

    if-ne v3, v2, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_2

    .line 763
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    :goto_2
    iput v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-gez v3, :cond_4

    .line 766
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsNewNetworkConnected:Z

    if-ne v3, v2, :cond_5

    move v4, v5

    goto :goto_3

    .line 768
    :cond_4
    iget v4, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    :cond_5
    :goto_3
    iput v4, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    .line 770
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateNetworkStateConnected(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->sendLinkBandwidthToDataConnection(II)V

    .line 776
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    .line 777
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    .line 778
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateError()V

    .line 782
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateError()V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1410
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current PLMN "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TAC "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RAT "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    const-string p2, "all networks visited since device boot"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    iget-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    .line 1415
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1418
    :cond_0
    const-string p2, "LinkBandwidthEstimatorCallbacks:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->dumpTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1427
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1429
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1431
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1432
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1433
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist dumpTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 10

    .line 1592
    const-string v0, "UTF-8"

    const-string v1, "fileOrigin not deleted"

    const-string v2, "TP-data-end dumpTPData() : "

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_18

    .line 1593
    :cond_0
    const-string v3, "TP-data-start dumpTPData()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1594
    iput-boolean v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    .line 1599
    const-string v3, "ro.multisim.simslotcount"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_1

    .line 1600
    iget-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1601
    const-string v3, "/data/log/err/mobiledata_tp2"

    goto :goto_0

    .line 1604
    :cond_1
    const-string v3, "/data/log/err/mobiledata_tp"

    :goto_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/log/err/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1607
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1608
    const-string v5, "failed to created dir"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1611
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1615
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 1616
    :try_start_2
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dat"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "failed to create file : "

    if-nez v3, :cond_3

    .line 1618
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto/16 :goto_19

    :catch_1
    move-exception p1

    move-object v6, v7

    goto/16 :goto_16

    :catch_2
    move-exception p1

    move-object v6, v7

    goto/16 :goto_17

    .line 1620
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1624
    :cond_4
    invoke-virtual {v7, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1625
    invoke-virtual {v7, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "failed to setWritable file : "

    if-nez v3, :cond_5

    .line 1626
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1628
    :cond_5
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1629
    invoke-virtual {v6, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1633
    :cond_6
    :try_start_5
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v7, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1634
    :try_start_6
    iget-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mThroughputLOG:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TxRxMaxLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1636
    :try_start_7
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 1633
    :try_start_8
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1637
    :goto_4
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1640
    :goto_5
    :try_start_b
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1641
    :try_start_c
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1642
    :try_start_d
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1643
    :try_start_e
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1644
    :try_start_f
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1645
    :try_start_10
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1646
    :goto_6
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    const/16 v9, 0x36

    .line 1647
    invoke-static {v8, v9}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 1649
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v8

    goto :goto_7

    .line 1651
    :cond_7
    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_15

    :catch_4
    move-exception p1

    goto :goto_13

    :catch_5
    move-exception p1

    goto :goto_14

    :catchall_4
    move-exception p2

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v6

    goto :goto_9

    .line 1640
    :goto_7
    :try_start_18
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v6

    :try_start_19
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :goto_9
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception v0

    :try_start_1b
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :goto_b
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v4

    :try_start_1d
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :goto_d
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v3

    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :goto_f
    :try_start_20
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception p2

    :try_start_21
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    :goto_11
    :try_start_22
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception p1

    :try_start_23
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw p2
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_2
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1654
    :goto_13
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 1652
    :goto_14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 1661
    :goto_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1662
    iput-boolean v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    .line 1664
    :try_start_25
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1665
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_25} :catch_6

    goto :goto_18

    :catch_6
    move-exception p0

    .line 1668
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_18

    :catchall_f
    move-exception p1

    goto :goto_19

    :catch_7
    move-exception p1

    goto :goto_16

    :catch_8
    move-exception p1

    goto :goto_17

    .line 1659
    :goto_16
    :try_start_26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    .line 1661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1662
    iput-boolean v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-eqz v6, :cond_8

    .line 1664
    :try_start_27
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1665
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_27} :catch_6

    goto :goto_18

    .line 1657
    :goto_17
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 1661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1662
    iput-boolean v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-eqz v6, :cond_8

    .line 1664
    :try_start_29
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1665
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_29} :catch_6

    :cond_8
    :goto_18
    return-void

    .line 1661
    :goto_19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1662
    iput-boolean v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    if-eqz v6, :cond_9

    .line 1664
    :try_start_2a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_9

    .line 1665
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_2a} :catch_9

    goto :goto_1a

    :catch_9
    move-exception p0

    .line 1668
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1670
    :cond_9
    :goto_1a
    throw p1
.end method

.method public blacklist getDataActivity()I
    .locals 0

    .line 1090
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    return p0
.end method

.method public blacklist getDataRatName(I)Ljava/lang/String;
    .locals 0

    .line 1097
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getNrMode(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStaticAvgBw(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object p0

    .line 1158
    sget-object p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_0

    .line 1160
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found in Avg BW table"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 434
    sget-object p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleDrsOrRatChanged(Landroid/os/AsyncResult;)V

    return-void

    .line 428
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleActivePhoneChanged(I)V

    return-void

    .line 425
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValueResetFilter()V

    return-void

    .line 420
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleSignalStrengthChanged()V

    return-void

    .line 417
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleDefaultNetworkChanged(Landroid/net/NetworkCapabilities;)V

    return-void

    .line 414
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ModemActivityInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleModemActivityReturned(Landroid/telephony/ModemActivityInfo;)V

    return-void

    .line 411
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPoll()V

    return-void

    .line 408
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleScreenStateChanged(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 1264
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .locals 1

    const/4 v0, 0x0

    .line 1318
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1317
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    return-object p0

    .line 1321
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1322
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    if-nez p1, :cond_1

    .line 1324
    new-instance p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V

    .line 1325
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkBandwidthEstimatorCallback.add = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist removeTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    .line 1577
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSavingFlag:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1578
    :cond_0
    const-string p1, "TP-data-start removeTPData()"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1580
    :try_start_0
    const-string p0, "/data/log/err/mobiledata_tp.dat"

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/String;

    invoke-static {p0, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 1581
    const-string p2, "/data/log/err/mobiledata_tp2.dat"

    new-array v0, p1, [Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 1582
    new-array v0, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    .line 1583
    new-array p1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz v0, :cond_1

    .line 1584
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1585
    invoke-static {p2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1587
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized blacklist setHighBandwidthDataTransferThresholdKbps(I)V
    .locals 4

    monitor-enter p0

    .line 1439
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiBwDataXfer: thresholdKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    if-lez p1, :cond_0

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    .line 1440
    div-long/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 1441
    :goto_0
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mHiBwDataXferThresholdBytes:J

    const/4 p1, 0x0

    .line 1442
    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mCountHiBwDataXfer:I

    .line 1443
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsCalledHiBwDataXfer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist updateNetworkStateConnected(Z)V
    .locals 0

    .line 1176
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsNewNetworkConnected:Z

    .line 1177
    const-string p1, "updateNetworkStateConnected"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    return-void
.end method
