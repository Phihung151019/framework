.class public Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
.super Ljava/lang/Object;
.source "FiraSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraSpecificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAoaCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mBprfParameterSetCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mCcConstraintLengthCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;

.field private mDeviceRoleCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceType:I

.field private mDtTagMaxActiveRr:I

.field private mHasBackgroundRangingSupport:Z

.field private mHasBlockStridingSupport:Z

.field private mHasDiagnosticsSupport:Z

.field private mHasDtTagBlockSkippingSupport:Z

.field private mHasExtendedMacAddressSupport:Z

.field private mHasHoppingPreferenceSupport:Z

.field private mHasInitiationTimeSupport:Z

.field private mHasNonDeferredModeSupport:Z

.field private mHasPsduLengthSupport:Z

.field private mHasRssiReportingSupport:Z

.field private mHprfParameterSetCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDataPacketPayloadSize:Ljava/lang/Integer;

.field private mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private mMaxMessageSize:Ljava/lang/Integer;

.field private mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private mMaxRangingSessionNumber:I

.field private mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private mMinRangingInterval:I

.field private mMinSlotDurationUs:I

.field private mMultiNodeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mPrfCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mPsduDataRateCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mRangingRoundCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mRangingTimeStructCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mRframeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedulingModeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionKeyLength:I

.field private mStsCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendRangingSupport:Z

