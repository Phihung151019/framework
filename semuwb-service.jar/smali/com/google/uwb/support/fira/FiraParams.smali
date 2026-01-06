.class public abstract Lcom/google/uwb/support/fira/FiraParams;
.super Lcom/google/uwb/support/base/Params;
.source "FiraParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraParams$AntennaMode;,
        Lcom/google/uwb/support/fira/FiraParams$FilterType;,
        Lcom/google/uwb/support/fira/FiraParams$SessionType;,
        Lcom/google/uwb/support/fira/FiraParams$SessionKeyLength;,
        Lcom/google/uwb/support/fira/FiraParams$SuspendRanging;,
        Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$HprfParameterSetCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$StsCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$RframeCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;,
        Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;,
        Lcom/google/uwb/support/fira/FiraParams$RangingTimeStructCapabilitiesFlag;,
        Lcom/google/uwb/support/fira/FiraParams$MultiNodeCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;,
        Lcom/google/uwb/support/fira/FiraParams$UlTdoaTxTimestampType;,
        Lcom/google/uwb/support/fira/FiraParams$UlTdoaDeviceIdType;,
        Lcom/google/uwb/support/fira/FiraParams$DeviceClass;,
        Lcom/google/uwb/support/fira/FiraParams$MulticastListUpdateStatus;,
        Lcom/google/uwb/support/fira/FiraParams$MulticastListUpdateAction;,
        Lcom/google/uwb/support/fira/FiraParams$StateChangeReasonCode;,
        Lcom/google/uwb/support/fira/FiraParams$DataTransferPhaseConfigNtfStatusCode;,
        Lcom/google/uwb/support/fira/FiraParams$DataTransferStatusNtfCode;,
        Lcom/google/uwb/support/fira/FiraParams$StatusCode;,
        Lcom/google/uwb/support/fira/FiraParams$AoaType;,
        Lcom/google/uwb/support/fira/FiraParams$MacAddressMode;,
        Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfig;,
        Lcom/google/uwb/support/fira/FiraParams$StsLength;,
        Lcom/google/uwb/support/fira/FiraParams$HoppingMode;,
        Lcom/google/uwb/support/fira/FiraParams$SfdIdValue;,
        Lcom/google/uwb/support/fira/FiraParams$StsSegmentCountValue;,
        Lcom/google/uwb/support/fira/FiraParams$AoaResultRequestMode;,
        Lcom/google/uwb/support/fira/FiraParams$StsConfig;,
        Lcom/google/uwb/support/fira/FiraParams$MacFcsType;,
        Lcom/google/uwb/support/fira/FiraParams$BprfPhrDataRate;,
        Lcom/google/uwb/support/fira/FiraParams$PsduDataRate;,
        Lcom/google/uwb/support/fira/FiraParams$PreambleDuration;,
        Lcom/google/uwb/support/fira/FiraParams$PrfMode;,
        Lcom/google/uwb/support/fira/FiraParams$MeasurementReportPhase;,
        Lcom/google/uwb/support/fira/FiraParams$MeasurementReportType;,
        Lcom/google/uwb/support/fira/FiraParams$CcConstraintLength;,
        Lcom/google/uwb/support/fira/FiraParams$PhaseParticipationHybridSessionController;,
        Lcom/google/uwb/support/fira/FiraParams$RangingTimeStruct;,
        Lcom/google/uwb/support/fira/FiraParams$SchedulingMode;,
        Lcom/google/uwb/support/fira/FiraParams$MultiNodeMode;,
        Lcom/google/uwb/support/fira/FiraParams$RangingRoundUsage;,
        Lcom/google/uwb/support/fira/FiraParams$RangingDeviceRole;,
        Lcom/google/uwb/support/fira/FiraParams$RangingDeviceType;,
        Lcom/google/uwb/support/fira/FiraParams$RframeConfig;,
        Lcom/google/uwb/support/fira/FiraParams$UwbPreambleCodeIndex;,
        Lcom/google/uwb/support/fira/FiraParams$UwbChannel;,
        Lcom/google/uwb/support/fira/FiraParams$ServiceID;
    }
.end annotation


# static fields
.field public static final ANTENNA_MODE_DIRECTIONAL:I = 0x1

.field public static final ANTENNA_MODE_OMNI:I = 0x0

.field public static final AOA_RESULT_REQUEST_MODE_NO_AOA_REPORT:I = 0x0

