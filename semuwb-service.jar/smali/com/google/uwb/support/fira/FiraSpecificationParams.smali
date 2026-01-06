.class public Lcom/google/uwb/support/fira/FiraSpecificationParams;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_2:I = 0x2

.field private static final BUNDLE_VERSION_CURRENT:I = 0x2

.field public static final DEFAULT_MAX_RANGING_SESSIONS_NUMBER:I = 0x5

.field public static final DT_TAG_MAX_ACTIVE_RR:Ljava/lang/String; = "dt_tag_max_active_rr"

.field private static final KEY_AOA_CAPABILITIES:Ljava/lang/String; = "aoa_capabilities"

.field public static final KEY_BACKGROUND_RANGING_SUPPORT:Ljava/lang/String; = "background_ranging_support"

.field private static final KEY_BLOCK_STRIDING_SUPPORT:Ljava/lang/String; = "block_striding"

.field private static final KEY_BPRF_PARAMETER_SET_CAPABILITIES:Ljava/lang/String; = "bprf_parameter_set_capabilities"

.field private static final KEY_CC_CONSTRAINT_LENGTH_CAPABILITIES:Ljava/lang/String; = "cc_constraint_length_capabilities"

.field public static final KEY_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field private static final KEY_DEVICE_ROLE_CAPABILITIES:Ljava/lang/String; = "device_role_capabilities"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final KEY_DIAGNOSTICS_SUPPORT:Ljava/lang/String; = "diagnostics"

.field public static final KEY_DT_TAG_BLOCK_SKIPPING_SUPPORT:Ljava/lang/String; = "dt_tag_block_skipping"

.field private static final KEY_EXTENDED_MAC_ADDRESS_SUPPORT:Ljava/lang/String; = "extended_mac_address"

.field private static final KEY_HOPPING_PREFERENCE_SUPPORT:Ljava/lang/String; = "hopping_preference"

.field private static final KEY_HPRF_PARAMETER_SET_CAPABILITIES:Ljava/lang/String; = "hprf_parameter_set_capabilities"

.field private static final KEY_INITIATION_TIME_SUPPORT:Ljava/lang/String; = "initiation_time"

.field private static final KEY_MAX_DATA_PACKET_PAYLOAD_SIZE:Ljava/lang/String; = "max_data_packet_payload_size"

.field private static final KEY_MAX_MAC_VERSION:Ljava/lang/String; = "max_mac_version"

.field private static final KEY_MAX_MESSAGE_SIZE:Ljava/lang/String; = "max_message_size"

.field private static final KEY_MAX_PHY_VERSION:Ljava/lang/String; = "max_phy_version"

.field private static final KEY_MAX_RANGING_SESSION_NUMBER:Ljava/lang/String; = "max_ranging_session_number"

.field private static final KEY_MIN_MAC_VERSION:Ljava/lang/String; = "min_mac_version"

.field private static final KEY_MIN_PHY_VERSION:Ljava/lang/String; = "min_phy_version"

.field private static final KEY_MIN_RANGING_INTERVAL:Ljava/lang/String; = "min_ranging_interval"

.field private static final KEY_MIN_SLOT_DURATION:Ljava/lang/String; = "min_slot_duration"

.field private static final KEY_MULTI_NODE_CAPABILITIES:Ljava/lang/String; = "multi_node_capabilities"

.field private static final KEY_NON_DEFERRED_MODE_SUPPORT:Ljava/lang/String; = "non_deferred_mode"

.field private static final KEY_PRF_CAPABILITIES:Ljava/lang/String; = "prf_capabilities"

.field private static final KEY_PSDU_DATA_RATE_CAPABILITIES:Ljava/lang/String; = "psdu_data_rate_capabilities"

.field public static final KEY_PSDU_LENGTH_SUPPORT:Ljava/lang/String; = "psdu_length_support"

.field private static final KEY_RANGE_DATA_NTF_CONFIG_CAPABILITIES:Ljava/lang/String; = "range_data_ntf_config_capabilities"

.field private static final KEY_RANGING_ROUND_CAPABILITIES:Ljava/lang/String; = "ranging_round_capabilities"

.field private static final KEY_RANGING_TIME_STRUCT_CAPABILITIES:Ljava/lang/String; = "ranging_time_struct_capabilities"