.field private mUciVersion:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 616
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 617
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 618
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSupportedChannels:Ljava/util/List;

    .line 622
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;

    .line 623
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mAoaCapabilities:Ljava/util/EnumSet;

    .line 626
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLLER_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLEE_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 627
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    .line 632
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 633
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    .line 635
    const/4 v0, 0x0

    .line 705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 635
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBlockStridingSupport:Z

    .line 637
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasHoppingPreferenceSupport:Z

    .line 639
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasExtendedMacAddressSupport:Z

    .line 641
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasNonDeferredModeSupport:Z

    .line 643
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasInitiationTimeSupport:Z

    .line 645
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasRssiReportingSupport:Z

    .line 647
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDiagnosticsSupport:Z

    .line 649
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinRangingInterval:I

    .line 651
    iput v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinSlotDurationUs:I

    .line 653
    const/4 v3, 0x5

    iput v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 655
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCountryCode:Ljava/lang/String;

    .line 657
    iput v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mUciVersion:I

    .line 660
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;->HAS_UNICAST_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;

    .line 661
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    .line 663
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;->HAS_INTERVAL_BASED_SCHEDULING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;->HAS_BLOCK_BASED_SCHEDULING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;

    .line 664
    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    .line 668
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_CONTENTION_BASED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_TIME_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    sget-object v4, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_HYBRID_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    .line 669
    invoke-static {v1, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    .line 674
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_7_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    .line 675
    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    .line 680
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->HAS_BPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    .line 681
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPrfCapabilities:Ljava/util/EnumSet;

    .line 684
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_DS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 685
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    .line 688
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;->HAS_SP3_RFRAME_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;

    .line 689
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRframeCapabilities:Ljava/util/EnumSet;

    .line 692
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;->HAS_STATIC_STS_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;

    .line 693
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mStsCapabilities:Ljava/util/EnumSet;

    .line 696
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_6M81_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    .line 697
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    .line 699
    const-class v1, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 700
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 702
    const-class v1, Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;

    .line 703
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 705
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMessageSize:Ljava/lang/Integer;

    .line 707
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    .line 710
    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceType:I

    .line 713
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSuspendRangingSupport:Z

    .line 716
    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSessionKeyLength:I

    .line 719
    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDtTagMaxActiveRr:I

    .line 722
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBackgroundRangingSupport:Z

    .line 725
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDtTagBlockSkippingSupport:Z

    .line 728
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasPsduLengthSupport:Z

    .line 968
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/fira/FiraSpecificationParams;)V
    .locals 5
    .param p1, "params"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 616
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 617
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 618
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSupportedChannels:Ljava/util/List;

    .line 622
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;

    .line 623
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mAoaCapabilities:Ljava/util/EnumSet;

    .line 626
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLLER_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLEE_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 627
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    .line 632
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 633
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    .line 635
    const/4 v0, 0x0

    .line 705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 635
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBlockStridingSupport:Z

    .line 637
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasHoppingPreferenceSupport:Z

    .line 639
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasExtendedMacAddressSupport:Z

    .line 641
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasNonDeferredModeSupport:Z

    .line 643
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasInitiationTimeSupport:Z

    .line 645
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasRssiReportingSupport:Z

    .line 647
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDiagnosticsSupport:Z

    .line 649
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinRangingInterval:I

    .line 651
    iput v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinSlotDurationUs:I

    .line 653
    const/4 v3, 0x5

    iput v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 655
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCountryCode:Ljava/lang/String;

    .line 657
    iput v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mUciVersion:I

    .line 660
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;->HAS_UNICAST_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;

    .line 661
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    .line 663
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;->HAS_INTERVAL_BASED_SCHEDULING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;->HAS_BLOCK_BASED_SCHEDULING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;

    .line 664
    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    .line 668
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_CONTENTION_BASED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_TIME_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    sget-object v4, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_HYBRID_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    .line 669
    invoke-static {v1, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    .line 674
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_7_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    .line 675
    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    .line 680
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->HAS_BPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    .line 681
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPrfCapabilities:Ljava/util/EnumSet;

    .line 684
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_DS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 685
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    .line 688
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;->HAS_SP3_RFRAME_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;

    .line 689
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRframeCapabilities:Ljava/util/EnumSet;

    .line 692
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;->HAS_STATIC_STS_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;

    .line 693
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mStsCapabilities:Ljava/util/EnumSet;

    .line 696
    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_6M81_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    .line 697
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    .line 699
    const-class v1, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 700
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 702
    const-class v1, Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;

    .line 703
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 705
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMessageSize:Ljava/lang/Integer;

    .line 707
    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    .line 710
    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceType:I

    .line 713
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSuspendRangingSupport:Z

    .line 716
    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSessionKeyLength:I

    .line 719
    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDtTagMaxActiveRr:I

    .line 722
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBackgroundRangingSupport:Z

    .line 725
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDtTagBlockSkippingSupport:Z

    .line 728
    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasPsduLengthSupport:Z

    .line 971
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 972
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 973
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 974
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 975
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSupportedChannels:Ljava/util/List;

    .line 976
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mAoaCapabilities:Ljava/util/EnumSet;

    .line 977
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    .line 978
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBlockStridingSupport:Z

    .line 979
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasHoppingPreferenceSupport:Z

    .line 980
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$900(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasExtendedMacAddressSupport:Z

    .line 981
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasNonDeferredModeSupport:Z

    .line 982
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasInitiationTimeSupport:Z

    .line 983
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasRssiReportingSupport:Z

    .line 984
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDiagnosticsSupport:Z

    .line 985
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinRangingInterval:I

    .line 986
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinSlotDurationUs:I

    .line 987
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 988
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    .line 989
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    .line 990
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$1900(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    .line 991
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    .line 992
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPrfCapabilities:Ljava/util/EnumSet;

    .line 993
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    .line 994
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRframeCapabilities:Ljava/util/EnumSet;

    .line 995
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mStsCapabilities:Ljava/util/EnumSet;

    .line 996
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    .line 997
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 998
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 999
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMessageSize:Ljava/lang/Integer;

    .line 1000
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$2900(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    .line 1001
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    .line 1002
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceType:I

    .line 1003
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSuspendRangingSupport:Z

    .line 1004
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSessionKeyLength:I

    .line 1005
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDtTagMaxActiveRr:I

    .line 1006
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBackgroundRangingSupport:Z

    .line 1007
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDtTagBlockSkippingSupport:Z

    .line 1008
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasPsduLengthSupport:Z

    .line 1009
    invoke-static {p1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->access$3800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCountryCode:Ljava/lang/String;

    .line 1010
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraSpecificationParams;
    .locals 44

    .line 1013
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/uwb/support/fira/FiraSpecificationParams;

    iget-object v2, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v3, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v4, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v5, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSupportedChannels:Ljava/util/List;

    iget-object v7, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mAoaCapabilities:Ljava/util/EnumSet;

    iget-object v8, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    iget-boolean v9, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBlockStridingSupport:Z

    iget-boolean v10, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasHoppingPreferenceSupport:Z

    iget-boolean v11, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasExtendedMacAddressSupport:Z

    iget-boolean v12, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasNonDeferredModeSupport:Z

    iget-boolean v13, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasInitiationTimeSupport:Z

    iget-boolean v14, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasRssiReportingSupport:Z

    iget-boolean v15, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDiagnosticsSupport:Z

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinRangingInterval:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinSlotDurationUs:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPrfCapabilities:Ljava/util/EnumSet;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRframeCapabilities:Ljava/util/EnumSet;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mStsCapabilities:Ljava/util/EnumSet;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMessageSize:Ljava/lang/Integer;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    move-object/from16 v33, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceType:I

    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSuspendRangingSupport:Z

    move/from16 v35, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSessionKeyLength:I

    move/from16 v36, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDtTagMaxActiveRr:I

    move/from16 v37, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBackgroundRangingSupport:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDtTagBlockSkippingSupport:Z

    move/from16 v39, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasPsduLengthSupport:Z

    move/from16 v40, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCountryCode:Ljava/lang/String;

    move-object/from16 v41, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mUciVersion:I

    const/16 v42, 0x0

    move-object/from16 v43, v41

    move/from16 v41, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move/from16 v33, v34

    move/from16 v34, v35

    move/from16 v35, v36

    move/from16 v36, v37

    move/from16 v37, v38

    move/from16 v38, v39

    move/from16 v39, v40

    move-object/from16 v40, v43

    invoke-direct/range {v1 .. v42}, Lcom/google/uwb/support/fira/FiraSpecificationParams;-><init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Ljava/util/List;Ljava/util/EnumSet;Ljava/util/EnumSet;ZZZZZZZIIILjava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/EnumSet;IZIIZZZLjava/lang/String;ILcom/google/uwb/support/fira/FiraSpecificationParams$1;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public hasBlockStridingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 773
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBlockStridingSupport:Z

    .line 774
    return-object p0
.end method

.method public hasDiagnosticsSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 805
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDiagnosticsSupport:Z

    .line 806
    return-object p0
.end method

.method public hasExtendedMacAddressSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 783
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasExtendedMacAddressSupport:Z

    .line 784
    return-object p0
.end method

.method public hasHoppingPreferenceSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 778
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasHoppingPreferenceSupport:Z

    .line 779
    return-object p0
.end method

.method public hasInitiationTimeSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 793
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasInitiationTimeSupport:Z

    .line 794
    return-object p0
.end method

.method public hasNonDeferredModeSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 788
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasNonDeferredModeSupport:Z

    .line 789
    return-object p0
.end method

.method public hasRssiReportingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 799
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasRssiReportingSupport:Z

    .line 800
    return-object p0
.end method

.method public setAoaCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 762
    .local p1, "aoaCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mAoaCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 763
    return-object p0
.end method

.method public setBackgroundRangingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 943
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasBackgroundRangingSupport:Z

    .line 944
    return-object p0
.end method

.method public setBprfParameterSetCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 895
    .local p1, "bprfParameterSetCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 896
    return-object p0
.end method

.method public setCcConstraintLengthCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 859
    .local p1, "ccConstraintLengthCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 860
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 958
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mCountryCode:Ljava/lang/String;

    .line 959
    return-object p0
.end method

.method public setDeviceRoleCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 768
    .local p1, "deviceRoleCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 769
    return-object p0
.end method

.method public setDeviceType(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .line 922
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDeviceType:I

    .line 923
    return-object p0
.end method

.method public setDtTagBlockSkippingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 948
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasDtTagBlockSkippingSupport:Z

    .line 949
    return-object p0
.end method

.method public setDtTagMaxActiveRr(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 938
    iput p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mDtTagMaxActiveRr:I

    .line 939
    return-object p0
.end method

.method public setHprfParameterSetCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 901
    .local p1, "hprfParameterSetCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 902
    return-object p0
.end method

.method public setMaxDataPacketPayloadSize(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .line 917
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    .line 918
    return-object p0
.end method

.method public setMaxMacVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "version"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 750
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 751
    return-object p0
.end method

.method public setMaxMessageSize(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .line 912
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxMessageSize:Ljava/lang/Integer;

    .line 913
    return-object p0
.end method

.method public setMaxPhyVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "version"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 738
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 739
    return-object p0
.end method

.method public setMaxRangingSessionNumberSupported(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 835
    iput p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMaxRangingSessionNumber:I

    .line 836
    return-object p0
.end method

.method public setMinMacVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "version"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 744
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 745
    return-object p0
.end method

.method public setMinPhyVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "version"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 732
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 733
    return-object p0
.end method

.method public setMinRangingIntervalSupported(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 815
    iput p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinRangingInterval:I

    .line 816
    return-object p0
.end method

.method public setMinSlotDurationSupportedUs(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 825
    iput p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMinSlotDurationUs:I

    .line 826
    return-object p0
.end method

.method public setMultiNodeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 841
    .local p1, "multiNodeCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 842
    return-object p0
.end method

.method public setPrfCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 865
    .local p1, "prfCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPrfCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 866
    return-object p0
.end method

.method public setPsduDataRateCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 889
    .local p1, "psduDataRateCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 890
    return-object p0
.end method

.method public setPsduLengthSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 953
    iput-boolean p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mHasPsduLengthSupport:Z

    .line 954
    return-object p0
.end method

.method public setRangeDataNtfConfigCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 907
    .local p1, "rangeDataNtfConfigCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 908
    return-object p0
.end method

.method public setRangingRoundCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 871
    .local p1, "rangingRoundCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 872
    return-object p0
.end method

.method public setRangingTimeStructCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 847
    .local p1, "rangingTimeStructCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 848
    return-object p0
.end method

.method public setRframeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 877
    .local p1, "rframeCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mRframeCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 878
    return-object p0
.end method

.method public setSchedulingModeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 853
    .local p1, "schedulingModeCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 854
    return-object p0
.end method

.method public setSessionKeyLength(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .line 933
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSessionKeyLength:I

    .line 934
    return-object p0
.end method

.method public setStsCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 883
    .local p1, "stsCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mStsCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 884
    return-object p0
.end method

.method public setSupportedChannels(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;"
        }
    .end annotation

    .line 756
    .local p1, "supportedChannels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSupportedChannels:Ljava/util/List;

    .line 757
    return-object p0
.end method

.method public setSuspendRangingSupport(Ljava/lang/Boolean;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 928
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mSuspendRangingSupport:Z

    .line 929
    return-object p0
.end method

.method public setUciVersionSupported(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 0
    .param p1, "uciVersion"    # I

    .line 964
    iput p1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->mUciVersion:I

    .line 965
    return-object p0
.end method
