.class public Lcom/android/internal/telephony/data/DataNetwork;
.super Lcom/android/internal/telephony/StateMachine;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataNetwork$DefaultState;,
        Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;,
        Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;,
        Lcom/android/internal/telephony/data/DataNetwork$HandoverState;,
        Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;,
        Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;,
        Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;,
        Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
    }
.end annotation


# static fields
.field public static final blacklist BANDWIDTH_SOURCE_BANDWIDTH_ESTIMATOR:I = 0x3

.field public static final blacklist BANDWIDTH_SOURCE_CARRIER_CONFIG:I = 0x2

.field public static final blacklist BANDWIDTH_SOURCE_MODEM:I = 0x1

.field public static final blacklist BANDWIDTH_SOURCE_UNKNOWN:I = 0x0

.field private static final blacklist MUTABLE_CAPABILITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TEAR_DOWN_REASON_AIRPLANE_MODE_ON:I = 0x3

.field public static final blacklist TEAR_DOWN_REASON_CDMA_EMERGENCY_CALLBACK_MODE:I = 0x16

.field public static final blacklist TEAR_DOWN_REASON_CONCURRENT_VOICE_DATA_NOT_ALLOWED:I = 0x8

.field public static final blacklist TEAR_DOWN_REASON_CONNECTIVITY_SERVICE_UNWANTED:I = 0x1

.field public static final blacklist TEAR_DOWN_REASON_DATA_CONFIG_NOT_READY:I = 0x13

.field public static final blacklist TEAR_DOWN_REASON_DATA_DISABLED:I = 0x4

.field public static final blacklist TEAR_DOWN_REASON_DATA_LIMIT_REACHED:I = 0x1f

.field public static final blacklist TEAR_DOWN_REASON_DATA_NETWORK_TRANSPORT_NOT_ALLOWED:I = 0x20

.field public static final blacklist TEAR_DOWN_REASON_DATA_PROFILE_INVALID:I = 0x19

.field public static final blacklist TEAR_DOWN_REASON_DATA_PROFILE_NOT_PREFERRED:I = 0x1a

.field public static final blacklist TEAR_DOWN_REASON_DATA_SERVICE_NOT_READY:I = 0xa

.field public static final blacklist TEAR_DOWN_REASON_DATA_STALL:I = 0xc

.field public static final blacklist TEAR_DOWN_REASON_DATA_THROTTLED:I = 0x18

.field public static final blacklist TEAR_DOWN_REASON_DEFAULT_DATA_UNSELECTED:I = 0x11

.field public static final blacklist TEAR_DOWN_REASON_HANDOVER_FAILED:I = 0xd

.field public static final blacklist TEAR_DOWN_REASON_HANDOVER_NOT_ALLOWED:I = 0xe

.field public static final blacklist TEAR_DOWN_REASON_ILLEGAL_STATE:I = 0x1c

.field public static final blacklist TEAR_DOWN_REASON_IMS_UNREGISTERED:I = 0x22

.field public static final blacklist TEAR_DOWN_REASON_KNOX_MMS_CONTROL:I = 0x21

.field public static final blacklist TEAR_DOWN_REASON_NONE:I = 0x0

.field public static final blacklist TEAR_DOWN_REASON_NOT_ALLOWED_BY_POLICY:I = 0x1b

.field public static final blacklist TEAR_DOWN_REASON_NOT_IN_SERVICE:I = 0x12

.field public static final blacklist TEAR_DOWN_REASON_NO_LIVE_REQUEST:I = 0x5

.field public static final blacklist TEAR_DOWN_REASON_NO_SUITABLE_DATA_PROFILE:I = 0x15

.field public static final blacklist TEAR_DOWN_REASON_ONLY_ALLOWED_SINGLE_NETWORK:I = 0x1d

.field public static final blacklist TEAR_DOWN_REASON_PENDING_TEAR_DOWN_ALL:I = 0x14

.field public static final blacklist TEAR_DOWN_REASON_POWER_OFF_BY_CARRIER:I = 0xb

.field public static final blacklist TEAR_DOWN_REASON_PREFERRED_DATA_SWITCHED:I = 0x1e

.field public static final blacklist TEAR_DOWN_REASON_RAT_NOT_ALLOWED:I = 0x6

.field public static final blacklist TEAR_DOWN_REASON_RETRY_SCHEDULED:I = 0x17

.field public static final blacklist TEAR_DOWN_REASON_ROAMING_DISABLED:I = 0x7

.field public static final blacklist TEAR_DOWN_REASON_SERVICE_OPTION_NOT_SUPPORTED:I = 0x9

.field public static final blacklist TEAR_DOWN_REASON_SIM_REMOVAL:I = 0x2

.field public static final blacklist TEAR_DOWN_REASON_VCN_REQUESTED:I = 0xf

