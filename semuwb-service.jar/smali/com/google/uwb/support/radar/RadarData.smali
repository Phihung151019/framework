.class public Lcom/google/uwb/support/radar/RadarData;
.super Lcom/google/uwb/support/radar/RadarParams;
.source "RadarData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/radar/RadarData$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_BITS_PER_SAMPLE:Ljava/lang/String; = "bits_per_samples"

.field private static final KEY_RADAR_DATA_TYPE:Ljava/lang/String; = "radar_data_type"

.field private static final KEY_SAMPLES_PER_SWEEP:Ljava/lang/String; = "samples_per_sweep"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final KEY_SWEEP_DATA:Ljava/lang/String; = "sweep_data"

.field private static final KEY_SWEEP_OFFSET:Ljava/lang/String; = "sweep_offset"


# instance fields
.field private final mBitsPerSample:I

.field private final mRadarDataType:I

.field private final mSamplesPerSweep:I

.field private final mStatusCode:I

.field private final mSweepData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/radar/RadarSweepData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSweepOffset:I


# direct methods
.method private constructor <init>(IIIIILjava/util/List;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "radarDataType"    # I
    .param p3, "samplesPerSweep"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "sweepOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/radar/RadarSweepData;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p6, "sweepData":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/radar/RadarSweepData;>;"
    invoke-direct {p0}, Lcom/google/uwb/support/radar/RadarParams;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/uwb/support/radar/RadarData;->mStatusCode:I

    .line 60
    iput p2, p0, Lcom/google/uwb/support/radar/RadarData;->mRadarDataType:I

    .line 61
    iput p3, p0, Lcom/google/uwb/support/radar/RadarData;->mSamplesPerSweep:I

    .line 62
    iput p4, p0, Lcom/google/uwb/support/radar/RadarData;->mBitsPerSample:I

    .line 63
    iput p5, p0, Lcom/google/uwb/support/radar/RadarData;->mSweepOffset:I

    .line 64
    iput-object p6, p0, Lcom/google/uwb/support/radar/RadarData;->mSweepData:Ljava/util/List;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/util/List;Lcom/google/uwb/support/radar/RadarData$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Lcom/google/uwb/support/radar/RadarData$1;

    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/google/uwb/support/radar/RadarData;-><init>(IIIIILjava/util/List;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarData;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 90
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarData;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarData;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarData;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarData;

    move-result-object v0

    return-object v0

    .line 91
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarData;
    .locals 5
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 104
    new-instance v0, Lcom/google/uwb/support/radar/RadarData$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/radar/RadarData$Builder;-><init>()V

    .line 106
    const-string v1, "status_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarData$Builder;->setStatusCode(I)Lcom/google/uwb/support/radar/RadarData$Builder;

    move-result-object v0

    .line 107
    const-string v1, "radar_data_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarData$Builder;->setRadarDataType(I)Lcom/google/uwb/support/radar/RadarData$Builder;

    move-result-object v0

    .line 108
    const-string v1, "samples_per_sweep"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarData$Builder;->setSamplesPerSweep(I)Lcom/google/uwb/support/radar/RadarData$Builder;

    move-result-object v0

    .line 109
    const-string v1, "bits_per_samples"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarData$Builder;->setBitsPerSample(I)Lcom/google/uwb/support/radar/RadarData$Builder;

    move-result-object v0

    .line 110
    const-string v1, "sweep_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarData$Builder;->setSweepOffset(I)Lcom/google/uwb/support/radar/RadarData$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Lcom/google/uwb/support/radar/RadarData$Builder;
    const/4 v1, 0x0

    .line 113
    .local v1, "sweep_index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sweep_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 114
    .local v2, "sweepBundle":Landroid/os/PersistableBundle;
    :goto_0
    if-eqz v2, :cond_0

    .line 115
    invoke-static {v2}, Lcom/google/uwb/support/radar/RadarSweepData;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSweepData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/uwb/support/radar/RadarData$Builder;->addSweepData(Lcom/google/uwb/support/radar/RadarSweepData;)Lcom/google/uwb/support/radar/RadarData$Builder;

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/google/uwb/support/radar/RadarData$Builder;->build()Lcom/google/uwb/support/radar/RadarData;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getBitsPerSample()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/google/uwb/support/radar/RadarData;->mBitsPerSample:I

    return v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getRadarDataType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/google/uwb/support/radar/RadarData;->mRadarDataType:I

    return v0
.end method

.method public getSamplesPerSweep()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/uwb/support/radar/RadarData;->mSamplesPerSweep:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/google/uwb/support/radar/RadarData;->mStatusCode:I

    return v0
.end method

.method public getSweepData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/radar/RadarSweepData;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData;->mSweepData:Ljava/util/List;

    return-object v0
.end method

.method public getSweepOffset()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/google/uwb/support/radar/RadarData;->mSweepOffset:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 6

    .line 74
    invoke-super {p0}, Lcom/google/uwb/support/radar/RadarParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "status_code"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarData;->mStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "radar_data_type"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarData;->mRadarDataType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v1, "samples_per_sweep"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarData;->mSamplesPerSweep:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v1, "bits_per_samples"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarData;->mBitsPerSample:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "sweep_offset"

    iget v2, p0, Lcom/google/uwb/support/radar/RadarData;->mSweepOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "sweep_index":I
    iget-object v2, p0, Lcom/google/uwb/support/radar/RadarData;->mSweepData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/uwb/support/radar/RadarSweepData;

    .line 82
    .local v3, "sweep":Lcom/google/uwb/support/radar/RadarSweepData;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sweep_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/uwb/support/radar/RadarSweepData;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 83
    nop

    .end local v3    # "sweep":Lcom/google/uwb/support/radar/RadarSweepData;
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-object v0
.end method
