.class public Lcom/google/uwb/support/radar/RadarOpenSessionParams;
.super Lcom/google/uwb/support/radar/RadarParams;
.source "RadarOpenSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_BITS_PER_SAMPLE:Ljava/lang/String; = "bits_per_samples"

.field private static final KEY_BURST_PERIOD:Ljava/lang/String; = "burst_period"

.field private static final KEY_CHANNEL_NUMBER:Ljava/lang/String; = "channel_number"

.field private static final KEY_NUMBER_OF_BURSTS:Ljava/lang/String; = "number_of_bursts"

.field private static final KEY_PREAMBLE_CODE_INDEX:Ljava/lang/String; = "preamble_code_index"

.field private static final KEY_PREAMBLE_DURATION:Ljava/lang/String; = "preamble_duration"

.field private static final KEY_PRF_MODE:Ljava/lang/String; = "prf_mode"

.field private static final KEY_RADAR_DATA_TYPE:Ljava/lang/String; = "radar_data_type"

.field private static final KEY_RFRAME_CONFIG:Ljava/lang/String; = "rframe_config"

.field private static final KEY_SAMPLES_PER_SWEEP:Ljava/lang/String; = "samples_per_sweep"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final KEY_SESSION_PRIORITY:Ljava/lang/String; = "session_priority"

.field private static final KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final KEY_SWEEPS_PER_BURST:Ljava/lang/String; = "sweeps_per_burst"

.field private static final KEY_SWEEP_OFFSET:Ljava/lang/String; = "sweep_offset"

.field private static final KEY_SWEEP_PERIOD:Ljava/lang/String; = "sweep_period"


# instance fields
.field private final mBitsPerSample:I

.field private final mBurstPeriod:I

.field private final mChannelNumber:I

.field private final mNumberOfBursts:I

.field private final mPreambleCodeIndex:I

.field private final mPreambleDuration:I

.field private final mPrfMode:I

.field private final mRadarDataType:I

.field private final mRframeConfig:I

.field private final mSamplesPerSweep:I

.field private final mSessionId:I

.field private final mSessionPriority:I

.field private final mSessionType:I

.field private final mSweepOffset:I

.field private final mSweepPeriod:I

.field private final mSweepsPerBurst:I


