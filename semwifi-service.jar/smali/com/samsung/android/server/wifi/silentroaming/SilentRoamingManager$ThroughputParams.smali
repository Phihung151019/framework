.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThroughputParams"
.end annotation


# instance fields
.field public capacity:I

.field public channelUtilization:I

.field public mDisabledSubchannelBitmap:[B

.field public maxNumberSpatialStreamsFromHeCap:I

.field public maxNumberSpatialStreamsFromHtCap:I

.field public maxNumberSpatialStreamsFromVhtCap:I

.field public stationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->capacity:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getChannelUtilization()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 2
    .line 3
    return p0
.end method

.method public getDisabledSubchannelBitmap()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxNumberSpatialStreams()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 6
    .line 7
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->mDisabledSubchannelBitmap:[B

    .line 15
    .line 16
    return-void
.end method
