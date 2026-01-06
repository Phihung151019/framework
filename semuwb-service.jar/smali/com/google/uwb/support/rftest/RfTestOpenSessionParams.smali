.class public Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;
.super Lcom/google/uwb/support/rftest/RfTestParams;
.source "RfTestOpenSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_CHANNEL_NUMBER:Ljava/lang/String; = "channel_number"

.field private static final KEY_DEST_ADDRESS_LIST:Ljava/lang/String; = "dest_address_list"

.field private static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final KEY_DEVICE_ROLE:Ljava/lang/String; = "device_role"

.field private static final KEY_FCS_TYPE:Ljava/lang/String; = "fcs_type"

.field private static final KEY_NUMBER_OF_CONTROLEES:Ljava/lang/String; = "number_of_controlees"

.field private static final KEY_NUMBER_OF_PACKETS:Ljava/lang/String; = "number_of_packets"

.field private static final KEY_PHR_RANGING_BIT:Ljava/lang/String; = "phr_ranging_bit"

.field private static final KEY_PREAMBLE_CODE_INDEX:Ljava/lang/String; = "preamble_code_index"

.field private static final KEY_PREAMBLE_DURATION:Ljava/lang/String; = "preamble_duration"

.field private static final KEY_PRF_MODE:Ljava/lang/String; = "prf_mode"

.field private static final KEY_PSDU_DATA_RATE:Ljava/lang/String; = "psdu_data_rate"

.field private static final KEY_RANDOMIZE_PSDU:Ljava/lang/String; = "randomize_psdu"

.field private static final KEY_RFRAME_CONFIG:Ljava/lang/String; = "rframe_config"

.field private static final KEY_RMARKER_RX_START:Ljava/lang/String; = "rmarker_rx_start"

.field private static final KEY_RMARKER_TX_START:Ljava/lang/String; = "rmarker_tx_start"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final KEY_SFD_ID:Ljava/lang/String; = "sfd_id"

.field private static final KEY_SLOT_DURATION_RSTU:Ljava/lang/String; = "slot_duration"

.field private static final KEY_STS_DETECT_BITMAP_EN:Ljava/lang/String; = "sts_detect_bitmap_en"

.field private static final KEY_STS_INDEX:Ljava/lang/String; = "sts_index"

.field private static final KEY_STS_INDEX_AUTO_INCR:Ljava/lang/String; = "sts_index_auto_incr"

.field private static final KEY_STS_SEGMENT_COUNT:Ljava/lang/String; = "sts_segment_count"

.field private static final KEY_T_GAP:Ljava/lang/String; = "t_gap"

.field private static final KEY_T_START:Ljava/lang/String; = "t_start"

.field private static final KEY_T_WIN:Ljava/lang/String; = "t_win"


# instance fields
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

.field private final mFcsType:I

.field private final mNoOfControlee:I

.field private final mNoOfPackets:I

.field private final mPhrRangingBit:I

.field private final mPreambleCodeIndex:I

.field private final mPreambleDuration:I

.field private final mPrfMode:I

.field private final mPsduDataRate:I

.field private final mRandomizePsdu:I

.field private final mRframeConfig:I

.field private final mRmarkerRxStart:I

.field private final mRmarkerTxStart:I

.field private final mSessionId:I

.field private final mSessionType:I

.field private final mSfdId:I

.field private final mSlotDurationRstu:I

.field private final mStsDetectBitmap:I

.field private final mStsIndex:I

.field private final mStsIndexAutoIncr:I

.field private final mStsSegmentCount:I

.field private final mTgap:I

.field private final mTstart:I

.field private final mTwin:I

.field private final mUwbChannel:I


