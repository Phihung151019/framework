.class public Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroOpenRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ABSOLUTE_INITIATION_TIME_US:Ljava/lang/String; = "absolute_initiation_time_us"

.field private static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field private static final KEY_HOPPING_CONFIG_MODE:Ljava/lang/String; = "hopping_config_mode"

.field private static final KEY_HOPPING_SEQUENCE:Ljava/lang/String; = "hopping_sequence"

.field private static final KEY_HOP_MODE_KEY:Ljava/lang/String; = "hop_mode_key"

.field private static final KEY_INITIATION_TIME_MS:Ljava/lang/String; = "initiation_time_ms"

.field private static final KEY_MAC_MODE_OFFSET:Ljava/lang/String; = "mac_mode_offset"

.field private static final KEY_MAC_MODE_ROUND:Ljava/lang/String; = "mac_mode_round"

.field private static final KEY_NUM_CHAPS_PER_SLOT:Ljava/lang/String; = "num_chaps_per_slot"

.field private static final KEY_NUM_RESPONDER_NODES:Ljava/lang/String; = "num_responder_nodes"

.field private static final KEY_NUM_SLOTS_PER_ROUND:Ljava/lang/String; = "num_slots_per_round"

.field private static final KEY_PROTOCOL_VERSION:Ljava/lang/String; = "protocol_version"

.field private static final KEY_PULSE_SHAPE_COMBO:Ljava/lang/String; = "pulse_shape_combo"

.field private static final KEY_RANGE_DATA_NTF_AOA_AZIMUTH_LOWER:Ljava/lang/String; = "range_data_ntf_aoa_azimuth_lower"

.field private static final KEY_RANGE_DATA_NTF_AOA_AZIMUTH_UPPER:Ljava/lang/String; = "range_data_ntf_aoa_azimuth_upper"

.field private static final KEY_RANGE_DATA_NTF_AOA_ELEVATION_LOWER:Ljava/lang/String; = "range_data_ntf_aoa_elevation_lower"

.field private static final KEY_RANGE_DATA_NTF_AOA_ELEVATION_UPPER:Ljava/lang/String; = "range_data_ntf_aoa_elevation_upper"

.field private static final KEY_RANGE_DATA_NTF_CONFIG:Ljava/lang/String; = "range_data_ntf_config"

.field private static final KEY_RANGE_DATA_NTF_PROXIMITY_FAR:Ljava/lang/String; = "range_data_ntf_proximity_far"

.field private static final KEY_RANGE_DATA_NTF_PROXIMITY_NEAR:Ljava/lang/String; = "range_data_ntf_proximity_near"

.field private static final KEY_RAN_MULTIPLIER:Ljava/lang/String; = "ran_multiplier"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final KEY_SESSION_KEY:Ljava/lang/String; = "session_key"

.field private static final KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final KEY_STS_CONFIG:Ljava/lang/String; = "sts_config"

.field private static final KEY_STS_INDEX:Ljava/lang/String; = "sts_index"

.field private static final KEY_SYNC_CODE_INDEX:Ljava/lang/String; = "sync_code_index"

.field private static final KEY_UWB_CONFIG:Ljava/lang/String; = "uwb_config"


# instance fields
.field private final mAbsoluteInitiationTimeUs:J

.field private final mChannel:I

.field private final mHopModeKey:I

.field private final mHoppingConfigMode:I

.field private final mHoppingSequence:I

.field private final mInitiationTimeMs:J

.field private final mMacModeOffset:I

.field private mMacModeRound:I

.field private final mNumChapsPerSlot:I

.field private final mNumResponderNodes:I

.field private final mNumSlotsPerRound:I

.field private final mProtocolVersion:Lcom/google/uwb/support/aliro/AliroProtocolVersion;

.field private final mPulseShapeCombo:Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

.field private final mRanMultiplier:I

.field private mRangeDataNtfAoaAzimuthLower:D

.field private mRangeDataNtfAoaAzimuthUpper:D

.field private mRangeDataNtfAoaElevationLower:D

.field private mRangeDataNtfAoaElevationUpper:D

.field private final mRangeDataNtfConfig:I

.field private final mRangeDataNtfProximityFar:I