.field public static final AOA_RESULT_REQUEST_MODE_REQ_AOA_RESULTS:I = 0x1

.field public static final AOA_RESULT_REQUEST_MODE_REQ_AOA_RESULTS_AZIMUTH_ONLY:I = 0x2

.field public static final AOA_RESULT_REQUEST_MODE_REQ_AOA_RESULTS_ELEVATION_ONLY:I = 0x3

.field public static final AOA_RESULT_REQUEST_MODE_REQ_AOA_RESULTS_INTERLEAVED:I = 0xf0

.field public static final AOA_TYPE_AZIMUTH:I = 0x0

.field public static final AOA_TYPE_AZIMUTH_AND_ELEVATION:I = 0x2

.field public static final AOA_TYPE_ELEVATION:I = 0x1

.field public static final APPLICATION_DATA_ENDPOINT_DEFAULT:I = 0x0

.field public static final BLOCK_BASED_SCHEDULING:I = 0x1

.field public static final BPRF_PHR_DATA_RATE_6M81:I = 0x1

.field public static final BPRF_PHR_DATA_RATE_850K:I = 0x0

.field public static final CONSTRAINT_LENGTH_3:I = 0x3

.field public static final CONSTRAINT_LENGTH_7:I = 0x7

.field public static final CONTENTION_BASED_RANGING:I = 0x0

.field public static final DATA_MSG_LENGTH:I = 0x2

.field public static final DEVICE_CLASS_1:I = 0x1

.field public static final DEVICE_CLASS_2:I = 0x2

.field public static final DEVICE_CLASS_3:I = 0x3

.field public static final FILTER_TYPE_APPLICATION:I = 0x2

.field public static final FILTER_TYPE_DEFAULT:I = 0x1

.field public static final FILTER_TYPE_NONE:I = 0x0

.field public static final HOPPING_MODE_DISABLE:I = 0x0

.field public static final HOPPING_MODE_FIRA_HOPPING_ENABLE:I = 0x1

.field public static final HYBRID_SCHEDULED_RANGING:I = 0x2

.field public static final INTERVAL_BASED_SCHEDULING:I = 0x0

.field public static final KEY_LENGTH_256_BITS_NOT_SUPPORTED:I = 0x0

.field public static final KEY_LENGTH_256_BITS_SUPPORTED:I = 0x1

.field public static final MAC_ADDRESS_MODE_2_BYTES:I = 0x0

.field public static final MAC_ADDRESS_MODE_8_BYTES:I = 0x2

.field public static final MAC_ADDRESS_MODE_8_BYTES_2_BYTES_HEADER:I = 0x1

.field public static final MAC_FCS_TYPE_CRC_16:I = 0x0

.field public static final MAC_FCS_TYPE_CRC_32:I = 0x1

.field public static final MAX_NUMBER_OF_MEASUREMENTS_DEFAULT:I = 0x0

.field public static final MEASUREMENT_REPORT_PHASE_NOTSET:I = 0x0

.field public static final MEASUREMENT_REPORT_PHASE_SET:I = 0x1

.field public static final MEASUREMENT_REPORT_TYPE_INITIATOR_TO_RESPONDER:I = 0x0

.field public static final MEASUREMENT_REPORT_TYPE_RESPONDER_TO_INITIATOR:I = 0x1

.field public static final MIN_CAP_SIZE:I = 0x5

.field public static final MULTICAST_LIST_UPDATE_ACTION_ADD:I = 0x0

.field public static final MULTICAST_LIST_UPDATE_ACTION_DELETE:I = 0x1

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_ADDRESS_ALREADY_PRESENT:I = 0x8

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_ADDRESS_NOT_FOUND:I = 0x7

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_KEY_FETCH_FAIL:I = 0x2

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_MULTICAST_LIST_FULL:I = 0x1

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_SESSION_KEY_NOT_FOUND:I = 0x6

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_SUB_SESSION_ID_NOT_FOUND:I = 0x3

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_SUB_SESSION_KEY_NOT_APPLICABLE:I = 0x5

.field public static final MULTICAST_LIST_UPDATE_STATUS_ERROR_SUB_SESSION_KEY_NOT_FOUND:I = 0x4

.field public static final MULTICAST_LIST_UPDATE_STATUS_OK:I = 0x0

