.class public abstract Lcom/android/internal/telephony/Connection$ListenerBase;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerBase"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAudioModeIsVoipChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onAudioQualityChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onCallRadioTechChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onCallSubstateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onConferenceMergedFailed()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onConferenceParticipantsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onConnectionCapabilitiesChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDisconnect(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onExitedEcmMode()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onHandoverToWifiFailed()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onIsNetworkEmergencyCallChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onMediaAttributesChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onReceivedDtmfDigit(C)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onReceivedRtpHeaderExtensions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onRttInitiated()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onRttModifyRequestReceived()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onRttTerminated()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onVideoStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method
