.class public interface abstract Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;
.super Ljava/lang/Object;
.source "SatelliteServiceCommandsInterface.java"


# virtual methods
.method public abstract blacklist abortSendingSatelliteDatagrams(Landroid/os/Message;)V
.end method

.method public abstract blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist registerForNtnSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSatelliteCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSatelliteDatagramReceived(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSatelliteEcefPositionReceived(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSatelliteModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerFormSatelliteRegistrationFailure(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerFormSatelliteSupportedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist requestIsSatelliteEnabled(Landroid/os/Message;)V
.end method

.method public abstract blacklist requestIsSatelliteSupported(Landroid/os/Message;)V
.end method

.method public abstract blacklist requestNtnSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract blacklist requestSatelliteCapabilities(Landroid/os/Message;)V
.end method

.method public abstract blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/os/Message;)V
.end method

.method public abstract blacklist requestSatelliteModemState(Landroid/os/Message;)V
.end method

.method public abstract blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/os/Message;)V
.end method

.method public abstract blacklist startSendingSatellitePointingInfo(Landroid/os/Message;)V
.end method

.method public abstract blacklist stopSendingSatellitePointingInfo(Landroid/os/Message;)V
.end method

.method public abstract blacklist unregisterForNtnSignalStrengthChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSatelliteCapabilitiesChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSatelliteDatagramReceived(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSatelliteEcefPositionReceived(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSatelliteModemStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterFormSatelliteRegistrationFailure(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterFormSatelliteSupportedStateChanged(Landroid/os/Handler;)V
.end method
