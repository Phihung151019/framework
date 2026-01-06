.class Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;
.super Ljava/lang/Object;
.source "AoaSegmentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mAzimuthValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field public mChannelId:I

.field public mCount:I

.field mElevatinoValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mChannelId:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1, v1, v1}, [[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mAzimuthValues:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {v1, v1, v1, v1, v1}, [[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mElevatinoValues:Ljava/util/ArrayList;

    .line 119
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;
    .locals 5

    .line 194
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mChannelId:I

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mAzimuthValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mElevatinoValues:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;-><init>(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public setAoaCalibrationConfig(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .line 132
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->splitArrays(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "splitedValues":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 134
    const-string v1, "AoaSegmentConfig"

    const-string v2, "splitedValues is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object p0

    .line 138
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    new-array v1, v1, [F

    .line 139
    .local v1, "azimuthAntennaSpacing":[F
    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    new-array v2, v2, [F

    .line 140
    .local v2, "azimuthPdoaOffset":[F
    iget v3, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    new-array v3, v3, [F

    .line 141
    .local v3, "elevationAntennaSpacing":[F
    iget v4, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    new-array v4, v4, [F

    .line 143
    .local v4, "elevationPdoaOffset":[F
    const/4 v5, 0x0

    .line 144
    .local v5, "segment":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    if-ge v6, v7, :cond_1

    .line 145
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "segment":I
    .local v7, "segment":I
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    .line 146
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "segment":I
    .restart local v5    # "segment":I
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v2, v6

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget v7, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    if-ge v6, v7, :cond_2

    .line 150
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "segment":I
    .restart local v7    # "segment":I
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v6

    .line 151
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "segment":I
    .restart local v5    # "segment":I
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v4, v6

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 154
    .end local v6    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mAzimuthValues:Ljava/util/ArrayList;

    sget v7, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_ANTENNA_SPACING:I

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v6, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mAzimuthValues:Ljava/util/ArrayList;

    sget v7, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_OFFSET:I

    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v6, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mElevatinoValues:Ljava/util/ArrayList;

    sget v7, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_ANTENNA_SPACING:I

    invoke-virtual {v6, v7, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v6, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mElevatinoValues:Ljava/util/ArrayList;

    sget v7, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_OFFSET:I

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object p0
.end method

.method public setAoaPdoaBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 167
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->splitArrays(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "splitedValues":[Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 170
    new-array v1, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    .line 171
    .local v1, "azimuthPdoaBoundary":[F
    new-array v2, v2, [F

    aput v4, v2, v3

    .local v2, "elevationPdoaBoundary":[F
    goto :goto_2

    .line 173
    .end local v1    # "azimuthPdoaBoundary":[F
    .end local v2    # "elevationPdoaBoundary":[F
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    sub-int/2addr v1, v2

    new-array v1, v1, [F

    .line 174
    .restart local v1    # "azimuthPdoaBoundary":[F
    iget v3, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    sub-int/2addr v3, v2

    new-array v3, v3, [F

    .line 176
    .local v3, "elevationPdoaBoundary":[F
    const/4 v4, 0x0

    .line 177
    .local v4, "segment":I
    if-eqz v0, :cond_2

    .line 178
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_1

    .line 179
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "segment":I
    .local v6, "segment":I
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v5

    .line 178
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 181
    .end local v5    # "i":I
    .end local v6    # "segment":I
    .restart local v4    # "segment":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_2

    .line 182
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "segment":I
    .restart local v6    # "segment":I
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v5

    .line 181
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    .line 187
    .end local v5    # "i":I
    .end local v6    # "segment":I
    :cond_2
    move-object v2, v3

    .end local v3    # "elevationPdoaBoundary":[F
    .restart local v2    # "elevationPdoaBoundary":[F
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mAzimuthValues:Ljava/util/ArrayList;

    sget v4, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_BOUNDARY:I

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mElevatinoValues:Ljava/util/ArrayList;

    sget v4, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;->AOA_SEGMENT_PDOA_BOUNDARY:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object p0
.end method

.method public setCalbirationCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mCount:I

    .line 128
    return-object p0
.end method

.method public setChanneIld(I)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;
    .locals 0
    .param p1, "channelId"    # I

    .line 122
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->mChannelId:I

    .line 123
    return-object p0
.end method