# direct methods
.method private constructor <init>(IIIILandroid/uwb/UwbAddress;Ljava/util/List;IIIIIIIIIIIIIIIIIIIII)V
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "sessionType"    # I
    .param p3, "uwbChannel"    # I
    .param p4, "noOfControlee"    # I
    .param p5, "deviceAddress"    # Landroid/uwb/UwbAddress;
    .param p7, "slotDurationRstu"    # I
    .param p8, "stsIndex"    # I
    .param p9, "fcsType"    # I
    .param p10, "deviceRole"    # I
    .param p11, "rframeConfig"    # I
    .param p12, "preambleCodeIndex"    # I
    .param p13, "sfdId"    # I
    .param p14, "psduDataRate"    # I
    .param p15, "preambleDuration"    # I
    .param p16, "prfMode"    # I
    .param p17, "stsSegmentCount"    # I
    .param p18, "noOfPackets"    # I
    .param p19, "tGap"    # I
    .param p20, "tStart"    # I
    .param p21, "tWin"    # I
    .param p22, "randomizePsdu"    # I
    .param p23, "phrRangingBit"    # I
    .param p24, "rmarketTxStart"    # I
    .param p25, "rmakrkerRxStart"    # I
    .param p26, "stsIndexAutoIncr"    # I
    .param p27, "stsDetectBitmap"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/uwb/UwbAddress;",
            "Ljava/util/List<",
            "Landroid/uwb/UwbAddress;",
            ">;IIIIIIIIIIIIIIIIIIIII)V"
        }
    .end annotation

    .line 162
    .local p6, "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestParams;-><init>()V

    .line 163
    move/from16 v1, p1

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionId:I

    .line 164
    move/from16 v2, p2

    iput v2, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionType:I

    .line 165
    move/from16 v3, p3

    iput v3, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mUwbChannel:I

    .line 166
    move/from16 v4, p4

    iput v4, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfControlee:I

    .line 167
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    .line 168
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

    .line 169
    move/from16 v7, p7

    iput v7, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSlotDurationRstu:I

    .line 170
    move/from16 v8, p8

    iput v8, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndex:I

    .line 171
    move/from16 v9, p9

    iput v9, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mFcsType:I

    .line 172
    move/from16 v10, p10

    iput v10, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceRole:I

    .line 173
    move/from16 v11, p11

    iput v11, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRframeConfig:I

    .line 174
    move/from16 v12, p12

    iput v12, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleCodeIndex:I

    .line 175
    move/from16 v13, p13

    iput v13, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSfdId:I

    .line 176
    move/from16 v14, p14

    iput v14, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPsduDataRate:I

    .line 177
    move/from16 v15, p15

    iput v15, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleDuration:I

    .line 178
    move/from16 v1, p16

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPrfMode:I

    .line 179
    move/from16 v1, p17

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsSegmentCount:I

    .line 180
    move/from16 v1, p18

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfPackets:I

    .line 181
    move/from16 v1, p19

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTgap:I

    .line 182
    move/from16 v1, p20

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTstart:I

    .line 183
    move/from16 v1, p21

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTwin:I

    .line 184
    move/from16 v1, p22

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRandomizePsdu:I

    .line 185
    move/from16 v1, p23

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPhrRangingBit:I

    .line 186
    move/from16 v1, p24

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerTxStart:I

    .line 187
    move/from16 v1, p25

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerRxStart:I

    .line 188
    move/from16 v1, p26

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndexAutoIncr:I

    .line 189
    move/from16 v1, p27

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsDetectBitmap:I

    .line 190
    return-void
.end method

