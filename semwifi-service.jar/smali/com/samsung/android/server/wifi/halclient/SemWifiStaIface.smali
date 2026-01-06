.class public Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiStaIface"


# instance fields
.field private final mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;


# direct methods
.method public static synthetic $r8$lambda$-SIRrvKVxTJUq0GTmNDqSva9yMU(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->lambda$getCapabilities$1()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$C75mQqzSFBJq6xVH0jkad6-Ao4c(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->lambda$getLinkLayerStats$2()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$d_9QPks7LCffHUggYqt2ubJzJVc(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->lambda$getName$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->createWifiStaIfaceAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->createWifiStaIfaceHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    return-void
.end method

.method private synthetic lambda$getCapabilities$1()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getCapabilities()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getLinkLayerStats$2()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getLinkLayerStats()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getName$0()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Cannot call "

    .line 6
    .line 7
    const-string p3, " because mWifiStaIface is null"

    .line 8
    .line 9
    invoke-static {p0, p1, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "SemWifiStaIface"

    .line 14
    .line 15
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method protected createWifiStaIfaceAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceAidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected createWifiStaIfaceHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIfaceHidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public enableLinkLayerStatsCollection(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->enableLinkLayerStatsCollection(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public enableNdOffload(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->enableNdOffload(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCapabilities()J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;I)V

    .line 11
    .line 12
    .line 13
    const-string v2, "getCapabilities"

    .line 14
    .line 15
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFactoryMacAddress()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getFactoryMacAddress()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFeatureSet()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getFeatureSet()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLinkLayerStats()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getLinkLayerStats"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 15
    .line 16
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getName"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public installApfPacketFilter([B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->installApfPacketFilter([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public readApfPacketFilterData()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->readApfPacketFilterData()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public setDtimMultiplier(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->setDtimMultiplier(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setMacAddress([B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->setMacAddress([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setRoamingState(B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->setRoamingState(B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setScanMode(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->setScanMode(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startDebugPacketFateMonitoring()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->startDebugPacketFateMonitoring()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startRssiMonitoring(III)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->startRssiMonitoring(III)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startSendingKeepAlivePackets(I[BC[B[BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface/range {p0 .. p6}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->startSendingKeepAlivePackets(I[BC[B[BI)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopBackgroundScan(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->stopBackgroundScan(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopRssiMonitoring(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->stopRssiMonitoring(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public stopSendingKeepAlivePackets(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;->mWifiStaIface:Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;->stopSendingKeepAlivePackets(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
