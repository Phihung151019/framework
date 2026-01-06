.class public Lcom/google/uwb/support/fira/FiraOpenSessionParams;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraOpenSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ABSOLUTE_INITIATION_TIME_US:Ljava/lang/String; = "absolute_initiation_time_us"

.field private static final KEY_ANTENNA_MODE:Ljava/lang/String; = "antenna_mode"

.field private static final KEY_AOA_RESULT_REQUEST:Ljava/lang/String; = "aoa_result_request"

.field private static final KEY_AOA_TYPE:Ljava/lang/String; = "aoa_type"

.field private static final KEY_APPLICATION_DATA_ENDPOINT:Ljava/lang/String; = "application_data_endpoint"

.field private static final KEY_BLOCK_STRIDE_LENGTH:Ljava/lang/String; = "block_stride_length"

.field private static final KEY_BPRF_PHR_DATA_RATE:Ljava/lang/String; = "bprf_phr_data_rate"

.field private static final KEY_CAP_SIZE_RANGE:Ljava/lang/String; = "cap_size_range"

.field private static final KEY_CHANNEL_NUMBER:Ljava/lang/String; = "channel_number"

.field private static final KEY_DATA_REPETITION_COUNT:Ljava/lang/String; = "data_repetition_count"

.field private static final KEY_DEST_ADDRESS_LIST:Ljava/lang/String; = "dest_address_list"

.field private static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final KEY_DEVICE_ROLE:Ljava/lang/String; = "device_role"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final KEY_DIAGRAMS_FRAME_REPORTS_FIELDS_FLAGS:Ljava/lang/String; = "diagrams_frame_reports_fields_flags"

.field private static final KEY_DLTDOA_BLOCK_STRIDING:Ljava/lang/String; = "dltdoa_block_striding"

.field private static final KEY_FCS_TYPE:Ljava/lang/String; = "fcs_type"

.field private static final KEY_FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final KEY_HAS_ANGLE_OF_ARRIVAL_AZIMUTH_REPORT:Ljava/lang/String; = "has_angle_of_arrival_azimuth_report"

.field private static final KEY_HAS_ANGLE_OF_ARRIVAL_ELEVATION_REPORT:Ljava/lang/String; = "has_angle_of_arrival_elevation_report"

.field private static final KEY_HAS_ANGLE_OF_ARRIVAL_FIGURE_OF_MERIT_REPORT:Ljava/lang/String; = "has_angle_of_arrival_figure_of_merit_report"

.field private static final KEY_HAS_CONTROL_MESSAGE:Ljava/lang/String; = "has_control_message"

.field private static final KEY_HAS_RANGING_CONTROL_PHASE:Ljava/lang/String; = "has_ranging_control_phase"

.field private static final KEY_HAS_RANGING_RESULT_REPORT_MESSAGE:Ljava/lang/String; = "has_result_report_phase"

.field private static final KEY_HAS_TIME_OF_FLIGHT_REPORT:Ljava/lang/String; = "has_time_of_flight_report"

.field private static final KEY_HOPPING_MODE:Ljava/lang/String; = "hopping_mode"

.field private static final KEY_INITIATION_TIME_MS:Ljava/lang/String; = "initiation_time_ms"

.field private static final KEY_INTER_FRAME_INTERVAL:Ljava/lang/String; = "inter_frame_interval"

.field private static final KEY_IN_BAND_TERMINATION_ATTEMPT_COUNT:Ljava/lang/String; = "in_band_termination_attempt_count"

.field private static final KEY_IS_DIAGNOSTICS_ENABLED:Ljava/lang/String; = "is_diagnostics_enabled"

.field private static final KEY_IS_KEY_ROTATION_ENABLED:Ljava/lang/String; = "is_key_rotation_enabled"

.field private static final KEY_IS_RSSI_REPORTING_ENABLED:Ljava/lang/String; = "is_rssi_reporting_enabled"

.field private static final KEY_IS_TX_ADAPTIVE_PAYLOAD_POWER_ENABLED:Ljava/lang/String; = "is_tx_adaptive_payload_power_enabled"

.field private static final KEY_KEY_ROTATION_RATE:Ljava/lang/String; = "key_rotation_rate"

.field private static final KEY_LINK_LAYER_MODE:Ljava/lang/String; = "link_layer_mode"

.field private static final KEY_MAC_ADDRESS_MODE:Ljava/lang/String; = "mac_address_mode"

.field private static final KEY_MAX_NUMBER_OF_MEASUREMENTS:Ljava/lang/String; = "max_number_of_measurements"

.field private static final KEY_MAX_RANGING_ROUND_RETRIES:Ljava/lang/String; = "max_ranging_round_retries"

.field private static final KEY_MEASUREMENT_REPORT_PHASE:Ljava/lang/String; = "measurement_report_phase"

.field private static final KEY_MEASUREMENT_REPORT_TYPE:Ljava/lang/String; = "measurement_report_type"

.field private static final KEY_MIN_FRAMES_PER_RR:Ljava/lang/String; = "min_frames_per_rr"

.field private static final KEY_MTU_SIZE:Ljava/lang/String; = "mtu_size"

.field private static final KEY_MULTI_NODE_MODE:Ljava/lang/String; = "multi_node_mode"

.field private static final KEY_NUM_OF_MSRMT_FOCUS_ON_AOA_AZIMUTH:Ljava/lang/String; = "num_of_msrmt_focus_on_aoa_azimuth"

.field private static final KEY_NUM_OF_MSRMT_FOCUS_ON_AOA_ELEVATION:Ljava/lang/String; = "num_of_msrmt_focus_on_aoa_elevation"

.field private static final KEY_NUM_OF_MSRMT_FOCUS_ON_RANGE:Ljava/lang/String; = "num_of_msrmt_focus_on_range"

.field private static final KEY_PREAMBLE_CODE_INDEX:Ljava/lang/String; = "preamble_code_index"

.field private static final KEY_PREAMBLE_DURATION:Ljava/lang/String; = "preamble_duration"

.field private static final KEY_PRF_MODE:Ljava/lang/String; = "prf_mode"

.field private static final KEY_PROTOCOL_VERSION:Ljava/lang/String; = "protocol_version"

.field private static final KEY_PSDU_DATA_RATE:Ljava/lang/String; = "psdu_data_rate"

.field private static final KEY_RANGE_DATA_NTF_AOA_AZIMUTH_LOWER:Ljava/lang/String; = "range_data_ntf_aoa_azimuth_lower"

.field private static final KEY_RANGE_DATA_NTF_AOA_AZIMUTH_UPPER:Ljava/lang/String; = "range_data_ntf_aoa_azimuth_upper"

