.class public Lcom/google/uwb/support/aliro/AliroSpecificationParams;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final DEFAULT_MAX_RANGING_SESSIONS_NUMBER:I = 0x1

.field private static final KEY_CHANNELS:Ljava/lang/String; = "channels"

.field private static final KEY_CHAPS_PER_SLOTS:Ljava/lang/String; = "chaps_per_slots"

.field private static final KEY_HOPPING_CONFIGS:Ljava/lang/String; = "hopping_config_modes"

.field private static final KEY_HOPPING_SEQUENCES:Ljava/lang/String; = "hopping_sequences"

.field private static final KEY_MAC_MODES:Ljava/lang/String; = "mac_modes"

.field private static final KEY_MAX_RANGING_SESSION_NUMBER:Ljava/lang/String; = "max_ranging_session_number"

.field private static final KEY_MIN_UWB_INITIATION_TIME_MS:Ljava/lang/String; = "min_uwb_initiation_time_ms"

.field private static final KEY_PROTOCOL_VERSIONS:Ljava/lang/String; = "protocol_versions"

.field private static final KEY_PULSE_SHAPE_COMBOS:Ljava/lang/String; = "pulse_shape_combos"

.field private static final KEY_RAN_MULTIPLIER:Ljava/lang/String; = "ran_multiplier"

.field private static final KEY_SYNC_CODES:Ljava/lang/String; = "sync_codes"

.field private static final KEY_UWBS_MAX_PPM:Ljava/lang/String; = "uwbs_max_ppm"

.field private static final KEY_UWB_CONFIGS:Ljava/lang/String; = "uwb_configs"


# instance fields
.field private final mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChapsPerSlot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHoppingConfigModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHoppingSequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxRangingSessionNumber:I

.field private final mMinUwbInitiationTimeMs:I

.field private final mProtocolVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/aliro/AliroProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mPulseShapeCombos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRanMultiplier:I