.field public static final MULTI_NODE_MODE_MANY_TO_MANY:I = 0x2

.field public static final MULTI_NODE_MODE_ONE_TO_MANY:I = 0x1

.field public static final MULTI_NODE_MODE_UNICAST:I = 0x0

.field public static final NO_PARTICIPATION_IN_THE_PHASE:I = 0x1

.field public static final PACS_PROFILE_SERVICE_ID:I = 0x1

.field public static final PARTICIPATION_AS_DEFINED_DEVICE_ROLE:I = 0x0

.field public static final PARTICIPATION_AS_INITIATOR:I = 0x2

.field public static final PARTICIPATION_AS_RESPONDER:I = 0x3

.field public static final PREAMBLE_DURATION_T32_SYMBOLS:I = 0x0

.field public static final PREAMBLE_DURATION_T64_SYMBOLS:I = 0x1

.field public static final PRF_MODE_BPRF:I = 0x0

.field public static final PRF_MODE_HPRF:I = 0x1

.field public static final PRF_MODE_HPRF_HIGH_DATA_RATE:I = 0x2

.field public static final PROTOCOL_NAME:Ljava/lang/String; = "fira"

.field public static final PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field public static final PROTOCOL_VERSION_2_0:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field public static final PSDU_DATA_RATE_27M2:I = 0x2

.field public static final PSDU_DATA_RATE_31M2:I = 0x3

.field public static final PSDU_DATA_RATE_6M81:I = 0x0

.field public static final PSDU_DATA_RATE_7M80:I = 0x1

.field public static final P_STS_MULTICAST_LIST_UPDATE_ACTION_ADD_16_BYTE:I = 0x2

.field public static final P_STS_MULTICAST_LIST_UPDATE_ACTION_ADD_32_BYTE:I = 0x3

.field public static final RANGE_DATA_NTF_AOA_AZIMUTH_LOWER_DEFAULT:D = -3.141592653589793

.field public static final RANGE_DATA_NTF_AOA_AZIMUTH_UPPER_DEFAULT:D = 3.141592653589793

.field public static final RANGE_DATA_NTF_AOA_ELEVATION_LOWER_DEFAULT:D = -1.5707963267948966

.field public static final RANGE_DATA_NTF_AOA_ELEVATION_UPPER_DEFAULT:D = 1.5707963267948966

.field public static final RANGE_DATA_NTF_CONFIG_DISABLE:I = 0x0

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE:I = 0x1

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE_AOA_EDGE_TRIG:I = 0x6

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE_AOA_LEVEL_TRIG:I = 0x3

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_EDGE_TRIG:I = 0x7

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_LEVEL_TRIG:I = 0x4

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_EDGE_TRIG:I = 0x5

.field public static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_LEVEL_TRIG:I = 0x2

.field public static final RANGE_DATA_NTF_PROXIMITY_FAR_DEFAULT:I = 0x4e20

.field public static final RANGE_DATA_NTF_PROXIMITY_NEAR_DEFAULT:I = 0x0

.field public static final RANGING_DEVICE_DT_ANCHOR:I = 0x7

.field public static final RANGING_DEVICE_DT_TAG:I = 0x8

.field public static final RANGING_DEVICE_ROLE_ADVERTISER:I = 0x5

.field public static final RANGING_DEVICE_ROLE_INITIATOR:I = 0x1

.field public static final RANGING_DEVICE_ROLE_OBSERVER:I = 0x6

.field public static final RANGING_DEVICE_ROLE_RESPONDER:I = 0x0

.field public static final RANGING_DEVICE_TYPE_CONTROLEE:I = 0x0

.field public static final RANGING_DEVICE_TYPE_CONTROLLER:I = 0x1

.field public static final RANGING_DEVICE_TYPE_DT_TAG:I = 0x2

.field public static final RANGING_DEVICE_UT_TAG:I = 0x4

.field public static final RANGING_ROUND_USAGE_DATA_TRANSFER_MODE:I = 0x9

.field public static final RANGING_ROUND_USAGE_DL_TDOA:I = 0x5

.field public static final RANGING_ROUND_USAGE_DS_TWR_DEFERRED_MODE:I = 0x2

.field public static final RANGING_ROUND_USAGE_DS_TWR_NON_DEFERRED_MODE:I = 0x4

