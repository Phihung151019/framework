.class public Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public rxBytes:J

.field public rxBytesTopActivity:J

.field public rxPackets:J

.field public rxPacketsTopActivity:J

.field public txBytes:J

.field public txBytesTopActivity:J

.field public txPackets:J

.field public txPacketsTopActivity:J

.field public uidTopActivity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 13
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 14
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 15
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 16
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    .line 17
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 18
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 19
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 20
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    :cond_0
    return-void
.end method
