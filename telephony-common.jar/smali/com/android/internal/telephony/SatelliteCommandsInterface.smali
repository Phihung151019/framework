.class public interface abstract Lcom/android/internal/telephony/SatelliteCommandsInterface;
.super Ljava/lang/Object;
.source "SatelliteCommandsInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# virtual methods
.method public abstract blacklist cleanupNetworkInfo(Landroid/os/Message;)V
.end method

.method public abstract blacklist disableIotMode(Landroid/os/Message;)V
.end method

.method public abstract blacklist enableIotMode(Landroid/os/Message;)V
.end method

.method public abstract blacklist getArfcn(Landroid/os/Message;)V
.end method

.method public abstract blacklist getIotMode(Landroid/os/Message;)V
.end method

.method public abstract blacklist getIotRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract blacklist getSatelliteId(Landroid/os/Message;)V
.end method

.method public abstract blacklist getSerialNumber(Landroid/os/Message;)V
.end method

.method public abstract blacklist getTxPower(Landroid/os/Message;)V
.end method

.method public abstract blacklist registerForCallEndReasonUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCallNumberDisplayInfoUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForIotRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRequestGpsData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRequestSimAuthData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSimAuthFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist sendIccSimAuthentication(Landroid/telephony/satellite/SemSatSimAuthResultData;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendLocationData(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendLocationUserPermit(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist sendRawAtCommand(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist setCombinedConfigMode(ILandroid/os/Message;)V
.end method

.method public abstract blacklist setDsiConfig(ZILandroid/os/Message;)V
.end method

.method public abstract blacklist setGpsInfo(IILandroid/os/Message;)V
.end method

.method public abstract blacklist setImei(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist setImsi(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist setNetworkQueryMode(ILandroid/os/Message;)V
.end method

.method public abstract blacklist setSignalStrengthReport(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist setSignalThresholdReport(ILjava/util/ArrayList;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract blacklist startNetworkSearch(Landroid/os/Message;)V
.end method

.method public abstract blacklist unregisterForCallEndReasonUpdated(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCallNumberDisplayInfoUpdated(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForIotRegistrationStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRegistrationStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRequestGpsData(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRequestSimAuthData(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSimAuthFailed(Landroid/os/Handler;)V
.end method
