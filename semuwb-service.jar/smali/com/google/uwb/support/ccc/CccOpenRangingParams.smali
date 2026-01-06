.class public Lcom/google/uwb/support/ccc/CccOpenRangingParams;
.super Lcom/google/uwb/support/ccc/CccParams;
.source "CccOpenRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
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

.field private static final KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

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

.field private final mNumChapsPerSlot:I

.field private final mNumResponderNodes:I

.field private final mNumSlotsPerRound:I

.field private final mProtocolVersion:Lcom/google/uwb/support/ccc/CccProtocolVersion;

.field private final mPulseShapeCombo:Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

.field private final mRanMultiplier:I

.field private mRangeDataNtfAoaAzimuthLower:D

.field private mRangeDataNtfAoaAzimuthUpper:D

.field private mRangeDataNtfAoaElevationLower:D

.field private mRangeDataNtfAoaElevationUpper:D

.field private final mRangeDataNtfConfig:I

.field private final mRangeDataNtfProximityFar:I

.field private final mRangeDataNtfProximityNear:I

.field private final mSessionId:I

.field private final mSessionType:I

.field private final mStsIndex:I

.field private final mSyncCodeIndex:I

.field private final mUwbConfig:I


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/ccc/CccProtocolVersion;ILcom/google/uwb/support/ccc/CccPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDD)V
    .locals 16
    .param p1, "protocolVersion"    # Lcom/google/uwb/support/ccc/CccProtocolVersion;
    .param p2, "uwbConfig"    # I
    .param p3, "pulseShapeCombo"    # Lcom/google/uwb/support/ccc/CccPulseShapeCombo;
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

    .line 134
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/ccc/CccParams;-><init>()V

    .line 135
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/ccc/CccProtocolVersion;

    .line 136
    move/from16 v2, p2

    iput v2, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mUwbConfig:I

    .line 137
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    .line 138
    move/from16 v4, p4

    iput v4, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionId:I

    .line 139
    move/from16 v5, p5

    iput v5, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionType:I

    .line 140
    move/from16 v6, p6

    iput v6, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRanMultiplier:I

    .line 141
    move/from16 v7, p12

    iput v7, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHopModeKey:I

    .line 142
    move/from16 v8, p7

    iput v8, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mChannel:I

    .line 143
    move/from16 v9, p8

    iput v9, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumChapsPerSlot:I

    .line 144
    move/from16 v10, p9

    iput v10, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumResponderNodes:I

    .line 145
    move/from16 v11, p10

    iput v11, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumSlotsPerRound:I

    .line 146
    move/from16 v12, p11

    iput v12, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSyncCodeIndex:I

    .line 147
    move/from16 v13, p13

    iput v13, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingConfigMode:I

    .line 148
    move/from16 v14, p14

    iput v14, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingSequence:I

    .line 149
    move/from16 v15, p15

    iput v15, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mStsIndex:I

    .line 150
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mInitiationTimeMs:J

    .line 151
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mAbsoluteInitiationTimeUs:J

    .line 152
    move/from16 v1, p20

    iput v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfConfig:I

    .line 153
    move/from16 v2, p21

    iput v2, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityNear:I

    .line 154
    move/from16 v1, p22

    iput v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityFar:I

    .line 155
    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    .line 156
    move-wide/from16 v1, p25

    iput-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    .line 157
    move-wide/from16 v1, p27

    iput-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    .line 158
    move-wide/from16 v1, p29

    iput-wide v1, v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/ccc/CccProtocolVersion;ILcom/google/uwb/support/ccc/CccPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDDLcom/google/uwb/support/ccc/CccOpenRangingParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/ccc/CccProtocolVersion;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/uwb/support/ccc/CccPulseShapeCombo;
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
    .param p31, "x24"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams$1;

    .line 45
    invoke-direct/range {p0 .. p30}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;-><init>(Lcom/google/uwb/support/ccc/CccProtocolVersion;ILcom/google/uwb/support/ccc/CccPulseShapeCombo;IIIIIIIIIIIIJJIIIDDDD)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)Lcom/google/uwb/support/ccc/CccProtocolVersion;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/ccc/CccProtocolVersion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mUwbConfig:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSyncCodeIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mStsIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHopModeKey:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingConfigMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingSequence:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfConfig:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityNear:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityFar:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)Lcom/google/uwb/support/ccc/CccPulseShapeCombo;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionType:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRanMultiplier:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mChannel:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumChapsPerSlot:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumResponderNodes:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    .line 45
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumSlotsPerRound:I

    return v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 197
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    move-result-object v0

    return-object v0

    .line 198
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    .locals 4
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 211
    new-instance v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;-><init>()V

    .line 214
    const-string v1, "protocol_version"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-static {v1}, Lcom/google/uwb/support/ccc/CccProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/ccc/CccProtocolVersion;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setProtocolVersion(Lcom/google/uwb/support/ccc/CccProtocolVersion;)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 215
    const-string v1, "uwb_config"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setUwbConfig(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 218
    const-string v1, "pulse_shape_combo"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    invoke-static {v1}, Lcom/google/uwb/support/ccc/CccPulseShapeCombo;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setPulseShapeCombo(Lcom/google/uwb/support/ccc/CccPulseShapeCombo;)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 219
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setSessionId(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 220
    const-string v1, "ran_multiplier"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRanMultiplier(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 221
    const-string v1, "channel"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setChannel(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 222
    const-string v1, "num_chaps_per_slot"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setNumChapsPerSlot(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 223
    const-string v1, "num_responder_nodes"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setNumResponderNodes(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 224
    const-string v1, "num_slots_per_round"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setNumSlotsPerRound(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 225
    const-string v1, "sync_code_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setSyncCodeIndex(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 226
    const-string v1, "hop_mode_key"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setHopModeKey(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 227
    const-string v1, "hopping_config_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setHoppingConfigMode(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 228
    const-string v1, "hopping_sequence"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setHoppingSequence(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 229
    const-string v1, "sts_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setStsIndex(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 230
    const-string v1, "initiation_time_ms"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setInitiationTimeMs(J)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 231
    const-string v1, "absolute_initiation_time_us"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setAbsoluteInitiationTimeUs(J)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 233
    const-string v1, "range_data_ntf_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfConfig(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 235
    const-string v1, "range_data_ntf_proximity_near"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfProximityNear(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 238
    const-string v1, "range_data_ntf_proximity_far"

    const/16 v2, 0x4e20

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfProximityFar(I)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 241
    const-string v1, "range_data_ntf_aoa_azimuth_lower"

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfAoaAzimuthLower(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 244
    const-string v1, "range_data_ntf_aoa_azimuth_upper"

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfAoaAzimuthUpper(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 247
    const-string v1, "range_data_ntf_aoa_elevation_lower"

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfAoaElevationLower(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 250
    const-string v1, "range_data_ntf_aoa_elevation_upper"

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->setRangeDataNtfAoaElevationUpper(D)Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;->build()Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    move-result-object v0

    .line 211
    return-object v0
.end method


# virtual methods
.method public getAbsoluteInitiationTimeUs()J
    .locals 2

    .line 327
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mAbsoluteInitiationTimeUs:J

    return-wide v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public getChannel()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mChannel:I

    return v0
.end method

.method public getHopModeKey()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHopModeKey:I

    return v0
.end method

.method public getHoppingConfigMode()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingConfigMode:I

    return v0
.end method

.method public getHoppingSequence()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingSequence:I

    return v0
.end method

.method public getInitiationTimeMs()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mInitiationTimeMs:J

    return-wide v0
.end method

.method public getNumChapsPerSlot()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumChapsPerSlot:I

    return v0
.end method

.method public getNumResponderNodes()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumResponderNodes:I

    return v0
.end method

.method public getNumSlotsPerRound()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumSlotsPerRound:I

    return v0
.end method

.method public getProtocolVersion()Lcom/google/uwb/support/ccc/CccProtocolVersion;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/ccc/CccProtocolVersion;

    return-object v0
.end method

.method public getPulseShapeCombo()Lcom/google/uwb/support/ccc/CccPulseShapeCombo;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    return-object v0
.end method

.method public getRanMultiplier()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRanMultiplier:I

    return v0
.end method

.method public getRangeDataNtfAoaAzimuthLower()D
    .locals 2

    .line 344
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaAzimuthUpper()D
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaElevationLower()D
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    return-wide v0
.end method

.method public getRangeDataNtfAoaElevationUpper()D
    .locals 2

    .line 356
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    return-wide v0
.end method

.method public getRangeDataNtfConfig()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfConfig:I

    return v0
.end method

.method public getRangeDataNtfProximityFar()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityFar:I

    return v0
.end method

.method public getRangeDataNtfProximityNear()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityNear:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionId:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionType:I

    return v0
.end method

.method public getStsIndex()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mStsIndex:I

    return v0
.end method

.method public getSyncCodeIndex()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSyncCodeIndex:I

    return v0
.end method

.method public getUwbConfig()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mUwbConfig:I

    return v0
.end method

.method public toBuilder()Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;
    .locals 1

    .line 361
    new-instance v0, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;

    invoke-direct {v0, p0}, Lcom/google/uwb/support/ccc/CccOpenRangingParams$Builder;-><init>(Lcom/google/uwb/support/ccc/CccOpenRangingParams;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 168
    invoke-super {p0}, Lcom/google/uwb/support/ccc/CccParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 169
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mProtocolVersion:Lcom/google/uwb/support/ccc/CccProtocolVersion;

    invoke-virtual {v1}, Lcom/google/uwb/support/ccc/CccProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "uwb_config"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mUwbConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 171
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mPulseShapeCombo:Lcom/google/uwb/support/ccc/CccPulseShapeCombo;

    invoke-virtual {v1}, Lcom/google/uwb/support/ccc/CccPulseShapeCombo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pulse_shape_combo"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "session_id"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v1, "session_type"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSessionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v1, "ran_multiplier"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRanMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v1, "channel"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v1, "num_chaps_per_slot"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumChapsPerSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v1, "num_responder_nodes"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumResponderNodes:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v1, "num_slots_per_round"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mNumSlotsPerRound:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v1, "sync_code_index"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mSyncCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v1, "hop_mode_key"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHopModeKey:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v1, "hopping_config_mode"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingConfigMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "hopping_sequence"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mHoppingSequence:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v1, "sts_index"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mStsIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v1, "initiation_time_ms"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mInitiationTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 185
    const-string v1, "absolute_initiation_time_us"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mAbsoluteInitiationTimeUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v1, "range_data_ntf_config"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v1, "range_data_ntf_proximity_near"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityNear:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v1, "range_data_ntf_proximity_far"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfProximityFar:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v1, "range_data_ntf_aoa_azimuth_lower"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthLower:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 190
    const-string v1, "range_data_ntf_aoa_azimuth_upper"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaAzimuthUpper:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 191
    const-string v1, "range_data_ntf_aoa_elevation_lower"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationLower:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 192
    const-string v1, "range_data_ntf_aoa_elevation_upper"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->mRangeDataNtfAoaElevationUpper:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 193
    return-object v0
.end method
