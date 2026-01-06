.class public Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
.super Ljava/lang/Object;
.source "CccRangingReconfiguredParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRangeDataAoaAzimuthLower:Ljava/lang/Double;

.field private mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

.field private mRangeDataAoaElevationLower:Ljava/lang/Double;

.field private mRangeDataAoaElevationUpper:Ljava/lang/Double;

.field private mRangeDataNtfConfig:Ljava/lang/Integer;

.field private mRangeDataProximityFar:Ljava/lang/Integer;

.field private mRangeDataProximityNear:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 181
    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    .line 182
    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    .line 183
    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 184
    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 185
    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 186
    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;
    .locals 8

    .line 238
    new-instance v0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;

    iget-object v1, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    iget-object v5, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    iget-object v6, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    iget-object v7, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    invoke-direct/range {v0 .. v7}, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public setRangeDataAoaAzimuthLower(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaAzimuthLower"    # D

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 210
    return-object p0
.end method

.method public setRangeDataAoaAzimuthUpper(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaAzimuthUpper"    # D

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 218
    return-object p0
.end method

.method public setRangeDataAoaElevationLower(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaElevationLower"    # D

    .line 225
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 226
    return-object p0
.end method

.method public setRangeDataAoaElevationUpper(D)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataAoaElevationUpper"    # D

    .line 233
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 234
    return-object p0
.end method

.method public setRangeDataNtfConfig(I)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataNtfConfig"    # I

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 190
    return-object p0
.end method

.method public setRangeDataProximityFar(I)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataProximityFar"    # I

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataProximityFar:Ljava/lang/Integer;

    .line 202
    return-object p0
.end method

.method public setRangeDataProximityNear(I)Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;
    .locals 1
    .param p1, "rangeDataProximityNear"    # I

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingReconfiguredParams$Builder;->mRangeDataProximityNear:Ljava/lang/Integer;

    .line 196
    return-object p0
.end method