.field private static final KEY_RANGE_DATA_NTF_AOA_ELEVATION_LOWER:Ljava/lang/String; = "range_data_ntf_aoa_elevation_lower"

.field private static final KEY_RANGE_DATA_NTF_AOA_ELEVATION_UPPER:Ljava/lang/String; = "range_data_ntf_aoa_elevation_upper"

.field private static final KEY_RANGE_DATA_NTF_CONFIG:Ljava/lang/String; = "range_data_ntf_config"

.field private static final KEY_RANGE_DATA_NTF_PROXIMITY_FAR:Ljava/lang/String; = "range_data_ntf_proximity_far"

.field private static final KEY_RANGE_DATA_NTF_PROXIMITY_NEAR:Ljava/lang/String; = "range_data_ntf_proximity_near"

.field private static final KEY_RANGING_INTERVAL_MS:Ljava/lang/String; = "ranging_interval_ms"

.field private static final KEY_RANGING_ROUND_USAGE:Ljava/lang/String; = "ranging_round_usage"

.field private static final KEY_RANGING_TIME_STRUCT:Ljava/lang/String; = "ranging_time_struct"

.field private static final KEY_REFERENCE_SESSION_HANDLE:Ljava/lang/String; = "reference_session_handle"

.field private static final KEY_REFERENCE_TIME_BASE:Ljava/lang/String; = "reference_time_base"

.field private static final KEY_RFRAME_CONFIG:Ljava/lang/String; = "rframe_config"

.field private static final KEY_SCHEDULED_MODE:Ljava/lang/String; = "scheduled_mode"

.field private static final KEY_SESSION_DATA_TRANSFER_STATUS_NTF_CONFIG:Ljava/lang/String; = "session_data_transfer_status_ntf_config"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final KEY_SESSION_KEY:Ljava/lang/String; = "session_key"

.field private static final KEY_SESSION_OFFSET_IN_MICRO_SECONDS:Ljava/lang/String; = "session_offset_in_micro_seconds"

.field private static final KEY_SESSION_PRIORITY:Ljava/lang/String; = "session_priority"

.field private static final KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final KEY_SFD_ID:Ljava/lang/String; = "sfd_id"

.field private static final KEY_SLOTS_PER_RANGING_ROUND:Ljava/lang/String; = "slots_per_ranging_round"

.field private static final KEY_SLOT_DURATION_RSTU:Ljava/lang/String; = "slot_duration_rstu"

.field private static final KEY_STATIC_STS_IV:Ljava/lang/String; = "static_sts_iv"

.field private static final KEY_STS_CONFIG:Ljava/lang/String; = "sts_config"

.field private static final KEY_STS_LENGTH:Ljava/lang/String; = "sts_length"

.field private static final KEY_STS_SEGMENT_COUNT:Ljava/lang/String; = "sts_segment_count"

.field private static final KEY_SUBSESSION_KEY:Ljava/lang/String; = "subsession_key"

.field private static final KEY_SUB_SESSION_ID:Ljava/lang/String; = "sub_session_id"

.field private static final KEY_VENDOR_ID:Ljava/lang/String; = "vendor_id"

.field private static final RANGING_ERROR_STREAK_TIMEOUT_MS:Ljava/lang/String; = "ranging_error_streak_timeout_ms"

.field private static final UL_TDOA_DEVICE_ID:Ljava/lang/String; = "ul_tdoa_device_id"

.field private static final UL_TDOA_DEVICE_ID_TYPE:Ljava/lang/String; = "ul_tdoa_device_id_type"

.field private static final UL_TDOA_RANDOM_WINDOW:Ljava/lang/String; = "ul_tdoa_random_window"

.field private static final UL_TDOA_TX_INTERVAL:Ljava/lang/String; = "ul_tdoa_tx_interval"

.field private static final UL_TDOA_TX_TIMESTAMP_TYPE:Ljava/lang/String; = "ul_tdoa_tx_timestamp_type"


# instance fields
.field private final mAbsoluteInitiationTime:J

.field private final mAntennaMode:B

.field private final mAoaResultRequest:I

.field private final mAoaType:I

.field private final mApplicationDataEndpoint:I

.field private final mBlockStrideLength:I

.field private final mBprfPhrDataRate:I

