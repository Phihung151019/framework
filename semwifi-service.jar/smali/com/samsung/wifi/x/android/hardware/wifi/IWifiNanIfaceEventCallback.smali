.class public interface abstract Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "aa2d34a8d196759e8f89109768ebe16039e47518"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string v2, "android$hardware$wifi$IWifiNanIfaceEventCallback"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract eventBootstrappingConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingConfirmInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventBootstrappingRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingRequestInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/NanClusterEventInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathRequestInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventDataPathTerminated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventMatchExpired(BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventPairingConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfirmInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventPairingRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequestInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventSuspensionModeChanged(Lcom/samsung/wifi/x/android/hardware/wifi/NanSuspensionModeChangeInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eventTransmitFollowup(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyCapabilitiesResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/NanCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyConfigResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyCreateDataInterfaceResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDeleteDataInterfaceResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDisableResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyEnableResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyInitiateBootstrappingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyInitiateDataPathResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyInitiatePairingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyRespondToBootstrappingIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyRespondToDataPathIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyRespondToPairingIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyResumeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyStartPublishResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyStartSubscribeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyStopPublishResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyStopSubscribeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySuspendResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyTerminateDataPathResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyTerminatePairingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyTransmitFollowupResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
