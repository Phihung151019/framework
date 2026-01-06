.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor$P2pProvDiscStatus;
    }
.end annotation


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field public static final AP_STA_POSSIBLE_PSK_MISMATCH:I = 0x2402b

.field private static final BASE:I = 0x24000

.field public static final P2P_BIGDATA_CONNECTION_RESULT_EVENT:I = 0x24051

.field public static final P2P_BIGDATA_DISCONNECT_EVENT:I = 0x24050

.field public static final P2P_BIGDATA_GROUP_OWNER_INTENT_EVENT:I = 0x24052

.field public static final P2P_CLIENT_IP_UPDATED_EVENT:I = 0x2405a

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field public static final P2P_GOPS_EVENT:I = 0x24031

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field public static final P2P_P2P_SCONNECT_PROBE_REQ_EVENT:I = 0x24046

.field public static final P2P_PERSISTENT_PSK_FAIL_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field public static final P2P_PROV_DISC_USER_REJECT_EVENT:I = 0x24047

.field public static final P2P_SCREEN_SHARING_STATUS_EVENT:I = 0x2405b

.field public static final P2P_WPS_SKIP_EVENT:I = 0x24032

.field public static final PROV_DISC_STATUS_INFO_UNAVAILABLE:I = 0x4

.field public static final PROV_DISC_STATUS_REJECTED:I = 0x2

.field public static final PROV_DISC_STATUS_SUCCESS:I = 0x0

.field public static final PROV_DISC_STATUS_TIMEOUT:I = 0x1

.field public static final PROV_DISC_STATUS_TIMEOUT_JOIN:I = 0x3

.field public static final PROV_DISC_STATUS_UNKNOWN:I = 0x5

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pMonitor"


# instance fields
.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    .line 27
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 4
    const-string v1, "SemWifiP2pMonitor"

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget p1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_3

    .line 10
    const-string p0, "Dropping event because ("

    const-string v0, ") is stopped"

    .line 11
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_3

    .line 14
    const-string p0, "There\'s no matching iface "

    .line 15
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    return-void
.end method


# virtual methods
.method public broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "P2P-BIGDATA-DISCONNECT"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, 0x24050

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "P2P-BIGDATA-CONNECTION-RESULT"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const v0, 0x24051

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string v0, "P2P-BIGDATA-GROUP-OWNER-INTENT"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const v0, 0x24052

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24031

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    .line 1
    const v0, 0x2402a

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    .line 1
    const v0, 0x24029

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastP2pDeviceFound(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x24015

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public broadcastP2pDeviceLost(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x24016

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "AP-STA-POSSIBLE-PSK-MISMATCH"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const p2, 0x2402b

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "P2P-PERSISTENT-PSK-FAIL"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const p2, 0x24028

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string v0, "P2P-CLIENT-IP-UPDATED"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const p2, 0x2405a

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const-string v0, "P2P-SCREEN-SHARING-STATUS-RECEIVED"

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    const p2, 0x2405b

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public broadcastP2pGoNegotiationFailure(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;)V
    .locals 1

    .line 1
    const v0, 0x2401a

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x24017

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public broadcastP2pGroupFormationFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 2
    .line 3
    const-string v1, "FREQ_CONFLICT"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;

    .line 12
    .line 13
    :cond_0
    const p2, 0x2401c

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x2401e

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x2401d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public broadcastP2pInvitationResult(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStatus;)V
    .locals 1

    .line 1
    const v0, 0x24020

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;ILandroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const p3, 0x24027

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public broadcastSconnectEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24046

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24001

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24002

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/util/Set;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "stopMonitoring("

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SemWifiP2pMonitor"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ")"

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1
.end method
