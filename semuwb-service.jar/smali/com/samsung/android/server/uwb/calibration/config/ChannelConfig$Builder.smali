.class Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
.super Ljava/lang/Object;
.source "ChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelConfig.Builder"


# instance fields
.field mAoaBuilder:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

.field mChannelId:I

.field mRxAntennaBuilder:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;

.field mTxDeltaPeakForAoa:I

.field mTxDeltaPeakForRanging:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "channelId"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mChannelId:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mTxDeltaPeakForRanging:I

    .line 66
    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mTxDeltaPeakForAoa:I

    .line 69
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mChannelId:I

    .line 70
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mAoaBuilder:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    .line 71
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mRxAntennaBuilder:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;

    .line 72
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
    .locals 6

    .line 110
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;

    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mChannelId:I

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mAoaBuilder:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mRxAntennaBuilder:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;

    .line 112
    invoke-virtual {v3}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->build()Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mTxDeltaPeakForRanging:I

    iget v5, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mTxDeltaPeakForAoa:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;-><init>(ILcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;II)V

    .line 110
    return-object v0
.end method

.method public setAoaCalbirationCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mAoaBuilder:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->setCalbirationCount(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    .line 81
    return-object p0
.end method

.method public setAoaCalbratinoConfig(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mAoaBuilder:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->setAoaCalibrationConfig(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    .line 86
    return-object p0
.end method

.method public setAoaPdoaBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mAoaBuilder:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;->setAoaPdoaBoundary(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig$Builder;

    .line 91
    return-object p0
.end method

.method public setChannelId(I)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 0
    .param p1, "channelId"    # I

    .line 75
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mChannelId:I

    .line 76
    return-object p0
.end method

.method public setRxAntennaPairs(ILjava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 1
    .param p1, "antennaType"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mRxAntennaBuilder:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->setRxAntPairs(ILjava/lang/String;)V

    .line 106
    return-object p0
.end method

.method public setTxDeltaPeekForAoa(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mTxDeltaPeakForAoa:I

    .line 101
    return-object p0
.end method

.method public setTxDeltaPeekForRanging(Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;->mTxDeltaPeakForRanging:I

    .line 96
    return-object p0
.end method