.field private static final KEY_RFRAME_CAPABILITIES:Ljava/lang/String; = "rframe_capabilities"

.field private static final KEY_RSSI_REPORTING_SUPPORT:Ljava/lang/String; = "rssi_reporting"

.field private static final KEY_SCHEDULING_MODE_CAPABILITIES:Ljava/lang/String; = "scheduling_mode_capabilities"

.field private static final KEY_SESSION_KEY_LENGTH:Ljava/lang/String; = "session_key_length"

.field private static final KEY_STS_CAPABILITIES:Ljava/lang/String; = "sts_capabilities"

.field private static final KEY_SUPPORTED_CHANNELS:Ljava/lang/String; = "channels"

.field private static final KEY_SUSPEND_RANGING_SUPPORT:Ljava/lang/String; = "suspend_ranging_support"

.field public static final KEY_UCI_VERSION:Ljava/lang/String; = "uci_version"


# instance fields
.field private final mAoaCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mBprfParameterSetCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mCcConstraintLengthCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mCountryCode:Ljava/lang/String;

.field private final mDeviceRoleCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceType:I

.field private final mDtTagMaxActiveRr:I

.field private final mHasBackgroundRangingSupport:Z

.field private final mHasBlockStridingSupport:Z

.field private final mHasDiagnosticsSupport:Z

.field private final mHasDtTagBlockSkippingSupport:Z

.field private final mHasExtendedMacAddressSupport:Z

.field private final mHasHoppingPreferenceSupport:Z

.field private final mHasInitiationTimeSupport:Z

.field private final mHasNonDeferredModeSupport:Z

.field private final mHasPsduLengthSupport:Z

.field private final mHasRssiReportingSupport:Z

.field private final mHprfParameterSetCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxDataPacketPayloadSize:Ljava/lang/Integer;

.field private final mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private final mMaxMessageSize:Ljava/lang/Integer;

.field private final mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private final mMaxRangingSessionNumber:I

.field private final mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private final mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private final mMinRangingInterval:I

.field private final mMinSlotDurationUs:I

.field private final mMultiNodeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrfCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsduDataRateCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mRangingRoundCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mRangingTimeStructCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mRframeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mSchedulingModeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionKeyLength:I

.field private final mStsCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuspendRangingSupport:Z

