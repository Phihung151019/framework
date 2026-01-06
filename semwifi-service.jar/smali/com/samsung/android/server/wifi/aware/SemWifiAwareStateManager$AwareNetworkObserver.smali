.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwareNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "aware_data0"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "interfaceAdded: "

    .line 10
    .line 11
    const-string v1, "SemWifiAwareStateManager"

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmWifiAwareNative(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->tryToGetAware(Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmAwareStartedCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    add-int/2addr v1, v2

    .line 39
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fputmAwareStartedCount(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$mloggingIfaceStarted(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setAwareEnabled(Z)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "aware_data0"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "interfaceRemoved: "

    .line 10
    .line 11
    const-string v1, "SemWifiAwareStateManager"

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$msetLegacyScanningEnable(ZLcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v3, "aware"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "controlOpenWifiScanTimer : cancel & start"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->controlOpenWifiScanTimer(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->controlOpenWifiScanTimer(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setAwareEnabled(Z)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmWifiAwareNative(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->releaseAware()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$mloggingIfaceRemoved(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmChannelInfoPerNdp(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/util/SparseArray;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method
