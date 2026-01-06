.class public abstract Lcom/google/uwb/support/ccc/CccParams;
.super Lcom/google/uwb/support/base/Params;
.source "CccParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/ccc/CccParams$RangeDataNtfConfig;,
        Lcom/google/uwb/support/ccc/CccParams$CccDeviceType;,
        Lcom/google/uwb/support/ccc/CccParams$SessionType;,
        Lcom/google/uwb/support/ccc/CccParams$ProtocolError;,
        Lcom/google/uwb/support/ccc/CccParams$SlotsPerRound;,
        Lcom/google/uwb/support/ccc/CccParams$ChapsPerSlot;,
        Lcom/google/uwb/support/ccc/CccParams$HoppingSequence;,
        Lcom/google/uwb/support/ccc/CccParams$HoppingConfigMode;,
        Lcom/google/uwb/support/ccc/CccParams$SyncCodeIndex;,
        Lcom/google/uwb/support/ccc/CccParams$Channel;,
        Lcom/google/uwb/support/ccc/CccParams$UwbConfig;,
        Lcom/google/uwb/support/ccc/CccParams$PulseShape;
    }
.end annotation


# static fields
.field public static final CCC_DEVICE_TYPE_CONTROLEE:I = 0xa1

.field public static final CCC_DEVICE_TYPE_CONTROLLER:I = 0xa0

.field public static final CHAPS_PER_SLOT_12:I = 0xc

.field public static final CHAPS_PER_SLOT_24:I = 0x18

.field public static final CHAPS_PER_SLOT_3:I = 0x3

.field public static final CHAPS_PER_SLOT_4:I = 0x4

.field public static final CHAPS_PER_SLOT_6:I = 0x6

.field public static final CHAPS_PER_SLOT_8:I = 0x8

.field public static final CHAPS_PER_SLOT_9:I = 0x9

.field public static final HOPPING_CONFIG_MODE_ADAPTIVE:I = 0x2

.field public static final HOPPING_CONFIG_MODE_CONTINUOUS:I = 0x1

.field public static final HOPPING_CONFIG_MODE_NONE:I = 0x0

.field public static final HOPPING_SEQUENCE_AES:I = 0x1

.field public static final HOPPING_SEQUENCE_DEFAULT:I = 0x0

.field public static final HOP_MODE_KEY_UNSET:I = 0x0

.field public static final PROTOCOL_ERROR_LIFECYCLE:I = 0x2

.field public static final PROTOCOL_ERROR_NOT_FOUND:I = 0x3

.field public static final PROTOCOL_ERROR_SE_BUSY:I = 0x1

.field public static final PROTOCOL_ERROR_UNKNOWN:I = 0x0

.field public static final PROTOCOL_NAME:Ljava/lang/String; = "ccc"

.field public static final PROTOCOL_VERSION_1_0:Lcom/google/uwb/support/ccc/CccProtocolVersion;

.field public static final PULSE_SHAPE_PRECURSOR_FREE:I = 0x1

.field public static final PULSE_SHAPE_PRECURSOR_FREE_SPECIAL:I = 0x2

.field public static final PULSE_SHAPE_SYMMETRICAL_ROOT_RAISED_COSINE:I = 0x0

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

.field public static final SESSION_TYPE_CCC:I = 0xa0

.field public static final SLOTS_PER_ROUND_12:I = 0xc

.field public static final SLOTS_PER_ROUND_16:I = 0x10

.field public static final SLOTS_PER_ROUND_18:I = 0x12

.field public static final SLOTS_PER_ROUND_24:I = 0x18

.field public static final SLOTS_PER_ROUND_32:I = 0x20

.field public static final SLOTS_PER_ROUND_36:I = 0x24

.field public static final SLOTS_PER_ROUND_48:I = 0x30

.field public static final SLOTS_PER_ROUND_6:I = 0x6

.field public static final SLOTS_PER_ROUND_72:I = 0x48

.field public static final SLOTS_PER_ROUND_8:I = 0x8

.field public static final SLOTS_PER_ROUND_9:I = 0x9

.field public static final SLOTS_PER_ROUND_96:I = 0x60

.field public static final STS_INDEX_UNSET:I = 0x0

.field public static final UWB_CHANNEL_5:I = 0x5

.field public static final UWB_CHANNEL_9:I = 0x9

.field public static final UWB_CONFIG_0:I = 0x0

.field public static final UWB_CONFIG_1:I = 0x1

.field public static final UWB_INITIATION_TIME_MS_UNSET:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/google/uwb/support/ccc/CccProtocolVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccProtocolVersion;-><init>(II)V

    sput-object v0, Lcom/google/uwb/support/ccc/CccParams;->PROTOCOL_VERSION_1_0:Lcom/google/uwb/support/ccc/CccProtocolVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;-><init>()V

    return-void
.end method

.method public static isCorrectProtocol(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 42
    const-string v0, "ccc"

    invoke-static {p0, v0}, Lcom/google/uwb/support/ccc/CccParams;->isProtocol(Landroid/os/PersistableBundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCorrectProtocol(Ljava/lang/String;)Z
    .locals 1
    .param p0, "protocolName"    # Ljava/lang/String;

    .line 46
    const-string v0, "ccc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getProtocolName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "ccc"

    return-object v0
.end method
