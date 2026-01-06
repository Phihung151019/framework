.class Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportStore"
.end annotation


# static fields
.field private static final sInstance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectedEnterTimestamp:J

.field private mDhcpResults:Landroid/net/DhcpInfo;

.field private mLastProceedMessageId:I

.field private mLastStateString:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mPrevProceedMessageId:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->sInstance:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    .line 7
    .line 8
    const-string v0, "InitialState"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    .line 16
    .line 17
    return-void
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
    .locals 3

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->sInstance:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpInfo;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 7
    .line 8
    return-void
.end method

.method getConnectedDurationMin()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    long-to-int p0, v0

    .line 19
    const v0, 0xea60

    .line 20
    .line 21
    .line 22
    div-int/2addr p0, v0

    .line 23
    return p0
.end method

.method getLastDhcpResults()Landroid/net/DhcpInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method getLastLinkProperties()Landroid/net/LinkProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method getLastProceedMessageId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    .line 2
    .line 3
    return p0
.end method

.method getLastWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method getLastWifiStateMachineStateName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getPrevProceedMessageId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    .line 2
    .line 3
    return p0
.end method

.method startTimerDuringConnection(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method updateClientModeImplProcessMessage(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    .line 2
    .line 3
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    .line 4
    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    .line 8
    .line 9
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLastProceedMessageId:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method updateDhcpResults(Landroid/net/DhcpInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpInfo;

    .line 2
    .line 3
    return-void
.end method

.method updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mLinkProperties:Landroid/net/LinkProperties;

    .line 7
    .line 8
    return-void
.end method

.method updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method
