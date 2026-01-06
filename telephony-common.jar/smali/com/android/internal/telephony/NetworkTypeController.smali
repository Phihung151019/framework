.class public Lcom/android/internal/telephony/NetworkTypeController;
.super Lcom/android/internal/telephony/StateMachine;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkTypeController$LegacyState;,
        Lcom/android/internal/telephony/NetworkTypeController$IdleState;,
        Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;,
        Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;,
        Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;,
        Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;,
        Lcom/android/internal/telephony/NetworkTypeController$DefaultState;,
        Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;
    }
.end annotation


# static fields
.field private static final blacklist ALL_STATES:[Ljava/lang/String;

.field public static final blacklist EVENT_UPDATE:I

.field private static final blacklist NGRAN_TDD_BANDS:[Ljava/lang/Integer;

.field private static final blacklist sEvents:[Ljava/lang/String;


# instance fields
.field private blacklist m5gAvailableIcon:I

.field private final blacklist mAdditionalNrAdvancedBands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBWCheck5GUCIconEnabled:Z

.field private blacklist mBWCheck5GUCIconValue:I

.field private blacklist mBand:I

.field private blacklist mCallState:Z

.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private blacklist mCfgNrIconConfiguration:Ljava/lang/String;

.field private blacklist mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

.field private blacklist mCfgOverrideTimerRule:Ljava/lang/String;

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mCurServingCellInfo:[I

.field private blacklist mCurrentCellId:J

.field private final blacklist mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

.field private final blacklist mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

.field private blacklist mDoesPccListIndicateIdle:Z

.field private blacklist mEnableNrAdvancedWhileRoaming:Z

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mFromCscFeature:Z

.field private blacklist mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field private blacklist mHighBwThreshold:I

.field private final blacklist mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

.field private blacklist mInVoiceCall:Z

.field private blacklist mIncludeLteForNrAdvancedThresholdBandwidth:Z

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIs5GUCToidle:Z

.field private blacklist mIsConfigNotNull:Z

.field private blacklist mIsCpIconTypeConfigEnabled:Z

.field private blacklist mIsCpIconTypeSupported:Z

.field private blacklist mIsDeviceConfigUpdated:Z

.field private blacklist mIsDeviceIdleMode:Z

.field private blacklist mIsNrAdvBandIndi:I

.field private blacklist mIsNrAdvancedAllowedByPco:Z

.field private blacklist mIsNrSA:Z

.field private blacklist mIsPhysicalChannelConfig16Supported:Z

.field private blacklist mIsPhysicalChannelConfigOn:Z

.field private blacklist mIsPhysicalLinkStatusDelayed:Z

.field private blacklist mIsPrevNrCband:Z

.field private blacklist mIsPrimaryTimerActive:Z

.field private blacklist mIsQc:Z

.field private blacklist mIsRefreshTimerActive:Z

.field private blacklist mIsSatelliteConstrainedData:Z

.field private blacklist mIsSatelliteNetworkCallbackRegistered:Z

.field private blacklist mIsSecondaryTimerActive:Z

.field private blacklist mIsTimerResetEnabledForLegacyStateRrcConnected:Z

.field private blacklist mIsTimerResetEnabledForLegacyStateRrcIdle:Z

.field private blacklist mIsTimerResetEnabledForSA:Z

.field private blacklist mIsTimerResetEnabledOnPlmnChanges:Z

.field private blacklist mIsTimerResetEnabledOnVoiceQos:Z

.field private blacklist mIsUpdateToUCIconInIdle:Z

.field private blacklist mIsUsingUserDataForRrcDetection:Z

.field private blacklist mIsUwDsqEnabled:Z

.field private blacklist mIsUwIratChanged:Z

.field private blacklist mLastAnchorNrCellId:I

.field private blacklist mLastShownNrDueToAdvancedBand:Z

.field private blacklist mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field private final blacklist mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

.field private final blacklist mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

.field private blacklist mLteEnhancedPattern:Ljava/lang/String;

.field private blacklist mLtePlusThresholdBandwidth:I

.field private blacklist mLteServingChange:I

.field private blacklist mMobileNetworkStatus:I

.field private blacklist mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

.field private final blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNewCellId:J

.field private blacklist mNewServingCellInfo:[I

.field private blacklist mNotRestrictedRrcState:[Z

.field private blacklist mNrAdvancedBandsSecondaryTimer:I

.field private blacklist mNrAdvancedCapablePcoId:I

.field private blacklist mNrAdvancedPciChangeSecondaryTimer:I

.field private blacklist mNrAdvancedThresholdBandwidth:I

.field private final blacklist mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

.field private final blacklist mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

.field private final blacklist mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

.field private blacklist mNrServingChange:I

.field private blacklist mNsaUCBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverrideNetworkType:I

.field private blacklist mOverrideTimerRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPciChangedDuringPrimaryTimer:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhysicalChannelConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhysicalLinkStatus:I

.field private blacklist mPlmn:Ljava/lang/String;

.field private blacklist mPrevNrAdvBandIndi:I

.field private blacklist mPrevRat:I

.field private blacklist mPreviousState:Ljava/lang/String;

.field private blacklist mPrimaryBand:I

.field private blacklist mPrimaryCellChangedWhileIdle:Z

.field private blacklist mPrimaryTimerState:Ljava/lang/String;

.field private blacklist mRatchetPccFieldsForSameAnchorNrCell:Z

.field private blacklist mRatchetedNrBands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRatchetedNrBandwidths:I

.field private blacklist mRetainCtr:I

.field private blacklist mRetainUC:Z

.field private blacklist mRilNrIconType:I

.field private blacklist mSaUCBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSecondaryTimerExpireTimestamp:J

.field private blacklist mSecondaryTimerState:Ljava/lang/String;

.field private blacklist mServiceState:Landroid/telephony/ServiceState;

.field private blacklist mShow5GUC:Z

.field private blacklist mSib2For5GIcon:I

.field private blacklist mSoleBandwidth:I

.field private final blacklist mSoleBandwidthBands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupport5gAvailable:Z

.field private blacklist mTimers:[I

.field private blacklist mUwDragStartTime:J

.field private blacklist mUwDsqEvent:I

.field private blacklist mUwTimerDrag:I

.field private blacklist mVzwRrcConnected:Z

.field private blacklist mVzwTuwb1Started:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$7WCqLLQZGDUv5zdAdcCMepQ3mzs(Ljava/util/List;Landroid/telephony/PhysicalChannelConfig;)V
    .locals 1

    .line 4060
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4061
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4062
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getDownlinkChannelNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LawktNsVak8LEaJYdpKdPWWRSwI([ILjava/util/List;I)V
    .locals 1

    add-int/lit8 v0, p2, 0x1

    .line 4071
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PiTblX5Ts35pNb49DRMpG91QBOw(Landroid/telephony/PhysicalChannelConfig;)Z
    .locals 1

    .line 4058
    invoke-virtual {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/NetworkTypeController;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayInfoController(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/DisplayInfoController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHalVersion(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/HalVersion;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteConstrainedData(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTimerResetEnabledForLegacyStateRrcIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcIdle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTimerResetEnabledOnVoiceQos(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobileNetworkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotRestrictedRrcState(Lcom/android/internal/telephony/NetworkTypeController;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVzwRrcConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVzwTuwb1Started(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDoesPccListIndicateIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDeviceConfigUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceConfigUpdated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNrSA(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPrevNrCband(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrevNrCband:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSatelliteConstrainedData(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastAnchorNrCellId(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMobileNetworkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRatchetedNrBandwidths(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRilNrIconType(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecondaryTimerExpireTimestamp(Lcom/android/internal/telephony/NetworkTypeController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSoleBandwidth(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVzwRrcConnected(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCidFromCellIdentity(Lcom/android/internal/telephony/NetworkTypeController;Landroid/telephony/CellIdentity;)J
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getEventName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNrAdvBandInd(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/Set;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getPhysicalLinkStatusFromPhysicalChannelConfig()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;Z[Landroid/telephony/CellIdentity;)[I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfo(Z[Landroid/telephony/CellIdentity;)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUWBitValue(Lcom/android/internal/telephony/NetworkTypeController;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBitValue()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHighBandwidthDataTransfer(Lcom/android/internal/telephony/NetworkTypeController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->handleHighBandwidthDataTransfer(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInterRatTransition(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->handleInterRatTransition(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNrAdvancedNotAllowed(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleNrAdvancedNotAllowed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePreciseCallStateChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->handlePreciseCallStateChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStateDuringTau(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->handleStateDuringTau(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUcRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleUcRefreshTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUwDsqChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->handleUwDsqChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVolteCall(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteCall()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVolteEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteEmergencyCall()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAdditionalNrAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/Set;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBand(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNetworkJapan(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNetworkVzw(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNotRestricted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestricted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhysicalLinkValid(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkValid()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUwDisqualifiedAndHandled(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDisqualifiedAndHandled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUwDsqNotRequired(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->onNrAdvBandIndiChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveCpIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveCpIconTypeChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveIconTypeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveUwDsqNrAdvancedDisabled(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveUwDsqNrAdvancedDisabled(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveUwDsqOutOfNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveUwDsqOutOfNrAdvanced(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->onServiceStateChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseCarrierConfigs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processPendingPhysicalLinkStatusChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessTmoEnterForIdleState(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processTmoEnterForIdleState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessTmoEnterForNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processTmoEnterForNrConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessTmoPhysicalLinkStatusChangedForLteConnected(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processTmoPhysicalLinkStatusChangedForLteConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessTmoPhysicalLinkStatusChangedForNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processTmoPhysicalLinkStatusChangedForNrConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessTmoPhysicalLinkStatusChangedForNrConnectedAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processTmoPhysicalLinkStatusChangedForNrConnectedAdvanced()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->registerForAllEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetTimerAndUpdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetTimerAndUpdateOverrideNetworkType()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetUwDsqEvent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithTimerTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munRegisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForAllEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBandwidthConstrainedStatus(Lcom/android/internal/telephony/NetworkTypeController;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->updateBandwidthConstrainedStatus(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateCellInfoChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->updatePhysicalChannelConfigs(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateTimers()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 27

    .line 123
    const-string v5, "restricted"

    const-string v6, "legacy"

    const-string v0, "connected_mmwave"

    const-string v1, "connected"

    const-string v2, "connected_rrc_idle"

    const-string v3, "not_restricted_rrc_idle"

    const-string v4, "not_restricted_rrc_con"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    const/16 v0, 0x22

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x4d

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x4e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v0, 0x4f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0x60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v0, 0x68

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v0, 0x101

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v0, 0x102

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v0, 0x103

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v0, 0x104

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v0, 0x105

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v0, 0x106

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v0, 0x107

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->NGRAN_TDD_BANDS:[Ljava/lang/Integer;

    const/16 v0, 0x14

    .line 173
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->sEvents:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 176
    const-string v2, "EVENT_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 177
    const-string v2, "EVENT_QUIT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 178
    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 179
    const-string v2, "EVENT_PHYSICAL_LINK_STATUS_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 180
    const-string v2, "EVENT_PHYSICAL_CHANNEL_CONFIG_NOTIF_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 182
    const-string v2, "EVENT_CARRIER_CONFIG_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 183
    const-string v2, "EVENT_PRIMARY_TIMER_EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 184
    const-string v2, "EVENT_SECONDARY_TIMER_EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 185
    const-string v2, "EVENT_RADIO_OFF_OR_UNAVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 186
    const-string v2, "EVENT_PREFERRED_NETWORK_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 187
    const-string v2, "EVENT_INITIALIZE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 188
    const-string v2, "EVENT_PHYSICAL_CHANNEL_CONFIGS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 189
    const-string v2, "EVENT_DEVICE_IDLE_MODE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 190
    const-string v2, "EVENT_QOS_SESSION_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 192
    const-string v2, "EVENT_CELL_INFO_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 193
    const-string v2, "EVENT_UC_REFRESH_TIMER"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 194
    const-string v2, "EVENT_PRECISE_CALL_STATE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 195
    const-string v2, "EVENT_UW_DISQUALIFIED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 196
    const-string v2, "EVENT_UW_DSQ_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 197
    const-string v2, "EVENT_OVERRIDE_NETWORK_TYPE_CHANGED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 524
    const-string v3, "NetworkTypeController"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 204
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$1;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/NetworkTypeController$1;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$2;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/NetworkTypeController$2;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 261
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$3;

    .line 262
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v3, v0, v5}, Lcom/android/internal/telephony/NetworkTypeController$3;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V

    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 284
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    .line 285
    const-string v3, ""

    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    .line 300
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    .line 303
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidthBands:Ljava/util/Set;

    const/4 v4, 0x0

    .line 312
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    .line 313
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    .line 314
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    const/4 v5, 0x1

    .line 315
    iput-boolean v5, v0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    .line 316
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    .line 317
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    .line 318
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 326
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    .line 328
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    .line 329
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    const/4 v6, -0x1

    .line 330
    iput v6, v0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    .line 331
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    .line 333
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    .line 334
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    .line 335
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteNetworkCallbackRegistered:Z

    .line 338
    new-instance v7, Lcom/android/internal/telephony/NetworkTypeController$4;

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/NetworkTypeController$4;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v7, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 414
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceConfigUpdated:Z

    .line 417
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    .line 419
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    .line 420
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 422
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 423
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    .line 424
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    .line 425
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    .line 426
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 427
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 428
    iput v6, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    .line 429
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    const-wide/16 v7, -0x1

    .line 430
    iput-wide v7, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    .line 431
    iput-wide v7, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    .line 432
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    .line 433
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    .line 478
    iput v6, v0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    .line 501
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    .line 502
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 504
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    .line 508
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    .line 1600
    new-instance v7, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v7, v0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    .line 1711
    new-instance v9, Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    invoke-direct {v9, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v9, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    .line 1829
    new-instance v10, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    invoke-direct {v10, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v10, v0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    .line 1934
    new-instance v11, Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    invoke-direct {v11, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v11, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    .line 2083
    new-instance v12, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    invoke-direct {v12, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v12, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    .line 2251
    new-instance v13, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    invoke-direct {v13, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    iput-object v13, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    .line 3533
    new-instance v14, Lcom/android/internal/telephony/NetworkTypeController$6;

    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    invoke-direct {v14, v0, v15}, Lcom/android/internal/telephony/NetworkTypeController$6;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Landroid/os/Handler;)V

    iput-object v14, v0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 525
    iput-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v14, p3

    .line 526
    iput-object v14, v0, Lcom/android/internal/telephony/NetworkTypeController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 527
    iput-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    .line 528
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 529
    iput-boolean v5, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    .line 532
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_network_status"

    .line 533
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getDefaultValueOfNetworkStatus()I

    move-result v14

    .line 532
    invoke-static {v2, v5, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    .line 534
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v2

    const-string v5, "ro.boot.hardware"

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "qcom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    .line 535
    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getRfConfig()V

    .line 536
    iput v6, v0, Lcom/android/internal/telephony/NetworkTypeController;->m5gAvailableIcon:I

    const/4 v2, 0x4

    .line 537
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 538
    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkTypeController;->support5gAvailable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    .line 539
    iput v6, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v2, 0x3

    .line 541
    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    .line 542
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 543
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 544
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 545
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 547
    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    const/4 v2, 0x2

    .line 548
    new-array v5, v2, [Z

    iput-object v5, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    .line 549
    filled-new-array {v6}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    .line 550
    filled-new-array {v6}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    .line 551
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    .line 552
    iput v4, v0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    .line 554
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 555
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 556
    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 557
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;

    invoke-direct {v3, v0, v8}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V

    .line 558
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 559
    invoke-virtual {v0, v7, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 560
    invoke-virtual {v0, v9, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 561
    invoke-virtual {v0, v10, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 562
    invoke-virtual {v0, v11, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 563
    invoke-virtual {v0, v12, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 564
    invoke-virtual {v0, v13, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 565
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 566
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 568
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 569
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 571
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist convertToOverrideNetworkType(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 2997
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result p0

    return p0
.end method

.method private blacklist createTimerRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 901
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 902
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3

    .line 904
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v2, v9

    .line 905
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 906
    array-length v12, v11

    if-eq v12, v4, :cond_0

    .line 907
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid 5G icon configuration, config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 911
    :cond_0
    aget-object v10, v11, v6

    const-string v12, "5g"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v3

    goto :goto_1

    .line 913
    :cond_1
    aget-object v10, v11, v6

    const-string v12, "5g_plus"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    goto :goto_1

    .line 916
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid 5G icon = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v11, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    move v10, v7

    .line 918
    :goto_1
    aget-object v11, v11, v7

    new-instance v12, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {v12, v11, v10}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 922
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v8, v2

    move v9, v7

    :goto_3
    if-ge v9, v8, :cond_5

    aget-object v10, v2, v9

    .line 923
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 924
    new-instance v11, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {v11, v10, v7}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 930
    :cond_5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideTypeInRules(Ljava/util/Map;)V

    .line 933
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v8, "any"

    const/4 v9, -0x1

    const-string v10, ";"

    if-nez v2, :cond_a

    .line 935
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v11, v2

    move v12, v7

    :goto_4
    if-ge v12, v11, :cond_a

    aget-object v13, v2, v12

    .line 936
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 937
    array-length v15, v14

    if-eq v15, v3, :cond_6

    .line 938
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid 5G icon timer configuration, config = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    :goto_5
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_7

    .line 950
    :cond_6
    aget-object v13, v14, v4

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/NetworkTypeController;->getTimerValue(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v9, :cond_7

    goto :goto_5

    .line 953
    :cond_7
    aget-object v15, v14, v7

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 954
    sget-object v15, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    move/from16 v16, v4

    array-length v4, v15

    move/from16 v17, v6

    move v6, v7

    :goto_6
    move/from16 v18, v7

    if-ge v6, v4, :cond_9

    aget-object v7, v15, v6

    .line 960
    aget-object v9, v14, v17

    invoke-direct {v0, v1, v7, v9, v13}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v18

    const/4 v9, -0x1

    goto :goto_6

    :cond_8
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    .line 969
    aget-object v4, v14, v18

    aget-object v6, v14, v17

    invoke-direct {v0, v1, v4, v6, v13}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v7, v18

    const/4 v9, -0x1

    goto :goto_4

    :cond_a
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    .line 975
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 977
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move/from16 v6, v18

    :goto_8
    if-ge v6, v4, :cond_f

    aget-object v7, v2, v6

    .line 978
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 979
    array-length v10, v9

    if-eq v10, v3, :cond_b

    .line 981
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid 5G icon secondary timer configuration, config = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    const/4 v10, -0x1

    goto :goto_a

    .line 994
    :cond_b
    aget-object v7, v9, v16

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/NetworkTypeController;->getTimerValue(Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_c

    goto :goto_a

    .line 997
    :cond_c
    aget-object v11, v9, v18

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 998
    sget-object v11, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v12, v11

    move/from16 v13, v18

    :goto_9
    if-ge v13, v12, :cond_e

    aget-object v14, v11, v13

    .line 1004
    aget-object v15, v9, v17

    invoke-direct {v0, v1, v14, v15, v7}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideSecondaryTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1013
    :cond_d
    aget-object v11, v9, v18

    aget-object v9, v9, v17

    invoke-direct {v0, v1, v11, v9, v7}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideSecondaryTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1021
    :cond_f
    const-string v2, "connected"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 1022
    const-string v3, "connected_rrc_idle"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-virtual {v4}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->isDefined()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->isDefined()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1023
    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    iget v2, v2, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    invoke-direct {v4, v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    .line 1025
    iget-object v2, v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1026
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addTimer(Ljava/lang/String;I)V

    goto :goto_b

    .line 1028
    :cond_10
    iget-object v2, v4, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1029
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addSecondaryTimer(Ljava/lang/String;I)V

    goto :goto_c

    .line 1031
    :cond_11
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :cond_12
    iput-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverrideTimerRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    .line 3960
    const-string p0, "(\\w*)_2nd:(\\w*)"

    goto :goto_0

    :cond_0
    const-string p0, "(\\w*)_2nd,(\\w*),(\\w*)"

    :goto_0
    if-eqz p2, :cond_1

    .line 3961
    const-string p2, ","

    goto :goto_1

    :cond_1
    const-string p2, ";"

    .line 3963
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3964
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3965
    :goto_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_2nd"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3968
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist get3CCBitValue()I
    .locals 3

    .line 3118
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.is_advanced_band_indi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3119
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    .line 3118
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private blacklist get5gAvailableIconStatus()I
    .locals 4

    .line 4140
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    .line 4141
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    const/4 v2, 0x3

    if-nez v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4143
    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    .line 4147
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5gAvailableIcon("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist getBoolConfig(Ljava/lang/String;)Z
    .locals 11

    .line 4265
    const-string v1, "getBoolConfig: "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4268
    :try_start_0
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    .line 4269
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "config"

    .line 4268
    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "xpath"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4270
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4271
    const-string v4, "tag_name"

    invoke-virtual {v0, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4272
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 4273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4275
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4277
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4278
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4279
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 4281
    :cond_0
    const-string p1, "getBoolConfig: moveToFirst is false"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4284
    :cond_1
    const-string p1, "getBoolConfig: cursor is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_2

    .line 4290
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return v2

    .line 4287
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 4290
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return v2

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4292
    :cond_4
    throw p0
.end method

.method private blacklist getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 4174
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    move-wide v2, v0

    goto :goto_1

    .line 4179
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    goto :goto_1

    .line 4177
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v2

    :goto_0
    int-to-long v2, v2

    goto :goto_1

    .line 4176
    :cond_3
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    goto :goto_0

    .line 4178
    :cond_4
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    goto :goto_0

    .line 4175
    :cond_5
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    goto :goto_0

    .line 4183
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result p1

    if-ne p1, v4, :cond_6

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    :cond_6
    const-wide/32 v4, 0x7fffffff

    :goto_2
    cmp-long p1, v2, v4

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move-wide v0, v2

    .line 4187
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: getCidFromCellIdentity cid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v2, v0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->getShortPii(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-wide v0
.end method

.method private blacklist getCurrentOverrideNetworkType()I
    .locals 5

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    .line 1085
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1086
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v1, :cond_4

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1102
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result p0

    return p0

    :cond_3
    return v3

    .line 1097
    :cond_4
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->getNrDisplayType(Z)I

    move-result v0

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    .line 1100
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method private blacklist getCurrentPlmn()Ljava/lang/String;
    .locals 1

    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3006
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3007
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private blacklist getEventName(I)Ljava/lang/String;
    .locals 0

    .line 2887
    :try_start_0
    sget-object p0, Lcom/android/internal/telephony/NetworkTypeController;->sEvents:[Ljava/lang/String;

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2889
    :catch_0
    const-string p0, "EVENT_NOT_DEFINED"

    return-object p0
.end method

.method private blacklist getLteDisplayType()I
    .locals 5

    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1168
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1180
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v1

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override Networktype with OptionalRadioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    move v0, v4

    goto :goto_3

    .line 1183
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/data/SemDataUtils;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->isLatinSubOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1184
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v2, v4

    goto :goto_2

    .line 1187
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_2

    .line 1190
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    .line 1194
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override Networktype with OptionalRadioTech(LTN): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1198
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isLteEnhancedAvailable()Z

    move-result p0

    if-eqz p0, :cond_7

    return v4

    :cond_7
    return v0
.end method

.method private blacklist getMmwaveBitValue()I
    .locals 3

    .line 3124
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.is_advanced_band_indi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3125
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    .line 3124
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private blacklist getNetworkServerConfig(Ljava/lang/String;)I
    .locals 11

    .line 3569
    const-string v1, "getNetworkServerConfig: "

    .line 3571
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceConfigUpdated:Z

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 3572
    const-string p1, "DEVICE_CONFIG_UPDATED is false"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 3576
    :try_start_0
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    .line 3577
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "config"

    .line 3576
    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "xpath"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3578
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3579
    const-string v4, "tag_name"

    invoke-virtual {v0, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3580
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 3581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3583
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3585
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3586
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3588
    :cond_1
    const-string p1, "getNetworkServerConfig: moveToFirst is false"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3591
    :cond_2
    const-string p1, "getNetworkServerConfig: cursor is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_3

    .line 3597
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return v2

    .line 3594
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 3597
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    return v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3599
    :cond_5
    throw p0
.end method

.method private blacklist getNrAdvBandFromSipc(Ljava/util/Set;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 3013
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNone()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3014
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3015
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    .line 3017
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    .line 3018
    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 3019
    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3023
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBandList()Ljava/lang/String;

    move-result-object v0

    .line 3025
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3026
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3027
    array-length v5, v3

    move v6, v2

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v8, v3, v6

    .line 3028
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3029
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BandList = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3031
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/NetworkTypeController;->isTDD(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v1

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_4
    move v7, v1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3

    :goto_4
    if-nez v7, :cond_b

    .line 3040
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    .line 3045
    :cond_8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3046
    invoke-interface {v3, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 3047
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3048
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->isTDD(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    move v7, v0

    goto :goto_7

    :cond_9
    move v7, v1

    goto :goto_5

    .line 3041
    :cond_a
    :goto_6
    const-string p1, "advBandList/bands = Empty"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 3056
    :cond_b
    :goto_7
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v7, :cond_d

    if-nez v0, :cond_d

    .line 3057
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    if-nez p1, :cond_c

    goto :goto_8

    .line 3060
    :cond_c
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/NetworkTypeController;->isTmoBWCheckMet(Ljava/util/Set;)Z

    move-result p0

    return p0

    :cond_d
    :goto_8
    return v7

    :cond_e
    if-ne v7, v1, :cond_f

    .line 3064
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isBandwidthRequirementMet()Z

    move-result p0

    if-eqz p0, :cond_f

    return v1

    :cond_f
    return v2
.end method

.method private blacklist getNrAdvBandInd(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 3109
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBitValue()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandFromSipc(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method private blacklist getNrDisplayType(Z)I
    .locals 5

    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNrDisplayType: getCachedAllowedNetworkTypesBitmask = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1115
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 1120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    const-string v2, "connected"

    const-string v3, "connected_mmwave"

    if-eqz p1, :cond_1

    .line 1122
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1123
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1127
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    if-ne p1, v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1128
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    goto :goto_1

    .line 1133
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1134
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1139
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "not_restricted_rrc_con"

    goto :goto_0

    .line 1140
    :cond_6
    const-string p1, "not_restricted_rrc_idle"

    .line 1139
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1143
    :cond_7
    const-string p1, "restricted"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1150
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v1

    :cond_a
    if-ge v2, p1, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 1156
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    if-eqz v3, :cond_a

    .line 1157
    iget v3, v3, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    if-eqz v3, :cond_a

    return v3

    :cond_b
    return v1
.end method

.method private blacklist getPhysicalLinkStatusFromPhysicalChannelConfig()I
    .locals 1

    .line 2880
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getRfConfig()V
    .locals 4

    .line 3947
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3948
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "0"

    if-le v0, v1, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3952
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v3, "ril.enabled_5g_rf_per_subs"

    .line 3951
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    return-void

    .line 3954
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    const-string v1, "ril.enabled_5g_rf"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    return-void
.end method

.method private blacklist getServerConfigValues()[I
    .locals 8

    const/4 v0, 0x3

    .line 3622
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x1e

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 3623
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v5

    const/16 v6, 0x3c

    if-eqz v5, :cond_0

    .line 3625
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUwbTimers()[I

    move-result-object v1

    .line 3626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServerConfigValues from getUwbTimers: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServerConfigValues: getUwbTimer\'s exception : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3629
    new-array v1, v0, [I

    aput v0, v1, v2

    aput v6, v1, v4

    aput v3, v1, v3

    goto :goto_0

    .line 3631
    :cond_0
    const-string v5, "TMO"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "DSH"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3632
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->update5GNetworkServerConfig()[I

    move-result-object v1

    .line 3633
    aget v5, v1, v3

    iput v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    .line 3635
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v5, :cond_2

    array-length v5, v1

    const/16 v7, 0x8

    if-eq v5, v7, :cond_2

    .line 3640
    new-array v1, v7, [I

    aput v0, v1, v2

    aput v6, v1, v4

    const/16 v4, 0xa

    aput v4, v1, v3

    const/16 v3, 0x12c

    aput v3, v1, v0

    const/4 v0, 0x4

    aput v6, v1, v0

    const/4 v0, 0x5

    aput v2, v1, v0

    const/4 v0, 0x6

    aput v2, v1, v0

    const/4 v0, 0x7

    const/16 v2, 0x3000

    aput v2, v1, v0

    .line 3641
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->setUwbTimers([I)Z

    .line 3644
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServerConfigValues: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private varargs blacklist getServingCellInfo(Z[Landroid/telephony/CellIdentity;)[I
    .locals 2

    .line 4048
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    return-object p0

    .line 4049
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 4050
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfoFromPcc(Z)[I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 4051
    aget-object p2, p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfoFromCi(ZLandroid/telephony/CellIdentity;)[I

    move-result-object p0

    return-object p0
.end method

.method private blacklist getServingCellInfoFromCi(ZLandroid/telephony/CellIdentity;)[I
    .locals 6

    const/4 v0, 0x1

    .line 4077
    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    if-nez p2, :cond_0

    goto :goto_0

    .line 4079
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v2, v2

    .line 4081
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    .line 4096
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    add-int/lit8 v2, p1, 0x1

    .line 4098
    :cond_2
    new-array p1, v2, [I

    .line 4099
    check-cast p2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v1

    aput v1, p1, v3

    if-le v2, v0, :cond_3

    .line 4102
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p2

    aput p2, p1, v0

    .line 4104
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "5G UW: getServingCellInfo NR(SA). NumInfoValues: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 4084
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    add-int/lit8 v2, p1, 0x1

    .line 4086
    :cond_5
    new-array p1, v2, [I

    .line 4087
    check-cast p2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v1

    aput v1, p1, v3

    if-le v2, v0, :cond_6

    .line 4090
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p2

    aput p2, p1, v0

    .line 4092
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "5G UW: getServingCellInfo LTE(NSA). NumInfoValues: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object p1
.end method

.method private blacklist getServingCellInfoFromPcc(Z)[I
    .locals 6

    .line 4055
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 4056
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4057
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    .line 4058
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 4059
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4064
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 4065
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length p1, p1

    goto :goto_1

    .line 4066
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    :goto_0
    add-int/2addr p1, v2

    goto :goto_1

    .line 4067
    :cond_3
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    goto :goto_0

    :goto_1
    if-lt p1, v2, :cond_6

    const/4 v3, 0x2

    if-le p1, v3, :cond_4

    goto :goto_3

    .line 4070
    :cond_4
    new-array v3, p1, [I

    .line 4071
    invoke-static {v1, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda3;-><init>([ILjava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServingCell: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getShortPii(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le p1, v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object v3

    .line 4068
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    return-object p0

    .line 4064
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    return-object p0

    .line 4055
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    return-object p0
.end method

.method private blacklist getShortPii(I)Ljava/lang/String;
    .locals 0

    .line 3068
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTimerValue(Ljava/lang/String;)I
    .locals 2

    .line 3649
    const-string v0, "timer1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3650
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    .line 3651
    :cond_0
    const-string v0, "timer2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3652
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    .line 3653
    :cond_1
    const-string v0, "timer3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3654
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0

    .line 3659
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3661
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimerValue() : Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a correct value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getTuwSecondaryTimerValue(Ljava/lang/String;I)I
    .locals 3

    .line 3669
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v0, :cond_0

    .line 3670
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemDataUtils;->getElapsedSinceBootMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDragStartTime:J

    .line 3671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VZW timer : TUW_DRAG started@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDragStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3672
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    return p0

    .line 3674
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "not_restricted_rrc_con"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3677
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VZW timer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mVzwTuwb1Started="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", idle="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    const/4 v1, 0x0

    aget-boolean p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", connected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    const/4 v2, 0x1

    aget-boolean p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3680
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    aget-boolean v0, p1, v1

    if-eqz v0, :cond_3

    aget-boolean p1, p1, v2

    if-nez p1, :cond_2

    goto :goto_0

    .line 3683
    :cond_2
    const-string p1, "VZW timer : TUWB3 started. "

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3684
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method private blacklist getUWBandList()Ljava/lang/String;
    .locals 3

    .line 3113
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v1, "ril.bandList"

    const-string v2, "0"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getUWBitValue()I
    .locals 3

    .line 3130
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBandDisabledByBwThres()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3133
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.is_advanced_band_indi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3134
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    .line 3133
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist handleHighBandwidthDataTransfer(II)V
    .locals 2

    .line 3138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHighBandwidthDataTransfer: ulKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dlKbps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mHighBwThreshold="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3140
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3142
    :cond_0
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3143
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleInterRatTransition(I)V
    .locals 6

    .line 4113
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 4114
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v3

    :cond_1
    if-eq v0, v1, :cond_3

    .line 4117
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const-string v1, ". curState:"

    const-string v2, "), prevRAT: "

    if-eqz v0, :cond_2

    .line 4118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transition with Inter-RAT Timer("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s) from isNrSA("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4120
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4118
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4121
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    .line 4122
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    .line 4123
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithInterRatTimer()V

    return-void

    .line 4124
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transition from isNrSA("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4126
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4125
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4127
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 4128
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    .line 4129
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_3
    return-void
.end method

.method private blacklist handleNrAdvancedDisabled()V
    .locals 1

    .line 3147
    const-string v0, "NrAdvancedDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3148
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3149
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method private blacklist handleNrAdvancedNotAllowed()V
    .locals 1

    .line 3153
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3155
    :cond_0
    const-string v0, "NrAdvancedNotAllowed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3156
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3157
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleOutOfNrAdvanced()V
    .locals 1

    .line 3162
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->areAnyTimersActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3164
    :cond_0
    const-string v0, "handleOutOfNrAdvanced"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 3165
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    const/16 v0, 0x11

    .line 3166
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist handlePlmnChanged()V
    .locals 4

    .line 3170
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentPlmn()Ljava/lang/String;

    move-result-object v0

    .line 3171
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3173
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlmnChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3174
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3175
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 3176
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3178
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3179
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist handlePreciseCallStateChanged(I)V
    .locals 1

    .line 3186
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3187
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getEventName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Call Started"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3189
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz p1, :cond_2

    .line 3190
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteEmergencyCall()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3193
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    .line 3194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getEventName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Call Ended"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3195
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz p1, :cond_1

    .line 3196
    const-string p1, "call_state_change"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->startUCRefreshTimer(Ljava/lang/String;)V

    .line 3198
    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz p1, :cond_2

    .line 3199
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    and-int/lit16 p1, p1, -0x181

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    :cond_2
    return-void
.end method

.method private blacklist handleServingCellChanged()V
    .locals 6

    .line 3205
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_3

    .line 3206
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isServingCellChanged()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3208
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UW ServingCell Changed. nrlevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ltelevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NumInfoValues:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pci:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 3210
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getShortPii(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    aget v2, v3, v2

    .line 3211
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->getShortPii(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3212
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 3213
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", arfcn:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    aget v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3208
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3214
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3215
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist handleStateDuringTau(I)V
    .locals 4

    .line 3220
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3225
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3230
    :cond_1
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    .line 3231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhysicalLinkStatus = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (restored)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p1, 0x4

    const-wide/16 v2, 0x3e8

    .line 3232
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IIJ)V

    .line 3233
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist handleTuwTimer(Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;)V
    .locals 5

    .line 3689
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 3691
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    .line 3692
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 3693
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    if-ne p1, v3, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    aput-boolean v4, v1, v0

    .line 3694
    const-string v1, "connected_mmwave"

    if-eq p1, v3, :cond_3

    .line 3695
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3696
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "connected"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3697
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "not_restricted_rrc_con"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    .line 3698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VZW timer : TUW1 timer started in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3701
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-nez p1, :cond_4

    goto :goto_2

    .line 3702
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateTuwDragTimer()V

    .line 3703
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3704
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setHighBwDataXferThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3705
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    .line 3706
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setHighBandwidthDataTransferThresholdKbps(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist handleUcRefreshTimer()V
    .locals 5

    .line 3237
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    if-nez v0, :cond_0

    .line 3238
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3241
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    .line 3242
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") update CellId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    long-to-int v1, v1

    .line 3244
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getShortPii(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsRefreshTimerActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRetainUC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3243
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-nez v0, :cond_5

    .line 3254
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 3255
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v0

    .line 3256
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    iget-wide v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 3258
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    iget-wide v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3263
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_4

    .line 3264
    const-string v0, "5G UC: NRCA(SA) idle + primary band same, retain icon"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3265
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    goto :goto_1

    .line 3259
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: SA connected OR idle + primary band change, update icon RRCstate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3259
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3261
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 3262
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    .line 3267
    :cond_4
    :goto_1
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    return-void

    .line 3269
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3270
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    if-ne v0, v1, :cond_7

    :cond_6
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    iget-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 3272
    const-string v0, "5G UC: NSA idle, reset icon based on ULI on LTE anchor change"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3273
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 3275
    :cond_7
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    .line 3276
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method private blacklist handleUwDsqAny()V
    .locals 1

    .line 3281
    const-string v0, "handleUwDsqAny"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3282
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    const/16 v0, 0x11

    .line 3283
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist handleUwDsqChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    return-void

    .line 3289
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleNrAdvancedDisabled()V

    return-void

    .line 3292
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleOutOfNrAdvanced()V

    return-void

    .line 3295
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleUwDsqAny()V

    return-void
.end method

.method private blacklist handleVolteCall()V
    .locals 1

    .line 3303
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3305
    :cond_0
    const-string v0, "VoLTE call with QCI=1"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3306
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3307
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleVolteEmergencyCall()V
    .locals 1

    .line 3311
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isInEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3313
    :cond_0
    const-string v0, "VoLTE emergency call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3314
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3315
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist isAdditionalNrAdvancedBand(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2844
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2846
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    if-eqz p1, :cond_0

    return v2

    .line 2849
    :cond_0
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne p0, v2, :cond_1

    return v2

    :cond_1
    return v1

    .line 2853
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->get3CCBitValue()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2854
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_3

    .line 2855
    const-string p1, "need to show 3CC icon"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 2859
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd(Ljava/util/Set;)I

    move-result p0

    if-ne p0, v2, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private blacklist isAdditionalNrAdvancedBandDisabledByBwThres()Z
    .locals 0

    .line 3320
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isBandwidthConstrainedCapabilitySupported(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 381
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    .line 383
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    .line 385
    :catch_0
    const-string p1, "NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED not supported "

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isBandwidthRequirementMet()Z
    .locals 4

    .line 3325
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const v2, 0x9c40

    if-ge v0, v2, :cond_0

    .line 3326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSoleBandwidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 3330
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 3333
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBandDisabledByBwThres()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3337
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    .line 3339
    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    if-lez v3, :cond_3

    move v0, v3

    .line 3344
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    if-ge v0, v3, :cond_4

    .line 3345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NrAdvThresholdBw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cellBw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    :cond_4
    return v2
.end method

.method private blacklist isCarrierId(I)Z
    .locals 1

    .line 3887
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierId()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isInCall()Z
    .locals 3

    .line 3360
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3362
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3363
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3364
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3366
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC/UW: isInCall() - isImsCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isInEmergencyCall()Z
    .locals 0

    .line 3371
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3373
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result p0

    return p0
.end method

.method private blacklist isLatinSubOperator(Ljava/lang/String;)Z
    .locals 1

    .line 3849
    const-string v0, "LTN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IUS"

    .line 3850
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MNX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3854
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isLatinSubOperator: false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3851
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isLatinSubOperator: true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isLte(I)Z
    .locals 2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 2866
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2867
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result p1

    .line 2866
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p1

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLte(): rat = IWLAN, mobile rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0xd

    if-eq p1, p0, :cond_2

    const/16 p0, 0x13

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isLteEnhancedAvailable()Z
    .locals 5

    .line 1205
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1209
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1210
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 1209
    aget-object v3, p0, v2

    .line 1211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1212
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1213
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private blacklist isMainOperatorName(Ljava/lang/String;)Z
    .locals 1

    .line 3835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3838
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNetworkAtt()Z
    .locals 1

    const/16 v0, 0x4a3

    .line 3874
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x6f3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x847

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x848

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9dd

    .line 3875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9de

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9df

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9e6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9ea

    .line 3876
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9eb

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7e9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7ea

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7eb

    .line 3877
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7ec

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7ef

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2726

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2710

    .line 3878
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0f

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

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

.method private blacklist isNetworkJapan()Z
    .locals 1

    .line 3354
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3355
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 3354
    const-string v0, "jp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNetworkTmo()Z
    .locals 1

    const/4 v0, 0x1

    .line 3883
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isNetworkVzw()Z
    .locals 1

    const/16 v0, 0x72f

    .line 3864
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7f0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x862

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2718

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

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

.method private blacklist isNrAdvanced()Z
    .locals 2

    .line 2778
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvancedForPccFields(ILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNrAdvancedForPccFields(ILjava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2784
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    if-nez p1, :cond_0

    .line 2785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isNrAdvanced: not allowed by PCO for PCO ID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v0

    .line 2791
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    if-nez p1, :cond_1

    .line 2792
    const-string p1, "isNrAdvanced: false because NR advanced is unavailable while roaming."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v0

    .line 2813
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2814
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrMmwave()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBand(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method private blacklist isNrConnected()Z
    .locals 1

    .line 2739
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

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

.method private blacklist isNrMmwave()Z
    .locals 2

    .line 2823
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_0

    .line 2824
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getMmwaveBitValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNrNone()Z
    .locals 0

    .line 2744
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrNotRestricted()Z
    .locals 1

    .line 2749
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrRestricted()Z
    .locals 1

    .line 2753
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrRestrictedForUw()Z
    .locals 3

    .line 2758
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2760
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 2761
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x2

    .line 2763
    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    .line 2767
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    .line 2770
    :cond_3
    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    return p0
.end method

.method private blacklist isPhysicalLinkActive()Z
    .locals 1

    .line 2876
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPhysicalLinkValid()Z
    .locals 1

    .line 3378
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isServingCellChanged()Z
    .locals 4

    .line 3382
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v1

    .line 3383
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist isSubOperatorName(Ljava/lang/String;)Z
    .locals 1

    .line 3842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3845
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isTDD(I)Z
    .locals 1

    .line 3072
    sget-object v0, Lcom/android/internal/telephony/NetworkTypeController;->NGRAN_TDD_BANDS:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isTmo5GUCSupported()Z
    .locals 2

    .line 4248
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4251
    :cond_0
    const-string v0, "TMO"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private blacklist isTmoBWCheckMet(Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 3076
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 3077
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3079
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTmoBWCheckMet HalVersion(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " physicalChannelConfigList.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " advBandList.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3084
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/16 v3, 0x14

    if-eqz v2, :cond_2

    .line 3085
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBandList()Ljava/lang/String;

    move-result-object v2

    .line 3086
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 3087
    :cond_0
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v4, v1

    move v5, v4

    .line 3088
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    array-length v6, v2

    if-ge v4, v6, :cond_5

    .line 3089
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v6}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v6

    if-ne v6, v3, :cond_1

    aget-object v6, v2, v4

    .line 3090
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3091
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v6}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v6

    add-int/2addr v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    move v5, v2

    .line 3096
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 3097
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 3098
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3099
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v4

    add-int/2addr v5, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v5, v1

    .line 3104
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non TDD UC bands with Total Bandwidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3105
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    if-ge v5, p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isUsingPhysicalChannelConfigForRrcDetection()Z
    .locals 1

    .line 2894
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isUwDisqualifiedAndHandled()Z
    .locals 9

    .line 3387
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUwDsqEvent = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3390
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 3391
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    .line 3392
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-eqz v0, :cond_1

    .line 3393
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    .line 3394
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    return v1

    .line 3400
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/SemDataUtils;->getElapsedSinceBootMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDragStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 3402
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    aget v0, v0, v2

    int-to-long v5, v0

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    int-to-long v7, v0

    sub-long/2addr v7, v3

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    .line 3403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UWTimerDrag is updated from Remaining time("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    int-to-long v5, v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") to Tpci_hys:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3405
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    const/16 v0, 0x8

    .line 3406
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 3407
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    .line 3408
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 3409
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_0

    .line 3413
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 3414
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 3416
    :cond_3
    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    return v2
.end method

.method private blacklist isUwDsqNotRequired()Z
    .locals 1

    .line 3421
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isZeroTimerRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 3813
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrSA:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 3814
    :cond_0
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "connected_mmwave"

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 3818
    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcConnected:Z

    if-eqz p1, :cond_3

    .line 3819
    const-string p1, "legacy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 3825
    :cond_3
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForSA:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3826
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 3830
    :cond_4
    :goto_0
    const-string p1, "from SA, no timer"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method private blacklist needRemoveAllTimers(Ljava/lang/String;)Z
    .locals 8

    .line 3763
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result v0

    const-string v1, "needRemoveAllTimers=true ("

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "not_restricted_rrc_idle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "connected_rrc_idle"

    .line 3764
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3765
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") in Japan"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 3770
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    const-string v3, "connected"

    const-string v4, "connected_mmwave"

    const-string v5, "BMC"

    const/4 v6, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3771
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3772
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    if-eqz v0, :cond_3

    return v6

    .line 3774
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    .line 3776
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    goto/16 :goto_1

    .line 3785
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, ")"

    if-nez v0, :cond_a

    .line 3786
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 3791
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "legacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") for Canada carriers"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 3796
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_8

    .line 3797
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove timer! rat: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 3803
    :cond_8
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForSA:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v3, 0x80000

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-nez p1, :cond_9

    .line 3805
    const-string p1, "Remove timer! preferred network type does not include 5G"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    :cond_9
    return v6

    .line 3787
    :cond_a
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 3778
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRemoveAllTimers=false, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mOverrideNetworkType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentOverrideNetworkType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3780
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3778
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v6
.end method

.method private blacklist needRemovePrimaryTimer()Z
    .locals 5

    .line 3719
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    .line 3720
    const-string v0, "5G UC: needRemovePrimaryTimer() - Stop primary timer for IWLAN RAT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 3724
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getOverrideNetworkType()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 3727
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    const-string v2, "connected_mmwave"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3728
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    if-ne v0, v4, :cond_1

    .line 3729
    const-string v0, "5G UC: needRemovePrimaryTimer() - Don\'t stop primry timer."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v3

    .line 3731
    :cond_1
    const-string v0, "connected"

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 3732
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3733
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    if-ne v0, v2, :cond_3

    .line 3734
    const-string v0, "needRemovePrimaryTimer=false to NrIdle."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v3

    .line 3737
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    if-eqz v0, :cond_4

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->m5gAvailableIcon:I

    .line 3738
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->get5gAvailableIconStatus()I

    move-result p0

    if-ne v0, p0, :cond_5

    :cond_4
    return v1

    :cond_5
    return v3
.end method

.method private blacklist needRemoveSecondaryTimer(Ljava/lang/String;)Z
    .locals 3

    .line 3747
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3748
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    if-eqz v0, :cond_0

    return v1

    .line 3751
    :cond_0
    const-string v0, "connected_mmwave"

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3755
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private blacklist onCellInfoChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 3426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 3428
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3429
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    .line 3430
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3431
    new-array p1, p1, [Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfo(Z[Landroid/telephony/CellIdentity;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    .line 3433
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    if-ne p1, v0, :cond_2

    .line 3434
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    goto :goto_1

    .line 3437
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz p1, :cond_3

    .line 3439
    const-string p1, "cellid_change"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->startUCRefreshTimer(Ljava/lang/String;)V

    .line 3444
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz p1, :cond_4

    .line 3445
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handlePlmnChanged()V

    .line 3446
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3447
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleServingCellChanged()V

    :cond_4
    return-void
.end method

.method private blacklist onNrAdvBandIndiChanged()V
    .locals 3

    .line 4193
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4194
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd(Ljava/util/Set;)I

    move-result v0

    .line 4195
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-eq v1, v0, :cond_5

    .line 4196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsRefreshTimerActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4198
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 4200
    :cond_1
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    return-void

    .line 4203
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-nez v1, :cond_3

    .line 4204
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 4206
    :cond_3
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 4207
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    if-ne v0, v1, :cond_4

    .line 4208
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4210
    :cond_4
    const-string v0, "nr_adv_band_indi_change"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->startUCRefreshTimer(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private blacklist onReceiveCpIconTypeChanged(I)V
    .locals 2

    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RilNrIconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt v0, p1, :cond_1

    .line 3466
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3471
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeSupported:Z

    .line 3472
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    .line 3473
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkTypeByCpIconType()V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onReceiveIconTypeChanged(Landroid/content/Intent;)V
    .locals 3

    .line 3454
    const-string v0, "NrIconType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilNrIconType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    if-gt p1, v1, :cond_0

    return-void

    .line 3458
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    if-ge p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3459
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3461
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    return-void
.end method

.method private blacklist onReceiveUwDsqNrAdvancedDisabled(Landroid/content/Intent;)V
    .locals 2

    .line 3478
    const-string v0, "NrAdvancedDisabled"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 3481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UW_DSQ_CHANGED.CP_LOW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3482
    new-instance p1, Landroid/os/AsyncResult;

    const/16 v0, 0x10

    .line 3483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v0, 0x12

    .line 3482
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist onReceiveUwDsqOutOfNrAdvanced(Landroid/content/Intent;)V
    .locals 2

    .line 3487
    const-string v0, "OutOfNrAdvancedCoverage"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3490
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutOfNrAdvancedCoverage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3492
    new-instance p1, Landroid/os/AsyncResult;

    const/16 v0, 0x8

    .line 3493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v0, 0x12

    .line 3492
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onServiceStateChanged()V
    .locals 3

    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2257
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnPlmnChanges:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2258
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2259
    const-string v1, "Reset any timers due to nr_timers_reset_on_plmn_change_bool"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2260
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 2262
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseCarrierConfigs()V
    .locals 7

    .line 736
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 738
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 740
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 745
    :cond_0
    const-string v1, "show_carrier_data_icon_pattern_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    .line 747
    const-string v1, "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcIdle:Z

    .line 749
    const-string v1, "nr_timers_reset_on_plmn_change_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnPlmnChanges:Z

    .line 751
    const-string v1, "nr_timers_reset_on_voice_qos_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    .line 753
    const-string v1, "lte_plus_threshold_bandwidth_khz_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    .line 755
    const-string v1, "nr_advanced_threshold_bandwidth_khz_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    .line 757
    const-string v1, "include_lte_for_nr_advanced_threshold_bandwidth_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIncludeLteForNrAdvancedThresholdBandwidth:Z

    .line 759
    const-string v1, "ratchet_nr_advanced_bandwidth_if_rrc_idle_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    .line 761
    const-string v1, "enable_nr_advanced_for_roaming_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 764
    const-string v1, "additional_nr_advanced_bands_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 767
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidthBands:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 771
    const-string v1, "sole_bandwidth_bands_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 774
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidthBands:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 777
    :cond_2
    const-string v1, "nr_advanced_capable_pco_id_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    .line 779
    const-string v1, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    .line 781
    const-string v1, "nr_advanced_bands_secondary_timer_seconds_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedBandsSecondaryTimer:I

    .line 783
    const-string v1, "nr_advanced_pci_change_secondary_timer_seconds_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedPciChangeSecondaryTimer:I

    .line 801
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->use2ndString()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 805
    const-string v1, "5g_icon_configuration_string_2nd"

    const-string v2, "5g_icon_display_grace_period_string_2nd"

    const-string v3, "5g_icon_display_secondary_grace_period_string_2nd"

    goto :goto_0

    .line 801
    :cond_3
    const-string v1, "5g_icon_configuration_string"

    const-string v2, "5g_icon_display_grace_period_string"

    const-string v3, "5g_icon_display_secondary_grace_period_string"

    .line 809
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 810
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 811
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 814
    const-string v1, "uw_disqualification_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 817
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 819
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 822
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/internal/telephony/Phone;->registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uw_dsq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 826
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 828
    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 829
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 832
    :cond_6
    const-string v1, "high_bandwidth_data_transfer_threshold_kbps_int"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    .line 834
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v2, :cond_8

    if-lez v1, :cond_8

    .line 835
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-nez v1, :cond_7

    .line 836
    new-instance v1, Lcom/android/internal/telephony/NetworkTypeController$5;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/NetworkTypeController$5;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 843
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    goto :goto_1

    .line 846
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-eqz v1, :cond_9

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    .line 848
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 850
    :cond_9
    :goto_1
    const-string v1, "enable_override_network_type_by_cp_icon_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    const-string v1, "ro.boot.hardware"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 857
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/SemDataUtils;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLatinSubOperator(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "connected_mmwave:5G,connected:5G,not_restricted_rrc_idle:5G,not_restricted_rrc_con:5G"

    if-eqz v0, :cond_b

    .line 858
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    goto :goto_2

    .line 859
    :cond_b
    const-string v0, "EUR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 860
    const-string v0, "connected_mmwave:5G,connected:5G,not_restricted_rrc_idle:None,not_restricted_rrc_con:None"

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    goto :goto_2

    .line 862
    :cond_c
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 867
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_e

    .line 868
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseFeature()Z

    .line 871
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "CHN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForSA:Z

    .line 873
    const-string v0, "KDI"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcConnected:Z

    .line 874
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getServerConfigValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    .line 875
    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    const/4 v1, 0x5

    .line 876
    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    const/4 v1, 0x6

    .line 877
    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    const/4 v1, 0x7

    .line 878
    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    .line 881
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->createTimerRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 886
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseUCBandInfo()V

    .line 889
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->support5gAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 894
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v0

    .line 893
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->updatePhysicalChannelConfigs(Ljava/util/List;)V

    .line 895
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 896
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getPhysicalLinkStatusFromPhysicalChannelConfig()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    :cond_11
    return-void
.end method

.method private blacklist parseFeature()Z
    .locals 7

    .line 3891
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3892
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 3891
    const-string v2, "CarrierFeature_RIL_5gIconConfiguration"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3893
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3894
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v5, "CarrierFeature_RIL_5gIconDisplayGracePeriod"

    .line 3893
    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3895
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3896
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    const-string v6, "CarrierFeature_RIL_5gIconDisplaySecondaryGracePeriod"

    .line 3895
    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3899
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->use2ndString()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 3900
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3901
    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/NetworkTypeController;->extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3903
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3904
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3906
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3907
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/NetworkTypeController;->extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3911
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3912
    iput-boolean v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 3913
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 3914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use Feature,  mCfgNrIconConfiguration: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3916
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3917
    iput-boolean v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 3918
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 3919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use Feature,  mCfgOverrideTimerRule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3921
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3922
    iput-boolean v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 3923
    iput-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use Feature,  mCfgOverrideSecondaryTimerRule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3927
    :cond_5
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    return p0
.end method

.method private blacklist parseTmoBwInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 4469
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 4470
    const-string v0, "//IconPolicy5G/BW_Check_5GUC_Icon_Enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    .line 4471
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4472
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    .line 4474
    :cond_0
    const-string v0, "//IconPolicy5G/BW_Check_5GUC_Icon_Value_MHz"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNetworkServerConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x28

    .line 4476
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    .line 4478
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    return-void
.end method

.method private blacklist parseUCBandInfo()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 4529
    iput-boolean v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 4530
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4531
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn2_Enabled"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4532
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn25_Enabled"

    const/16 v5, 0x19

    invoke-direct {v0, v2, v3, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4533
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn41_Enabled"

    const/16 v6, 0x29

    .line 4542
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4533
    invoke-direct {v0, v2, v3, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4534
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn48_Enabled"

    const/16 v8, 0x30

    invoke-direct {v0, v2, v3, v8}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4535
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn66_Enabled"

    const/16 v9, 0x42

    invoke-direct {v0, v2, v3, v9}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4536
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn71_Enabled"

    const/16 v10, 0x47

    invoke-direct {v0, v2, v3, v10}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4537
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn77_Enabled"

    const/16 v11, 0x4d

    invoke-direct {v0, v2, v3, v11}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4538
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn258_Enabled"

    const/16 v12, 0x102

    .line 4542
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 4538
    invoke-direct {v0, v2, v3, v12}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4539
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn260_Enabled"

    const/16 v14, 0x104

    .line 4542
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4539
    invoke-direct {v0, v2, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4540
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn261_Enabled"

    const/16 v14, 0x105

    .line 4542
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4540
    invoke-direct {v0, v2, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4541
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn262_Enabled"

    const/16 v14, 0x106

    .line 4542
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4541
    invoke-direct {v0, v2, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4542
    filled-new-array {v7, v13, v15, v12, v11}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->setDefaultNsaBandsForUCBandList(Ljava/util/List;)V

    .line 4544
    iput-boolean v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 4545
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4546
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn2_Enabled"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4547
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn25_Enabled"

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4548
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn41_Enabled"

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4549
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn48_Enabled"

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4550
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn66_Enabled"

    invoke-direct {v0, v1, v2, v9}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4551
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn71_Enabled"

    invoke-direct {v0, v1, v2, v10}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4552
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn77_Enabled"

    const/16 v3, 0x4d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4553
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn258_Enabled"

    const/16 v3, 0x102

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4554
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn260_Enabled"

    const/16 v3, 0x104

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4555
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn261_Enabled"

    const/16 v3, 0x105

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4556
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v2, "//IconPolicy5G/Indicator_5GUC_SAn262_Enabled"

    invoke-direct {v0, v1, v2, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 4557
    filled-new-array {v7, v13, v15, v12, v11}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->setDefaultSaBandsForUCBandList(Ljava/util/List;)V

    .line 4558
    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkTypeController;->parseTmoBwInfo()V

    .line 4560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: mNsaUCBandList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSaUCBandList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    .line 4561
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4560
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist processPendingPhysicalLinkStatusChanged()V
    .locals 2

    .line 3499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhysicalLinkStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3500
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3505
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3506
    const-string v1, "Remove pending messages"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3507
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    .line 3509
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist processTmoEnterForIdleState()V
    .locals 3

    .line 4298
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrevNrAdvBandIndi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsNrAdvBandIndi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShow5GUC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIs5GUCToidle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4304
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4305
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-nez v0, :cond_1

    .line 4306
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 4307
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4308
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    .line 4309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NSA Update icon from nonUC->UC mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 4312
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    return-void

    .line 4315
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_3

    .line 4316
    const-string v0, "NSA Update icon from UC->nonUC"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4317
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4318
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    return-void

    .line 4320
    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    return-void
.end method

.method private blacklist processTmoEnterForNrConnected()V
    .locals 2

    .line 4326
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4328
    :cond_0
    const-string v0, "not_restricted_rrc_idle"

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4329
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    .line 4330
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 4332
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    if-eqz v0, :cond_2

    .line 4333
    const-string v0, "5G UC: Skip updating mRetainUC until EVENT_PHYSICAL_CHANNEL_CONFIGS_CHANGED is received"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4336
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4338
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "legacy"

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "restricted"

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 4339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4344
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist processTmoPhysicalLinkStatusChangedForLteConnected()V
    .locals 4

    .line 4350
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going from LteConnected->Idle:  mPreviousState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mShow5GUC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsNrAdvBandIndi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4354
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    const-string v1, "connected_mmwave"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4357
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "connected"

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 4358
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4359
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 4360
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    .line 4364
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 4365
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4366
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 4367
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist processTmoPhysicalLinkStatusChangedForNrConnected()V
    .locals 3

    .line 4373
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4375
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4376
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    return-void

    .line 4381
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4382
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne v0, v1, :cond_2

    .line 4383
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    :cond_2
    :goto_0
    return-void

    .line 4387
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4389
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 4390
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-nez v2, :cond_6

    if-ne v0, v1, :cond_6

    .line 4391
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 4392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA Update icon from nonUC->UC mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4394
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4395
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    goto :goto_1

    .line 4398
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne v0, v1, :cond_5

    .line 4399
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-nez v0, :cond_6

    .line 4400
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NRCA primary nonUC, sec UC->idle mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4403
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4404
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    goto :goto_1

    .line 4407
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    if-eq v1, v0, :cond_6

    .line 4408
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_6

    .line 4409
    const-string v0, "SA nonUC->idle OR  NRCA primary nonUC, sec nonUC->idle"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4410
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4411
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    .line 4414
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method private blacklist processTmoPhysicalLinkStatusChangedForNrConnectedAdvanced()V
    .locals 3

    .line 4420
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4422
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4423
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    return-void

    .line 4428
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4429
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne v0, v1, :cond_2

    .line 4430
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    :cond_2
    :goto_0
    return-void

    .line 4436
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4438
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 4439
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-nez v2, :cond_6

    if-ne v0, v1, :cond_6

    .line 4440
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 4441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA Update icon from nonUC->UC mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4443
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4444
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    goto :goto_1

    .line 4447
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne v0, v1, :cond_5

    .line 4448
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-nez v0, :cond_6

    .line 4449
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 4450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NRCA primary nonUC, sec UC->idle mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4452
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4453
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    goto :goto_1

    .line 4456
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    if-eq v1, v0, :cond_6

    .line 4458
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_6

    .line 4459
    const-string v0, "SA nonUC->idle OR  NRCA primary nonUC, sec nonUC->idle"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4460
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4461
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    .line 4464
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method private blacklist reduceSecondaryTimerIfNeeded()V
    .locals 6

    .line 2369
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedBandsSecondaryTimer:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    if-eqz v0, :cond_1

    .line 2373
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2376
    iget-wide v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 2377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due to PCI change, reduce the secondary timer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 2378
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 2379
    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    add-long/2addr v2, v0

    .line 2381
    iput-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    return-void

    .line 2384
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!! Secondary timer is active, but found no rule for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist registerForAllEvents()V
    .locals 5

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreferredNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhysicalChannelConfig(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

    .line 654
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->registerForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 661
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 670
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 671
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v1, "com.samsung.intent.action.LTE_BAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v1, "com.samsung.telephony.event.EVENT_ICON_UW_DSQ_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_network_status"

    .line 685
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 684
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_2

    .line 690
    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_2
    return-void
.end method

.method private blacklist resetAllTimers()V
    .locals 3

    const/4 v0, 0x7

    .line 2618
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v0, 0x8

    .line 2619
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2620
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 2621
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 2622
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    const-wide/16 v1, 0x0

    .line 2623
    iput-wide v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    .line 2624
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 2625
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2627
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastShownNrDueToAdvancedBand:Z

    .line 2630
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    return-void
.end method

.method private blacklist resetRetainUC()V
    .locals 1

    const/4 v0, 0x0

    .line 4259
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    .line 4260
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    return-void
.end method

.method private blacklist resetTimerAndUpdateOverrideNetworkType()V
    .locals 2

    .line 2636
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkJapan()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connected_mmwave"

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-eqz v0, :cond_0

    .line 2638
    const-string v0, "reset all timers to change Timer C to Timer B"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2639
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    const/4 v0, 0x3

    .line 2640
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 2641
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    :cond_0
    return-void
.end method

.method private blacklist resetUwDsqEvent()V
    .locals 1

    .line 3513
    const-string v0, "resetUwDsqEvent"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3514
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3515
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setHighBandwidthDataTransferThresholdKbps(I)V

    return-void
.end method

.method private blacklist setDefaultNsaBandsForUCBandList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4483
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_0

    .line 4484
    const-string v0, "5G UC: Default UC NSA Band List"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private blacklist setDefaultSaBandsForUCBandList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4491
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_0

    .line 4492
    const-string v0, "5G UC: Default UC SA Band List"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private blacklist setUwMeasurementReportIndication(Z)V
    .locals 4

    .line 3519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwMeasurementReportIndication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3520
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3521
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    .line 3522
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x42

    .line 3523
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 3524
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3525
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3526
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3527
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 3520
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

    .line 3528
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwMeasurementReportIndication: exception= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist startUCRefreshTimer(Ljava/lang/String;)V
    .locals 3

    .line 4233
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-nez v0, :cond_2

    .line 4234
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const-string v0, "call_state_change"

    .line 4235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 4236
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    .line 4237
    const-string v0, "nr_adv_band_indi_change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4238
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 4240
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") startUCRefreshTimer reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 4242
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    const-wide/16 v0, 0x7530

    const/16 v2, 0xf

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    :cond_2
    return-void
.end method

.method private blacklist stopUCRefreshTimer()V
    .locals 2

    .line 4217
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    .line 4218
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/4 v0, 0x0

    .line 4219
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    .line 4220
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    .line 4221
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_0

    .line 4222
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBitValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    goto :goto_0

    .line 4224
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandFromSipc(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 4226
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 4227
    const-string v0, "5G UC: stopUCRefreshTimer"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist support5gAvailable()Z
    .locals 8

    .line 4155
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4156
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4157
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4158
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 4159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid 5G icon configuration, config = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4162
    :cond_0
    aget-object v4, v5, v1

    const-string v6, "not_restricted_rrc_idle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v5, v5, v4

    const-string v6, "5g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private blacklist transitionToCurrentState()V
    .locals 2

    .line 2512
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    .line 2514
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2522
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNotRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2523
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    goto :goto_1

    .line 2526
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    goto :goto_1

    .line 2529
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    goto :goto_1

    .line 2515
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrIdleState:Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    goto :goto_1

    .line 2517
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedAdvancedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    goto :goto_1

    .line 2520
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    .line 2531
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2532
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 2533
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 2535
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method private blacklist transitionWithInterRatTimer()V
    .locals 5

    .line 2498
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2500
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2501
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 2503
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 2504
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2505
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2506
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    .line 2507
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    return-void
.end method

.method private blacklist transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V
    .locals 5

    .line 2442
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2443
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 2446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition with secondary timer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2446
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2449
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mInVoiceCall:Z

    if-eqz v2, :cond_0

    .line 2450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip secondary timer from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to in call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2450
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2463
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestrictedForUw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2464
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 2465
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v1

    .line 2466
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getTuwSecondaryTimerValue(Ljava/lang/String;I)I

    move-result v1

    .line 2467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary timer started : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2470
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedPciChangeSecondaryTimer:I

    if-lez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    if-eqz v2, :cond_2

    .line 2473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s secondary timer started for PCI changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 2477
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2478
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 2479
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    int-to-long v0, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 2481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    const/16 v3, 0x8

    .line 2482
    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2486
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2487
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    .line 2488
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    aput-boolean v0, p1, v2

    aput-boolean v0, p1, v0

    .line 2491
    :cond_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 2492
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 2493
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist transitionWithTimerTo(Lcom/android/internal/telephony/IState;)V
    .locals 6

    .line 2389
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2391
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isZeroTimerRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2392
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 2397
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    const-string v2, " to "

    if-eqz v1, :cond_1

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition without timer from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to existing "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " primary timer."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2408
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition with primary timer from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2410
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 2411
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getTimer(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 2412
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getTimer(Ljava/lang/String;)I

    move-result v2

    .line 2417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary timer started : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2420
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 2421
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    const/4 v3, 0x1

    .line 2422
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x7

    .line 2423
    invoke-virtual {p0, v4, p1, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2425
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->handleTuwTimer(Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;)V

    .line 2429
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2430
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not_restricted_rrc_idle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2431
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2432
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    .line 2433
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 2438
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist unRegisterForAllEvents()V
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreferredNetworkTypeChanged(Landroid/os/Handler;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->unregisterForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 702
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForTmo5GUCEvents()V

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPcoData(Landroid/os/Handler;)V

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 716
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    .line 720
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    :cond_2
    return-void
.end method

.method private blacklist unRegisterForTmo5GUCEvents()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForCellInfo(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updateBandwidthConstrainedStatus(Landroid/net/NetworkCapabilities;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isBandwidthConstrainedCapabilitySupported(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    .line 393
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    if-eq p1, v0, :cond_0

    .line 394
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update network type because satellite constrained data status changed to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    :cond_0
    return-void

    .line 400
    :cond_1
    const-string p1, "capabilities is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateCellInfoChanged()V
    .locals 2

    .line 3972
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3973
    new-array v1, v0, [Landroid/telephony/CellIdentity;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfo(Z[Landroid/telephony/CellIdentity;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    .line 3974
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleServingCellChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateOverrideNetworkType()V
    .locals 5

    .line 1040
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeSupported:Z

    if-eqz v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkTypeByCpIconType()V

    return-void

    .line 1050
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1060
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 1063
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->get5gAvailableIconStatus()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->m5gAvailableIcon:I

    .line 1065
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1066
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateTmoOverrideNetworkType()V

    return-void

    .line 1070
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1073
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    if-ne v4, v3, :cond_4

    move v1, v2

    :cond_4
    if-eq v0, v1, :cond_5

    .line 1075
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->setUwMeasurementReportIndication(Z)V

    .line 1079
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void

    .line 1053
    :cond_6
    :goto_1
    const-string v0, "Skip updating override network type since timer is active."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateOverrideNetworkTypeByCpIconType()V
    .locals 1

    .line 3978
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->convertToOverrideNetworkType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 3979
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->get5gAvailableIconStatus()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->m5gAvailableIcon:I

    .line 3980
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void
.end method

.method private blacklist updateOverrideSecondaryTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 4037
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4038
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected fromState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 4043
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 4044
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addSecondaryTimer(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist updateOverrideTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 4024
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected fromState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 4030
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 4031
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addTimer(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3985
    new-instance p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist updateOverrideTypeInRules(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;)V"
        }
    .end annotation

    .line 3990
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3993
    :cond_0
    const-string v0, "TMO"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "XAG"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3994
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getSIB2for5GIcon()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    .line 3995
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getRfConfig()V

    .line 3997
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    const-string v1, "not_restricted_rrc_con"

    const-string v2, "not_restricted_rrc_idle"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_1

    goto :goto_2

    .line 4008
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_7

    .line 4012
    invoke-direct {p0, p1, v2, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    return-void

    .line 4009
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v1, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    return-void

    .line 3999
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    const/4 v6, 0x0

    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_5

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_7

    .line 4003
    invoke-direct {p0, p1, v2, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    return-void

    .line 4000
    :cond_6
    :goto_1
    invoke-direct {p0, p1, v1, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private blacklist updatePhysicalChannelConfigs(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2267
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 2268
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2271
    const-string v2, "Physical channel configs updated: not updating PCC fields for empty PCC list indicating RRC idle."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2273
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    .line 2274
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 2275
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    return-void

    .line 2279
    :cond_2
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    .line 2284
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, -0x1

    if-eqz p1, :cond_7

    .line 2286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v1

    move v6, v4

    move v7, v6

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/PhysicalChannelConfig;

    .line 2287
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v10

    const/16 v11, 0x14

    if-ne v10, v11, :cond_5

    .line 2288
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v10

    if-ne v10, v0, :cond_4

    if-ne v6, v4, :cond_4

    .line 2290
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v6

    .line 2292
    :cond_4
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v10

    add-int/2addr v8, v10

    .line 2293
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2295
    iget-object v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidthBands:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidthBands:Ljava/util/Set;

    .line 2296
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2297
    iget v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    .line 2298
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v9

    .line 2297
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    goto :goto_2

    .line 2301
    :cond_5
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_3

    .line 2302
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v10

    if-ne v10, v0, :cond_6

    if-ne v7, v4, :cond_6

    .line 2304
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v7

    .line 2306
    :cond_6
    iget-boolean v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIncludeLteForNrAdvancedThresholdBandwidth:Z

    if-eqz v10, :cond_3

    .line 2307
    invoke-virtual {v9}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_2

    :cond_7
    move v8, v1

    move v6, v4

    move v7, v6

    :cond_8
    if-ne v6, v4, :cond_9

    if-eq v7, v4, :cond_9

    move v6, v7

    :cond_9
    if-ne v6, v4, :cond_b

    if-nez v2, :cond_a

    .line 2321
    const-string v0, "Ignoring physical channel config fields without an anchor NR cell, either due to LTE-only configs or an unspecified cell ID."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2324
    :cond_a
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2327
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSoleBandwidth:I

    goto/16 :goto_3

    .line 2329
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    if-ne v6, v2, :cond_c

    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    if-eqz v4, :cond_c

    .line 2330
    const-string v0, "Ratchet physical channel config fields since anchor NR cell is the same."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2331
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    .line 2332
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 2334
    :cond_c
    iput v8, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    .line 2335
    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    .line 2336
    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    const-string v5, " -> "

    if-eqz v4, :cond_d

    if-eq v6, v2, :cond_d

    .line 2338
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    if-nez v2, :cond_d

    .line 2340
    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvancedForPccFields(ILjava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow primary cell change once during RRC idle without changing state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2343
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    .line 2344
    iput v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    .line 2345
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->reduceSecondaryTimerIfNeeded()V

    return-void

    .line 2348
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    if-eqz v0, :cond_e

    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not ratcheting physical channel config fields since anchor NR cell changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2354
    :cond_e
    :goto_3
    iput v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    .line 2355
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 2356
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    .line 2357
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 2359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Physical channel configs updated: anchorNrCell="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", nrBandwidths="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", nrBands="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateTimers()V
    .locals 7

    .line 2540
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2542
    const-string v0, "Reset timers since NR is not allowed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2543
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void

    .line 2547
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2553
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->needRemovePrimaryTimer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove primary timer since primary timer state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") was reestablished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 2560
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 2561
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 2562
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    .line 2563
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 2565
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    .line 2567
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void

    .line 2575
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->needRemoveSecondaryTimer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove secondary timer since current state ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is no longer secondary timer state ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2582
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 2583
    iput-boolean v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    .line 2584
    iput-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerExpireTimestamp:J

    .line 2585
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2586
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void

    .line 2611
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->needRemoveAllTimers(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2612
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    :cond_3
    return-void
.end method

.method private blacklist updateTmoOverrideNetworkType()V
    .locals 2

    .line 4506
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    if-eq v0, v1, :cond_0

    .line 4507
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_3

    .line 4509
    const-string v0, "5G UC: retain 5GUC icon"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 4513
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 4514
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    .line 4515
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 4517
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    .line 4518
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 4520
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    .line 4521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: updateOverrideNetworkType curState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4522
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mShow5GUC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRetainUC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " incall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isInCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOverrideNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4521
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateTuwDragTimer()V
    .locals 2

    .line 3712
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrevNrCband:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    .line 3713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VZW TUW_DRAG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 4499
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private blacklist use2ndString()Z
    .locals 4

    .line 3931
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getRfConfig()V

    .line 3933
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "CHN"

    const-string v2, "KOR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3934
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    :cond_0
    return v1

    .line 3937
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3938
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "TMO"

    const-string v3, "DSH"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 3937
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3939
    :cond_2
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist areAnyTimersActive()Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

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

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2920
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2921
    const-string p2, "NetworkTypeController: "

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2922
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2923
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2924
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSubId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mOverrideTimerRules="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLteEnhancedPattern="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPhysicalChannelConfigOn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPrimaryTimerActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPciChangedDuringPrimaryTimer="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPciChangedDuringPrimaryTimer:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsSecondaryTimerActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsTimerResetEnabledForLegacyStateRrcIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLtePlusThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNrAdvancedThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIncludeLteForNrAdvancedThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIncludeLteForNrAdvancedThresholdBandwidth:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRatchetPccFieldsForSameAnchorNrCell="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetPccFieldsForSameAnchorNrCell:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRatchetedNrBandwidths="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBandwidths:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAdditionalNrAdvancedBandsList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBands:Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRatchetedNrBands="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRatchetedNrBands:Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLastAnchorNrCellId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLastAnchorNrCellId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDoesPccListIndicateIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDoesPccListIndicateIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPrimaryTimerState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSecondaryTimerState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreviousState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPhysicalLinkStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPhysicalChannelConfig16Supported="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsNrAdvancedAllowedByPco="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNrAdvancedCapablePcoId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsUsingUserDataForRrcDetection="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPrimaryCellChangedWhileIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryCellChangedWhileIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEnableNrAdvancedWhileRoaming="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsDeviceIdleMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsTimerResetEnabledOnVoiceQos="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledOnVoiceQos:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "m5gAvailableIcon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->m5gAvailableIcon:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBand="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCfgNrIconConfiguration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCfgOverrideTimerRule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCfgOverrideSecondaryTimerRule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2962
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mFromCscFeature="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2}, Lcom/android/internal/telephony/HalVersion;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mHighBwThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsCpIconTypeConfigEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsCpIconTypeSupported="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeSupported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsQc="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsUwDsqEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsTimerResetEnabledForLegacyStateRrcConnected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRrcConnected:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMobileNetworkStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSib2For5GIcon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSupport5gAvailable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTimers="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2975
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCachedAllowedNetworkTypesBitmask="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2976
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2975
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isNetwork="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "VZW"

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ATT"

    goto :goto_0

    .line 2978
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkTmo()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "TMO"

    goto :goto_0

    :cond_2
    const-string p2, "Non-V/A/T"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2977
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNsaUCBandList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSaUCBandList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBWCheck5GUCIconValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBWCheck5GUCIconEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2986
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getDataNetworkType()I
    .locals 2

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 622
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDefaultValueOfNetworkStatus()I
    .locals 4

    .line 3545
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "CarrierFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "networkstatus_current_state"

    .line 3547
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public blacklist getIs5gAvailable()Z
    .locals 1

    .line 4136
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->m5gAvailableIcon:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOverrideNetworkType()I
    .locals 0

    .line 608
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    return p0
.end method

.method public blacklist getSIB2for5GIcon()I
    .locals 4

    .line 3554
    const-string v0, "TMO"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3555
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 3556
    const-string v0, "//IconPolicy5G/SIB2for5GIcon"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3559
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v2, :cond_3

    .line 3560
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIB2for5GIcon(): value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", when mBand = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3561
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 3564
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSIB2for5GIcon(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getSatelliteConstrainedData()Z
    .locals 0

    .line 633
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteConstrainedData:Z

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkTypeController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkTypeController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized blacklist registerForSatelliteNetwork()V
    .locals 4

    monitor-enter p0

    .line 575
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteNetworkCallbackRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSatelliteNetworkCallbackRegistered:Z

    .line 577
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SatelliteDataUsageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 579
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 581
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 582
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x25

    .line 587
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 589
    :catch_0
    :try_start_2
    const-string v2, "NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED not supported "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 591
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 592
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    .line 593
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 595
    invoke-virtual {v2, v0, v3, v1}, Landroid/net/ConnectivityManager;->registerBestMatchingNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 598
    :cond_0
    const-string v0, "network callback not registered"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTimerRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLteEnhancedPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPhysicalChannelConfigOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPrimaryTimerActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSecondaryTimerActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryTimerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryTimerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsNrAdvanced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update5GNetworkServerConfig()[I
    .locals 6

    const/4 v0, 0x3

    .line 3604
    new-array v0, v0, [I

    .line 3606
    const-string v1, "//IconPolicy5G/IconRefreshDelay_IdletoConnect"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getNetworkServerConfig(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v3, 0x1e

    if-gez v1, :cond_0

    .line 3607
    aput v3, v0, v2

    .line 3609
    :cond_0
    const-string v1, "//IconPolicy5G/IconRefreshDelay_SCGtoMCG"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getNetworkServerConfig(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    if-gez v1, :cond_1

    .line 3610
    aput v3, v0, v4

    .line 3612
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 3613
    const-string v1, "//IconPolicy5G/SIB2for5GIcon"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 3614
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    aput v1, v0, v3

    .line 3616
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update5GNetworkServerConfig: IconRefreshDelay_IdletoConnect="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IconRefreshDelay_SCGtoMCG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SIB2for5GIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object v0
.end method
