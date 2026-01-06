.class public Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;
.super Ljava/lang/Object;
.source "ChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelConfig"


# instance fields
.field mAoaSegmentConfig:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

.field mChannelId:I

.field mRxAntennaPairs:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

.field mTxDeltaPeakAntennaForAoa:I

.field mTxDeltaPeakAntennaForRanging:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;II)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "aoaSegmentConfig"    # Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;
    .param p3, "rxAntennaConfig"    # Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;
    .param p4, "txDeltaPeakAntennaForRanging"    # I
    .param p5, "txDeltaPeakAntennaForAoa"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mChannelId:I

    .line 21
    iput-object p2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mAoaSegmentConfig:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    .line 22
    iput-object p3, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mRxAntennaPairs:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

    .line 23
    iput p4, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mTxDeltaPeakAntennaForRanging:I

    .line 24
    iput p5, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mTxDeltaPeakAntennaForAoa:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAntennaConifg()Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mRxAntennaPairs:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

    return-object v0
.end method

.method public getAoaSegmentConfig()Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mAoaSegmentConfig:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    return-object v0
.end method

.method public getRxAntennaPairs(I)[B
    .locals 1
    .param p1, "antennaType"    # I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mRxAntennaPairs:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->getRxAntPairs(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getTxDeltaPeakForAoa()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mTxDeltaPeakAntennaForAoa:I

    return v0
.end method

.method public getTxDeltaPeakForRanging()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mTxDeltaPeakAntennaForRanging:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", AoaSegmentConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mAoaSegmentConfig:Lcom/samsung/android/server/uwb/calibration/config/AoaSegmentConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RxAntennaPairs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mRxAntennaPairs:Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TxDeltaPeakAntennaForRanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mTxDeltaPeakAntennaForRanging:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TxDeltaPeakAntennaForAoa: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/calibration/config/ChannelConfig;->mTxDeltaPeakAntennaForAoa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
