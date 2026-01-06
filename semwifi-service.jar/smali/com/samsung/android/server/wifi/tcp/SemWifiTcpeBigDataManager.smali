.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SemWifiTcpeBigDataManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

.field private mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 14
    .line 15
    const-string v0, "TCPE"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    .line 24
    .line 25
    return-void
.end method

.method private resetBigDataFeatureForTCPE()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->initialize()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 7
    .line 8
    const-string v0, "TCPE"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public sendBigDataFeatureForTcpe(IIIIIIIJIZ)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iput p1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    .line 35
    iput p2, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    .line 36
    iput p3, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    .line 37
    iput p4, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    .line 38
    iput p5, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    .line 39
    iput p6, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    .line 40
    iput p10, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    int-to-long p1, p7

    .line 41
    iput-wide p1, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    .line 42
    iput-wide p8, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string p2, "TCPE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_0
    if-eqz p11, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->resetBigDataFeatureForTCPE()V

    :cond_1
    return-void
.end method

.method public sendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;ZZ)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 3
    :goto_0
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "sendBigDataFeatureForTCPE = "

    const-string v4, ", "

    .line 4
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWifiTcpeBigDataManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    .line 7
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpActionResult:I

    .line 8
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpAlgorithmResult:Ljava/lang/String;

    .line 9
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    .line 10
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRx:J

    .line 11
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLoss:D

    .line 12
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    .line 13
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    .line 14
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageCategory:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result p2

    iput p2, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageDetectedCount:I

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageAutoSwitchEnabled:I

    .line 18
    iput v2, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    if-eqz p3, :cond_3

    .line 19
    iget-object p4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getPackageDetectedCount(Ljava/lang/String;)I

    move-result p4

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApPackageDetectedCount:I

    .line 20
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    move-result p4

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApDetectedCount:I

    .line 21
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    move-result p4

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionCount:I

    .line 22
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result p3

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionTime:I

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    .line 24
    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    .line 25
    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    .line 26
    iget p1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    iput p1, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    .line 27
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string p2, "TCPE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_4
    if-eqz p5, :cond_5

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->resetBigDataFeatureForTCPE()V

    :cond_5
    return-void
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method