.field public static final RANGING_ROUND_USAGE_HYBRID_RANGING_MODE:I = 0xa

.field public static final RANGING_ROUND_USAGE_OWR_AOA_MEASUREMENT:I = 0x6

.field public static final RANGING_ROUND_USAGE_SS_TWR_DEFERRED_MODE:I = 0x1

.field public static final RANGING_ROUND_USAGE_SS_TWR_NON_DEFERRED_MODE:I = 0x3

.field public static final RANGING_ROUND_USAGE_UL_TDOA:I = 0x0

.field public static final RFRAME_CONFIG_SP0:I = 0x0

.field public static final RFRAME_CONFIG_SP1:I = 0x1

.field public static final RFRAME_CONFIG_SP3:I = 0x3

.field public static final SEQUENCE_NUMBER_LENGTH:I = 0x2

.field public static final SESSION_HANDLE_LEN:I = 0x4

.field public static final SESSION_OFFSET_TIME_LEN:I = 0x4

.field public static final SESSION_TIME_BASE_PARAM_LEN:I = 0x9

.field public static final SESSION_TIME_BASE_REFERENCE_FEATURE_ENABLED:I = 0x1

.field public static final SESSION_TYPE_DATA_TRANSFER:I = 0x2

.field public static final SESSION_TYPE_DEVICE_TEST_MODE:I = 0xd0

.field public static final SESSION_TYPE_HUS_PRIMARY_SESSION:I = 0x9f

.field public static final SESSION_TYPE_IN_BAND_DATA_PHASE:I = 0x4

.field public static final SESSION_TYPE_RANGING:I = 0x0

.field public static final SESSION_TYPE_RANGING_AND_IN_BAND_DATA:I = 0x1

.field public static final SESSION_TYPE_RANGING_ONLY_PHASE:I = 0x3

.field public static final SESSION_TYPE_RANGING_WITH_DATA_PHASE:I = 0x5

.field public static final SFD_ID_VALUE_0:I = 0x0

.field public static final SFD_ID_VALUE_1:I = 0x1

.field public static final SFD_ID_VALUE_2:I = 0x2

.field public static final SFD_ID_VALUE_3:I = 0x3

.field public static final SFD_ID_VALUE_4:I = 0x4

.field public static final SLOTS_PER_RR:I = 0x19

.field public static final STATE_CHANGE_REASON_CODE_BY_COMMANDS:I = 0x0

.field public static final STATE_CHANGE_REASON_CODE_ERROR_HUS_CAP_PHASE_TOO_SHORT:I = 0x28

.field public static final STATE_CHANGE_REASON_CODE_ERROR_HUS_CFP_PHASE_TOO_SHORT:I = 0x27

.field public static final STATE_CHANGE_REASON_CODE_ERROR_HUS_NOT_ENOUGH_SLOTS:I = 0x26

.field public static final STATE_CHANGE_REASON_CODE_ERROR_HUS_OTHERS:I = 0x29

.field public static final STATE_CHANGE_REASON_CODE_ERROR_INSUFFICIENT_SLOTS_PER_RR:I = 0x21

.field public static final STATE_CHANGE_REASON_CODE_ERROR_INVALID_RANGING_INTERVAL:I = 0x23

.field public static final STATE_CHANGE_REASON_CODE_ERROR_INVALID_RFRAME_CONFIG:I = 0x25

.field public static final STATE_CHANGE_REASON_CODE_ERROR_INVALID_STS_CONFIG:I = 0x24

.field public static final STATE_CHANGE_REASON_CODE_ERROR_MAC_ADDRESS_MODE_NOT_SUPPORTED:I = 0x22

.field public static final STATE_CHANGE_REASON_CODE_ERROR_SLOT_LENGTH_NOT_SUPPORTED:I = 0x20

.field public static final STATE_CHANGE_REASON_CODE_MAX_RR_RETRY_REACHED:I = 0x1

.field public static final STATUS_CODE_COMMAND_RETRY:I = 0xa

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_ERROR_DATA_TRANSFER:I = 0x2

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_ERROR_DATA_TRANSFER_IS_ONGOING:I = 0x6

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_ERROR_NO_CREDIT_AVAILABLE:I = 0x3

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_ERROR_REJECTED:I = 0x4

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_OK:I = 0x1

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_REPETITION_OK:I = 0x0

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_SESSION_TYPE_NOT_SUPPORTED:I = 0x5