.field public static final blacklist TEAR_DOWN_REASON_VOPS_NOT_SUPPORTED:I = 0x10


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private blacklist mAdministratorUids:[I

.field private final blacklist mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mCarrierPrivilegesCallback:Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

.field private blacklist mCarrierServicePackageUid:I

.field private final blacklist mCid:Landroid/util/SparseIntArray;

.field private blacklist mCongested:Z

.field private final blacklist mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

.field private final blacklist mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

.field private final blacklist mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field private blacklist mDataCallResponse:Landroid/telephony/data/DataCallResponse;

.field private final blacklist mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mDataConfigManagerCallback:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

.field private final blacklist mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private final blacklist mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

.field private final blacklist mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

.field private blacklist mDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataSettingsManagerCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

.field private blacklist mDisabledApnTypeBitMask:I

.field private final blacklist mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

.field private final blacklist mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

.field private blacklist mEverConnected:Z

.field private blacklist mFailCause:I

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHandoverDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

.field private blacklist mInitialNetworkAgentId:I

.field public blacklist mInternetCapaChanged:Z

.field private blacklist mInvokedDataDeactivation:Z

.field private blacklist mIsAllowInternetCapability:Z

.field private blacklist mIsCancelHandOverPending:Z

.field private blacklist mIsIpChangeDeactivation:Z

.field private final blacklist mIsSatellite:Z

.field private blacklist mIsSetProcTypeForMms:Z

.field private blacklist mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

.field private blacklist mLastKnownDataNetworkType:I

.field private blacklist mLastKnownRoamingState:Z

.field private blacklist mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field private blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private blacklist mLinkStatus:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMsimSubMode:I

.field private blacklist mNeedDisconnectByDdsChange:Z

.field private blacklist mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

.field private blacklist mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mNetworkScore:Landroid/net/NetworkScore;

.field private blacklist mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private blacklist mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkValidationStatus:I

.field private blacklist mOldDatacallListChecked:Z

.field private blacklist mOnPreferredDataPhone:Z

.field private final blacklist mPcoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PcoData;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPduSessionId:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private blacklist mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

.field private blacklist mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

.field private final blacklist mRaTimeOutLogs:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mRetryDelayMillis:J

.field private final blacklist mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

.field private blacklist mStatusT3346:I

.field private final blacklist mSubId:I

.field private blacklist mSuspended:Z

.field private blacklist mT3346TimerStatus:I

.field private blacklist mTcpBufferSizes:Ljava/lang/String;

.field private blacklist mTearDownReason:I

.field private blacklist mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private blacklist mTempNotMetered:Z

.field private blacklist mTempNotMeteredSupported:Z

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransport:I

.field private final blacklist mVcnManager:Landroid/net/vcn/VcnManager;

.field private blacklist mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

.field private blacklist mWaitDatacallListResponse:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-NdktIKU6LQoloSDzfHZ47Jg9og(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onAttachNetworkRequests$0(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$21WTLUjq7qqUelvnfdmU435SLQ4(Landroid/net/LinkAddress;)Z
    .locals 0

    .line 3610
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4KrVV2TDIJoXUXRDFH0lusQrR4Q(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 0

    .line 4550
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4ivzhnmygsnNccXE5ozacVX8V4Q(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 5354
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$8-13xco5zkY97NqKVUDA-JFAlbw(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 5328
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ETmF1tnWWhjnFyVZo5XLYRxK7wY(Landroid/net/LinkAddress;)Z
    .locals 0

    .line 3619
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet6Address;

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$HfthCYVp4mRcluMaJUBw6afXnnQ(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onPcoDataChanged$15()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JjEPZeOoK0CHCGApIZ-D1kL1joE(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$tearDownWhenConditionMet$10(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LuKEAd32t3jfUBIwN-HO9gkcDO0(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateSuspendState$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$N90D7rtq1FKgUYT70fk0gcv-Iws(ILcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 4607
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OuyyTJbtYfyimR1lPce7xuU8Fg8(Landroid/net/LinkAddress;)Ljava/lang/Integer;
    .locals 2

    .line 2860
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 2861
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getScope()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2860
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$WjShc6OSDlkpGNNXdPdNouDQ_x8(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 5356
    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p1

    .line 5355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XbOtVrF6z-ddYEf_v5l5c0z4tbI(Ljava/lang/Integer;)Z
    .locals 0

    .line 4120
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_dsVQFb94bdgxXdFq-tadK1ulks(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_fg9l4-yPEaQhBSj3JC1-uuXlEc(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$3(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_v2GH5evZEo3yTu0JPHh-l7sxpI(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 5330
    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p1

    .line 5329
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bDemWd7_dYPmO1x018r6cZ4ayMg(Lcom/android/internal/telephony/data/DataNetwork;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onHandoverResponse$14(JI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f1cGYCkxPNBonOxt7kyVD4qHBoU(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onDetachNetworkRequest$1(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nhyGD01w0d2Bf8nO7C6WTlxLnOo(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onHandoverResponse$13()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qAh2u0VXXaeTRLcU7c-4hnlv7AU(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$4(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xYyXVm5IcKWpj2tGYcz1n0QnYR0(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onDataStateChanged$11(Landroid/telephony/data/DataCallResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xrBLcLMqDyPxjNekHinVjQRqaDs(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateDataNetwork$7()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierPrivilegesCallback:Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataCallResponse;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManagerCallback:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkValidationStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataSettingsManagerCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$HandoverState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSetProcTypeForMms(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkStatus(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreferredDataPhone(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPcoData(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneSwitcher(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQosBearerSessions(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/QosCallbackTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRaTimeOutLogs(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/LocalLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRaTimeOutLogs:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTearDownReason(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTearDownReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/data/DataNetwork;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierPrivilegesCallback:Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierServicePackageUid(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManagerCallback:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataSettingsManagerCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsCancelHandOverPending(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsCancelHandOverPending:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsIpChangeDeactivation(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsIpChangeDeactivation:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSetProcTypeForMms(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeepaliveTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/KeepaliveTracker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastKnownDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastKnownRoamingState(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownRoamingState:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkStatus(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogTag(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMsimSubMode(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkValidationStatus(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOldDatacallListChecked(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOldDatacallListChecked:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnPreferredDataPhone(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/QosCallbackTracker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mStatusT3346:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitDatacallListResponse(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mWaitDatacallListResponse:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mallocatePduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->allocatePduSessionId()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyT3346(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->applyT3346()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndUpdateSuspendForDsda(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->checkAndUpdateSuspendForDsda()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanUpTcpSockets(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->cleanUpTcpSockets()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFailCauseFromDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNetworkRegistrationInfo(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/NetworkRegistrationInfo;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->handleDataNetworkValidationRequest(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDataNetworkValidationRequestResultCode(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->handleDataNetworkValidationRequestResultCode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleErrorDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->handleErrorDataNetworkValidationRequest(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasNetworkSliceCapability(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkSliceCapability()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mneedRegisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->needRegisterListenerForNonDds()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStartHandoverToRIL(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->notifyStartHandoverToRIL(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBandwidthUpdated(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdated(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBandwidthUpdatedFromModem(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdatedFromModem(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataStateChanged(Lcom/android/internal/telephony/data/DataNetwork;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onDataStateChanged(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onDeactivateResponse(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDetachNetworkRequest(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onDetachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onDisplayInfoChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandoverResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->onHandoverResponse(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataChanged(Landroid/telephony/PcoData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataReceived(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataReceived(Landroid/telephony/PcoData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStartHandover(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onStartHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onTearDown(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monVoiceCallStartedForMultiSim(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onVoiceCallStartedForMultiSim()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monVoiceCallendedForMultiSim(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onVoiceCallendedForMultiSim()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForWwanEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerListenerForNonDds()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetProcTypeInfo(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->setProcTypeInfo(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForWwanEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterListenerForNonDds(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterListenerForNonDds()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateMeteredAndCongested(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateSuspendState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smeventToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 15

    const/16 v0, 0xe

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x10

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x11

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x12

    .line 508
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x13

    .line 509
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x14

    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x15

    .line 511
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x18

    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x19

    .line 513
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x1c

    .line 514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x20

    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0xb

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x21

    .line 522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v0, 0x0

    .line 525
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Integer;

    move-result-object v0

    .line 504
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataNetwork;->MUTABLE_CAPABILITIES:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            "Landroid/os/Looper;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/telephony/data/DataProfile;",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            "I",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;",
            "Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p5

    move/from16 v1, p7

    .line 1186
    const-string v2, "DataNetwork"

    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 529
    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    .line 536
    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    .line 543
    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    .line 550
    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    .line 560
    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    .line 567
    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    const/4 v2, 0x0

    .line 592
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    .line 597
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    .line 604
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 626
    new-instance v4, Landroid/util/SparseIntArray;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    .line 636
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    .line 706
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    const/4 v6, -0x1

    .line 718
    iput v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 722
    new-instance v7, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    const/16 v8, 0xe

    invoke-direct {v7, v8, v8}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 734
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    .line 737
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    .line 740
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    .line 750
    new-instance v7, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v7}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 760
    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    .line 767
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 773
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTearDownReason:I

    const-wide/16 v7, -0x1

    .line 779
    iput-wide v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 788
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    .line 821
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    .line 825
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    .line 835
    new-array v7, v2, [I

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    .line 845
    iput v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    .line 863
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 1114
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    .line 1118
    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 1125
    new-instance v3, Lcom/android/internal/telephony/LocalLog;

    const/16 v7, 0x64

    invoke-direct {v3, v7}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRaTimeOutLogs:Lcom/android/internal/telephony/LocalLog;

    .line 1129
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOldDatacallListChecked:Z

    .line 1130
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mWaitDatacallListResponse:Z

    .line 1142
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisabledApnTypeBitMask:I

    .line 1148
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsIpChangeDeactivation:Z

    .line 1152
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsCancelHandOverPending:Z

    .line 1158
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    .line 1190
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->initializeStateMachine()V

    .line 1192
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1193
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1194
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    .line 1195
    iget-object p2, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 1196
    new-instance p2, Landroid/net/LinkProperties;

    invoke-direct {p2}, Landroid/net/LinkProperties;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1197
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 1198
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 1199
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v7, Landroid/net/vcn/VcnManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnManager;

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 1201
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v7

    const/4 v9, 0x1

    if-ne v8, v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    .line 1203
    new-instance v7, Lcom/android/internal/telephony/data/DataNetwork$1;

    .line 1204
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v7, p0, v10}, Lcom/android/internal/telephony/data/DataNetwork$1;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    iput-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 1209
    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1211
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1212
    new-instance v3, Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    .line 1213
    new-instance v3, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    move-object/from16 v3, p9

    .line 1214
    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 1215
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 1216
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1220
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 1223
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    .line 1224
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownRoamingState:Z

    .line 1225
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne v1, v9, :cond_2

    move p1, v9

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    move-object/from16 p1, p8

    .line 1227
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 1228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/DataProfile;->setLastSetupTimestamp(J)V

    .line 1229
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    array-length p2, p1

    move v1, v2

    :goto_2
    if-ge v1, p2, :cond_3

    aget v3, p1, v1

    .line 1230
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1232
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1233
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    .line 1241
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-object/from16 p2, p6

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->addAll(Ljava/util/Collection;)Z

    .line 1244
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisabledApnTypeBitMask:I

    .line 1245
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getKnoxMmsControl()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1246
    iput v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisabledApnTypeBitMask:I

    .line 1247
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    and-int/2addr p1, v5

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisabledApnTypeBitMask:I

    .line 1255
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 1258
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 1259
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1260
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1262
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1263
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    goto :goto_3

    .line 1265
    :cond_5
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 1270
    :cond_6
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mStatusT3346:I

    .line 1273
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNeedDisconnectByDdsChange:Z

    .line 1277
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsAllowInternetCapability:Z

    .line 1278
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInternetCapaChanged:Z

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method private blacklist allocatePduSessionId()V
    .locals 2

    .line 3354
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    .line 3355
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3356
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyAllocatePduSessionIdToRIL(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 3358
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3359
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->allocatePduSessionId(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist applyT3346()V
    .locals 2

    .line 4945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyT3346(): timerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mT3346TimerStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4946
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mT3346TimerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1f

    .line 4947
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    .line 4949
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static blacklist areImmutableCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 3

    .line 2889
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2893
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 2894
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2895
    sget-object v0, Lcom/android/internal/telephony/data/DataNetwork;->MUTABLE_CAPABILITIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2896
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 2897
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2898
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2899
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 2900
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist checkAndUpdateSuspendForDsda()V
    .locals 3

    .line 5070
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5071
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5073
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    .line 5074
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    .line 5075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldMsimSubMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMsimSubMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5076
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 5079
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDdsSim()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notImsOrEmergencyApn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5080
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mMsimSubMode:I

    if-nez v0, :cond_2

    .line 5081
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerListenerForNonDds()V

    goto :goto_1

    .line 5083
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterListenerForNonDds()V

    .line 5087
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateSuspendState()V

    .line 5088
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist cleanUpTcpSockets()V
    .locals 4

    .line 5210
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "HKG"

    const-string v2, "TPE"

    const-string v3, "CHN"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5211
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    if-eqz v0, :cond_2

    .line 5212
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5213
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    if-nez v1, :cond_0

    .line 5214
    const-string v1, "sem_wifi_p2p"

    .line 5215
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 5217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5218
    :cond_1
    const-string v0, "set new permission to destory tcp sockets on this network"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5219
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->setTeardownDelayMillis(I)V

    :cond_2
    return-void
.end method

.method private blacklist createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .locals 11

    .line 1331
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 1332
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1333
    const-string v2, "MOBILE"

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1334
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v2

    .line 1335
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1336
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1337
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1338
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1341
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v2

    .line 1342
    const-string v3, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredReceivers(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1345
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setProvisioningNotificationEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 1349
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1350
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1351
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1355
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->shouldSkip464Xlat()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1356
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setNat64DetectionEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 1360
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkProvider()Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    move-result-object v9

    .line 1362
    new-instance v1, Landroid/net/NetworkScore$Builder;

    invoke-direct {v1}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkScore$Builder;->setKeepConnectedReason(I)Landroid/net/NetworkScore$Builder;

    move-result-object v1

    .line 1366
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    invoke-virtual {v1, v2}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    .line 1367
    invoke-virtual {v1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkScore: isPrimary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v2}, Landroid/net/NetworkScore;->isTransportPrimary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keepConnectedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 1369
    invoke-virtual {v2}, Landroid/net/NetworkScore;->getKeepConnectedReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 1371
    new-instance v3, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 1372
    invoke-virtual {v0}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v8

    new-instance v10, Lcom/android/internal/telephony/data/DataNetwork$2;

    .line 1373
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v10, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$2;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    move-object v6, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-object v3
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 4802
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4800
    :pswitch_1
    const-string p0, "EVENT_OEM_ALLOCATE_PDU_SESSION_ID_RESPONSE"

    return-object p0

    .line 4797
    :pswitch_2
    const-string p0, "EVENT_CARRIER_CHANGED"

    return-object p0

    .line 4794
    :pswitch_3
    const-string p0, "EVENT_PHONE_SERVICE_STATE_CHANGED"

    return-object p0

    .line 4791
    :pswitch_4
    const-string p0, "EVENT_DATA_CONNECTION_T3346_STOP"

    return-object p0

    .line 4790
    :pswitch_5
    const-string p0, "EVENT_DATA_CONNECTION_T3346_START"

    return-object p0

    .line 4788
    :pswitch_6
    const-string p0, "EVENT_DATA_NETWORK_VALIDATION_RESPONSE"

    return-object p0

    .line 4787
    :pswitch_7
    const-string p0, "EVENT_DATA_NETWORK_VALIDATION_REQUESTED"

    return-object p0

    .line 4785
    :pswitch_8
    const-string p0, "EVENT_NOTIFY_HANDOVER_CANCELLED_RESPONSE"

    return-object p0

    .line 4783
    :pswitch_9
    const-string p0, "EVENT_NOTIFY_HANDOVER_STARTED_RESPONSE"

    return-object p0

    .line 4782
    :pswitch_a
    const-string p0, "EVENT_NOTIFY_HANDOVER_STARTED"

    return-object p0

    .line 4781
    :pswitch_b
    const-string p0, "EVENT_CSS_INDICATOR_CHANGED"

    return-object p0

    .line 4780
    :pswitch_c
    const-string p0, "EVENT_VOICE_CALL_ENDED"

    return-object p0

    .line 4779
    :pswitch_d
    const-string p0, "EVENT_VOICE_CALL_STARTED"

    return-object p0

    .line 4778
    :pswitch_e
    const-string p0, "EVENT_WAITING_FOR_TEARING_DOWN_CONDITION_MET"

    return-object p0

    .line 4776
    :pswitch_f
    const-string p0, "EVENT_STUCK_IN_TRANSIENT_STATE"

    return-object p0

    .line 4775
    :pswitch_10
    const-string p0, "EVENT_DEACTIVATE_DATA_NETWORK_RESPONSE"

    return-object p0

    .line 4774
    :pswitch_11
    const-string p0, "EVENT_CARRIER_PRIVILEGED_UIDS_CHANGED"

    return-object p0

    .line 4773
    :pswitch_12
    const-string p0, "EVENT_PCO_DATA_RECEIVED"

    return-object p0

    .line 4772
    :pswitch_13
    const-string p0, "EVENT_SUBSCRIPTION_PLAN_OVERRIDE"

    return-object p0

    .line 4771
    :pswitch_14
    const-string p0, "EVENT_HANDOVER_RESPONSE"

    return-object p0

    .line 4770
    :pswitch_15
    const-string p0, "EVENT_DISPLAY_INFO_CHANGED"

    return-object p0

    .line 4769
    :pswitch_16
    const-string p0, "EVENT_CANCEL_HANDOVER_NO_RESPONSE"

    return-object p0

    .line 4768
    :pswitch_17
    const-string p0, "EVENT_BANDWIDTH_ESTIMATE_FROM_MODEM_CHANGED"

    return-object p0

    .line 4766
    :pswitch_18
    const-string p0, "EVENT_DETACH_ALL_NETWORK_REQUESTS"

    return-object p0

    .line 4765
    :pswitch_19
    const-string p0, "EVENT_DATA_NETWORK_TYPE_REG_STATE_CHANGED"

    return-object p0

    .line 4764
    :pswitch_1a
    const-string p0, "EVENT_DATA_STATE_CHANGED"

    return-object p0

    .line 4763
    :pswitch_1b
    const-string p0, "EVENT_TEAR_DOWN_NETWORK"

    return-object p0

    .line 4762
    :pswitch_1c
    const-string p0, "EVENT_SETUP_DATA_NETWORK_RESPONSE"

    return-object p0

    .line 4761
    :pswitch_1d
    const-string p0, "EVENT_ALLOCATE_PDU_SESSION_ID_RESPONSE"

    return-object p0

    .line 4760
    :pswitch_1e
    const-string p0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 4759
    :pswitch_1f
    const-string p0, "EVENT_DETACH_NETWORK_REQUEST"

    return-object p0

    .line 4758
    :pswitch_20
    const-string p0, "EVENT_ATTACH_NETWORK_REQUEST"

    return-object p0

    .line 4757
    :pswitch_21
    const-string p0, "EVENT_DATA_CONFIG_UPDATED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
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
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getDataNetworkType()I
    .locals 1

    .line 4025
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result p0

    return p0
.end method

.method private blacklist getDataNetworkType(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p0, 0x12

    return p0

    .line 4043
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 4044
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4047
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_0
    const p0, 0x10001

    return p0

    :cond_1
    const p0, 0x10009

    return p0

    :cond_2
    const p0, 0x10002

    return p0

    :cond_3
    const p0, 0x1000a

    return p0

    :cond_4
    if-eqz p2, :cond_5

    .line 3394
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result p0

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .locals 3

    .line 4092
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4093
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get network registration info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4096
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4095
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private blacklist getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;
    .locals 3

    .line 4256
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4257
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4258
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 4259
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkAgentId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 4260
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 4261
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4262
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 4263
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 4264
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 4265
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 4266
    invoke-virtual {v0, p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkValidationStatus(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 4267
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getState()I
    .locals 1

    .line 4212
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4213
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4215
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4217
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4221
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isSuspend()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    .line 4226
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 4228
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .locals 1

    .line 4592
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4596
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleDataNetworkValidationRequest(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4623
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 4624
    const-string v0, "requestNetworkValidation: previous networkValidationRequest is in progress."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 4625
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    const/4 p1, 0x3

    .line 4626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 4630
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    .line 4633
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4634
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4633
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->requestNetworkValidation(ILandroid/os/Message;)V

    .line 4636
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4637
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4638
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->onRequestNetworkValidation(I)V

    .line 4640
    const-string p1, "handleDataNetworkValidationRequest, network validation requested"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleDataNetworkValidationRequestResultCode(I)V
    .locals 2

    .line 4657
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 4658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDataNetworkValidationRequestResultCode, resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4659
    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4658
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4660
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    .line 4661
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4662
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method private blacklist handleErrorDataNetworkValidationRequest(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4645
    const-string v0, "handleErrorDataNetworkValidationRequest: DataNetwork is not in Connected state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 4646
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    const/4 p1, 0x4

    .line 4647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist hasNetworkSliceCapability()Z
    .locals 2

    .line 5439
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_1

    const/16 v1, 0x23

    .line 5440
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x22

    .line 5442
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v0, 0x1d

    .line 5444
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist initializeStateMachine()V
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1288
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 1293
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-void
.end method

.method private blacklist isCurrentDsdaMode()Z
    .locals 2

    .line 4988
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4989
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4990
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isCurrentDsdsMode()Z
    .locals 2

    .line 4978
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4979
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4980
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDdsSim()Z
    .locals 3

    .line 4956
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 4957
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 4958
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 4959
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 4960
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    if-ne v1, p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDsdsModel()Z
    .locals 1

    .line 4997
    const-string p0, "persist.radio.multisim.config"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4998
    const-string v0, "dsds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tsts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private blacklist isIpChangedAfterHandover(Landroid/telephony/data/DataCallResponse;)Z
    .locals 3

    .line 5422
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    if-eqz p1, :cond_2

    .line 5423
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5424
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 5425
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5426
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 5429
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 5

    .line 2852
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2854
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2856
    new-instance v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;

    .line 2858
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    .line 2859
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda24;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Function;)V

    .line 2862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLinkPropertiesCompatible: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2864
    iget-object p0, v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkAddress;

    .line 2865
    iget-object p2, v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2866
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method private blacklist isNetworkTypeUnmetered(I)Z
    .locals 11

    .line 3985
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getSubscriptionPlans()Ljava/util/List;

    move-result-object p0

    .line 3986
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3988
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 3989
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3990
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionPlan;

    .line 3992
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 3993
    invoke-interface {v5, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v5, :cond_2

    .line 3994
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_1

    .line 4001
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    array-length v8, v5

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v5, v9

    if-ne v10, p1, :cond_4

    .line 4003
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide p0

    cmp-long p0, p0, v6

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    return v3
.end method

.method private blacklist isPreciseCallStateAlive(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 5105
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5106
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5107
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSuspend()Z
    .locals 10

    .line 5113
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5114
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 5115
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 5116
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 5117
    const-string v2, "phone"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 5118
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDsdsModel()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isCurrentDsdsMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notImsOrEmergencyApn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5123
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 5125
    invoke-virtual {v5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    move v6, v3

    :goto_0
    if-ge v6, v0, :cond_3

    .line 5127
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 5131
    :try_start_0
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 5133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallStateForSlot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    .line 5134
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 5136
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/data/DataNetwork;->isPreciseCallStateAlive(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/data/DataNetwork;->isPreciseCallStateAlive(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5137
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    return v4

    :catch_0
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5151
    :cond_3
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    .line 5152
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 5153
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v5, :cond_5

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    .line 5155
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isCurrentDsdaMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5159
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5160
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5161
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticSubscription()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5162
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notImsOrEmergencyApn()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    .line 5164
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 5165
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_datacross_slot"

    .line 5164
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 5168
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq v0, v1, :cond_6

    return v4

    .line 5178
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_7

    .line 5179
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    return p0

    .line 5183
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8

    return v3

    .line 5186
    :cond_8
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 5188
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    return v4

    .line 5192
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 5193
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5194
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v0, :cond_a

    move v3, v4

    :cond_a
    return v3

    .line 5198
    :cond_b
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mStatusT3346:I

    if-ne p0, v4, :cond_c

    return v4

    :cond_c
    return v3
.end method

.method private synthetic blacklist lambda$onAttachNetworkRequests$0(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .locals 1

    .line 2707
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 2708
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onAttachFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataStateChanged$11(Landroid/telephony/data/DataCallResponse;)Z
    .locals 1

    .line 3760
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$onDetachNetworkRequest$1(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 0

    .line 2739
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHandoverResponse$13()V
    .locals 1

    .line 4442
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHandoverResponse$14(JI)V
    .locals 6

    .line 4495
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$15()V
    .locals 1

    .line 4526
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$tearDownWhenConditionMet$10(I)V
    .locals 0

    .line 3739
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDataNetwork$7()V
    .locals 2

    .line 3428
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 3429
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$3(Ljava/lang/Integer;)Z
    .locals 1

    .line 2965
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2968
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xc

    if-eq p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$4(Ljava/lang/Integer;)Z
    .locals 0

    .line 3084
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$5()V
    .locals 1

    .line 3254
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 3255
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSuspendState$6()V
    .locals 2

    .line 3338
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 3

    .line 4870
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4871
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist needRegisterListenerForNonDds()Z
    .locals 3

    .line 5005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRegisterListenerForNonDds(), conditions values : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDsdsModel()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5006
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isCurrentDsdsMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDdsSim()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notImsOrEmergencyApn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5005
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5007
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDsdsModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isCurrentDsdsMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDdsSim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notImsOrEmergencyApn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist notImsOrEmergencyApn()Z
    .locals 2

    .line 4972
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v0, 0xa

    .line 4973
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist notifyAllocatePduSessionIdToRIL(Landroid/os/Message;)V
    .locals 4

    .line 5450
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5451
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x9

    .line 5452
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x16

    .line 5453
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 5454
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5455
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5457
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5458
    const-string p1, "notifyAllocatePduSessionId"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5459
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 5450
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5460
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAllocatePduSessionIdToRIL: Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyPreciseDataConnectionState()V
    .locals 3

    .line 4279
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v0

    .line 4280
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    if-eqz v1, :cond_1

    .line 4281
    invoke-virtual {v1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 4282
    invoke-virtual {v1}, Landroid/telephony/PreciseDataConnectionState;->getNetworkValidationStatus()I

    move-result v1

    .line 4283
    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getNetworkValidationStatus()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 4284
    invoke-virtual {v1}, Landroid/telephony/PreciseDataConnectionState;->getNetId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getNetId()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4285
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 4286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPreciseDataConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 4287
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private blacklist notifyStartHandoverToRIL(II)V
    .locals 4

    .line 5403
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5404
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x9

    .line 5405
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x15

    .line 5406
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x6

    .line 5407
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5408
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5409
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5410
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set StartHandover"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string p2, "Start handover"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p2, "Cancel handover"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5414
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 5403
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5415
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyStartHandoverToRIL: Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onBandwidthUpdated(II)V
    .locals 2

    .line 3868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBandwidthUpdated: downlinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uplinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3870
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 3875
    iget p2, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    :cond_0
    if-ne p1, v1, :cond_1

    .line 3880
    iget p1, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    .line 3884
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3885
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 3887
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist onBandwidthUpdatedFromModem(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 3841
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3842
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3845
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/LinkCapacityEstimate;

    .line 3846
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3847
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v0

    .line 3848
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v1

    goto :goto_2

    .line 3850
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    if-eqz v3, :cond_3

    .line 3851
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 3855
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LinkCapacityEstimate type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3852
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v3

    add-int/2addr v0, v3

    .line 3853
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 3858
    :cond_4
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdated(II)V

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .locals 1

    .line 3827
    const-string v0, "onCarrierConfigUpdated"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3829
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateBandwidthFromDataConfig()V

    .line 3830
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateTcpBufferSizes()V

    .line 3831
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method private blacklist onDataStateChanged(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 3754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 3755
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 3759
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3760
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3761
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v2, 0x0

    .line 3762
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const v5, 0x1000b

    .line 3763
    const-string v6, " data service."

    if-eqz p1, :cond_4

    .line 3764
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p1, p2}, Landroid/telephony/data/DataCallResponse;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3766
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V

    .line 3767
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    .line 3768
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result p2

    if-eqz p2, :cond_1

    .line 3769
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    .line 3770
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    goto :goto_0

    .line 3772
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataStateChanged: PDN inactive reported by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3773
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3772
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3775
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v5

    .line 3776
    :cond_2
    iput v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3777
    iput-wide v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 3778
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 3782
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOldDatacallListChecked:Z

    if-nez p1, :cond_b

    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOldDatacallListChecked:Z

    return-void

    .line 3789
    :cond_4
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOldDatacallListChecked:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3790
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mWaitDatacallListResponse:Z

    if-nez p1, :cond_5

    .line 3791
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataStateChanged: request data call list check. responseList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3792
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    const/16 p2, 0x24

    .line 3793
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->requestDataCallList(Landroid/os/Message;)V

    .line 3794
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mWaitDatacallListResponse:Z

    return-void

    .line 3796
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataStateChanged: wait for response of request data call list. responseList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void

    .line 3803
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    if-nez p1, :cond_7

    .line 3804
    const-string p1, "onDataStateChanged: response and mDataCallResponse both null, do nothing."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void

    .line 3808
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDataStateChanged: PDN disconnected reported by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3809
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3808
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3815
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_1
    move v5, p2

    goto :goto_2

    :cond_8
    const v5, 0x10004

    goto :goto_2

    .line 3816
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-eq p1, v0, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    iput v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3818
    iput-wide v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 3819
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private blacklist onDeactivateResponse(I)V
    .locals 2

    .line 3643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeactivateResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3644
    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3643
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3646
    const-string p1, "Remove network since deactivate request returned an error."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const p1, 0x10001

    .line 3647
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3648
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 3649
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove network on deactivate data response on old HAL "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3651
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3650
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const p1, 0x10004

    .line 3652
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3653
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_1
    return-void
.end method

.method private blacklist onDetachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V
    .locals 2

    .line 2721
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2722
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2723
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->setProcTypeInfo(Z)V

    .line 2724
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2731
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 2732
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v0, 0x0

    .line 2733
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    if-eqz p2, :cond_1

    .line 2738
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2743
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2744
    const-string p1, "All network requests are detached."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2750
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 2751
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2752
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/16 p1, 0x1e

    .line 2753
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    :cond_2
    return-void
.end method

.method private blacklist onDisplayInfoChanged()V
    .locals 1

    .line 3895
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 3896
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateBandwidthFromDataConfig()V

    .line 3897
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateTcpBufferSizes()V

    .line 3898
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method private blacklist onHandoverResponse(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 6

    .line 4400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandoverResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 4402
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    const/4 p1, -0x1

    .line 4403
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V

    .line 4404
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 4407
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->isIpChangedAfterHandover(Landroid/telephony/data/DataCallResponse;)Z

    move-result p1

    .line 4411
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 4414
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    if-eqz v0, :cond_1

    .line 4417
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4418
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyReleasePduSessionIdToRIL(Landroid/os/Message;I)V

    goto :goto_0

    .line 4420
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-interface {v0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->releasePduSessionId(Landroid/os/Message;I)V

    .line 4426
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DN-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4429
    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v2, v3, :cond_2

    const-string v2, "C"

    goto :goto_1

    :cond_2
    const-string v2, "I"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    .line 4432
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 4433
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    .line 4434
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-eq v0, v3, :cond_3

    .line 4435
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForWwanEvents()V

    goto :goto_2

    .line 4438
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForWwanEvents()V

    :goto_2
    if-eqz p3, :cond_4

    .line 4440
    invoke-virtual {p3, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 4441
    :cond_4
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 4444
    iget p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne p3, v1, :cond_5

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    if-nez p3, :cond_5

    .line 4445
    const-string p3, "mDataCallResponse initialized."

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4446
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    :cond_5
    if-eqz p1, :cond_e

    .line 4452
    const-string p1, "IP_ADDRESS_MISMATCH delay deactivate target data call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/16 p1, 0x25

    const-wide/16 p2, 0x12c

    .line 4453
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 4455
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsIpChangeDeactivation:Z

    goto/16 :goto_7

    .line 4462
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v3, :cond_8

    .line 4463
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4464
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/data/DataNetwork;->notifyStartHandoverToRIL(II)V

    .line 4465
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyReleasePduSessionIdToRIL(Landroid/os/Message;I)V

    goto :goto_3

    .line 4467
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-interface {v0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->releasePduSessionId(Landroid/os/Message;I)V

    .line 4477
    :cond_8
    :goto_3
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    const/16 v2, 0x45

    if-eq v0, v2, :cond_9

    const/16 v2, -0x22

    if-eq v0, v2, :cond_9

    .line 4479
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/16 v3, 0x1b

    .line 4480
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4479
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/data/DataServiceManager;->cancelHandover(ILandroid/os/Message;)V

    .line 4481
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 4482
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0xc

    .line 4481
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_4

    .line 4484
    :cond_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsCancelHandOverPending:Z

    :goto_4
    if-eqz p2, :cond_a

    .line 4487
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v2

    goto :goto_5

    :cond_a
    const-wide/16 v2, -0x1

    :goto_5
    if-eqz p2, :cond_b

    .line 4491
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result p1

    :cond_b
    if-eqz p3, :cond_c

    .line 4493
    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 4494
    :cond_c
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataNetwork;JI)V

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_d

    .line 4497
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    goto :goto_6

    :cond_d
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    :goto_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->trackHandoverFailure(I)V

    .line 4501
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist onPcoDataChanged(Landroid/telephony/PcoData;)V
    .locals 4

    .line 4524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4525
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 4527
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4528
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4529
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4530
    const-string v3, "android.telephony.extra.APN_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4531
    iget-object v1, p1, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    .line 4532
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v1

    .line 4531
    const-string v3, "android.telephony.extra.APN_PROTOCOL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4533
    const-string v1, "android.telephony.extra.PCO_ID"

    iget v3, p1, Landroid/telephony/PcoData;->pcoId:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4534
    const-string v1, "android.telephony.extra.PCO_VALUE"

    iget-object v3, p1, Landroid/telephony/PcoData;->contents:[B

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4535
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist onPcoDataReceived(Landroid/telephony/PcoData;)V
    .locals 3

    .line 4549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoDataReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4550
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    iget v1, p1, Landroid/telephony/PcoData;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p1, Landroid/telephony/PcoData;->pcoId:I

    .line 4551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PcoData;

    .line 4552
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4553
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4554
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataChanged(Landroid/telephony/PcoData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onStartHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 13

    .line 4329
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, p1, :cond_1

    .line 4330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartHandover: The network is already on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 4331
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", handover is not needed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4330
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    .line 4333
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_0
    return-void

    .line 4340
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v4

    .line 4345
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4346
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    move v5, v0

    .line 4348
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    .line 4349
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 4350
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 4351
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4352
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 4353
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4355
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v9

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 4356
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v10

    const/4 v11, 0x0

    .line 4354
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4359
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 4360
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4361
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 4362
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    .line 4361
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 4363
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4364
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    .line 4365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Used different data profile for handover. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4369
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start handover from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4370
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4369
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 4372
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4373
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4375
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    move v10, v8

    const/4 v8, 0x3

    move v9, p1

    .line 4373
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/data/CidManager;->allocateCid(Landroid/telephony/data/DataProfile;IIII)I

    move-result p1

    .line 4376
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/data/DataProfile;->setCid(I)V

    goto :goto_2

    :cond_5
    move v9, p1

    .line 4380
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 4381
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    iget v8, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 4384
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v10

    const/16 p1, 0xf

    .line 4385
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    const/4 v6, 0x3

    const/4 v11, 0x1

    .line 4380
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/data/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 4387
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->onHandoverAttempted()V

    return-void
.end method

.method private blacklist onTearDown(I)V
    .locals 5

    .line 3671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTearDown: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3675
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    .line 3676
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    .line 3677
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3679
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3682
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/16 v3, 0x19

    if-ne p1, v3, :cond_3

    const/4 v3, 0x5

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    const/16 v4, 0x13

    .line 3689
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3682
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 3690
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->setDeactivateDataCallReason(I)V

    .line 3691
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    return-void
.end method

.method private blacklist onVoiceCallStartedForMultiSim()V
    .locals 4

    .line 5313
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 5314
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 5315
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 5316
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 5317
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5321
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v2

    .line 5322
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getAnyDataNetworkExisting()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 5324
    const-string v0, "onVoiceCallStarted DDS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5326
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getAllDataNetworks()Ljava/util/List;

    move-result-object p0

    .line 5327
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda17;-><init>()V

    .line 5328
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda18;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 5329
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private blacklist onVoiceCallendedForMultiSim()V
    .locals 4

    .line 5339
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 5340
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 5341
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 5342
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 5343
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5347
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v2

    .line 5348
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getAnyDataNetworkExisting()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 5350
    const-string v0, "onVoiceCallStarted DDS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5352
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getAllDataNetworks()Ljava/util/List;

    move-result-object p0

    .line 5353
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda19;-><init>()V

    .line 5354
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 5355
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private blacklist recreateNetworkAgent()V
    .locals 2

    .line 2908
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2914
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->abandon()V

    .line 2917
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 2918
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 2919
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    .line 2922
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz v0, :cond_1

    .line 2923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recreateNetworkAgent: The network is in suspended state. Update the network capability again. nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2925
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_1
    return-void

    .line 2909
    :cond_2
    :goto_0
    const-string v0, "Incorrect state for re-creating the network agent."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForBandwidthUpdate()V
    .locals 4

    .line 2778
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2781
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2780
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2783
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-nez v0, :cond_1

    .line 2784
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$3;

    .line 2785
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$3;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 2794
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    .line 2797
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_1

    const/16 v2, 0xc

    .line 2798
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2799
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateNetworkStateConnected(Z)V

    :cond_1
    return-void

    .line 2804
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth source configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForWwanEvents()V
    .locals 0

    .line 2622
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForBandwidthUpdate()V

    .line 2623
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->registerForKeepaliveStatus()V

    return-void
.end method

.method private blacklist registerListenerForNonDds()V
    .locals 8

    .line 5019
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5020
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 5021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListenerForNonDds(), SimNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5023
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 5024
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5027
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    const/16 v4, 0x17

    const/16 v5, 0x16

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 5028
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5030
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v7, v4, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5033
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5034
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5035
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5037
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist removeUnsatisfiedNetworkRequests(Z)V
    .locals 4

    .line 2832
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2833
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUnsatisfiedNetworkRequests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be satisfied anymore. Will be detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork;->detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4829
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 4830
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setProcTypeInfo(Z)V
    .locals 4

    .line 5497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProcTypeInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "NAS_PROC_TYPE_IMS_MMS"

    goto :goto_0

    :cond_0
    const-string v1, "NAS_PROC_TYPE_NONE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5498
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v0, :cond_1

    .line 5500
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->sendMmsProcType(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProcTypeInfo: failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 5505
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5506
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x9

    .line 5507
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x18

    .line 5508
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 5509
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 5511
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5512
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5513
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 5505
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1

    .line 5514
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProcTypeInfo: exception occured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private blacklist shouldSkip464Xlat()Z
    .locals 3

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1

    .line 1314
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1316
    const-string v0, "nc must not be null. Timing issue occurs"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x4

    .line 1320
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xc

    .line 1321
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static blacklist tearDownReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 4744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4742
    :pswitch_0
    const-string p0, "TEAR_DOWN_REASON_IMS_UNREGISTERED"

    return-object p0

    .line 4739
    :pswitch_1
    const-string p0, "TEAR_DOWN_REASON_KNOX_MMS_CONTROL"

    return-object p0

    .line 4737
    :pswitch_2
    const-string p0, "TEAR_DOWN_REASON_DATA_NETWORK_TRANSPORT_NOT_ALLOWED"

    return-object p0

    .line 4735
    :pswitch_3
    const-string p0, "TEAR_DOWN_REASON_DATA_LIMIT_REACHED"

    return-object p0

    .line 4734
    :pswitch_4
    const-string p0, "TEAR_DOWN_REASON_PREFERRED_DATA_SWITCHED"

    return-object p0

    .line 4732
    :pswitch_5
    const-string p0, "TEAR_DOWN_REASON_ONLY_ALLOWED_SINGLE_NETWORK"

    return-object p0

    .line 4730
    :pswitch_6
    const-string p0, "TEAR_DOWN_REASON_ILLEGAL_STATE"

    return-object p0

    .line 4729
    :pswitch_7
    const-string p0, "TEAR_DOWN_REASON_NOT_ALLOWED_BY_POLICY"

    return-object p0

    .line 4728
    :pswitch_8
    const-string p0, "TEAR_DOWN_REASON_DATA_PROFILE_NOT_PREFERRED"

    return-object p0

    .line 4726
    :pswitch_9
    const-string p0, "TEAR_DOWN_REASON_DATA_PROFILE_INVALID"

    return-object p0

    .line 4725
    :pswitch_a
    const-string p0, "TEAR_DOWN_REASON_DATA_THROTTLED"

    return-object p0

    .line 4724
    :pswitch_b
    const-string p0, "TEAR_DOWN_REASON_RETRY_SCHEDULED"

    return-object p0

    .line 4723
    :pswitch_c
    const-string p0, "TEAR_DOWN_REASON_CDMA_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 4721
    :pswitch_d
    const-string p0, "TEAR_DOWN_REASON_NO_SUITABLE_DATA_PROFILE"

    return-object p0

    .line 4719
    :pswitch_e
    const-string p0, "TEAR_DOWN_REASON_PENDING_TEAR_DOWN_ALL"

    return-object p0

    .line 4718
    :pswitch_f
    const-string p0, "TEAR_DOWN_REASON_DATA_CONFIG_NOT_READY"

    return-object p0

    .line 4717
    :pswitch_10
    const-string p0, "TEAR_DOWN_REASON_NOT_IN_SERVICE"

    return-object p0

    .line 4716
    :pswitch_11
    const-string p0, "TEAR_DOWN_REASON_DEFAULT_DATA_UNSELECTED"

    return-object p0

    .line 4714
    :pswitch_12
    const-string p0, "TEAR_DOWN_REASON_VOPS_NOT_SUPPORTED"

    return-object p0

    .line 4713
    :pswitch_13
    const-string p0, "TEAR_DOWN_REASON_VCN_REQUESTED"

    return-object p0

    .line 4712
    :pswitch_14
    const-string p0, "TEAR_DOWN_REASON_HANDOVER_NOT_ALLOWED"

    return-object p0

    .line 4711
    :pswitch_15
    const-string p0, "TEAR_DOWN_REASON_HANDOVER_FAILED"

    return-object p0

    .line 4710
    :pswitch_16
    const-string p0, "TEAR_DOWN_REASON_DATA_STALL"

    return-object p0

    .line 4709
    :pswitch_17
    const-string p0, "TEAR_DOWN_REASON_POWER_OFF_BY_CARRIER"

    return-object p0

    .line 4708
    :pswitch_18
    const-string p0, "TEAR_DOWN_REASON_DATA_SERVICE_NOT_READY"

    return-object p0

    .line 4706
    :pswitch_19
    const-string p0, "TEAR_DOWN_REASON_SERVICE_OPTION_NOT_SUPPORTED"

    return-object p0

    .line 4704
    :pswitch_1a
    const-string p0, "TEAR_DOWN_REASON_CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    return-object p0

    .line 4702
    :pswitch_1b
    const-string p0, "TEAR_DOWN_REASON_ROAMING_DISABLED"

    return-object p0

    .line 4701
    :pswitch_1c
    const-string p0, "TEAR_DOWN_REASON_RAT_NOT_ALLOWED"

    return-object p0

    .line 4700
    :pswitch_1d
    const-string p0, "TEAR_DOWN_REASON_NO_LIVE_REQUEST"

    return-object p0

    .line 4699
    :pswitch_1e
    const-string p0, "DATA_DISABLED"

    return-object p0

    .line 4698
    :pswitch_1f
    const-string p0, "AIRPLANE_MODE_ON"

    return-object p0

    .line 4697
    :pswitch_20
    const-string p0, "SIM_REMOVAL"

    return-object p0

    .line 4696
    :pswitch_21
    const-string p0, "CONNECTIVITY_SERVICE_UNWANTED"

    return-object p0

    .line 4695
    :pswitch_22
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private blacklist trackHandoverFailure(I)V
    .locals 2

    .line 4511
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v0

    .line 4512
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v1

    .line 4513
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result v1

    .line 4515
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onHandoverFailure(III)V

    return-void
.end method

.method private blacklist unregisterForBandwidthUpdate()V
    .locals 3

    .line 2812
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2814
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLceInfo(Landroid/os/Handler;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2816
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-eqz v0, :cond_1

    .line 2817
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 2818
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    const/4 v0, 0x0

    .line 2819
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    :cond_1
    return-void

    .line 2822
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth source configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unregisterForWwanEvents()V
    .locals 0

    .line 2630
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForBandwidthUpdate()V

    .line 2631
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->unregisterForKeepaliveStatus()V

    return-void
.end method

.method private blacklist unregisterListenerForNonDds()V
    .locals 5

    .line 5046
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5047
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5049
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 5050
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5052
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5053
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 5054
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 5057
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5059
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 5060
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist updateBandwidthFromDataConfig()V
    .locals 2

    .line 3906
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 3909
    :cond_0
    const-string v0, "updateBandwidthFromDataConfig"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3910
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 3911
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 3408
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3409
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 3412
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 3415
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 3416
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    .line 3417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDU session id updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3421
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 3422
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 3423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link status updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3428
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda26;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 3434
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3435
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 3436
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr/pl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 3438
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 3442
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no address for ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3446
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3447
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 3448
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3449
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    .line 3453
    :cond_7
    const-string v1, "Empty dns response"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3457
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3458
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 3459
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    goto :goto_2

    .line 3464
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v1

    :goto_3
    if-gtz v1, :cond_c

    .line 3468
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3469
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v1

    :cond_b
    if-gtz v1, :cond_c

    .line 3472
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result v1

    .line 3477
    :cond_c
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    :goto_4
    if-gtz v2, :cond_f

    .line 3480
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3481
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v2

    :cond_e
    if-gtz v2, :cond_f

    .line 3484
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result v2

    .line 3489
    :cond_f
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/net/InetAddress;

    .line 3490
    instance-of v4, v7, Ljava/net/Inet6Address;

    if-eqz v4, :cond_10

    move v10, v2

    goto :goto_6

    :cond_10
    move v10, v1

    .line 3491
    :goto_6
    new-instance v5, Landroid/net/RouteInfo;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_5

    .line 3498
    :cond_11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 3500
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3501
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3502
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    const/16 v1, 0x1f90

    .line 3506
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3507
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 3506
    invoke-static {v2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 3508
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 3511
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 3515
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3516
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3518
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDefaultQos()Landroid/telephony/data/Qos;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 3520
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3529
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3530
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3531
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_14

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    .line 3532
    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3533
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onQosSessionsChanged(Ljava/util/List;)V

    .line 3536
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3538
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3539
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3540
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    if-eqz v1, :cond_16

    .line 3541
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    .line 3545
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 3548
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3549
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 3550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetwork: Incompatible link properties detected. Re-create the network agent. Changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3554
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3555
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->recreateNetworkAgent()V

    goto :goto_7

    .line 3557
    :cond_18
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3559
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 3563
    :cond_19
    :goto_7
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 3564
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getNetworkValidationStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateValidationStatus(I)V

    return-void
.end method

.method private blacklist updateMeteredAndCongested()V
    .locals 7

    .line 3933
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 3934
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    .line 3944
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: networkType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3945
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3944
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3947
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isTempNotMeteredSupportedByCarrier()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    xor-int/lit8 v1, v3, 0x1

    .line 3948
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    .line 3950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mTempNotMeteredSupported changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 3953
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3954
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 3953
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/data/DataConfigManager;->isNetworkTypeUnmetered(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 3955
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getUnmeteredOverrideNetworkTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3956
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->isNetworkTypeUnmetered(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v4, v2

    .line 3957
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eq v4, v3, :cond_5

    .line 3958
    iput-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    .line 3960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mTempNotMetered changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    move v1, v2

    .line 3962
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getCongestedOverrideNetworkTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    if-eq v3, v4, :cond_6

    xor-int/lit8 v1, v4, 0x1

    .line 3964
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    .line 3966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mCongested changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    if-eqz v2, :cond_7

    .line 3969
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 3971
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3973
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onUnmeteredUpdate(I)V

    :cond_8
    return-void
.end method

.method private blacklist updateNetworkCapabilities()V
    .locals 11

    .line 2940
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 2942
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2943
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2944
    const-string v1, "transport satellite is set"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 2945
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_0

    .line 2947
    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2950
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 2952
    new-instance v3, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    .line 2953
    invoke-virtual {v3, v4}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v3

    .line 2952
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    .line 2954
    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 2956
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 2960
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v6

    .line 2961
    iget v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisabledApnTypeBitMask:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2962
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;

    invoke-direct {v7}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;-><init>()V

    .line 2964
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2965
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 2970
    new-instance v7, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda6;-><init>(Landroid/net/NetworkCapabilities$Builder;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2971
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v6

    const/16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2972
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2977
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsAllowInternetCapability:Z

    .line 2978
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->allowInternetCapability(Landroid/telephony/data/ApnSetting;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsAllowInternetCapability:Z

    if-nez v3, :cond_2

    .line 2982
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2987
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsAllowInternetCapability:Z

    if-eq v6, v3, :cond_3

    .line 2988
    iput-boolean v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInternetCapaChanged:Z

    :cond_3
    const/16 v3, 0x21

    .line 2996
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkCapabilityInNetworkRequests(I)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_4

    .line 2998
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_1

    .line 2999
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v6, v7}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3003
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3004
    iget v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v6, v5, :cond_6

    .line 3005
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 3007
    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3009
    invoke-virtual {v6}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3010
    invoke-virtual {v6}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v8

    if-nez v8, :cond_5

    .line 3011
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3013
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkCapabilities: dsri="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3019
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/data/TrafficDescriptor;

    .line 3021
    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 3022
    :cond_7
    new-instance v8, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    .line 3023
    invoke-virtual {v8}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v9

    sget-object v10, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v9, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 3024
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received non-Android OS id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_3

    .line 3028
    :cond_8
    invoke-virtual {v8}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v9

    .line 3027
    invoke-static {v9}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilityFromString(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_a

    const/16 v10, 0x1d

    if-eq v9, v10, :cond_9

    const/16 v10, 0x22

    if-eq v9, v10, :cond_a

    const/16 v10, 0x23

    if-eq v9, v10, :cond_a

    .line 3042
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid app id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 3031
    :cond_9
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3033
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3034
    invoke-virtual {v8}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getDifferentiator()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    goto/16 :goto_2

    .line 3039
    :cond_a
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 3045
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Failed to create osAppId from "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/math/BigInteger;

    .line 3046
    invoke-virtual {v6}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v6

    invoke-direct {v8, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3045
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3050
    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    if-nez v3, :cond_c

    const/16 v3, 0x14

    .line 3051
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3054
    :cond_c
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eqz v3, :cond_d

    const/16 v3, 0x19

    .line 3055
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_d
    const/16 v3, 0x1c

    .line 3060
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3061
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetwork;->getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3062
    invoke-virtual {v4}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 3063
    invoke-virtual {v6, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_e

    .line 3064
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_e
    if-nez v1, :cond_f

    const/16 v3, 0x12

    .line 3068
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3071
    :cond_f
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-nez v3, :cond_10

    const/16 v3, 0x15

    .line 3072
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3075
    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_11

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    .line 3076
    invoke-static {v6, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3077
    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3078
    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setAllowedUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 3080
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 3082
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3083
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getMeteredNetworkCapabilities(Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3084
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3086
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3087
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 3088
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v6

    .line 3089
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {v8, v6}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Ljava/util/Set;)V

    .line 3087
    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xb

    .line 3092
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_12
    const/16 v3, 0xd

    .line 3097
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3101
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3102
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 3105
    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result v6

    if-nez v6, :cond_19

    .line 3111
    :cond_13
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v6, v8, :cond_14

    .line 3112
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_5

    .line 3113
    :cond_14
    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v6, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v6, v8, :cond_15

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v6, v8, :cond_19

    .line 3118
    :cond_15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_17

    .line 3122
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v9, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v8, v9, :cond_16

    :cond_17
    if-ne v6, v5, :cond_18

    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v9, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v8, v9, :cond_18

    goto :goto_4

    .line 3129
    :cond_18
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_4

    .line 3134
    :cond_19
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3135
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3138
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "KOR"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3139
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3140
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3141
    const-string v1, "Remove NOT_RESTRICTED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3180
    :cond_1b
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v4, :cond_1d

    .line 3181
    invoke-virtual {v4}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 3182
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3183
    :cond_1c
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3187
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v1, v1, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3188
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v1, v1, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3191
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3196
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    .line 3197
    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3198
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 3197
    invoke-virtual {v1, v4, v6}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteDataServicePolicyForPlmn(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f

    if-eq v1, v5, :cond_1e

    goto :goto_6

    :cond_1e
    const/16 v1, 0x25

    .line 3208
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 3204
    :cond_1f
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 3216
    :catch_1
    :cond_20
    :goto_6
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 3217
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_27

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    if-nez v3, :cond_21

    goto/16 :goto_9

    .line 3226
    :cond_21
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 3231
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->areImmutableCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3232
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3236
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkCapabilities: Immutable capabilities changed. Re-create the network agent. Attempted to change from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3239
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3240
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->recreateNetworkAgent()V

    goto :goto_7

    .line 3244
    :cond_23
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 3252
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    move v2, v5

    .line 3253
    :cond_25
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->removeUnsatisfiedNetworkRequests(Z)V

    .line 3254
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 3257
    :cond_26
    const-string v0, "updateNetworkCapabilities: Capabilities not changed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    :goto_8
    return-void

    .line 3221
    :cond_27
    :goto_9
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateNetworkScore()V
    .locals 1

    .line 4064
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore(Z)V

    return-void
.end method

.method private blacklist updateNetworkScore(Z)V
    .locals 2

    .line 4075
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v0}, Landroid/net/NetworkScore;->getKeepConnectedReason()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 4076
    invoke-virtual {v0}, Landroid/net/NetworkScore;->isTransportPrimary()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4077
    :cond_1
    :goto_0
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 4078
    invoke-virtual {v0, p1}, Landroid/net/NetworkScore$Builder;->setKeepConnectedReason(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    .line 4079
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    .line 4080
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 4081
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->sendNetworkScore(Landroid/net/NetworkScore;)V

    .line 4082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetworkScore: isPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v1}, Landroid/net/NetworkScore;->isTransportPrimary()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keepConnectedForHandover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateSuspendState()V
    .locals 3

    .line 3289
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3317
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isSuspend()Z

    move-result v0

    .line 3318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSuspendedState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSuspended : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3322
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eq v1, v0, :cond_4

    .line 3323
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    .line 3325
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mStatusT3346:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T3346 is true, setDetailedState to suspended, isConnected() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3327
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3326
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T3346 is false, setDetailedState to connected, isConnected() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3329
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3333
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network becomes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz v1, :cond_3

    const-string v1, "suspended"

    goto :goto_1

    :cond_3
    const-string v1, "unsuspended"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3335
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 3336
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    .line 3337
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist updateTcpBufferSizes()V
    .locals 2

    .line 3918
    const-string v0, "updateTcpBufferSizes"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3919
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    .line 3920
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 3921
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 3922
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3923
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3925
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_0
    return-void
.end method

.method private blacklist updateValidationStatus(I)V
    .locals 2

    .line 4675
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    if-eq v0, p1, :cond_0

    .line 4676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateValidationStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4677
    invoke-static {p1}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4676
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4679
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 4682
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 4683
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result p0

    .line 4682
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->onUpdateNetworkValidationState(II)V

    return-void
.end method

.method private blacklist validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V
    .locals 4

    if-eqz p1, :cond_9

    .line 3576
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3577
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v0

    if-nez v0, :cond_8

    .line 3579
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 3580
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3582
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 3583
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    .line 3584
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 3585
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 3586
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 3588
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    .line 3590
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DataCallResponse:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3591
    const-string v0, "Invalid DataCallResponse detected"

    const-string v3, "1f273e9d-b09c-46eb-ad1c-421d01f61164"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eq p2, v2, :cond_9

    .line 3596
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3597
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_3

    move p2, v3

    goto :goto_0

    :cond_3
    move p2, v2

    .line 3600
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v2, v3

    :cond_4
    if-ne p2, v2, :cond_9

    if-eqz v2, :cond_5

    .line 3603
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result p2

    goto :goto_1

    .line 3604
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result p2

    .line 3606
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v3, :cond_6

    .line 3607
    const-string v0, "RIL"

    goto :goto_2

    :cond_6
    const-string v0, "IWLAN data service"

    .line 3608
    :goto_2
    const-string v1, "7744f920-fb64-4db0-ba47-de0eae485a82"

    if-nez p2, :cond_7

    .line 3609
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda27;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DataCallResponse. Requested IPv4 but didn\'t get an IPv4 address."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reported mismatched IP type. Requested IPv4 but didn\'t get an IPv4 address."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    if-ne p2, v3, :cond_9

    .line 3618
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda28;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda28;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DataCallResponse. Requested IPv6 but didn\'t get an IPv6 address."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3622
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reported mismatched IP type. Requested IPv6 but didn\'t get an IPv6 address."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3629
    :cond_8
    invoke-static {v0}, Landroid/telephony/DataFailCause;->isFailCauseExisting(I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 3630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DataFailCause in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid DataFailCause: (0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "6b264f28-9f58-4cbd-9e0e-d7624ba30879"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public blacklist allowInternetCapability(Landroid/telephony/data/ApnSetting;)Z
    .locals 9

    .line 5229
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5230
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v3

    .line 5231
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    .line 5232
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v5

    .line 5239
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v6

    .line 5240
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledForReason(I)Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_1

    .line 5242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowInternetCapability(): UserDataEnable - false, IsAllowInternetCapability="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    :goto_1
    move p1, v1

    goto/16 :goto_2

    .line 5245
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 5246
    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result v6

    if-nez v6, :cond_2

    .line 5248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowInternetCapability():[roaming status] getDataRoamingEnabled - false,IsAllowInternetCapability="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5251
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v6

    const/16 v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowInternetCapability():apnName - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has not DEFAULT type, IsAllowInternetCapability="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5256
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v6, :cond_5

    if-nez v0, :cond_5

    if-eqz v5, :cond_5

    .line 5260
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getRequestOverridePhoneId()I

    move-result v0

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-ne v0, v6, :cond_5

    .line 5261
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getAutoDataSubId()I

    move-result p1

    .line 5262
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    if-eq p1, v7, :cond_4

    .line 5263
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 5264
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_6

    .line 5266
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowInternetCapability():[LSI L+L] data cross happens, IsAllowInternetCapability="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5272
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object p1

    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 5274
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 5275
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 5276
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5277
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    .line 5278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "cdma"

    .line 5279
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 5280
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 5281
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllowInternetCapability : preferredApnName: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", apnName: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5284
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    :cond_6
    move p1, v2

    :goto_2
    if-eqz p1, :cond_9

    if-eq v3, v7, :cond_9

    .line 5293
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 5295
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq v3, v0, :cond_9

    .line 5297
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    const/16 v3, 0xc

    .line 5298
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    .line 5303
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowInternetCapability(): Check NET_CAPABILITY_INTERNET of AttachedNetworkRequestList, IsAllowInternetCapability="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return v1

    :cond_9
    return p1
.end method

.method public blacklist attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .locals 1

    .line 2657
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2661
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkAndInitInternetCapaChanged()Z
    .locals 2

    .line 5522
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInternetCapaChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5523
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInternetCapaChanged:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public blacklist detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V
    .locals 2

    .line 2767
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 2770
    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 4882
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4883
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4885
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnPreferredDataPhone="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTransport="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4889
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastKnownDataNetworkType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    .line 4890
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4889
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4891
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WWAN cid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4892
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WLAN cid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4893
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkScore="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4894
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepConnectedReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v1}, Landroid/net/NetworkScore;->getKeepConnectedReason()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4895
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataAllowedReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPduSessionId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4897
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataProfile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkCapabilities="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4899
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4900
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkSliceInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkBandwidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4902
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTcpBufferSizes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4903
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTelephonyDisplayInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4904
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempNotMeteredSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempNotMetered="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4906
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCongested="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspended="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataCallResponse="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4909
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailCause="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdministratorUids="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierServicePackageUid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4912
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEverConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInvokedDataDeactivation="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    const-string p2, "Attached network requests:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4916
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4917
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 4918
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 4920
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4921
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQosBearerSessions="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4923
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4924
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4925
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4926
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4928
    const-string p2, "mRaTimeOutLogs :"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRaTimeOutLogs:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4931
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4932
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4933
    const-string p0, "---------------"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getApnTypeNetworkCapability()I
    .locals 2

    .line 4115
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4117
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result p0

    return p0

    .line 4119
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda0;-><init>()V

    .line 4120
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 4122
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    .line 4123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .locals 0

    .line 4157
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method public blacklist getCancelHandoverPending()Z
    .locals 0

    .line 5487
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsCancelHandOverPending:Z

    return p0
.end method

.method public blacklist getDataProfile()Landroid/telephony/data/DataProfile;
    .locals 0

    .line 3282
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method public blacklist getId()I
    .locals 1

    .line 4017
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public blacklist getIsIpChangeDeactivation()Z
    .locals 0

    .line 5481
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsIpChangeDeactivation:Z

    return p0
.end method

.method public blacklist getLastKnownDataNetworkType()I
    .locals 0

    .line 4563
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    return p0
.end method

.method public blacklist getLastKnownRoamingState()Z
    .locals 0

    .line 4570
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownRoamingState:Z

    return p0
.end method

.method public blacklist getLinkProperties()Landroid/net/LinkProperties;
    .locals 0

    .line 3274
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public blacklist getLinkStatus()I
    .locals 0

    .line 4057
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return p0
.end method

.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 0

    .line 3266
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public blacklist getPcoData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PcoData;",
            ">;"
        }
    .end annotation

    .line 4578
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    .line 4579
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4582
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 4580
    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist getPreciseDataConnectionStateForExternal()Landroid/telephony/PreciseDataConnectionState;
    .locals 3

    .line 5368
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 5369
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 5370
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 5371
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 5372
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 5373
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 5374
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 5375
    invoke-virtual {v0, p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 5376
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPriority()I
    .locals 3

    .line 4139
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4141
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p0

    return p0

    .line 4145
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 4146
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda13;-><init>()V

    .line 4147
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    .line 4148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getTransport()I
    .locals 0

    .line 4207
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    return p0
.end method

.method public blacklist hasNetworkCapabilityInNetworkRequests(I)Z
    .locals 1

    .line 4606
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 4171
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isConnecting()Z
    .locals 1

    .line 4164
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDisconnected()Z
    .locals 1

    .line 4185
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDisconnecting()Z
    .locals 1

    .line 4178
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmergencySupl()Z
    .locals 1

    .line 4247
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isHandoverInProgress()Z
    .locals 1

    .line 4192
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetSupported()Z
    .locals 1

    .line 4239
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist isNeedDisconnectByDdsChange()Z
    .locals 1

    monitor-enter p0

    .line 5386
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNeedDisconnectByDdsChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist isSatellite()Z
    .locals 0

    .line 2933
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    return p0
.end method

.method public blacklist isSuspended()Z
    .locals 1

    .line 4199
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 3

    .line 4839
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4839
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 3

    .line 4849
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4849
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 0

    .line 4819
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "DN-NULL"

    return-object p0
.end method

.method public blacklist notifyReleasePduSessionIdToRIL(Landroid/os/Message;I)V
    .locals 3

    .line 5465
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5466
    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x9

    .line 5467
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0x17

    .line 5468
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v1, 0x5

    .line 5469
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5470
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5471
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5472
    const-string p2, "notifyReleasePduSessionId"

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5473
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 5465
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5474
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyReleaseePduSessionIdToRIL: Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onAttachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .locals 8

    .line 2671
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 2672
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2673
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isNetworkRequestExisting(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2674
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 2675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached failed. Network request was already removed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2676
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2677
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 2678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached failed. Cannot satisfy the network request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2682
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 2683
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 2684
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 2685
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2686
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "KOR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    .line 2687
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 2688
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2689
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v5, :cond_3

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2690
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 2691
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->setProcTypeInfo(Z)V

    .line 2692
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSetProcTypeForMms:Z

    .line 2699
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 2700
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2701
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    .line 2703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully attached network request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2706
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2707
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public blacklist reqT3346(I)V
    .locals 2

    .line 4939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqT3346(): send EVENT_DATA_CONNECTION_T3346 timerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4940
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mT3346TimerStatus:I

    .line 4941
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->applyT3346()V

    return-void
.end method

.method public blacklist requestNetworkValidation(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1c

    .line 4616
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist sendPendingCancelHandover()V
    .locals 1

    const/16 v0, 0x26

    .line 5491
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist shouldDelayImsTearDownDueToInCall()Z
    .locals 2

    .line 3700
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isImsDelayTearDownUntilVoiceCallEndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3702
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3703
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3704
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .locals 2

    .line 4307
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    .line 4316
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x4

    .line 4309
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_2
    return v1
.end method

.method public blacklist tearDown(I)V
    .locals 1

    .line 3663
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3666
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTearDownReason:I

    const/4 v0, 0x7

    .line 3667
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist tearDownWhenConditionMet(IJ)Ljava/lang/Runnable;
    .locals 2

    .line 3732
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3736
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownWhenConditionMet: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/16 v0, 0x15

    long-to-int p2, p2

    .line 3738
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    .line 3739
    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-object p2

    .line 3733
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tearDownWhenConditionMet: Not in the right state. State="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 4808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4809
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4810
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .locals 3

    .line 2636
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 2638
    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2637
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized blacklist updateNeedDisconnectByDdsChange(Z)V
    .locals 0

    monitor-enter p0

    .line 5382
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNeedDisconnectByDdsChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5383
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

.method public blacklist updateNetworkCapabilitiesForExternal()V
    .locals 0

    .line 5094
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateSuspendState()V

    .line 5095
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method public blacklist updateQosParameters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 5392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateQosParameters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5393
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5394
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5395
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    if-eqz p1, :cond_0

    .line 5396
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public blacklist wrapRegisterListenerForNonDds()V
    .locals 1

    .line 5014
    const-string v0, "wrapRegisterListenerForNonDds()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 5015
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerListenerForNonDds()V

    return-void
.end method
