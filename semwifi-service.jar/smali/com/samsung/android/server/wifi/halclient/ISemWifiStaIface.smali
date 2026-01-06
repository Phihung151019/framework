.class public interface abstract Lcom/samsung/android/server/wifi/halclient/ISemWifiStaIface;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# virtual methods
.method public abstract configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z
.end method

.method public abstract enableLinkLayerStatsCollection(Z)Z
.end method

.method public abstract enableNdOffload(Z)Z
.end method

.method public abstract getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;
.end method

.method public abstract getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;
.end method

.method public abstract getCapabilities()J
.end method

.method public abstract getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;
.end method

.method public abstract getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;
.end method

.method public abstract getFactoryMacAddress()[B
.end method

.method public abstract getFeatureSet()I
.end method

.method public abstract getLinkLayerStats()Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;
.end method

.method public abstract installApfPacketFilter([B)Z
.end method

.method public abstract readApfPacketFilterData()[B
.end method

.method public abstract setDtimMultiplier(I)Z
.end method

.method public abstract setMacAddress([B)Z
.end method

.method public abstract setRoamingState(B)Z
.end method

.method public abstract setScanMode(Z)Z
.end method

.method public abstract startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z
.end method

.method public abstract startDebugPacketFateMonitoring()Z
.end method

.method public abstract startRssiMonitoring(III)Z
.end method

.method public abstract startSendingKeepAlivePackets(I[BC[B[BI)Z
.end method

.method public abstract stopBackgroundScan(I)Z
.end method

.method public abstract stopRssiMonitoring(I)Z
.end method

.method public abstract stopSendingKeepAlivePackets(I)Z
.end method
