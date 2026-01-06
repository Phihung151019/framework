.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalDataUsageStats"
.end annotation


# instance fields
.field public mCellularBytes:J

.field public mCurrentDayAndSimCellularBytes:J

.field public mTotalDataBytes:J

.field public mTotalDataEgressBytes:J

.field public mTotalDataIngressBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCellularBytes:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataBytes:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataIngressBytes:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataEgressBytes:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCellularBytes:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataBytes:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataIngressBytes:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataEgressBytes:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 12
    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{mTotalDataBytes="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataBytes:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",mTotalDataIngressBytes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataIngressBytes:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",mTotalDataEgressBytes="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataEgressBytes:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",mCellularBytes="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCellularBytes:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",mCurrentDayAndSimCellularBytes="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 49
    .line 50
    const-string p0, "}"

    .line 51
    .line 52
    invoke-static {v1, v2, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