.method synthetic constructor <init>(IIIILandroid/uwb/UwbAddress;Ljava/util/List;IIIIIIIIIIIIIIIIIIIIILcom/google/uwb/support/rftest/RfTestOpenSessionParams$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/uwb/UwbAddress;
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # I
    .param p13, "x12"    # I
    .param p14, "x13"    # I
    .param p15, "x14"    # I
    .param p16, "x15"    # I
    .param p17, "x16"    # I
    .param p18, "x17"    # I
    .param p19, "x18"    # I
    .param p20, "x19"    # I
    .param p21, "x20"    # I
    .param p22, "x21"    # I
    .param p23, "x22"    # I
    .param p24, "x23"    # I
    .param p25, "x24"    # I
    .param p26, "x25"    # I
    .param p27, "x26"    # I
    .param p28, "x27"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$1;

    .line 58
    invoke-direct/range {p0 .. p27}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;-><init>(IIIILandroid/uwb/UwbAddress;Ljava/util/List;IIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRframeConfig:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleCodeIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSfdId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPsduDataRate:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleDuration:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPrfMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsSegmentCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfPackets:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTgap:I

    return v0
.end method

.method static synthetic access$1900(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTstart:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mUwbChannel:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTwin:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRandomizePsdu:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPhrRangingBit:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerTxStart:I

    return v0
.end method

.method static synthetic access$2400(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerRxStart:I

    return v0
.end method

.method static synthetic access$2500(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndexAutoIncr:I

    return v0
.end method

.method static synthetic access$2600(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsDetectBitmap:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfControlee:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)Landroid/uwb/UwbAddress;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSlotDurationRstu:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mFcsType:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    .line 58
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceRole:I

    return v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 239
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    move-result-object v0

    return-object v0

    .line 240
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;
    .locals 9
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 254
    nop

    .line 255
    const-string v0, "device_address"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v0

    .line 256
    .local v0, "deviceAddress":Landroid/uwb/UwbAddress;
    const-string v1, "dest_address_list"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 257
    .local v1, "destAddresses":[J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "destAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    if-eqz v1, :cond_0

    .line 259
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-wide v6, v1, v5

    .line 260
    .local v6, "address":J
    invoke-static {v6, v7, v2}, Lcom/google/uwb/support/fira/FiraParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v6    # "address":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-instance v2, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    invoke-direct {v2}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;-><init>()V

    .line 264
    const-string v4, "channel_number"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setChannelNumber(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 265
    const-string v4, "number_of_controlees"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setNumberOfControlee(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 266
    invoke-virtual {v2, v0}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setDeviceAddress(Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 267
    invoke-virtual {v2, v3}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setDestAddressList(Ljava/util/List;)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 268
    const-string v4, "slot_duration"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setSlotDurationRstu(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 269
    const-string v4, "sts_index"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setStsIndex(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 270
    const-string v4, "fcs_type"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setFcsType(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 271
    const-string v4, "device_role"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setDeviceRole(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 272
    const-string v4, "rframe_config"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setRframeConfig(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 273
    const-string v4, "preamble_code_index"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setPreambleCodeIndex(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 274
    const-string v4, "sfd_id"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setSfdId(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 275
    const-string v4, "psdu_data_rate"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setPsduDataRate(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 276
    const-string v4, "preamble_duration"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setPreambleDuration(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 277
    const-string v4, "prf_mode"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setPrfMode(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 278
    const-string v4, "sts_segment_count"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setStsSegmentCount(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 279
    const-string v4, "number_of_packets"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setNumberOfPackets(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 280
    const-string v4, "t_gap"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setTgap(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 281
    const-string v4, "t_start"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setTstart(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 282
    const-string v4, "t_win"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setTwin(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 283
    const-string v4, "randomize_psdu"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setRandomizePsdu(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 284
    const-string v4, "phr_ranging_bit"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setPhrRangingBit(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 285
    const-string v4, "rmarker_tx_start"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setRmarkerTxStart(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 286
    const-string v4, "rmarker_rx_start"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setRmarkerRxStart(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 287
    const-string v4, "sts_index_auto_incr"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setStsIndexAutoIncr(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 288
    const-string v4, "sts_detect_bitmap_en"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->setStsDetectBitmap(I)Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams$Builder;->build()Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;

    move-result-object v2

    .line 263
    return-object v2
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mUwbChannel:I

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

    .line 315
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

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

    .line 311
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public getDeviceRole()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceRole:I

    return v0
.end method

.method public getFcsType()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mFcsType:I

    return v0
.end method

.method public getNoOfControlee()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfControlee:I

    return v0
.end method

.method public getNumberOfPackets()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfPackets:I

    return v0
.end method

.method public getPhrRangingBit()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPhrRangingBit:I

    return v0
.end method

.method public getPreambleCodeIndex()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleCodeIndex:I

    return v0
.end method

.method public getPreambleDuration()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleDuration:I

    return v0
.end method

.method public getPrfMode()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPrfMode:I

    return v0
.end method

.method public getPsduDataRate()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPsduDataRate:I

    return v0
.end method

.method public getRandomizePsdu()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRandomizePsdu:I

    return v0
.end method

.method public getRframeConfig()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRframeConfig:I

    return v0
.end method

.method public getRmarkerRxStart()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerRxStart:I

    return v0
.end method

.method public getRmarkerTxStart()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerTxStart:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionId:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionType:I

    return v0
.end method

.method public getSfdId()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSfdId:I

    return v0
.end method

.method public getSlotDurationRstu()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSlotDurationRstu:I

    return v0
.end method

.method public getStsDetectBitmap()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsDetectBitmap:I

    return v0
.end method

.method public getStsIndex()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndex:I

    return v0
.end method

.method public getStsIndexAutoIncr()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndexAutoIncr:I

    return v0
.end method

.method public getStsSegmentCount()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsSegmentCount:I

    return v0
.end method

.method public getTgap()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTgap:I

    return v0
.end method

.method public getTstart()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTstart:I

    return v0
.end method

.method public getTwin()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTwin:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 8

    .line 199
    invoke-super {p0}, Lcom/google/uwb/support/rftest/RfTestParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 200
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "session_id"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v1, "session_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSessionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v1, "channel_number"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mUwbChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "number_of_controlees"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfControlee:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 204
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v1

    const-string v3, "device_address"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 205
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 207
    .local v1, "destAddressList":[J
    const/4 v2, 0x0

    .line 208
    .local v2, "i":I
    iget-object v3, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/uwb/UwbAddress;

    .line 209
    .local v4, "destAddress":Landroid/uwb/UwbAddress;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 210
    .end local v4    # "destAddress":Landroid/uwb/UwbAddress;
    move v2, v5

    goto :goto_0

    .line 211
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    const-string v3, "dest_address_list"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 213
    .end local v1    # "destAddressList":[J
    .end local v2    # "i":I
    :cond_1
    const-string v1, "slot_duration"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSlotDurationRstu:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v1, "sts_index"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v1, "fcs_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mFcsType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v1, "device_role"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mDeviceRole:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "rframe_config"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRframeConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v1, "preamble_code_index"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v1, "sfd_id"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mSfdId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "psdu_data_rate"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPsduDataRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "preamble_duration"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPreambleDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v1, "prf_mode"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPrfMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v1, "sts_segment_count"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsSegmentCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v1, "number_of_packets"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mNoOfPackets:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v1, "t_gap"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTgap:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v1, "t_start"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTstart:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v1, "t_win"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mTwin:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v1, "randomize_psdu"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRandomizePsdu:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v1, "phr_ranging_bit"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mPhrRangingBit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v1, "rmarker_tx_start"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerTxStart:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v1, "rmarker_rx_start"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mRmarkerRxStart:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v1, "sts_index_auto_incr"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsIndexAutoIncr:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v1, "sts_detect_bitmap_en"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestOpenSessionParams;->mStsDetectBitmap:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-object v0
.end method
