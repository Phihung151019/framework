.class public interface abstract Lcom/samsung/android/server/wifi/halclient/ISemSupplicantStaIfaceHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# virtual methods
.method public abstract addNetworkExternal(Ljava/lang/String;)Z
.end method

.method public abstract addQosPolicyRequestForScs(Ljava/lang/String;[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;
.end method

.method public abstract addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addRxFilter(Ljava/lang/String;B)Z
.end method

.method public abstract asBinder()Landroid/os/IBinder;
.end method

.method public abstract associationCtl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract clearTwtStatistics(Ljava/lang/String;I)Z
.end method

.method public abstract deregisterDeathHandler()Z
.end method

.method public abstract disconnect(Ljava/lang/String;)Z
.end method

.method public abstract doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract eLnaControl(Ljava/lang/String;I)I
.end method

.method public abstract eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract enable80211be(Ljava/lang/String;I)Z
.end method

.method public abstract enableAutoReconnect(Ljava/lang/String;Z)Z
.end method

.method public abstract enableBeaconInterval(Ljava/lang/String;Z)Z
.end method

.method public abstract enablePktlogFilter(Ljava/lang/String;Z)Z
.end method

.method public abstract enableVerboseLogging(Z)V
.end method

.method public abstract endLeakyApPassiveDetection(Ljava/lang/String;)I
.end method

.method public abstract filsHlpAddRequest(Ljava/lang/String;[B[B)Z
.end method

.method public abstract filsHlpFlushRequest(Ljava/lang/String;)Z
.end method

.method public abstract generateSelfDppConfiguration(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method public abstract getAverageTxPower(Ljava/lang/String;Z)[I
.end method

.method public abstract getAverageTxPower(Ljava/lang/String;ZI)[I
.end method

.method public abstract getChannelUtilization(Ljava/lang/String;)I
.end method

.method public abstract getChannelUtilizationExtended(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConnectionCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;
.end method

.method public abstract getConnectionMloLinksInfo(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;
.end method

.method public abstract getCountryRev(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getKeyMgmtCapabilities(Ljava/lang/String;)I
.end method

.method public abstract getLqcmReport(Ljava/lang/String;)I
.end method

.method public abstract getMacAddress(Ljava/lang/String;)[B
.end method

.method public abstract getMaxBandwidth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMaxTdlsSession(Ljava/lang/String;)I
.end method

.method public abstract getMlState(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNetworkExternal(Ljava/lang/String;I)Z
.end method

.method public abstract getNumOfTdlsSession(Ljava/lang/String;)I
.end method

.method public abstract getPcieMode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRoamBand(Ljava/lang/String;)I
.end method

.method public abstract getRoamDelta(Ljava/lang/String;)I
.end method

.method public abstract getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRoamScanControl(Ljava/lang/String;)I
.end method

.method public abstract getRoamScanPeriod(Ljava/lang/String;)I
.end method

.method public abstract getRoamTrigger(Ljava/lang/String;)I
.end method

.method public abstract getRoamTriggerLegacy(Ljava/lang/String;)I
.end method

.method public abstract getSignalPollResults(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;
.end method

.method public abstract getSnr(Ljava/lang/String;)I
.end method

.method public abstract getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTidMode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTxMode(Ljava/lang/String;)I
.end method

.method public abstract getTxPower(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWpaDriverCapabilities(Ljava/lang/String;)I
.end method

.method public abstract initialize()Z
.end method

.method public abstract initiateAnqpQuery(Ljava/lang/String;[B[I[I)Z
.end method

.method public abstract initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z
.end method

.method public abstract initiateTdlsDiscover(Ljava/lang/String;[B)Z
.end method

.method public abstract initiateTdlsSetup(Ljava/lang/String;[B)Z
.end method

.method public abstract initiateTdlsTeardown(Ljava/lang/String;[B)Z
.end method

.method public abstract initiateVenueUrlAnqpQuery(Ljava/lang/String;[B)Z
.end method

.method public abstract isAvailableTdls(Ljava/lang/String;)Z
.end method

.method public abstract isCaptureRunning(Ljava/lang/String;)I
.end method

.method public abstract isInitSehSupplicantComplete()Z
.end method

.method public abstract isInitializationComplete()Z
.end method

.method public abstract isInitializationStarted()Z
.end method

.method public abstract isNCHOModeEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isWesModeEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
.end method

.method public abstract listNetworksExternal(Ljava/lang/String;)[I
.end method

.method public abstract probeStaIfaceNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract reassociate(Ljava/lang/String;)Z
.end method

.method public abstract reconnect(Ljava/lang/String;)Z
.end method

.method public abstract registerCallbackExternalForISehSupplicantStaIface(Ljava/lang/String;)Z
.end method

.method public abstract registerCallbackExternalForISupplicantStaIface(Ljava/lang/String;)Z
.end method

.method public abstract registerDeathHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;)Z
.end method

.method public abstract removeAllNetworks(Ljava/lang/String;)Z
.end method

.method public abstract removeAllQosPolicies(Ljava/lang/String;)Z
.end method

.method public abstract removeDppUri(Ljava/lang/String;I)Z
.end method

.method public abstract removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeQosPolicyForScs(Ljava/lang/String;[B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;
.end method

.method public abstract removeRxFilter(Ljava/lang/String;B)Z
.end method

.method public abstract resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract saveDebugDump(Ljava/lang/String;)Z
.end method

.method public abstract saveSupplicantNetworkId(Ljava/lang/String;I)Z
.end method

.method public abstract sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sendQosPolicyResponse(Ljava/lang/String;IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)Z
.end method

.method public abstract sendReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setAdpsEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setAffinityBooster(Ljava/lang/String;I)Z
.end method

.method public abstract setBtCoexistenceMode(Ljava/lang/String;B)Z
.end method

.method public abstract setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setConcurrencyPriority(I)Z
.end method

.method public abstract setCountryCode(Ljava/lang/String;[B)Z
.end method

.method public abstract setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setDebugParams(IZZ)Z
.end method

.method public abstract setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setDtimInSuspendMode(Ljava/lang/String;I)Z
.end method

.method public abstract setExternalSim(Ljava/lang/String;Z)Z
.end method

.method public abstract setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
.end method

.method public abstract setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract setInterwokingEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setLatencyCritical(Ljava/lang/String;I)Z
.end method

.method public abstract setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setMaxBandwidth(Ljava/lang/String;III)Z
.end method

.method public abstract setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
.end method

.method public abstract setMboCellularDataStatus(Ljava/lang/String;Z)Z
.end method

.method public abstract setMlControl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setNCHOModeEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setNumOfAllowedMloLink(Ljava/lang/String;I)Z
.end method

.method public abstract setPcieMode(Ljava/lang/String;II)Z
.end method

.method public abstract setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setPowerSave(Ljava/lang/String;Z)Z
.end method

.method public abstract setQosPolicyFeatureEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setRoamBand(Ljava/lang/String;I)Z
.end method

.method public abstract setRoamDelta(Ljava/lang/String;I)Z
.end method

.method public abstract setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setRoamScanControl(Ljava/lang/String;I)Z
.end method

.method public abstract setRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setRoamScanPeriod(Ljava/lang/String;I)Z
.end method

.method public abstract setRoamTrigger(Ljava/lang/String;I)Z
.end method

.method public abstract setRoamTriggerLegacy(Ljava/lang/String;I)Z
.end method

.method public abstract setScanDwell(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSuspendModeEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setTdlsEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setTidMode(Ljava/lang/String;III)Z
.end method

.method public abstract setTxMode(Ljava/lang/String;I)Z
.end method

.method public abstract setTxPowerBackOff(Ljava/lang/String;I)Z
.end method

.method public abstract setTxPowerBackOff(Ljava/lang/String;II)Z
.end method

.method public abstract setWesModeEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setWifiToCellular(Ljava/lang/String;IIIIII)Z
.end method

.method public abstract setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
.end method

.method public abstract setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z
.end method

.method public abstract setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z
.end method

.method public abstract setWsecInfo(Ljava/lang/String;Z)Z
.end method

.method public abstract setupIface(Ljava/lang/String;)Z
.end method

.method public abstract setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setupTwt(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract startCapture(Ljava/lang/String;I)I
.end method

.method public abstract startDppEnrolleeResponder(Ljava/lang/String;I)Z
.end method

.method public abstract startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract startRxFilter(Ljava/lang/String;)Z
.end method

.method public abstract stopCapture(Ljava/lang/String;)I
.end method

.method public abstract stopDppInitiator(Ljava/lang/String;)Z
.end method

.method public abstract stopDppResponder(Ljava/lang/String;I)Z
.end method

.method public abstract stopRxFilter(Ljava/lang/String;)Z
.end method

.method public abstract suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract teardownIface(Ljava/lang/String;)Z
.end method

.method public abstract teardownScheduledPm(Ljava/lang/String;)I
.end method

.method public abstract teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updateCellularCapabilities(Ljava/lang/String;BBB[B)Z
.end method

.method public abstract updateConnectionPersonalization(Ljava/lang/String;I[I[Ljava/lang/String;)Z
.end method

.method public abstract updateConnectionRssiThreshold(Ljava/lang/String;[I)Z
.end method
