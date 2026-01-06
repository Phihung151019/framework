.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMetric"
.end annotation


# instance fields
.field private calculatedTxBad:J

.field private calculatedTxBadRate:D

.field private calculatedTxFrames:J

.field private calculatedTxRetries:J

.field private calculatedTxRetriesRate:D

.field private rssi:I

.field private totalRxBeacon:I

.field private txBad:J

.field private txFrames:J

.field private txRetries:J

.field private txSuccess:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->update(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->update(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->valid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 1
    const/16 v0, -0x7f

    .line 2
    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    .line 26
    .line 27
    return-void
.end method

.method private update(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .locals 6

    .line 12
    iget v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 13
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    .line 14
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 15
    iget-wide v4, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    add-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 17
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 18
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 19
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    .line 20
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    .line 21
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    .line 22
    iget p1, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    return-void
.end method

.method private update(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .locals 12

    .line 1
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rssi_mgmt:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 2
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    .line 3
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 4
    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 6
    iget-wide v6, p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 7
    iget-wide v6, p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 8
    iget-wide v6, p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    const-wide/16 v6, 0x0

    cmp-long p2, v0, v6

    const-wide/16 v8, 0x0

    if-lez p2, :cond_0

    long-to-double v2, v2

    long-to-double v10, v0

    div-double/2addr v2, v10

    goto :goto_0

    :cond_0
    move-wide v2, v8

    .line 9
    :goto_0
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    cmp-long p2, v0, v6

    if-lez p2, :cond_1

    long-to-double v2, v4

    long-to-double v0, v0

    div-double v8, v2, v0

    .line 10
    :cond_1
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    .line 11
    iget p1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    return-void
.end method

.method private valid()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 2
    .line 3
    const/16 v0, -0x7f

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method