.field private final mSyncCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUwbConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUwbsMaxPPM:I


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    .locals 0
    .param p4, "ranMultiplier"    # I
    .param p5, "maxRangingSessionNumber"    # I
    .param p6, "minUwbInitiationTimeMs"    # I
    .param p12, "uwbsMaxPPM"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/aliro/AliroProtocolVersion;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;",
            ">;III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "protocolVersions":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/aliro/AliroProtocolVersion;>;"
    .local p2, "uwbConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "pulseShapeCombos":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;>;"
    .local p7, "chapsPerSlot":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p8, "syncCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p9, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p10, "hoppingConfigModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p11, "hoppingSequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p13, "macModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbConfigs:Ljava/util/List;

    .line 94
    iput-object p3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    .line 95
    iput p4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mRanMultiplier:I

    .line 96
    iput p5, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMaxRangingSessionNumber:I

    .line 97
    iput p6, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMinUwbInitiationTimeMs:I

    .line 98
    iput-object p7, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChapsPerSlot:Ljava/util/List;

    .line 99
    iput-object p8, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mSyncCodes:Ljava/util/List;

    .line 100
    iput-object p9, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChannels:Ljava/util/List;

    .line 101
    iput-object p10, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingConfigModes:Ljava/util/List;

    .line 102
    iput-object p11, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingSequences:Ljava/util/List;

    .line 103
    iput p12, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbsMaxPPM:I

    .line 104
    iput-object p13, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMacModes:Ljava/util/List;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;Lcom/google/uwb/support/aliro/AliroSpecificationParams$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Ljava/util/List;
    .param p9, "x8"    # Ljava/util/List;
    .param p10, "x9"    # Ljava/util/List;
    .param p11, "x10"    # Ljava/util/List;
    .param p12, "x11"    # I
    .param p13, "x12"    # Ljava/util/List;
    .param p14, "x13"    # Lcom/google/uwb/support/aliro/AliroSpecificationParams$1;

    .line 43
    invoke-direct/range {p0 .. p13}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 140
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    move-result-object v0

    return-object v0

    .line 141
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    .locals 8
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 154
    new-instance v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;-><init>()V

    .line 155
    .local v0, "builder":Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;
    const-string v1, "protocol_versions"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 156
    .local v1, "protocolStrings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 157
    .local v5, "protocol":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/uwb/support/aliro/AliroProtocolVersion;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addProtocolVersion(Lcom/google/uwb/support/aliro/AliroProtocolVersion;)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 156
    .end local v5    # "protocol":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_0
    const-string v2, "uwb_configs"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v2, v5

    .line 161
    .local v6, "config":I
    invoke-virtual {v0, v6}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addUwbConfig(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 160
    .end local v6    # "config":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 164
    :cond_1
    nop

    .line 165
    const-string v2, "pulse_shape_combos"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 166
    .local v2, "pulseShapeComboStrings":[Ljava/lang/String;
    array-length v4, v2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 167
    .local v6, "pulseShapeCombo":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->fromString(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addPulseShapeCombo(Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 166
    .end local v6    # "pulseShapeCombo":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 170
    :cond_2
    const-string v4, "ran_multiplier"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 172
    const-string v4, "max_ranging_session_number"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->setMaxRangingSessionNumber(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 176
    :cond_3
    const-string v4, "min_uwb_initiation_time_ms"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->setMinUwbInitiationTimeMs(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 180
    :cond_4
    const-string v4, "chaps_per_slots"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_5

    aget v7, v4, v6

    .line 181
    .local v7, "chapsPerSlot":I
    invoke-virtual {v0, v7}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addChapsPerSlot(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 180
    .end local v7    # "chapsPerSlot":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 184
    :cond_5
    const-string v4, "sync_codes"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_6

    aget v7, v4, v6

    .line 185
    .local v7, "syncCode":I
    invoke-virtual {v0, v7}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addSyncCode(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 184
    .end local v7    # "syncCode":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 188
    :cond_6
    const-string v4, "channels"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_7

    aget v7, v4, v6

    .line 189
    .local v7, "channel":I
    invoke-virtual {v0, v7}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addChannel(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 188
    .end local v7    # "channel":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 192
    :cond_7
    const-string v4, "hopping_config_modes"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_8

    aget v7, v4, v6

    .line 193
    .local v7, "hoppingConfig":I
    invoke-virtual {v0, v7}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addHoppingConfigMode(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 192
    .end local v7    # "hoppingConfig":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 196
    :cond_8
    const-string v4, "hopping_sequences"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    move v6, v3

    :goto_7
    if-ge v6, v5, :cond_9

    aget v7, v4, v6

    .line 197
    .local v7, "hoppingSequence":I
    invoke-virtual {v0, v7}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addHoppingSequence(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 196
    .end local v7    # "hoppingSequence":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 200
    :cond_9
    const-string v4, "uwbs_max_ppm"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 201
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->setUwbsMaxPPM(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 204
    :cond_a
    const-string v4, "mac_modes"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    :goto_8
    if-ge v3, v5, :cond_b

    aget v6, v4, v3

    .line 205
    .local v6, "mode":I
    invoke-virtual {v0, v6}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->addMacMode(I)Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;

    .line 204
    .end local v6    # "mode":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 208
    :cond_b
    invoke-virtual {v0}, Lcom/google/uwb/support/aliro/AliroSpecificationParams$Builder;->build()Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    move-result-object v3

    return-object v3
.end method

.method private toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 212
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 213
    .local v0, "res":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 282
    instance-of v0, p1, Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    move-object v0, p1

    check-cast v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    .line 284
    .local v0, "otherSpecificationParams":Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    .line 285
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbConfigs:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbConfigs:Ljava/util/List;

    .line 286
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mRanMultiplier:I

    iget v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mRanMultiplier:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMaxRangingSessionNumber:I

    iget v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMaxRangingSessionNumber:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMinUwbInitiationTimeMs:I

    iget v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMinUwbInitiationTimeMs:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChapsPerSlot:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChapsPerSlot:Ljava/util/List;

    .line 290
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mSyncCodes:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mSyncCodes:Ljava/util/List;

    .line 291
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChannels:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChannels:Ljava/util/List;

    .line 292
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingConfigModes:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingConfigModes:Ljava/util/List;

    .line 293
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingSequences:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingSequences:Ljava/util/List;

    .line 294
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbsMaxPPM:I

    iget v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbsMaxPPM:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMacModes:Ljava/util/List;

    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMacModes:Ljava/util/List;

    .line 296
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 284
    :goto_0
    return v1

    .line 298
    .end local v0    # "otherSpecificationParams":Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    :cond_1
    return v1
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public getChapsPerSlot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChapsPerSlot:Ljava/util/List;

    return-object v0
.end method

.method public getHoppingConfigModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingConfigModes:Ljava/util/List;

    return-object v0
.end method

.method public getHoppingSequences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingSequences:Ljava/util/List;

    return-object v0
.end method

.method public getMacModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMacModes:Ljava/util/List;

    return-object v0
.end method

.method public getMaxRangingSessionNumber()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMaxRangingSessionNumber:I

    return v0
.end method

.method public getMinUwbInitiationTimeMs()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMinUwbInitiationTimeMs:I

    return v0
.end method

.method public getProtocolVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/aliro/AliroProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    return-object v0
.end method

.method public getPulseShapeCombos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    return-object v0
.end method

.method public getRanMultiplier()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mRanMultiplier:I

    return v0
.end method

.method public getSyncCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mSyncCodes:Ljava/util/List;

    return-object v0
.end method

.method public getUwbConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getUwbsMaxPPM()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbsMaxPPM:I

    return v0
.end method

.method public hashCode()I
    .locals 14

    .line 303
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    .line 305
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    .line 306
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v2

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbConfigs:Ljava/util/List;

    .line 307
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mRanMultiplier:I

    iget v5, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMaxRangingSessionNumber:I

    iget v6, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMinUwbInitiationTimeMs:I

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChapsPerSlot:Ljava/util/List;

    .line 311
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v7

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mSyncCodes:Ljava/util/List;

    .line 312
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v8

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChannels:Ljava/util/List;

    .line 313
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v9

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingConfigModes:Ljava/util/List;

    .line 314
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v10

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingSequences:Ljava/util/List;

    .line 315
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v11

    iget v12, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbsMaxPPM:I

    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMacModes:Ljava/util/List;

    .line 317
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v13

    filled-new-array/range {v1 .. v13}, [I

    move-result-object v0

    .line 303
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 5

    .line 114
    invoke-super {p0}, Lcom/google/uwb/support/aliro/AliroParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 115
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 116
    .local v1, "protocols":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mProtocolVersions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/uwb/support/aliro/AliroProtocolVersion;

    invoke-virtual {v3}, Lcom/google/uwb/support/aliro/AliroProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 120
    .local v2, "pulseShapeCombos":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mPulseShapeCombos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    invoke-virtual {v4}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "i":I
    :cond_1
    const-string v3, "protocol_versions"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbConfigs:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "uwb_configs"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 125
    const-string v3, "pulse_shape_combos"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    const-string v3, "ran_multiplier"

    iget v4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mRanMultiplier:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v3, "max_ranging_session_number"

    iget v4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMaxRangingSessionNumber:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v3, "min_uwb_initiation_time_ms"

    iget v4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMinUwbInitiationTimeMs:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChapsPerSlot:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "chaps_per_slots"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 130
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mSyncCodes:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "sync_codes"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 131
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mChannels:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "channels"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 132
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingConfigModes:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "hopping_config_modes"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 133
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mHoppingSequences:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "hopping_sequences"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 134
    const-string v3, "uwbs_max_ppm"

    iget v4, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mUwbsMaxPPM:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v3, p0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->mMacModes:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    const-string v4, "mac_modes"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 136
    return-object v0
.end method