.field private final mUciVersion:I


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Ljava/util/List;Ljava/util/EnumSet;Ljava/util/EnumSet;ZZZZZZZIIILjava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/EnumSet;IZIIZZZLjava/lang/String;I)V
    .locals 16
    .param p1, "minPhyVersionSupported"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p2, "maxPhyVersionSupported"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p3, "minMacVersionSupported"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p4, "maxMacVersionSupported"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p8, "hasBlockStridingSupport"    # Z
    .param p9, "hasHoppingPreferenceSupport"    # Z
    .param p10, "hasExtendedMacAddressSupport"    # Z
    .param p11, "hasNonDeferredModeSupport"    # Z
    .param p12, "hasInitiationTimeSupport"    # Z
    .param p13, "hasRssiReportingSupport"    # Z
    .param p14, "hasDiagnosticsSupport"    # Z
    .param p15, "minRangingInterval"    # I
    .param p16, "minSlotDurationUs"    # I
    .param p17, "maxRangingSessionNumber"    # I
    .param p29, "maxMessageSize"    # Ljava/lang/Integer;
    .param p30, "maxDataPacketPayloadSize"    # Ljava/lang/Integer;
    .param p32, "deviceType"    # I
    .param p33, "suspendRangingSupport"    # Z
    .param p34, "sessionKeyLength"    # I
    .param p35, "dtTagMaxActiveRr"    # I
    .param p36, "hasBackgroundRangingSupport"    # Z
    .param p37, "hasDtTagBlockSkippingSupport"    # Z
    .param p38, "hasPsduLengthSupport"    # Z
    .param p39, "countryCode"    # Ljava/lang/String;
    .param p40, "uciVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/uwb/support/fira/FiraProtocolVersion;",
            "Lcom/google/uwb/support/fira/FiraProtocolVersion;",
            "Lcom/google/uwb/support/fira/FiraProtocolVersion;",
            "Lcom/google/uwb/support/fira/FiraProtocolVersion;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;",
            ">;ZZZZZZZIII",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;",
            ">;IZIIZZZ",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 214
    .local p5, "supportedChannels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "aoaCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;>;"
    .local p7, "deviceRoleCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;>;"
    .local p18, "multiNodeCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;>;"
    .local p19, "rangingTimeStructCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;>;"
    .local p20, "schedulingModeCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;>;"
    .local p21, "ccConstraintLengthCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;>;"
    .local p22, "prfCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;>;"
    .local p23, "rangingRoundCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;>;"
    .local p24, "rframeCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;>;"
    .local p25, "stsCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;>;"
    .local p26, "psduDataRateCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;>;"
    .local p27, "bprfParameterSetCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;>;"
    .local p28, "hprfParameterSetCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;>;"
    .local p31, "rangeDataNtfConfigCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 215
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 216
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 217
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 218
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 219
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSupportedChannels:Ljava/util/List;

    .line 220
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mAoaCapabilities:Ljava/util/EnumSet;

    .line 221
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    .line 222
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBlockStridingSupport:Z

    .line 223
    move/from16 v9, p9

    iput-boolean v9, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasHoppingPreferenceSupport:Z

    .line 224
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasExtendedMacAddressSupport:Z

    .line 225
    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasNonDeferredModeSupport:Z

    .line 226
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasInitiationTimeSupport:Z

    .line 227
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasRssiReportingSupport:Z

    .line 228
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDiagnosticsSupport:Z

    .line 229
    move/from16 v15, p15

    iput v15, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinRangingInterval:I

    .line 230
    move/from16 v1, p16

    iput v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinSlotDurationUs:I

    .line 231
    move/from16 v1, p17

    iput v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxRangingSessionNumber:I

    .line 232
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    .line 233
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    .line 234
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    .line 235
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    .line 236
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPrfCapabilities:Ljava/util/EnumSet;

    .line 237
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    .line 238
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRframeCapabilities:Ljava/util/EnumSet;

    .line 239
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mStsCapabilities:Ljava/util/EnumSet;

    .line 240
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    .line 241
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 242
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 243
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMessageSize:Ljava/lang/Integer;

    .line 244
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    .line 245
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    .line 246
    move/from16 v1, p32

    iput v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceType:I

    .line 247
    move/from16 v1, p33

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSuspendRangingSupport:Z

    .line 248
    move/from16 v1, p34

    iput v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSessionKeyLength:I

    .line 249
    move/from16 v1, p35

    iput v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDtTagMaxActiveRr:I

    .line 250
    move/from16 v1, p36

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBackgroundRangingSupport:Z

    .line 251
    move/from16 v1, p37

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDtTagBlockSkippingSupport:Z

    .line 252
    move/from16 v1, p38

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasPsduLengthSupport:Z

    .line 253
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCountryCode:Ljava/lang/String;

    .line 254
    move/from16 v1, p40

    iput v1, v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mUciVersion:I

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Ljava/util/List;Ljava/util/EnumSet;Ljava/util/EnumSet;ZZZZZZZIIILjava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/EnumSet;IZIIZZZLjava/lang/String;ILcom/google/uwb/support/fira/FiraSpecificationParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p2, "x1"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p3, "x2"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p4, "x3"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/util/EnumSet;
    .param p7, "x6"    # Ljava/util/EnumSet;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z
    .param p12, "x11"    # Z
    .param p13, "x12"    # Z
    .param p14, "x13"    # Z
    .param p15, "x14"    # I
    .param p16, "x15"    # I
    .param p17, "x16"    # I
    .param p18, "x17"    # Ljava/util/EnumSet;
    .param p19, "x18"    # Ljava/util/EnumSet;
    .param p20, "x19"    # Ljava/util/EnumSet;
    .param p21, "x20"    # Ljava/util/EnumSet;
    .param p22, "x21"    # Ljava/util/EnumSet;
    .param p23, "x22"    # Ljava/util/EnumSet;
    .param p24, "x23"    # Ljava/util/EnumSet;
    .param p25, "x24"    # Ljava/util/EnumSet;
    .param p26, "x25"    # Ljava/util/EnumSet;
    .param p27, "x26"    # Ljava/util/EnumSet;
    .param p28, "x27"    # Ljava/util/EnumSet;
    .param p29, "x28"    # Ljava/lang/Integer;
    .param p30, "x29"    # Ljava/lang/Integer;
    .param p31, "x30"    # Ljava/util/EnumSet;
    .param p32, "x31"    # I
    .param p33, "x32"    # Z
    .param p34, "x33"    # I
    .param p35, "x34"    # I
    .param p36, "x35"    # Z
    .param p37, "x36"    # Z
    .param p38, "x37"    # Z
    .param p39, "x38"    # Ljava/lang/String;
    .param p40, "x39"    # I
    .param p41, "x40"    # Lcom/google/uwb/support/fira/FiraSpecificationParams$1;

    .line 38
    invoke-direct/range {p0 .. p40}, Lcom/google/uwb/support/fira/FiraSpecificationParams;-><init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Lcom/google/uwb/support/fira/FiraProtocolVersion;Ljava/util/List;Ljava/util/EnumSet;Ljava/util/EnumSet;ZZZZZZZIIILjava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/EnumSet;IZIIZZZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasNonDeferredModeSupport:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasInitiationTimeSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasRssiReportingSupport:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDiagnosticsSupport:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinRangingInterval:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinSlotDurationUs:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxRangingSessionNumber:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPrfCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRframeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mStsCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMessageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceType:I

    return v0
