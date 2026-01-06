.class public abstract Lcom/google/uwb/support/radar/RadarParams;
.super Lcom/google/uwb/support/base/Params;
.source "RadarParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;,
        Lcom/google/uwb/support/radar/RadarParams$RadarDataType;,
        Lcom/google/uwb/support/radar/RadarParams$NumberOfBursts;,
        Lcom/google/uwb/support/radar/RadarParams$BitsPerSample;,
        Lcom/google/uwb/support/radar/RadarParams$SessionPriority;,
        Lcom/google/uwb/support/radar/RadarParams$PreambleCodeIndex;,
        Lcom/google/uwb/support/radar/RadarParams$PreambleDuration;,
        Lcom/google/uwb/support/radar/RadarParams$SweepOffset;,
        Lcom/google/uwb/support/radar/RadarParams$SamplesPerSweep;,
        Lcom/google/uwb/support/radar/RadarParams$SweepsPerBurst;,
        Lcom/google/uwb/support/radar/RadarParams$SweepPeriod;,
        Lcom/google/uwb/support/radar/RadarParams$BurstPeriod;,
        Lcom/google/uwb/support/radar/RadarParams$SessionType;
    }
.end annotation


# static fields
.field public static final BITS_PER_SAMPLES_32:I = 0x0

.field public static final BITS_PER_SAMPLES_48:I = 0x1

.field public static final BITS_PER_SAMPLES_64:I = 0x2

.field public static final NUMBER_OF_BURSTS_DEFAULT:I = 0x0

.field public static final PREAMBLE_DURATION_T1024_SYMBOLS:I = 0x5

.field public static final PREAMBLE_DURATION_T128_SYMBOLS:I = 0x2

.field public static final PREAMBLE_DURATION_T16384_SYMBOLS:I = 0x9

.field public static final PREAMBLE_DURATION_T2048_SYMBOLS:I = 0x6

.field public static final PREAMBLE_DURATION_T256_SYMBOLS:I = 0x3

.field public static final PREAMBLE_DURATION_T32768_SYMBOLS:I = 0xa

.field public static final PREAMBLE_DURATION_T4096_SYMBOLS:I = 0x7

.field public static final PREAMBLE_DURATION_T512_SYMBOLS:I = 0x4

.field public static final PREAMBLE_DURATION_T8192_SYMBOLS:I = 0x8

.field public static final PROTOCOL_NAME:Ljava/lang/String; = "radar"

.field public static final RADAR_DATA_TYPE_RADAR_SWEEP_SAMPLES:I = 0x0

.field public static final SAMPLES_PER_SWEEP_DEFAULT:I = 0x40

.field public static final SESSION_PRIORITY_DEFAULT:I = 0x32

.field public static final SESSION_TYPE_RADAR:I = 0xa1

.field public static final SWEEP_OFFSET_DEFAULT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;-><init>()V

    return-void
.end method

.method public static isCorrectProtocol(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 44
    const-string v0, "radar"

    invoke-static {p0, v0}, Lcom/google/uwb/support/radar/RadarParams;->isProtocol(Landroid/os/PersistableBundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCorrectProtocol(Ljava/lang/String;)Z
    .locals 1
    .param p0, "protocolName"    # Ljava/lang/String;

    .line 49
    const-string v0, "radar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getProtocolName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "radar"

    return-object v0
.end method
