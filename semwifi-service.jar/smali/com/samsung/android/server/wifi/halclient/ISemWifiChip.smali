.class public interface abstract Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# virtual methods
.method public abstract configureChip(I)Z
.end method

.method public abstract createNanIface()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
.end method

.method public abstract createP2pIface()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
.end method

.method public abstract createStaIface()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
.end method

.method public abstract enableDebugErrorAlerts(Z)Z
.end method

.method public abstract enableStaChannelForPeerNetwork(I)Z
.end method

.method public abstract flushRingBufferToFile()Z
.end method

.method public abstract forceDumpToDebugRingBuffer(Ljava/lang/String;)Z
.end method

.method public abstract getAvailableModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCapabilitiesBeforeIfacesExist()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDebugHostWakeReasonStats()Z
.end method

.method public abstract getDebugRingBuffersStatus()Z
.end method

.method public abstract getFeatureSet()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMode()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNanIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
.end method

.method public abstract getNanIfaceNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getP2pIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
.end method

.method public abstract getP2pIfaceNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
.end method

.method public abstract getStaIfaceNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedRadioCombinations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsableChannels(III)Z
.end method

.method public abstract getWifiChipCapabilities()Z
.end method

.method public abstract removeApIface(Ljava/lang/String;)Z
.end method

.method public abstract removeNanIface(Ljava/lang/String;)Z
.end method

.method public abstract removeP2pIface(Ljava/lang/String;)Z
.end method

.method public abstract removeStaIface(Ljava/lang/String;)Z
.end method

.method public abstract requestChipDebugInfo()Z
.end method

.method public abstract requestDriverDebugDump()Z
.end method

.method public abstract requestFirmwareDebugDump()Z
.end method

.method public abstract resetTxPowerScenario()Z
.end method

.method public abstract selectTxPowerScenario(I)Z
.end method

.method public abstract setAfcChannelAllowance()Z
.end method

.method public abstract setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z
.end method

.method public abstract setCountryCode([B)Z
.end method

.method public abstract setLatencyMode(I)Z
.end method

.method public abstract setMloMode(I)Z
.end method

.method public abstract setMultiStaPrimaryConnection(Ljava/lang/String;)Z
.end method

.method public abstract setMultiStaUseCase(I)Z
.end method

.method public abstract startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z
.end method

.method public abstract stopLoggingToDebugRingBuffer()Z
.end method
