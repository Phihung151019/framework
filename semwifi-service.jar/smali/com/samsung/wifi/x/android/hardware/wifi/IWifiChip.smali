.class public interface abstract Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMloMode;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChannelCategoryMask;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$UsableChannelFilter;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$TxPowerScenario;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$MultiStaUseCase;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$LatencyMode;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexRestriction;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipIfaceCombination;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipIfaceCombinationLimit;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipDebugInfo;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombinationLimit;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$FeatureSetMask;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$Stub;,
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "aa2d34a8d196759e8f89109768ebe16039e47518"

.field public static final NO_POWER_CAP_CONSTANT:I = 0x7fffffff

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
    const-string v2, "android$hardware$wifi$IWifiChip"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract configureChip(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createApIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiApIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createBridgedApIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiApIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createNanIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createP2pIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiRttController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createStaIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableDebugErrorAlerts(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableStaChannelForPeerNetwork(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract flushRingBufferToFile()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceDumpToDebugRingBuffer(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiApIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApIfaceNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailableModes()[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugHostWakeReasonStats()Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugRingBuffersStatus()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRingBufferStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFeatureSet()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getId()I
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

.method public abstract getMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNanIfaceNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getP2pIfaceNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStaIfaceNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedRadioCombinations()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUsableChannels(III)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiUsableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWifiChipCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/WifiChipCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChipEventCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeApIface(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeNanIface(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeP2pIface(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeStaIface(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestChipDebugInfo()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipDebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestDriverDebugDump()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestFirmwareDebugDump()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetTxPowerScenario()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectTxPowerScenario(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAfcChannelAllowance(Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCountryCode([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLatencyMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMloMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMultiStaPrimaryConnection(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMultiStaUseCase(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startLoggingToDebugRingBuffer(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopLoggingToDebugRingBuffer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract triggerSubsystemRestart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
