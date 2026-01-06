.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApThroughputParams"
.end annotation


# instance fields
.field channelUtilization:I

.field isMloSupported:Z

.field maxNumberSpatialStreamsFromHeCap:I

.field maxNumberSpatialStreamsFromHtCap:I

.field maxNumberSpatialStreamsFromVhtCap:I


# direct methods
.method static bridge synthetic -$$Nest$mgetChannelUtilization(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->getChannelUtilization()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->getMaxNumberSpatialStreams()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->channelUtilization:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->isMloSupported:Z

    .line 16
    .line 17
    return-void
.end method

.method private getChannelUtilization()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->channelUtilization:I

    .line 2
    .line 3
    return p0
.end method

.method private getMaxNumberSpatialStreams()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

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

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->channelUtilization:I

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->isMloSupported:Z

    .line 13
    .line 14
    return-void
.end method
