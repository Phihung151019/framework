.class public interface abstract Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/CardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NfcEventCallback"
.end annotation


# virtual methods
.method public whitelist onAidConflictOccurred(Ljava/lang/String;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;

    .line 1383
    return-void
.end method

.method public whitelist onAidNotRouted(Ljava/lang/String;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;

    .line 1392
    return-void
.end method

.method public whitelist onInternalErrorReported(I)V
    .locals 0
    .param p1, "errorType"    # I

    .line 1423
    return-void
.end method

.method public whitelist onNfcStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1400
    return-void
.end method

.method public blacklist onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V
    .locals 0
    .param p1, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;

    .line 1371
    return-void
.end method

.method public whitelist onObserveModeStateChanged(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 1361
    return-void
.end method

.method public whitelist onPreferredServiceChanged(Z)V
    .locals 0
    .param p1, "isPreferred"    # Z

    .line 1353
    return-void
.end method

.method public whitelist onRemoteFieldChanged(Z)V
    .locals 0
    .param p1, "isDetected"    # Z

    .line 1408
    return-void
.end method
