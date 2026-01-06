.class public Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;
.super Lcom/google/uwb/support/ccc/CccParams;
.source "CccRangingReconfiguredParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_AZIMUTH_LOWER:Ljava/lang/String; = "range_data_aoa_azimuth_lower"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_AZIMUTH_UPPER:Ljava/lang/String; = "range_data_aoa_azimuth_upper"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_ELEVATION_LOWER:Ljava/lang/String; = "range_data_aoa_elevation_lower"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_ELEVATION_UPPER:Ljava/lang/String; = "range_data_aoa_elevation_upper"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_CONFIG:Ljava/lang/String; = "update_range_data_ntf_config"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_PROXIMITY_FAR:Ljava/lang/String; = "update_range_data_proximity_far"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_PROXIMITY_NEAR:Ljava/lang/String; = "update_range_data_proximity_near"


# instance fields
.field private final mRangeDataAoaAzimuthLower:Ljava/lang/Double;

.field private final mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

.field private final mRangeDataAoaElevationLower:Ljava/lang/Double;

.field private final mRangeDataAoaElevationUpper:Ljava/lang/Double;

.field private final mRangeDataNtfConfig:Ljava/lang/Integer;

.field private final mRangeDataProximityFar:Ljava/lang/Integer;

.field private final mRangeDataProximityNear:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1, "rangeDataNtfConfig"    # Ljava/lang/Integer;
    .param p2, "rangeDataProximityNear"    # Ljava/lang/Integer;
    .param p3, "rangeDataProximityFar"    # Ljava/lang/Integer;
    .param p4, "rangeDataAoaAzimuthLower"    # Ljava/lang/Double;
    .param p5, "rangeDataAoaAzimuthUpper"    # Ljava/lang/Double;
    .param p6, "rangeDataAoaElevationLower"    # Ljava/lang/Double;
    .param p7, "rangeDataAoaElevationUpper"    # Ljava/lang/Double;

    .line 70
    invoke-direct {p0}, Lcom/google/uwb/support/ccc/CccParams;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 72
    iput-object p2, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    .line 73
    iput-object p3, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    .line 74
    iput-object p4, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 75
    iput-object p5, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 76
    iput-object p6, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 77
    iput-object p7, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 78
    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 124
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;

    move-result-object v0

    return-object v0

    .line 125
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 138
    new-instance v0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;-><init>()V

    .line 140
    .local v0, "builder":Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    const-string v1, "update_range_data_ntf_config"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataNtfConfig(I)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 144
    :cond_0
    const-string v1, "update_range_data_proximity_near"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    nop

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataProximityNear(I)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 149
    :cond_1
    const-string v1, "update_range_data_proximity_far"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    nop

    .line 151
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataProximityFar(I)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 154
    :cond_2
    const-string v1, "range_data_aoa_azimuth_lower"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    nop

    .line 156
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataAoaAzimuthLower(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 159
    :cond_3
    const-string v1, "range_data_aoa_azimuth_upper"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    nop

    .line 161
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataAoaAzimuthUpper(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 164
    :cond_4
    const-string v1, "range_data_aoa_elevation_lower"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    nop

    .line 166
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataAoaElevationLower(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 169
    :cond_5
    const-string v1, "range_data_aoa_elevation_upper"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    nop

    .line 171
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->setRangeDataAoaElevationUpper(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;

    .line 174
    :cond_6
    invoke-virtual {v0}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->build()Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDataAoaAzimuthLower()Ljava/lang/Double;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataAoaAzimuthUpper()Ljava/lang/Double;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataAoaElevationLower()Ljava/lang/Double;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataAoaElevationUpper()Ljava/lang/Double;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataNtfConfig()Ljava/lang/Integer;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeDataProximityFar()Ljava/lang/Integer;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeDataProximityNear()Ljava/lang/Integer;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 87
    invoke-super {p0}, Lcom/google/uwb/support/ccc/CccParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 88
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_range_data_ntf_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_range_data_proximity_near"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_range_data_proximity_far"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 101
    const-string v3, "range_data_aoa_azimuth_lower"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 106
    const-string v3, "range_data_aoa_azimuth_upper"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 111
    const-string v3, "range_data_aoa_elevation_lower"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 116
    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 116
    const-string v3, "range_data_aoa_elevation_upper"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 119
    :cond_6
    return-object v0
.end method