.field private final mRangeDataNtfProximityNear:I

.field private final mSessionId:I

.field private final mSessionKey:[B

.field private final mSessionType:I

.field private final mStsConfig:I

.field private final mStsIndex:I

.field private final mSyncCodeIndex:I

.field private final mUwbConfig:I


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/aliro/AliroProtocolVersion;ILcom/google/uwb/support/aliro/AliroPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDDI[BII)V
    .locals 16
    .param p1, "protocolVersion"    # Lcom/google/uwb/support/aliro/AliroProtocolVersion;
    .param p2, "uwbConfig"    # I
    .param p3, "pulseShapeCombo"    # Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .param p4, "sessionId"    # I
    .param p5, "sessionType"    # I
    .param p6, "ranMultiplier"    # I
    .param p7, "channel"    # I
    .param p8, "numChapsPerSlot"    # I
    .param p9, "numResponderNodes"    # I
    .param p10, "numSlotsPerRound"    # I
    .param p11, "syncCodeIndex"    # I
    .param p12, "hopModeKey"    # I
    .param p13, "hoppingConfigMode"    # I
    .param p14, "hoppingSequence"    # I
    .param p15, "stsIndex"    # I
    .param p16, "initiationTimeMs"    # J
    .param p18, "absoluteInitiationTimeUs"    # J
    .param p20, "rangeDataNtfConfig"    # I
    .param p21, "rangeDataNtfProximityNear"    # I
    .param p22, "rangeDataNtfProximityFar"    # I
    .param p23, "rangeDataNtfAoaAzimuthLower"    # D
    .param p25, "rangeDataNtfAoaAzimuthUpper"    # D
    .param p27, "rangeDataNtfAoaElevationLower"    # D
    .param p29, "rangeDataNtfAoaElevationUpper"    # D
    .param p31, "stsConfig"    # I
    .param p32, "sessionKey"    # [B
    .param p33, "macModeRound"    # I
    .param p34, "macModeOffset"    # I

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    .line 113
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeRound:I

    .line 145
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    .line 146
    move/from16 v2, p2

    iput v2, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mUwbConfig:I

    .line 147
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    .line 148
    move/from16 v4, p4

    iput v4, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionId:I

    .line 149
    move/from16 v5, p5

    iput v5, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionType:I

    .line 150
    move/from16 v6, p6

    iput v6, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRanMultiplier:I

    .line 151
    move/from16 v7, p7

    iput v7, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mChannel:I

    .line 152
    move/from16 v8, p8

    iput v8, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumChapsPerSlot:I

    .line 153
    move/from16 v9, p9

    iput v9, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumResponderNodes:I

    .line 154
    move/from16 v10, p10

    iput v10, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumSlotsPerRound:I

    .line 155
    move/from16 v11, p11

    iput v11, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSyncCodeIndex:I

    .line 156
    move/from16 v12, p12

    iput v12, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHopModeKey:I

    .line 157
    move/from16 v13, p13

    iput v13, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingConfigMode:I

    .line 158
    move/from16 v14, p14

    iput v14, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingSequence:I

    .line 159
    move/from16 v15, p15

    iput v15, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsIndex:I

    .line 160
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mInitiationTimeMs:J

    .line 161
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mAbsoluteInitiationTimeUs:J

    .line 162
    move/from16 v1, p20

    iput v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfConfig:I

    .line 163
    move/from16 v2, p21

    iput v2, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityNear:I

    .line 164
    move/from16 v1, p22

    iput v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityFar:I

    .line 165
    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    .line 166
    move-wide/from16 v1, p25

    iput-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    .line 167
    move-wide/from16 v1, p27

    iput-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    .line 168
    move-wide/from16 v1, p29

    iput-wide v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    .line 169
    move/from16 v1, p31

    iput v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsConfig:I

    .line 170
    move-object/from16 v2, p32

    iput-object v2, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionKey:[B

    .line 171
    move/from16 v1, p33

    iput v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeRound:I

    .line 172
    move/from16 v1, p34

    iput v1, v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeOffset:I

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/aliro/AliroProtocolVersion;ILcom/google/uwb/support/aliro/AliroPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDDI[BIILcom/google/uwb/support/aliro/AliroOpenRangingParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/aliro/AliroProtocolVersion;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # I
    .param p13, "x12"    # I
    .param p14, "x13"    # I
    .param p15, "x14"    # I
    .param p16, "x15"    # J
    .param p18, "x16"    # J
    .param p20, "x17"    # I
    .param p21, "x18"    # I
    .param p22, "x19"    # I
    .param p23, "x20"    # D
    .param p25, "x21"    # D
    .param p27, "x22"    # D
    .param p29, "x23"    # D
    .param p31, "x24"    # I
    .param p32, "x25"    # [B
    .param p33, "x26"    # I
    .param p34, "x27"    # I
    .param p35, "x28"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams$1;

    .line 43
    invoke-direct/range {p0 .. p34}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;-><init>(Lcom/google/uwb/support/aliro/AliroProtocolVersion;ILcom/google/uwb/support/aliro/AliroPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDDI[BII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)Lcom/google/uwb/support/aliro/AliroProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mUwbConfig:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSyncCodeIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHopModeKey:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingConfigMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingSequence:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfConfig:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityNear:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityFar:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsConfig:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionKey:[B

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeRound:I

    return v0
.end method

.method static synthetic access$2500(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionType:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRanMultiplier:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mChannel:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumChapsPerSlot:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumResponderNodes:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    .line 43
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumSlotsPerRound:I

    return v0
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 181
    if-nez p0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 186
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 187
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 238
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    move-result-object v0

    return-object v0

    .line 239
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

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 197
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 198
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
    .locals 5
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 252
    new-instance v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;-><init>()V

    .line 255
    const-string v1, "protocol_version"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setProtocolVersion(Lcom/google/uwb/support/aliro/AliroProtocolVersion;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 256
    const-string v1, "uwb_config"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setUwbConfig(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 259
    const-string v1, "pulse_shape_combo"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setPulseShapeCombo(Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 260
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setSessionId(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 261
    const-string v1, "ran_multiplier"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 262
    const-string v1, "channel"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setChannel(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 263
    const-string v1, "num_chaps_per_slot"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setNumChapsPerSlot(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 264
    const-string v1, "num_responder_nodes"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setNumResponderNodes(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 265
    const-string v1, "num_slots_per_round"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setNumSlotsPerRound(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 266
    const-string v1, "sync_code_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setSyncCodeIndex(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 267
    const-string v1, "hop_mode_key"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setHopModeKey(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 268
    const-string v1, "hopping_config_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setHoppingConfigMode(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 269
    const-string v1, "hopping_sequence"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setHoppingSequence(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 270
    const-string v1, "sts_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setStsIndex(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 271
    const-string v1, "initiation_time_ms"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setInitiationTimeMs(J)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 272
    const-string v1, "absolute_initiation_time_us"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setAbsoluteInitiationTimeUs(J)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 274
    const-string v1, "range_data_ntf_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 273
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfConfig(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 276
    const-string v1, "range_data_ntf_proximity_near"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfProximityNear(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 279
    const-string v1, "range_data_ntf_proximity_far"

    const/16 v3, 0x4e20

    invoke-virtual {p0, v1, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfProximityFar(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 282
    const-string v1, "range_data_ntf_aoa_azimuth_lower"

    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 281
    invoke-virtual {v0, v3, v4}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfAoaAzimuthLower(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 285
    const-string v1, "range_data_ntf_aoa_azimuth_upper"

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 284
    invoke-virtual {v0, v3, v4}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfAoaAzimuthUpper(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 288
    const-string v1, "range_data_ntf_aoa_elevation_lower"

    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 287
    invoke-virtual {v0, v3, v4}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfAoaElevationLower(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 290
    const-string v1, "sts_config"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setStsConfig(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 292
    const-string v1, "range_data_ntf_aoa_elevation_upper"

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 291
    invoke-virtual {v0, v3, v4}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setRangeDataNtfAoaElevationUpper(D)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 294
    const-string v1, "session_key"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setSessionKey([B)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 295
    const-string v1, "mac_mode_round"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setMacModeRound(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 296
    const-string v1, "mac_mode_offset"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->setMacModeOffset(I)Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;->build()Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    move-result-object v0

    .line 252
    return-object v0
.end method


# virtual methods
.method public getAbsoluteInitiationTimeUs()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mAbsoluteInitiationTimeUs:J

    return-wide v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getChannel()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mChannel:I

    return v0
.end method

.method public getHopModeKey()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHopModeKey:I

    return v0
.end method

.method public getHoppingConfigMode()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingConfigMode:I

    return v0
.end method

.method public getHoppingSequence()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingSequence:I

    return v0
.end method

.method public getInitiationTimeMs()J
    .locals 2

    .line 368
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mInitiationTimeMs:J

    return-wide v0
.end method

.method public getMacModeOffset()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeOffset:I

    return v0
.end method

.method public getMacModeRound()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeRound:I

    return v0
.end method

.method public getNumChapsPerSlot()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumChapsPerSlot:I

    return v0
.end method

.method public getNumResponderNodes()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumResponderNodes:I

    return v0
.end method

.method public getNumSlotsPerRound()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumSlotsPerRound:I

    return v0
.end method

.method public getProtocolVersion()Lcom/google/uwb/support/aliro/AliroProtocolVersion;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    return-object v0
.end method

.method public getPulseShapeCombo()Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    return-object v0
.end method

.method public getRanMultiplier()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRanMultiplier:I

    return v0
.end method

.method public getRangeDataNtfAoaAzimuthLower()D
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaAzimuthUpper()D
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaElevationLower()D
    .locals 2

    .line 397
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaElevationUpper()D
    .locals 2

    .line 401
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    return-wide v0
.end method

.method public getRangeDataNtfConfig()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfConfig:I

    return v0
.end method

.method public getRangeDataNtfProximityFar()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityFar:I

    return v0
.end method

.method public getRangeDataNtfProximityNear()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityNear:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionId:I

    return v0
.end method

.method public getSessionKey()[B
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionKey:[B

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionType:I

    return v0
.end method

.method public getStsConfig()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsConfig:I

    return v0
.end method

.method public getStsIndex()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsIndex:I

    return v0
.end method

.method public getSyncCodeIndex()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSyncCodeIndex:I

    return v0
.end method

.method public getUwbConfig()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mUwbConfig:I

    return v0
.end method

.method public toBuilder()Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;
    .locals 1

    .line 406
    new-instance v0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;

    invoke-direct {v0, p0}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams$Builder;-><init>(Lcom/google/uwb/support/aliro/AliroOpenRangingParams;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 205
    invoke-super {p0}, Lcom/google/uwb/support/aliro/AliroParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 206
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/aliro/AliroProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "uwb_config"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mUwbConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget-object v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    invoke-virtual {v1}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pulse_shape_combo"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "session_id"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v1, "session_type"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v1, "ran_multiplier"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRanMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v1, "channel"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v1, "num_chaps_per_slot"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumChapsPerSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v1, "num_responder_nodes"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumResponderNodes:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v1, "num_slots_per_round"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mNumSlotsPerRound:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v1, "sync_code_index"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSyncCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "hop_mode_key"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHopModeKey:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v1, "hopping_config_mode"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingConfigMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v1, "hopping_sequence"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mHoppingSequence:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "sts_index"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "initiation_time_ms"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mInitiationTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 222
    const-string v1, "absolute_initiation_time_us"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mAbsoluteInitiationTimeUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 223
    const-string v1, "range_data_ntf_config"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v1, "range_data_ntf_proximity_near"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityNear:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v1, "range_data_ntf_proximity_far"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfProximityFar:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v1, "range_data_ntf_aoa_azimuth_lower"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 227
    const-string v1, "range_data_ntf_aoa_azimuth_upper"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 228
    const-string v1, "range_data_ntf_aoa_elevation_lower"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 229
    const-string v1, "range_data_ntf_aoa_elevation_upper"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 230
    const-string v1, "sts_config"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mStsConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget-object v1, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mSessionKey:[B

    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "session_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 232
    const-string v1, "mac_mode_round"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeRound:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v1, "mac_mode_offset"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->mMacModeOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-object v0
.end method