.field private final mCapSize:[B

.field private final mChannelNumber:I

.field private final mDataRepetitionCount:I

.field private final mDestAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceAddress:Landroid/uwb/UwbAddress;

.field private final mDeviceRole:I

.field private final mDeviceType:I

.field private final mDiagramsFrameReportsFieldsFlags:B

.field private final mDlTdoaBlockStriding:I

.field private final mFcsType:I

.field private final mFilterType:I

.field private final mHasAngleOfArrivalAzimuthReport:Z

.field private final mHasAngleOfArrivalElevationReport:Z

.field private final mHasAngleOfArrivalFigureOfMeritReport:Z

.field private final mHasControlMessage:Z

.field private final mHasRangingControlPhase:Z

.field private final mHasRangingResultReportMessage:Z

.field private final mHasTimeOfFlightReport:Z

.field private final mHoppingMode:I

.field private final mInBandTerminationAttemptCount:I

.field private final mInitiationTime:J

.field private final mInterFrameInterval:I

.field private final mIsDiagnosticsEnabled:Z

.field private final mIsKeyRotationEnabled:Z

.field private final mIsRssiReportingEnabled:Z

.field private final mIsTxAdaptivePayloadPowerEnabled:Z

.field private final mKeyRotationRate:I

.field private final mLinkLayerMode:I

.field final mMacAddressMode:I

.field private final mMaxNumberOfMeasurements:I

.field private final mMaxRangingRoundRetries:I

.field private final mMeasurementReportPhase:I

.field private final mMeasurementReportType:I

.field private final mMinFramesPerRr:I

.field private final mMtuSize:I

.field private final mMultiNodeMode:I

.field private final mNumOfMsrmtFocusOnAoaAzimuth:I

.field private final mNumOfMsrmtFocusOnAoaElevation:I

.field private final mNumOfMsrmtFocusOnRange:I

.field private final mPreambleCodeIndex:I

.field private final mPreambleDuration:I

.field private final mPrfMode:I

.field private final mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field private final mPsduDataRate:I

.field private mRangeDataNtfAoaAzimuthLower:D

.field private mRangeDataNtfAoaAzimuthUpper:D

.field private mRangeDataNtfAoaElevationLower:D

.field private mRangeDataNtfAoaElevationUpper:D

.field private final mRangeDataNtfConfig:I

.field private final mRangeDataNtfProximityFar:I

.field private final mRangeDataNtfProximityNear:I

.field private final mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

.field private final mRangingIntervalMs:I

.field private final mRangingRoundUsage:I

.field private final mRangingTimeStruct:I

.field private final mReferenceSessionHandle:I

.field private final mReferenceTimeBase:I

.field private final mRframeConfig:I

.field private final mScheduledMode:I

.field private final mSessionDataTransferStatusNtfConfig:Z

.field private final mSessionId:I

.field private final mSessionKey:[B

.field private final mSessionOffsetInMicroSeconds:I

.field private final mSessionPriority:I

.field private final mSessionType:I

.field private final mSfdId:I

.field private final mSlotDurationRstu:I

.field private final mSlotsPerRangingRound:I

.field private final mStaticStsIV:[B

.field private final mStsConfig:I

.field private final mStsLength:I

.field private final mStsSegmentCount:I

.field private final mSubSessionId:I

.field private final mSubSessionKey:[B

.field private final mUlTdoaDeviceId:[B

.field private final mUlTdoaDeviceIdType:I

.field private final mUlTdoaRandomWindowMs:I

.field private final mUlTdoaTxIntervalMs:I

.field private final mUlTdoaTxTimestampType:I

.field private final mVendorId:[B


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;IIIIIILandroid/uwb/UwbAddress;Ljava/util/List;JJIIIIIIIIZZZIIIIIII[BIIIII[B[BIIIZII[B[BZZBBZIIIIIDDDDZZZZIIIILjava/lang/Long;IIIIIIIIII[BIIIZIIII)V
    .locals 16
    .param p1, "protocolVersion"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p2, "sessionId"    # I
    .param p3, "sessionType"    # I
    .param p4, "deviceType"    # I
    .param p5, "deviceRole"    # I
    .param p6, "rangingRoundUsage"    # I
    .param p7, "multiNodeMode"    # I
    .param p8, "deviceAddress"    # Landroid/uwb/UwbAddress;
    .param p10, "initiationTime"    # J
    .param p12, "absoluteInitiationTime"    # J
    .param p14, "slotDurationRstu"    # I
    .param p15, "slotsPerRangingRound"    # I
    .param p16, "rangingIntervalMs"    # I
    .param p17, "blockStrideLength"    # I
    .param p18, "hoppingMode"    # I
    .param p19, "maxRangingRoundRetries"    # I
    .param p20, "sessionPriority"    # I
    .param p21, "macAddressMode"    # I
    .param p22, "hasRangingResultReportMessage"    # Z
    .param p23, "hasControlMessage"    # Z
    .param p24, "hasRangingControlPhase"    # Z
    .param p25, "measurementReportType"    # I
    .param p26, "measurementReportPhase"    # I
    .param p27, "inBandTerminationAttemptCount"    # I
    .param p28, "channelNumber"    # I
    .param p29, "preambleCodeIndex"    # I
    .param p30, "rframeConfig"    # I
    .param p31, "prfMode"    # I
    .param p32, "capSize"    # [B
    .param p33, "scheduledMode"    # I
    .param p34, "preambleDuration"    # I
    .param p35, "sfdId"    # I
    .param p36, "stsSegmentCount"    # I
    .param p37, "stsLength"    # I
    .param p38, "sessionKey"    # [B
    .param p39, "subsessionKey"    # [B
    .param p40, "psduDataRate"    # I
    .param p41, "bprfPhrDataRate"    # I
    .param p42, "fcsType"    # I
    .param p43, "isTxAdaptivePayloadPowerEnabled"    # Z
    .param p44, "stsConfig"    # I
    .param p45, "subSessionId"    # I
    .param p46, "vendorId"    # [B
    .param p47, "staticStsIV"    # [B
    .param p48, "isRssiReportingEnabled"    # Z
    .param p49, "isDiagnosticsEnabled"    # Z
    .param p50, "diagramsFrameReportsFieldsFlags"    # B
    .param p51, "antennaMode"    # B
    .param p52, "isKeyRotationEnabled"    # Z
    .param p53, "keyRotationRate"    # I
    .param p54, "aoaResultRequest"    # I
    .param p55, "rangeDataNtfConfig"    # I
    .param p56, "rangeDataNtfProximityNear"    # I
    .param p57, "rangeDataNtfProximityFar"    # I
    .param p58, "rangeDataNtfAoaAzimuthLower"    # D
    .param p60, "rangeDataNtfAoaAzimuthUpper"    # D
    .param p62, "rangeDataNtfAoaElevationLower"    # D
    .param p64, "rangeDataNtfAoaElevationUpper"    # D
    .param p66, "hasTimeOfFlightReport"    # Z
    .param p67, "hasAngleOfArrivalAzimuthReport"    # Z
    .param p68, "hasAngleOfArrivalElevationReport"    # Z
    .param p69, "hasAngleOfArrivalFigureOfMeritReport"    # Z
    .param p70, "aoaType"    # I
    .param p71, "numOfMsrmtFocusOnRange"    # I
    .param p72, "numOfMsrmtFocusOnAoaAzimuth"    # I
    .param p73, "numOfMsrmtFocusOnAoaElevation"    # I
    .param p74, "rangingErrorStreakTimeoutMs"    # Ljava/lang/Long;
    .param p75, "linkLayerMode"    # I
    .param p76, "dataRepetitionCount"    # I
    .param p77, "rangingTimeStruct"    # I
    .param p78, "minFramePerRr"    # I
    .param p79, "mtuSize"    # I
    .param p80, "interFrameInterval"    # I
    .param p81, "dlTdoaBlockStriding"    # I
    .param p82, "ulTdoaTxIntervalMs"    # I
    .param p83, "ulTdoaRandomWindowMs"    # I
    .param p84, "ulTdoaDeviceIdType"    # I
    .param p85, "ulTdoaDeviceId"    # [B
    .param p86, "ulTdoaTxTimestampType"    # I
    .param p87, "filterType"    # I
    .param p88, "maxNumberOfMeasurements"    # I
    .param p89, "sessionDataTransferStatusNtfConfig"    # Z
    .param p90, "referenceTimeBase"    # I
    .param p91, "referenceSessionHandle"    # I
    .param p92, "sessionOffsetInMicroSecond"    # I
    .param p93, "applicationDataEndpoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/uwb/support/fira/FiraProtocolVersion;",
            "IIIIII",
            "Landroid/uwb/UwbAddress;",
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;JJIIIIIIIIZZZIIIIIII[BIIIII[B[BIIIZII[B[BZZBBZIIIIIDDDDZZZZIIII",
            "Ljava/lang/Long;",
            "IIIIIIIIII[BIIIZIIII)V"
        }
    .end annotation

    .line 362
    .local p9, "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 363
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 364
    move/from16 v2, p2

    iput v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    .line 365
    move/from16 v3, p3

    iput v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    .line 366
    move/from16 v4, p4

    iput v4, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    .line 367
    move/from16 v5, p5

    iput v5, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    .line 368
    move/from16 v6, p6

    iput v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    .line 369
    move/from16 v7, p7

    iput v7, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    .line 370
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 371
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    .line 372
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    .line 373
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    .line 374
    move/from16 v14, p14

    iput v14, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    .line 375
    move/from16 v15, p15

    iput v15, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    .line 376
    move/from16 v1, p16

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    .line 377
    move/from16 v1, p17

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    .line 378
    move/from16 v1, p18

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    .line 379
    move/from16 v1, p19

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    .line 380
    move/from16 v1, p20

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    .line 381
    move/from16 v1, p21

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    .line 382
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    .line 383
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    .line 384
    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    .line 385
    move/from16 v1, p25

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    .line 386
    move/from16 v1, p26

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportPhase:I

    .line 387
    move/from16 v1, p27

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    .line 388
    move/from16 v1, p28

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    .line 389
    move/from16 v1, p29

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    .line 390
    move/from16 v1, p30

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    .line 391
    move/from16 v1, p31

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    .line 392
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    .line 393
    move/from16 v1, p33

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    .line 394
    move/from16 v1, p34

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    .line 395
    move/from16 v1, p35

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    .line 396
    move/from16 v1, p36

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    .line 397
    move/from16 v1, p37

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    .line 398
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    .line 399
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    .line 400
    move/from16 v1, p40

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    .line 401
    move/from16 v1, p41

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    .line 402
    move/from16 v1, p42

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    .line 403
    move/from16 v1, p43

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    .line 404
    move/from16 v1, p44

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    .line 405
    move/from16 v1, p45

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    .line 406
    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    .line 407
    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    .line 408
    move/from16 v1, p48

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    .line 409
    move/from16 v1, p49

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    .line 410
    move/from16 v1, p50

    iput-byte v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDiagramsFrameReportsFieldsFlags:B

    .line 411
    move/from16 v1, p51

    iput-byte v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAntennaMode:B

    .line 412
    move/from16 v1, p52

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    .line 413
    move/from16 v1, p53

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    .line 414
    move/from16 v1, p54

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    .line 415
    move/from16 v1, p55

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    .line 416
    move/from16 v1, p56

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    .line 417
    move/from16 v1, p57

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    .line 418
    move-wide/from16 v1, p58

    iput-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthLower:D

    .line 419
    move-wide/from16 v1, p60

    iput-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthUpper:D

    .line 420
    move-wide/from16 v1, p62

    iput-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationLower:D

    .line 421
    move-wide/from16 v1, p64

    iput-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationUpper:D

    .line 422
    move/from16 v1, p66

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    .line 423
    move/from16 v2, p67

    iput-boolean v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    .line 424
    move/from16 v1, p68

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    .line 425
    move/from16 v1, p69

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    .line 426
    move/from16 v1, p70

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    .line 427
    move/from16 v1, p71

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    .line 428
    move/from16 v1, p72

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    .line 429
    move/from16 v1, p73

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    .line 430
    move-object/from16 v1, p74

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    .line 431
    move/from16 v1, p75

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    .line 432
    move/from16 v1, p76

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDataRepetitionCount:I

    .line 433
    move/from16 v1, p77

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingTimeStruct:I

    .line 434
    move/from16 v1, p78

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    .line 435
    move/from16 v1, p79

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    .line 436
    move/from16 v1, p80

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    .line 437
    move/from16 v1, p81

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDlTdoaBlockStriding:I

    .line 438
    move/from16 v1, p82

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    .line 439
    move/from16 v1, p83

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    .line 440
    move/from16 v1, p84

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    .line 441
    move-object/from16 v1, p85

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    .line 442
    move/from16 v1, p86

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    .line 443
    move/from16 v1, p87

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    .line 444
    move/from16 v1, p88

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    .line 445
    move/from16 v1, p89

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionDataTransferStatusNtfConfig:Z

    .line 446
    move/from16 v1, p90

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceTimeBase:I

    .line 447
    move/from16 v1, p91

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceSessionHandle:I

    .line 448
    move/from16 v1, p92

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionOffsetInMicroSeconds:I

    .line 449
    move/from16 v1, p93

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mApplicationDataEndpoint:I

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;IIIIIILandroid/uwb/UwbAddress;Ljava/util/List;JJIIIIIIIIZZZIIIIIII[BIIIII[B[BIIIZII[B[BZZBBZIIIIIDDDDZZZZIIIILjava/lang/Long;IIIIIIIIII[BIIIZIIIILcom/google/uwb/support/fira/FiraOpenSessionParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Landroid/uwb/UwbAddress;
    .param p9, "x8"    # Ljava/util/List;
    .param p10, "x9"    # J
    .param p12, "x10"    # J
    .param p14, "x11"    # I
    .param p15, "x12"    # I
    .param p16, "x13"    # I
    .param p17, "x14"    # I
    .param p18, "x15"    # I
    .param p19, "x16"    # I
    .param p20, "x17"    # I
    .param p21, "x18"    # I
    .param p22, "x19"    # Z
    .param p23, "x20"    # Z
    .param p24, "x21"    # Z
    .param p25, "x22"    # I
    .param p26, "x23"    # I
    .param p27, "x24"    # I
    .param p28, "x25"    # I
    .param p29, "x26"    # I
    .param p30, "x27"    # I
    .param p31, "x28"    # I
    .param p32, "x29"    # [B
    .param p33, "x30"    # I
    .param p34, "x31"    # I
    .param p35, "x32"    # I
    .param p36, "x33"    # I
    .param p37, "x34"    # I
    .param p38, "x35"    # [B
    .param p39, "x36"    # [B
    .param p40, "x37"    # I
    .param p41, "x38"    # I
    .param p42, "x39"    # I
    .param p43, "x40"    # Z
    .param p44, "x41"    # I
    .param p45, "x42"    # I
    .param p46, "x43"    # [B
    .param p47, "x44"    # [B
    .param p48, "x45"    # Z
    .param p49, "x46"    # Z
    .param p50, "x47"    # B
    .param p51, "x48"    # B
    .param p52, "x49"    # Z
    .param p53, "x50"    # I
    .param p54, "x51"    # I
    .param p55, "x52"    # I
    .param p56, "x53"    # I
    .param p57, "x54"    # I
    .param p58, "x55"    # D
    .param p60, "x56"    # D
    .param p62, "x57"    # D
    .param p64, "x58"    # D
    .param p66, "x59"    # Z
    .param p67, "x60"    # Z
    .param p68, "x61"    # Z
    .param p69, "x62"    # Z
    .param p70, "x63"    # I
    .param p71, "x64"    # I
    .param p72, "x65"    # I
    .param p73, "x66"    # I
    .param p74, "x67"    # Ljava/lang/Long;
    .param p75, "x68"    # I
    .param p76, "x69"    # I
    .param p77, "x70"    # I
    .param p78, "x71"    # I
    .param p79, "x72"    # I
    .param p80, "x73"    # I
    .param p81, "x74"    # I
    .param p82, "x75"    # I
    .param p83, "x76"    # I
    .param p84, "x77"    # I
    .param p85, "x78"    # [B
    .param p86, "x79"    # I
    .param p87, "x80"    # I
    .param p88, "x81"    # I
    .param p89, "x82"    # Z
    .param p90, "x83"    # I
    .param p91, "x84"    # I
    .param p92, "x85"    # I
    .param p93, "x86"    # I
    .param p94, "x87"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams$1;

    .line 49
    invoke-direct/range {p0 .. p93}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;-><init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;IIIIIILandroid/uwb/UwbAddress;Ljava/util/List;JJIIIIIIIIZZZIIIIIII[BIIIII[B[BIIIZII[B[BZZBBZIIIIIDDDDZZZZIIIILjava/lang/Long;IIIIIIIIII[BIIIZIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportPhase:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    return v0
.end method

.method static synthetic access$2500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    return v0
.end method

.method static synthetic access$2600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    return v0
.end method

.method static synthetic access$2700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    return v0
.end method

.method static synthetic access$2800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    return v0
.end method

.method static synthetic access$2900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    return v0
.end method

.method static synthetic access$3000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    return v0
.end method

.method static synthetic access$3100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    return v0
.end method

.method static synthetic access$3200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    return v0
.end method

.method static synthetic access$3400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    return v0
.end method

.method static synthetic access$3700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    return v0
.end method

.method static synthetic access$3800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    return v0
.end method

.method static synthetic access$3900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    return v0
.end method

.method static synthetic access$4000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    return v0
.end method

.method static synthetic access$4100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    return v0
.end method

.method static synthetic access$4200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDiagramsFrameReportsFieldsFlags:B

    return v0
.end method

.method static synthetic access$4700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAntennaMode:B

    return v0
.end method

.method static synthetic access$4800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    return v0
.end method

.method static synthetic access$5000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    return v0
.end method

.method static synthetic access$5100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    return v0
.end method

.method static synthetic access$5200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    return v0
.end method

.method static synthetic access$5300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    return v0
.end method

.method static synthetic access$5400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthLower:D

    return-wide v0
.end method

.method static synthetic access$5500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthUpper:D

    return-wide v0
.end method

.method static synthetic access$5600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationLower:D

    return-wide v0
.end method

.method static synthetic access$5700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationUpper:D

    return-wide v0
.end method

.method static synthetic access$5800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    return v0
.end method

.method static synthetic access$6000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    return v0
.end method

.method static synthetic access$6300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    return v0
.end method

.method static synthetic access$6400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    return v0
.end method

.method static synthetic access$6500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    return v0
.end method

.method static synthetic access$6600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    return v0
.end method

.method static synthetic access$6800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDataRepetitionCount:I

    return v0
.end method

.method static synthetic access$6900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingTimeStruct:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Landroid/uwb/UwbAddress;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    return v0
.end method

.method static synthetic access$7100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    return v0
.end method

.method static synthetic access$7200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    return v0
.end method

.method static synthetic access$7300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDlTdoaBlockStriding:I

    return v0
.end method

.method static synthetic access$7400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    return v0
.end method

.method static synthetic access$7500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    return v0
.end method

.method static synthetic access$7600(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    return v0
.end method

.method static synthetic access$7700(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    return-object v0
.end method

.method static synthetic access$7800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    return v0
.end method

.method static synthetic access$7900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    return v0
.end method

.method static synthetic access$8100(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionDataTransferStatusNtfConfig:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceTimeBase:I

    return v0
.end method

.method static synthetic access$8300(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceSessionHandle:I

    return v0
.end method

.method static synthetic access$8400(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionOffsetInMicroSeconds:I

    return v0
.end method

.method static synthetic access$8500(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mApplicationDataEndpoint:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 49
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    return-wide v0
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 834
    if-nez p0, :cond_0

    .line 835
    const/4 v0, 0x0

    return-object v0

    .line 838
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 839
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 840
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 983
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 992
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v0

    return-object v0

    .line 984
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 847
    if-nez p0, :cond_0

    .line 848
    const/4 v0, 0x0

    return-object v0

    .line 850
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 851
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 852
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .locals 11
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 997
    const-string v0, "mac_address_mode"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 998
    .local v1, "macAddressMode":I
    const/4 v2, 0x2

    .line 999
    .local v2, "addressByteLength":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1000
    const/16 v2, 0x8

    .line 1002
    :cond_0
    nop

    .line 1003
    const-string v3, "device_address"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v3

    .line 1005
    .local v3, "deviceAddress":Landroid/uwb/UwbAddress;
    new-instance v4, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>()V

    .line 1008
    const-string v5, "protocol_version"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1007
    invoke-static {v5}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move-result-object v5

    .line 1006
    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setProtocolVersion(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1009
    const-string v5, "session_id"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1010
    const-string v5, "session_type"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1011
    const-string v5, "device_type"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1012
    const-string v5, "device_role"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceRole(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1013
    const-string v5, "ranging_round_usage"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangingRoundUsage(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1014
    const-string v5, "multi_node_mode"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMultiNodeMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1015
    invoke-virtual {v4, v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceAddress(Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1018
    const-string v5, "initiation_time_ms"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setInitiationTime(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1019
    const-string v5, "absolute_initiation_time_us"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setAbsoluteInitiationTime(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1020
    const-string v5, "slot_duration_rstu"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSlotDurationRstu(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1021
    const-string v5, "slots_per_ranging_round"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSlotsPerRangingRound(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1022
    const-string v5, "ranging_interval_ms"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangingIntervalMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1023
    const-string v5, "block_stride_length"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setBlockStrideLength(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1024
    const-string v5, "hopping_mode"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHoppingMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1025
    const-string v5, "max_ranging_round_retries"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMaxRangingRoundRetries(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1026
    const-string v5, "session_priority"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionPriority(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v4

    .line 1027
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMacAddressMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1029
    const-string v4, "has_result_report_phase"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1028
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasRangingResultReportMessage(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1031
    const/4 v4, 0x1

    const-string v5, "has_control_message"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1030
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasControlMessage(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1033
    const-string v4, "has_ranging_control_phase"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1032
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasRangingControlPhase(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1034
    const-string v4, "measurement_report_type"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMeasurementReportType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1035
    const-string v4, "measurement_report_phase"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMeasurementReportPhase(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1037
    const-string v4, "in_band_termination_attempt_count"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1036
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setInBandTerminationAttemptCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1038
    const-string v4, "channel_number"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setChannelNumber(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1039
    const-string v4, "preamble_code_index"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPreambleCodeIndex(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1040
    const-string v4, "rframe_config"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRframeConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1041
    const-string v4, "prf_mode"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPrfMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1042
    const-string v4, "cap_size_range"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->intArrayToByteArray([I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setCapSize([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1043
    const/4 v4, 0x1

    const-string v5, "scheduled_mode"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setScheduledMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1044
    const-string v4, "preamble_duration"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPreambleDuration(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1045
    const-string v4, "sfd_id"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSfdId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1046
    const-string v4, "sts_segment_count"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsSegmentCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1047
    const-string v4, "sts_length"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsLength(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1048
    const-string v4, "session_key"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->intArrayToByteArray([I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionKey([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1049
    const-string v4, "subsession_key"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->intArrayToByteArray([I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSubsessionKey([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1050
    const-string v4, "psdu_data_rate"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPsduDataRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1051
    const-string v4, "bprf_phr_data_rate"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setBprfPhrDataRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1052
    const-string v4, "fcs_type"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setFcsType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1054
    const-string v4, "is_tx_adaptive_payload_power_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1053
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setIsTxAdaptivePayloadPowerEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1055
    const-string v4, "sts_config"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1056
    const-string v4, "sub_session_id"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSubSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1057
    const-string v4, "vendor_id"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->intArrayToByteArray([I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setVendorId([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1058
    const-string v4, "static_sts_iv"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->intArrayToByteArray([I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStaticStsIV([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1059
    const-string v4, "is_rssi_reporting_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setIsRssiReportingEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1060
    const-string v4, "is_diagnostics_enabled"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setIsDiagnosticsEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1062
    const-string v4, "diagrams_frame_reports_fields_flags"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 1061
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDiagramsFrameReportsFieldsFlags(B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1063
    const-string v4, "antenna_mode"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setAntennaMode(B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1064
    const-string v4, "is_key_rotation_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setIsKeyRotationEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1065
    const-string v4, "key_rotation_rate"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setKeyRotationRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1066
    const-string v4, "aoa_result_request"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setAoaResultRequest(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1067
    const-string v4, "range_data_ntf_config"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1068
    const-string v4, "range_data_ntf_proximity_near"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfProximityNear(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1069
    const-string v4, "range_data_ntf_proximity_far"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfProximityFar(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1071
    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-string v7, "range_data_ntf_aoa_azimuth_lower"

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1070
    invoke-virtual {v0, v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfAoaAzimuthLower(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1074
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-string v7, "range_data_ntf_aoa_azimuth_upper"

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1073
    invoke-virtual {v0, v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfAoaAzimuthUpper(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1077
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-string v7, "range_data_ntf_aoa_elevation_lower"

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1076
    invoke-virtual {v0, v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfAoaElevationLower(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1080
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-string v7, "range_data_ntf_aoa_elevation_upper"

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1079
    invoke-virtual {v0, v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangeDataNtfAoaElevationUpper(D)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1082
    const-string v4, "has_time_of_flight_report"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasTimeOfFlightReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1084
    const-string v4, "has_angle_of_arrival_azimuth_report"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1083
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasAngleOfArrivalAzimuthReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1086
    const-string v4, "has_angle_of_arrival_elevation_report"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1085
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasAngleOfArrivalElevationReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1088
    const-string v4, "has_angle_of_arrival_figure_of_merit_report"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1087
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setHasAngleOfArrivalFigureOfMeritReport(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1089
    const-string v4, "aoa_type"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setAoaType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1091
    const-string v4, "num_of_msrmt_focus_on_range"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1092
    const-string v5, "num_of_msrmt_focus_on_aoa_azimuth"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1093
    const-string v7, "num_of_msrmt_focus_on_aoa_elevation"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1090
    invoke-virtual {v0, v4, v5, v7}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMeasurementFocusRatio(III)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1095
    const-wide/16 v4, 0x2710

    const-string v7, "ranging_error_streak_timeout_ms"

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1094
    invoke-virtual {v0, v4, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangingErrorStreakTimeoutMs(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1096
    const-string v4, "link_layer_mode"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setLinkLayerMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1097
    const-string v4, "data_repetition_count"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDataRepetitionCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1098
    const/4 v4, 0x1

    const-string v5, "ranging_time_struct"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangingTimeStruct(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1100
    const/4 v4, 0x1

    const-string v5, "min_frames_per_rr"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMinFramePerRr(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1101
    const/16 v4, 0x418

    const-string v5, "mtu_size"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMtuSize(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1102
    const/4 v4, 0x1

    const-string v5, "inter_frame_interval"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setInterFrameInterval(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1103
    const-string v4, "dltdoa_block_striding"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDlTdoaBlockStriding(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1104
    const-string v4, "ul_tdoa_tx_interval"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setUlTdoaTxIntervalMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1105
    const-string v4, "ul_tdoa_random_window"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setUlTdoaRandomWindowMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1106
    const-string v4, "ul_tdoa_device_id_type"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setUlTdoaDeviceIdType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1107
    const-string v4, "ul_tdoa_device_id"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->intArrayToByteArray([I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setUlTdoaDeviceId([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1108
    const-string v4, "ul_tdoa_tx_timestamp_type"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setUlTdoaTxTimestampType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1109
    const/4 v4, 0x1

    const-string v5, "filter_type"

    invoke-virtual {p0, v5, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setFilterType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1110
    const-string v4, "max_number_of_measurements"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMaxNumberOfMeasurements(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1112
    const-string v4, "session_data_transfer_status_ntf_config"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionDataTransferStatusNtfConfig(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1114
    const-string v4, "reference_time_base"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1115
    const-string v5, "reference_session_handle"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1116
    const-string v7, "session_offset_in_micro_seconds"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1114
    invoke-virtual {v0, v4, v5, v7}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionTimeBase(III)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1117
    const-string v4, "application_data_endpoint"

    invoke-virtual {p0, v4, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setApplicationDataEndpoint(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v0

    .line 1120
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->isTimeScheduledTwrSession()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1121
    const-string v4, "dest_address_list"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 1122
    .local v4, "destAddresses":[J
    if-eqz v4, :cond_2

    .line 1123
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v5, "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    aget-wide v8, v4, v6

    .line 1125
    .local v8, "address":J
    invoke-static {v8, v9, v2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    .end local v8    # "address":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDestAddressList(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    .line 1130
    .end local v4    # "destAddresses":[J
    .end local v5    # "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAbsoluteInitiationTime()J
    .locals 2

    .line 499
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    return-wide v0
.end method

.method public getAntennaMode()B
    .locals 1

    .line 673
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAntennaMode:B

    return v0
.end method

.method public getAoaResultRequest()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    return v0
.end method

.method public getAoaType()I
    .locals 1

    .line 736
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    return v0
.end method

.method public getApplicationDataEndpoint()I
    .locals 1

    .line 829
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mApplicationDataEndpoint:I

    return v0
.end method

.method public getBlockStrideLength()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    return v0
.end method

.method public getBprfPhrDataRate()I
    .locals 1

    .line 628
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    return v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public getCapSize()[B
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 565
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    return v0
.end method

.method public getDataRepetitionCount()I
    .locals 1

    .line 760
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDataRepetitionCount:I

    return v0
.end method

.method public getDestAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDeviceAddress()Landroid/uwb/UwbAddress;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public getDeviceRole()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    return v0
.end method

.method public getDiagramsFrameReportsFieldsFlags()B
    .locals 1

    .line 668
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDiagramsFrameReportsFieldsFlags:B

    return v0
.end method

.method public getDlTdoaBlockStriding()I
    .locals 1

    .line 781
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDlTdoaBlockStriding:I

    return v0
.end method

.method public getFcsType()I
    .locals 1

    .line 633
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    return v0
.end method

.method public getFilterType()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    return v0
.end method

.method public getHoppingMode()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    return v0
.end method

.method public getInBandTerminationAttemptCount()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    return v0
.end method

.method public getInitiationTime()J
    .locals 2

    .line 495
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    return-wide v0
.end method

.method public getInterFrameInterval()I
    .locals 1

    .line 777
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    return v0
.end method

.method public getKeyRotationRate()I
    .locals 1

    .line 681
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    return v0
.end method

.method public getLinkLayerMode()I
    .locals 1

    .line 756
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    return v0
.end method

.method public getMacAddressMode()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    return v0
.end method

.method public getMaxNumberOfMeasurements()I
    .locals 1

    .line 810
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    return v0
.end method

.method public getMaxRangingRoundRetries()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    return v0
.end method

.method public getMeasurementReportPhase()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportPhase:I

    return v0
.end method

.method public getMeasurementReportType()I
    .locals 1

    .line 550
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    return v0
.end method

.method public getMinFramesPerRr()I
    .locals 1

    .line 769
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    return v0
.end method

.method public getMtuSize()I
    .locals 1

    .line 773
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    return v0
.end method

.method public getMultiNodeMode()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    return v0
.end method

.method public getNumOfMsrmtFocusOnAoaAzimuth()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    return v0
.end method

.method public getNumOfMsrmtFocusOnAoaElevation()I
    .locals 1

    .line 748
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    return v0
.end method

.method public getNumOfMsrmtFocusOnRange()I
    .locals 1

    .line 740
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    return v0
.end method

.method public getPreambleCodeIndex()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    return v0
.end method

.method public getPreambleDuration()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    return v0
.end method

.method public getPrfMode()I
    .locals 1

    .line 579
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    return v0
.end method

.method public getProtocolVersion()Lcom/google/uwb/support/fira/FiraProtocolVersion;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-object v0
.end method

.method public getPsduDataRate()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    return v0
.end method

.method public getRangeDataNtfAoaAzimuthLower()D
    .locals 2

    .line 703
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthLower:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaAzimuthUpper()D
    .locals 2

    .line 707
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthUpper:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaElevationLower()D
    .locals 2

    .line 711
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationLower:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaElevationUpper()D
    .locals 2

    .line 715
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationUpper:D

    return-wide v0
.end method

.method public getRangeDataNtfConfig()I
    .locals 1

    .line 691
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    return v0
.end method

.method public getRangeDataNtfProximityFar()I
    .locals 1

    .line 699
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    return v0
.end method

.method public getRangeDataNtfProximityNear()I
    .locals 1

    .line 695
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    return v0
.end method

.method public getRangingErrorStreakTimeoutMs()J
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRangingIntervalMs()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    return v0
.end method

.method public getRangingRoundUsage()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    return v0
.end method

.method public getRangingTimeStruct()I
    .locals 1

    .line 765
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingTimeStruct:I

    return v0
.end method

.method public getReferenceSessionHandle()I
    .locals 1

    .line 821
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceSessionHandle:I

    return v0
.end method

.method public getReferenceTimeBase()I
    .locals 1

    .line 817
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceTimeBase:I

    return v0
.end method

.method public getRframeConfig()I
    .locals 1

    .line 574
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    return v0
.end method

.method public getScheduledMode()I
    .locals 1

    .line 588
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    return v0
.end method

.method public getSessionDataTransferStatusNtfConfig()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionDataTransferStatusNtfConfig:Z

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    return v0
.end method

.method public getSessionKey()[B
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    return-object v0
.end method

.method public getSessionOffsetInMicroSeconds()I
    .locals 1

    .line 825
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionOffsetInMicroSeconds:I

    return v0
.end method

.method public getSessionPriority()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    return v0
.end method

.method public getSfdId()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    return v0
.end method

.method public getSlotDurationRstu()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    return v0
.end method

.method public getSlotsPerRangingRound()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    return v0
.end method

.method public getStaticStsIV()[B
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    return-object v0
.end method

.method public getStsConfig()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    return v0
.end method

.method public getStsLength()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    return v0
.end method

.method public getStsSegmentCount()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    return v0
.end method

.method public getSubSessionId()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    return v0
.end method

.method public getSubsessionKey()[B
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    return-object v0
.end method

.method public getUlTdoaDeviceId()[B
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    return-object v0
.end method

.method public getUlTdoaDeviceIdType()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    return v0
.end method

.method public getUlTdoaRandomWindowMs()I
    .locals 1

    .line 789
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    return v0
.end method

.method public getUlTdoaTxIntervalMs()I
    .locals 1

    .line 785
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    return v0
.end method

.method public getUlTdoaTxTimestampType()I
    .locals 1

    .line 802
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    return v0
.end method

.method public getVendorId()[B
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    return-object v0
.end method

.method public hasAngleOfArrivalAzimuthReport()Z
    .locals 1

    .line 723
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    return v0
.end method

.method public hasAngleOfArrivalElevationReport()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    return v0
.end method

.method public hasAngleOfArrivalFigureOfMeritReport()Z
    .locals 1

    .line 731
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    return v0
.end method

.method public hasControlMessage()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    return v0
.end method

.method public hasRangingControlPhase()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    return v0
.end method

.method public hasRangingResultReportMessage()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    return v0
.end method

.method public hasTimeOfFlightReport()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    return v0
.end method

.method public isDiagnosticsEnabled()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    return v0
.end method

.method public isKeyRotationEnabled()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    return v0
.end method

.method public isRssiReportingEnabled()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    return v0
.end method

.method public isTxAdaptivePayloadPowerEnabled()Z
    .locals 1

    .line 637
    iget-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    return v0
.end method

.method public toBuilder()Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
    .locals 1

    .line 1139
    new-instance v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {v0, p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 8

    .line 859
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 860
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v1, "session_id"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 862
    const-string v1, "session_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 863
    const-string v1, "device_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 864
    const-string v1, "device_role"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 865
    const-string v1, "ranging_round_usage"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 866
    const-string v1, "multi_node_mode"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 868
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v1

    const-string v3, "device_address"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 870
    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 874
    .local v1, "destAddressList":[J
    const/4 v2, 0x0

    .line 875
    .local v2, "i":I
    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/uwb/UwbAddress;

    .line 876
    .local v4, "destAddress":Landroid/uwb/UwbAddress;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 877
    .end local v4    # "destAddress":Landroid/uwb/UwbAddress;
    move v2, v5

    goto :goto_0

    .line 878
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    const-string v3, "dest_address_list"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 881
    .end local v1    # "destAddressList":[J
    .end local v2    # "i":I
    :cond_1
    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 883
    const-string v1, "dltdoa_block_striding"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDlTdoaBlockStriding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 886
    :cond_2
    const-string v1, "initiation_time_ms"

    iget-wide v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 887
    const-string v1, "absolute_initiation_time_us"

    iget-wide v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 888
    const-string v1, "slot_duration_rstu"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 889
    const-string v1, "slots_per_ranging_round"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v1, "ranging_interval_ms"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 891
    const-string v1, "block_stride_length"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 892
    const-string v1, "hopping_mode"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string v1, "max_ranging_round_retries"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 894
    const-string v1, "session_priority"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 895
    const-string v1, "mac_address_mode"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 896
    const-string v1, "has_result_report_phase"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    const-string v1, "has_control_message"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    const-string v1, "has_ranging_control_phase"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 899
    const-string v1, "measurement_report_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 900
    const-string v1, "measurement_report_phase"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportPhase:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 901
    const-string v1, "in_band_termination_attempt_count"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 902
    const-string v1, "channel_number"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 903
    const-string v1, "preamble_code_index"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 904
    const-string v1, "rframe_config"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 905
    const-string v1, "prf_mode"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 906
    const-string v1, "scheduled_mode"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 907
    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    if-nez v1, :cond_3

    .line 908
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "cap_size_range"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 910
    :cond_3
    const-string v1, "preamble_duration"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const-string v1, "sfd_id"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 912
    const-string v1, "sts_segment_count"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 913
    const-string v1, "sts_length"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 914
    const-string v1, "psdu_data_rate"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 915
    const-string v1, "bprf_phr_data_rate"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 916
    const-string v1, "fcs_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 917
    const-string v1, "is_tx_adaptive_payload_power_enabled"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 919
    const-string v1, "sts_config"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 920
    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 922
    :cond_4
    const-string v1, "sub_session_id"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 924
    :cond_5
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    if-eqz v1, :cond_6

    .line 925
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "session_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 927
    :cond_6
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    if-eqz v1, :cond_7

    .line 928
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "subsession_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 930
    :cond_7
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "vendor_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 931
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "static_sts_iv"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 932
    const-string v1, "is_rssi_reporting_enabled"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    const-string v1, "is_diagnostics_enabled"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 934
    const-string v1, "diagrams_frame_reports_fields_flags"

    iget-byte v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDiagramsFrameReportsFieldsFlags:B

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 935
    const-string v1, "antenna_mode"

    iget-byte v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAntennaMode:B

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 936
    const-string v1, "is_key_rotation_enabled"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    const-string v1, "key_rotation_rate"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 938
    const-string v1, "aoa_result_request"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 939
    const-string v1, "range_data_ntf_config"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 940
    const-string v1, "range_data_ntf_proximity_near"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 941
    const-string v1, "range_data_ntf_proximity_far"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 942
    const-string v1, "range_data_ntf_aoa_azimuth_lower"

    iget-wide v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthLower:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 943
    const-string v1, "range_data_ntf_aoa_azimuth_upper"

    iget-wide v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaAzimuthUpper:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 944
    const-string v1, "range_data_ntf_aoa_elevation_lower"

    iget-wide v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationLower:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 945
    const-string v1, "range_data_ntf_aoa_elevation_upper"

    iget-wide v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfAoaElevationUpper:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 946
    const-string v1, "has_time_of_flight_report"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 947
    const-string v1, "has_angle_of_arrival_azimuth_report"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 948
    const-string v1, "has_angle_of_arrival_elevation_report"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    const-string v1, "has_angle_of_arrival_figure_of_merit_report"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    const-string v1, "aoa_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 954
    const-string v1, "num_of_msrmt_focus_on_range"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 955
    const-string v1, "num_of_msrmt_focus_on_aoa_azimuth"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 956
    const-string v1, "num_of_msrmt_focus_on_aoa_elevation"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 957
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "ranging_error_streak_timeout_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 958
    const-string v1, "link_layer_mode"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 959
    const-string v1, "data_repetition_count"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDataRepetitionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 960
    const-string v1, "ranging_time_struct"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingTimeStruct:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 961
    const-string v1, "min_frames_per_rr"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const-string v1, "mtu_size"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 963
    const-string v1, "inter_frame_interval"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 964
    const-string v1, "ul_tdoa_tx_interval"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 965
    const-string v1, "ul_tdoa_random_window"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 966
    const-string v1, "ul_tdoa_device_id_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 967
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "ul_tdoa_device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 968
    const-string v1, "ul_tdoa_tx_timestamp_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 969
    const-string v1, "filter_type"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 970
    const-string v1, "max_number_of_measurements"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 971
    const-string v1, "session_data_transfer_status_ntf_config"

    iget-boolean v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionDataTransferStatusNtfConfig:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    iget v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 974
    const-string v1, "reference_time_base"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceTimeBase:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 975
    const-string v1, "reference_session_handle"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mReferenceSessionHandle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 976
    const-string v1, "session_offset_in_micro_seconds"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionOffsetInMicroSeconds:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 978
    :cond_8
    const-string v1, "application_data_endpoint"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mApplicationDataEndpoint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 979
    return-object v0
.end method