# direct methods
.method private constructor <init>(IIIIIIIIIIIIIIII)V
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "sessionType"    # I
    .param p3, "burstPeriod"    # I
    .param p4, "sweepPeriod"    # I
    .param p5, "sweepsPerBurst"    # I
    .param p6, "samplesPerSweep"    # I
    .param p7, "channelNumber"    # I
    .param p8, "sweepOffset"    # I
    .param p9, "rframeConfig"    # I
    .param p10, "preambleDuration"    # I
    .param p11, "preambleCodeIndex"    # I
    .param p12, "sessionPriority"    # I
    .param p13, "bitsPerSample"    # I
    .param p14, "prfMode"    # I
    .param p15, "numberOfBursts"    # I
    .param p16, "radarDataType"    # I

    .line 88
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/radar/RadarParams;-><init>()V

    .line 89
    move/from16 v1, p1

    iput v1, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionId:I

    .line 90
    move/from16 v2, p2

    iput v2, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionType:I

    .line 91
    move/from16 v3, p3

    iput v3, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBurstPeriod:I

    .line 92
    move/from16 v4, p4

    iput v4, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepPeriod:I

    .line 93
    move/from16 v5, p5

    iput v5, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepsPerBurst:I

    .line 94
    move/from16 v6, p6

    iput v6, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSamplesPerSweep:I

    .line 95
    move/from16 v7, p7

    iput v7, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mChannelNumber:I

    .line 96
    move/from16 v8, p8

    iput v8, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepOffset:I

    .line 97
    move/from16 v9, p9

    iput v9, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRframeConfig:I

    .line 98
    move/from16 v10, p10

    iput v10, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleDuration:I

    .line 99
    move/from16 v11, p11

    iput v11, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleCodeIndex:I

    .line 100
    move/from16 v12, p12

    iput v12, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionPriority:I

    .line 101
    move/from16 v13, p13

    iput v13, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBitsPerSample:I

    .line 102
    move/from16 v14, p14

    iput v14, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPrfMode:I

    .line 103
    move/from16 v15, p15

    iput v15, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mNumberOfBursts:I

    .line 104
    move/from16 v1, p16

    iput v1, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRadarDataType:I

    .line 105
    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIIIIIIIILcom/google/uwb/support/radar/RadarOpenSessionParams$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
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
    .param p16, "x15"    # I
    .param p17, "x16"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams$1;

    .line 34
    invoke-direct/range {p0 .. p16}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;-><init>(IIIIIIIIIIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleCodeIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionPriority:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBitsPerSample:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPrfMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mNumberOfBursts:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRadarDataType:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBurstPeriod:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepPeriod:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepsPerBurst:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSamplesPerSweep:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mChannelNumber:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRframeConfig:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 34
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleDuration:I

    return v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarOpenSessionParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 136
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    move-result-object v0

    return-object v0

    .line 137
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarOpenSessionParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 150
    new-instance v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;-><init>()V

    .line 151
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setSessionId(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 152
    const-string v1, "burst_period"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setBurstPeriod(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 153
    const-string v1, "sweep_period"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setSweepPeriod(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 154
    const-string v1, "sweeps_per_burst"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setSweepsPerBurst(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 155
    const-string v1, "samples_per_sweep"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setSamplesPerSweep(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 156
    const-string v1, "channel_number"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setChannelNumber(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 157
    const-string v1, "sweep_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setSweepOffset(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 158
    const-string v1, "rframe_config"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setRframeConfig(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 159
    const-string v1, "preamble_duration"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setPreambleDuration(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 160
    const-string v1, "preamble_code_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setPreambleCodeIndex(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 161
    const-string v1, "session_priority"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setSessionPriority(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 162
    const-string v1, "bits_per_samples"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setBitsPerSample(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 163
    const-string v1, "prf_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setPrfMode(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 164
    const-string v1, "number_of_bursts"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setNumberOfBursts(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 165
    const-string v1, "radar_data_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->setRadarDataType(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->build()Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    move-result-object v0

    .line 150
    return-object v0
.end method


# virtual methods
.method public getBitsPerSample()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBitsPerSample:I

    return v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public getBurstPeriod()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBurstPeriod:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mChannelNumber:I

    return v0
.end method

.method public getNumberOfBursts()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mNumberOfBursts:I

    return v0
.end method

.method public getPreambleCodeIndex()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleCodeIndex:I

    return v0
.end method

.method public getPreambleDuration()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleDuration:I

    return v0
.end method

.method public getPrfMode()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPrfMode:I

    return v0
.end method

.method public getRadarDataType()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRadarDataType:I

    return v0
.end method

.method public getRframeConfig()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRframeConfig:I

    return v0
.end method

.method public getSamplesPerSweep()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSamplesPerSweep:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionId:I

    return v0
.end method

.method public getSessionPriority()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionPriority:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionType:I

    return v0
.end method

.method public getSweepOffset()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepOffset:I

    return v0
.end method

.method public getSweepPeriod()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepPeriod:I

    return v0
.end method

.method public getSweepsPerBurst()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepsPerBurst:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/google/uwb/support/radar/RadarParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 115
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "session_id"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v1, "session_type"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v1, "burst_period"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBurstPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v1, "sweep_period"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v1, "sweeps_per_burst"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepsPerBurst:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v1, "samples_per_sweep"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSamplesPerSweep:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v1, "channel_number"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mChannelNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v1, "sweep_offset"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSweepOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v1, "rframe_config"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRframeConfig:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v1, "preamble_duration"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v1, "preamble_code_index"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPreambleCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v1, "session_priority"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mSessionPriority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v1, "bits_per_samples"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mBitsPerSample:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v1, "prf_mode"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mPrfMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v1, "number_of_bursts"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mNumberOfBursts:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "radar_data_type"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->mRadarDataType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    return-object v0
.end method