.field public static final STATUS_CODE_DATA_TRANSFER_NTF_STATUS_INVALID_FORMAT:I = 0x7

.field public static final STATUS_CODE_DATA_TRANSFER_PHASE_CONFIG_DTPCM_CONFIG_SUCCESS:I = 0x0

.field public static final STATUS_CODE_DATA_TRANSFER_PHASE_CONFIG_ERROR_DUPLICATE_SLOT_ASSIGNMENT:I = 0x1

.field public static final STATUS_CODE_ERROR_ACTIVE_SESSIONS_ONGOING:I = 0x16

.field public static final STATUS_CODE_ERROR_ADDRESS_ALREADY_PRESENT:I = 0x19

.field public static final STATUS_CODE_ERROR_ADDRESS_NOT_FOUND:I = 0x18

.field public static final STATUS_CODE_ERROR_DL_TDOA_DEVICE_ADDRESS_NOT_MATCHING_IN_REPLY_TIME_LIST:I = 0x2b

.field public static final STATUS_CODE_ERROR_MAX_SESSIONS_EXCEEDED:I = 0x14

.field public static final STATUS_CODE_ERROR_MULTICAST_LIST_FULL:I = 0x17

.field public static final STATUS_CODE_ERROR_NUMBER_OF_ACTIVE_RANGING_ROUNDS_EXCEEDED:I = 0x29

.field public static final STATUS_CODE_ERROR_ROUND_INDEX_NOT_ACTIVATED:I = 0x28

.field public static final STATUS_CODE_ERROR_ROUND_INDEX_NOT_SET_AS_INITIATOR:I = 0x2a

.field public static final STATUS_CODE_ERROR_SESSION_ACTIVE:I = 0x13

.field public static final STATUS_CODE_ERROR_SESSION_DUPLICATE:I = 0x12

.field public static final STATUS_CODE_ERROR_SESSION_NOT_CONFIGURED:I = 0x15

.field public static final STATUS_CODE_ERROR_SESSION_NOT_EXIST:I = 0x11

.field public static final STATUS_CODE_FAILED:I = 0x2

.field public static final STATUS_CODE_INVALID_MESSAGE_SIZE:I = 0x6

.field public static final STATUS_CODE_INVALID_PARAM:I = 0x4

.field public static final STATUS_CODE_INVALID_RANGE:I = 0x5

.field public static final STATUS_CODE_OK:I = 0x0

.field public static final STATUS_CODE_OK_NEGATIVE_DISTANCE_REPORT:I = 0x1b

.field public static final STATUS_CODE_RANGING_RX_MAC_DEC_FAILED:I = 0x25

.field public static final STATUS_CODE_RANGING_RX_MAC_IE_DEC_FAILED:I = 0x26

.field public static final STATUS_CODE_RANGING_RX_MAC_IE_MISSING:I = 0x27

.field public static final STATUS_CODE_RANGING_RX_PHY_DEC_FAILED:I = 0x22

.field public static final STATUS_CODE_RANGING_RX_PHY_STS_FAILED:I = 0x24

.field public static final STATUS_CODE_RANGING_RX_PHY_TOA_FAILED:I = 0x23

.field public static final STATUS_CODE_RANGING_RX_TIMEOUT:I = 0x21

.field public static final STATUS_CODE_RANGING_TX_FAILED:I = 0x20

.field public static final STATUS_CODE_READ_ONLY:I = 0x9

.field public static final STATUS_CODE_REJECTED:I = 0x1

.field public static final STATUS_CODE_SYNTAX_ERROR:I = 0x3

.field public static final STATUS_CODE_UNKNOWN:I = 0xb

.field public static final STATUS_CODE_UNKNOWN_GID:I = 0x7

.field public static final STATUS_CODE_UNKNOWN_OID:I = 0x8

.field public static final STS_CONFIG_DYNAMIC:I = 0x1

.field public static final STS_CONFIG_DYNAMIC_FOR_CONTROLEE_INDIVIDUAL_KEY:I = 0x2

.field public static final STS_CONFIG_PROVISIONED:I = 0x3

.field public static final STS_CONFIG_PROVISIONED_FOR_CONTROLEE_INDIVIDUAL_KEY:I = 0x4

.field public static final STS_CONFIG_STATIC:I = 0x0

