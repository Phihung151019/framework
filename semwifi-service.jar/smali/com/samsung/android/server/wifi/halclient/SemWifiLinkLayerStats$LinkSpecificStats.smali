.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkSpecificStats"
.end annotation


# instance fields
.field public beacon_rx:I

.field public contentionNumSamplesBe:J

.field public contentionNumSamplesBk:J

.field public contentionNumSamplesVi:J

.field public contentionNumSamplesVo:J

.field public contentionTimeAvgBeInUsec:J

.field public contentionTimeAvgBkInUsec:J

.field public contentionTimeAvgViInUsec:J

.field public contentionTimeAvgVoInUsec:J

.field public contentionTimeMaxBeInUsec:J

.field public contentionTimeMaxBkInUsec:J

.field public contentionTimeMaxViInUsec:J

.field public contentionTimeMaxVoInUsec:J

.field public contentionTimeMinBeInUsec:J

.field public contentionTimeMinBkInUsec:J

.field public contentionTimeMinViInUsec:J

.field public contentionTimeMinVoInUsec:J

.field public frequencyMhz:I

.field public link_id:I

.field public lostmpdu_be:J

.field public lostmpdu_bk:J

.field public lostmpdu_vi:J

.field public lostmpdu_vo:J

.field public peerInfo:[Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$PeerInfo;

.field public radio_id:I

.field public retries_be:J

.field public retries_bk:J

.field public retries_vi:J

.field public retries_vo:J

.field public rssi_mgmt:I

.field public rxmpdu_be:J

.field public rxmpdu_bk:J

.field public rxmpdu_vi:J

.field public rxmpdu_vo:J

.field public state:I

.field public timeSliceDutyCycleInPercent:S

.field public txmpdu_be:J

.field public txmpdu_bk:J

.field public txmpdu_vi:J

.field public txmpdu_vo:J


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
    iput-short v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$LinkSpecificStats;->timeSliceDutyCycleInPercent:S

    .line 6
    .line 7
    return-void
.end method
