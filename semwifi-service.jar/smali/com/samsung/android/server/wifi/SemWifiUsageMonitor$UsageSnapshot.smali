.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageSnapshot"
.end annotation


# instance fields
.field public mBand:I

.field public mConfigKey:Ljava/lang/String;

.field public mCummulativeRxBytes:J

.field public mCummulativeTxBytes:J

.field public mLastUpdate:J

.field public mToday:Ljava/lang/String;

.field public mWifiStandard:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    .line 3
    iput-wide p6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mLastUpdate:J

    .line 4
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mToday:Ljava/lang/String;

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getRxBytes(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mCummulativeRxBytes:J

    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getTxBytes(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mCummulativeTxBytes:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    .line 8
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception on UsageSnapshot initialize - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemWifiUsageMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, -0x1

    .line 10
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mLastUpdate:J

    return-void
.end method