.field public static final STS_LENGTH_128_SYMBOLS:I = 0x2

.field public static final STS_LENGTH_32_SYMBOLS:I = 0x0

.field public static final STS_LENGTH_64_SYMBOLS:I = 0x1

.field public static final STS_SEGMENT_COUNT_VALUE_0:I = 0x0

.field public static final STS_SEGMENT_COUNT_VALUE_1:I = 0x1

.field public static final STS_SEGMENT_COUNT_VALUE_2:I = 0x2

.field public static final SUSPEND_RANGING_DISABLED:I = 0x0

.field public static final SUSPEND_RANGING_ENABLED:I = 0x1

.field public static final TIME_SCHEDULED_RANGING:I = 0x1

.field public static final TX_TIMESTAMP_40_BIT:I = 0x1

.field public static final TX_TIMESTAMP_64_BIT:I = 0x2

.field public static final TX_TIMESTAMP_NONE:I = 0x0

.field public static final UL_TDOA_DEVICE_ID_16_BIT:I = 0x1

.field public static final UL_TDOA_DEVICE_ID_32_BIT:I = 0x2

.field public static final UL_TDOA_DEVICE_ID_64_BIT:I = 0x3

.field public static final UL_TDOA_DEVICE_ID_NONE:I = 0x0

.field public static final UWB_CHANNEL_10:I = 0xa

.field public static final UWB_CHANNEL_12:I = 0xc

.field public static final UWB_CHANNEL_13:I = 0xd

.field public static final UWB_CHANNEL_14:I = 0xe

.field public static final UWB_CHANNEL_5:I = 0x5

.field public static final UWB_CHANNEL_6:I = 0x6

.field public static final UWB_CHANNEL_8:I = 0x8

.field public static final UWB_CHANNEL_9:I = 0x9

.field public static final UWB_PREAMBLE_CODE_INDEX_10:I = 0xa

.field public static final UWB_PREAMBLE_CODE_INDEX_11:I = 0xb

.field public static final UWB_PREAMBLE_CODE_INDEX_12:I = 0xc

.field public static final UWB_PREAMBLE_CODE_INDEX_25:I = 0x19

.field public static final UWB_PREAMBLE_CODE_INDEX_26:I = 0x1a

.field public static final UWB_PREAMBLE_CODE_INDEX_27:I = 0x1b

.field public static final UWB_PREAMBLE_CODE_INDEX_28:I = 0x1c

.field public static final UWB_PREAMBLE_CODE_INDEX_29:I = 0x1d

.field public static final UWB_PREAMBLE_CODE_INDEX_30:I = 0x1e

.field public static final UWB_PREAMBLE_CODE_INDEX_31:I = 0x1f

.field public static final UWB_PREAMBLE_CODE_INDEX_32:I = 0x20

.field public static final UWB_PREAMBLE_CODE_INDEX_9:I = 0x9

.field private static final sExtendedForbiddenUwbAddress:[B

.field private static final sShortForbiddenUwbAddress:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams;->PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 49
    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;-><init>(II)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams;->PROTOCOL_VERSION_2_0:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 1178
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams;->sShortForbiddenUwbAddress:[B

    .line 1179
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams;->sExtendedForbiddenUwbAddress:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;-><init>()V

    return-void
.end method

.method public static getExtendedForbiddenAddress()[B
    .locals 1

    .line 1195
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams;->sExtendedForbiddenUwbAddress:[B

    return-object v0
.end method

.method public static getShortForbiddenAddress()[B
    .locals 1

    .line 1191
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams;->sShortForbiddenUwbAddress:[B

    return-object v0
.end method

.method public static isCorrectProtocol(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 45
    const-string v0, "fira"

    invoke-static {p0, v0}, Lcom/google/uwb/support/fira/FiraParams;->isProtocol(Landroid/os/PersistableBundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static longToUwbAddress(JI)Landroid/uwb/UwbAddress;
    .locals 2
    .param p0, "value"    # J
    .param p2, "length"    # I

    .line 1200
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1201
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1202
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v1

    return-object v1
.end method

.method public static uwbAddressToLong(Landroid/uwb/UwbAddress;)J
    .locals 3
    .param p0, "address"    # Landroid/uwb/UwbAddress;

    .line 1207
    invoke-virtual {p0}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1208
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public final getProtocolName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "fira"

    return-object v0
.end method