.end method

.method static synthetic access$3200(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSuspendRangingSupport:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSessionKeyLength:I

    return v0
.end method

.method static synthetic access$3400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDtTagMaxActiveRr:I

    return v0
.end method

.method static synthetic access$3500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBackgroundRangingSupport:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDtTagBlockSkippingSupport:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasPsduLengthSupport:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSupportedChannels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mAoaCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBlockStridingSupport:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasHoppingPreferenceSupport:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 38
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasExtendedMacAddressSupport:Z

    return v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 485
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->parseVersion2(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->build()Lcom/google/uwb/support/fira/FiraSpecificationParams;

    move-result-object v0

    return-object v0

    .line 491
    :pswitch_1
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->build()Lcom/google/uwb/support/fira/FiraSpecificationParams;

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 6
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 522
    new-instance v0, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;-><init>()V

    .line 523
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    nop

    .line 524
    const-string v1, "channels"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->toIntList([I)Ljava/util/List;

    move-result-object v1

    .line 525
    .local v1, "supportedChannels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 526
    const-string v2, "min_phy_version"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v2

    .line 525
    invoke-virtual {v0, v2}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMinPhyVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 528
    const-string v3, "max_phy_version"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v3

    .line 527
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMaxPhyVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 530
    const-string v3, "min_mac_version"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v3

    .line 529
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMinMacVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 532
    const-string v3, "max_mac_version"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v3

    .line 531
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMaxMacVersionSupported(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 533
    invoke-virtual {v2, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setSupportedChannels(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 536
    const-string v3, "aoa_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;

    move-result-object v4

    .line 535
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 534
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setAoaCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 539
    const-string v3, "device_role_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 540
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    move-result-object v4

    .line 538
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 537
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setDeviceRoleCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 541
    const-string v3, "block_striding"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasBlockStridingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 542
    const-string v3, "hopping_preference"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasHoppingPreferenceSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 543
    const-string v3, "extended_mac_address"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasExtendedMacAddressSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 544
    const-string v3, "non_deferred_mode"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasNonDeferredModeSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 545
    const-string v3, "initiation_time"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasInitiationTimeSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 546
    const-string v3, "min_ranging_interval"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMinRangingIntervalSupported(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 547
    const-string v3, "min_slot_duration"

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMinSlotDurationSupportedUs(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 550
    const-string v3, "multi_node_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 551
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;

    move-result-object v4

    .line 549
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 548
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMultiNodeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 554
    const-string v3, "ranging_time_struct_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 555
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;

    move-result-object v4

    .line 553
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 552
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setRangingTimeStructCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 558
    const-string v3, "scheduling_mode_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 559
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    move-result-object v4

    .line 557
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 556
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setSchedulingModeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 562
    const-string v3, "cc_constraint_length_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 563
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    move-result-object v4

    .line 561
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 560
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setCcConstraintLengthCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 566
    const-string v3, "prf_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    move-result-object v4

    .line 565
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 564
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setPrfCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 569
    const-string v3, "ranging_round_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 570
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    move-result-object v4

    .line 568
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 567
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setRangingRoundCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 573
    const-string v3, "rframe_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 574
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;

    move-result-object v4

    .line 572
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 571
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setRframeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 577
    const-string v3, "sts_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;

    move-result-object v4

    .line 576
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 575
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setStsCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 580
    const-string v3, "psdu_data_rate_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 581
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    move-result-object v4

    .line 579
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 578
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setPsduDataRateCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 584
    const-string v3, "bprf_parameter_set_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 585
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    move-result-object v4

    .line 583
    invoke-static {v3, v4}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 582
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setBprfParameterSetCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 586
    const-string v3, "max_message_size"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMaxMessageSize(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 587
    const-string v3, "max_data_packet_payload_size"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMaxDataPacketPayloadSize(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v2

    .line 590
    const-string v3, "hprf_parameter_set_capabilities"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 591
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;

    move-result-object v5

    .line 589
    invoke-static {v3, v4, v5}, Lcom/google/uwb/support/base/FlagEnum;->longToEnumSet(J[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 588
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setHprfParameterSetCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 593
    const-string v2, "range_data_ntf_config_capabilities"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    nop

    .line 596
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 597
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->values()[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    move-result-object v3

    .line 595
    invoke-static {v2, v3}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 594
    invoke-virtual {v0, v2}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setRangeDataNtfConfigCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 599
    :cond_0
    const-string v2, "rssi_reporting"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasRssiReportingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 602
    :cond_1
    const-string v2, "diagnostics"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->hasDiagnosticsSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 605
    :cond_2
    const-string v2, "max_ranging_session_number"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 606
    nop

    .line 607
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 606
    invoke-virtual {v0, v2}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setMaxRangingSessionNumberSupported(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 609
    :cond_3
    return-object v0
.end method

.method private static parseVersion2(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 508
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    move-result-object v0

    .line 509
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;
    const-string v1, "device_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setDeviceType(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 510
    const-string v1, "suspend_ranging_support"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setSuspendRangingSupport(Ljava/lang/Boolean;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 511
    const-string v1, "session_key_length"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setSessionKeyLength(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 512
    const-string v1, "dt_tag_max_active_rr"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setDtTagMaxActiveRr(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 513
    const-string v1, "background_ranging_support"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setBackgroundRangingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 514
    const-string v1, "dt_tag_block_skipping"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setDtTagBlockSkippingSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 515
    const-string v1, "psdu_length_support"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setPsduLengthSupport(Z)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 516
    const-string v1, "uci_version"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setUciVersionSupported(I)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 517
    const-string v1, "country_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;->setCountryCode(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraSpecificationParams$Builder;

    .line 518
    return-object v0
.end method

.method private static toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 425
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 426
    .local v0, "res":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 427
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toIntList([I)Ljava/util/List;
    .locals 5
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 502
    .local v3, "datum":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v3    # "datum":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAoaCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mAoaCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getBprfParameterSetCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 259
    const/4 v0, 0x2

    return v0
.end method

.method public getCcConstraintLengthCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRoleCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceType:I

    return v0
.end method

.method public getDtTagMaxActiveRr()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDtTagMaxActiveRr:I

    return v0
.end method

.method public getHprfParameterSetCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getMaxDataPacketPayloadSize()Ljava/lang/Integer;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxMacVersionSupported()Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method public getMaxMessageSize()Ljava/lang/Integer;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMessageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxPhyVersionSupported()Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method public getMaxRangingSessionNumber()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxRangingSessionNumber:I

    return v0
.end method

.method public getMinMacVersionSupported()Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method public getMinPhyVersionSupported()Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method public getMinRangingInterval()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinRangingInterval:I

    return v0
.end method

.method public getMinSlotDurationUs()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinSlotDurationUs:I

    return v0
.end method

.method public getMultiNodeCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPrfCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPrfCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPsduDataRateCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRangeDataNtfConfigCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRangingRoundCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRangingTimeStructCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRframeCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRframeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getSchedulingModeCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getSessionKeyLength()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSessionKeyLength:I

    return v0
.end method

.method public getStsCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mStsCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getSupportedChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSupportedChannels:Ljava/util/List;

    return-object v0
.end method

.method public getUciVersionSupported()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mUciVersion:I

    return v0
.end method

.method public hasBackgroundRangingSupport()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBackgroundRangingSupport:Z

    return v0
.end method

.method public hasBlockStridingSupport()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBlockStridingSupport:Z

    return v0
.end method

.method public hasDiagnosticsSupport()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDiagnosticsSupport:Z

    return v0
.end method

.method public hasDtTagBlockSkippingSupport()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDtTagBlockSkippingSupport:Z

    return v0
.end method

.method public hasExtendedMacAddressSupport()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasExtendedMacAddressSupport:Z

    return v0
.end method

.method public hasHoppingPreferenceSupport()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasHoppingPreferenceSupport:Z

    return v0
.end method

.method public hasInitiationTimeSupport()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasInitiationTimeSupport:Z

    return v0
.end method

.method public hasNonDeferredModeSupport()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasNonDeferredModeSupport:Z

    return v0
.end method

.method public hasPsduLengthSupport()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasPsduLengthSupport:Z

    return v0
.end method

.method public hasRssiReportingSupport()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasRssiReportingSupport:Z

    return v0
.end method

.method public hasSuspendRangingSupport()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSuspendRangingSupport:Z

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 434
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 435
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "min_phy_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxPhyVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_phy_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "min_mac_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMacVersionSupported:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_mac_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSupportedChannels:Ljava/util/List;

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "channels"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 440
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mAoaCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "aoa_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 441
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceRoleCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "device_role_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 442
    const-string v1, "block_striding"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBlockStridingSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    const-string v1, "hopping_preference"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasHoppingPreferenceSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    const-string v1, "extended_mac_address"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasExtendedMacAddressSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string v1, "non_deferred_mode"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasNonDeferredModeSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    const-string v1, "initiation_time"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasInitiationTimeSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    const-string v1, "rssi_reporting"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasRssiReportingSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-string v1, "diagnostics"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDiagnosticsSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    const-string v1, "min_ranging_interval"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinRangingInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 450
    const-string v1, "min_slot_duration"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMinSlotDurationUs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string v1, "max_ranging_session_number"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxRangingSessionNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 452
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMultiNodeCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "multi_node_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 453
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingTimeStructCapabilities:Ljava/util/EnumSet;

    .line 454
    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    .line 453
    const-string v2, "ranging_time_struct_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 455
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSchedulingModeCapabilities:Ljava/util/EnumSet;

    .line 456
    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    .line 455
    const-string v2, "scheduling_mode_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 457
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCcConstraintLengthCapabilities:Ljava/util/EnumSet;

    .line 458
    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    .line 457
    const-string v2, "cc_constraint_length_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 459
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPrfCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "prf_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 460
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangingRoundCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "ranging_round_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 461
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRframeCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "rframe_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 462
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mStsCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "sts_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 463
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mPsduDataRateCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "psdu_data_rate_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 464
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mBprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 465
    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    .line 464
    const-string v2, "bprf_parameter_set_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 466
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHprfParameterSetCapabilities:Ljava/util/EnumSet;

    .line 467
    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toLong(Ljava/util/Set;)J

    move-result-wide v1

    .line 466
    const-string v3, "hprf_parameter_set_capabilities"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 468
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxMessageSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "max_message_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 469
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mMaxDataPacketPayloadSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "max_data_packet_payload_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 470
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mRangeDataNtfConfigCapabilities:Ljava/util/EnumSet;

    .line 471
    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    .line 470
    const-string v2, "range_data_ntf_config_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string v1, "device_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v1, "suspend_ranging_support"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSuspendRangingSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const-string v1, "session_key_length"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mSessionKeyLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 475
    const-string v1, "dt_tag_max_active_rr"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mDtTagMaxActiveRr:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 476
    const-string v1, "background_ranging_support"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasBackgroundRangingSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    const-string v1, "dt_tag_block_skipping"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasDtTagBlockSkippingSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    const-string v1, "psdu_length_support"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mHasPsduLengthSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    const-string v1, "country_code"

    iget-object v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v1, "uci_version"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSpecificationParams;->mUciVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 481
    return-object v0
.end method
