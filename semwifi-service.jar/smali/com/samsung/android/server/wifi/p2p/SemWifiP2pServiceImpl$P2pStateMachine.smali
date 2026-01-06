.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private final mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

.field private final mHandleFailureState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;

.field private final mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

.field private mInterfaceName:Ljava/lang/String;

.field private final mInvitationFailureState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;

.field private final mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

.field private final mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

.field private final mP2pNotSupportedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupCreatedState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandleFailureState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mHandleFailureState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInactiveState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvitationFailureState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInvitationFailureState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pDisabledState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pEnabledState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterfaceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeP2pSettings(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mloggingConnectionFailure(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loggingConnectionFailure(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendClientIpUpdateBroadcast(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendClientIpUpdateBroadcast(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendP2pDiscoveryChangedBroadcast(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$msendScreenSharingStatusBroadcast(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendScreenSharingStatusBroadcast(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msmTransition(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->smTransition(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    .line 12
    .line 13
    new-instance p3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    .line 14
    .line 15
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 33
    .line 34
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 40
    .line 41
    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mHandleFailureState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$HandleFailureState;

    .line 47
    .line 48
    new-instance v4, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 49
    .line 50
    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 51
    .line 52
    .line 53
    iput-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 54
    .line 55
    new-instance v5, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;

    .line 56
    .line 57
    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 58
    .line 59
    .line 60
    iput-object v5, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInvitationFailureState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InvitationFailureState;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iput-object v6, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pMonitor()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 81
    .line 82
    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 101
    .line 102
    .line 103
    if-eqz p4, :cond_0

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    const/16 p1, 0x64

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->hasDeferredMessages(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeDeferredMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private enableVerboseLogging(Z)V
    .locals 1

    .line 1
    const-string v0, "enableVerboseLogging: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fputmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->enableVerboseLogging(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->enableVerboseLogging(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 1

    .line 1
    const-string v0, "initializeP2pSettings"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->enableVerboseLogging(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetDeviceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private loggingConnectionFailure(Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "logging connection failure - event : "

    .line 10
    .line 11
    const-string v1, " , reason(status) : "

    .line 12
    .line 13
    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v1, "SemWifiP2pMonitor."

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 36
    .line 37
    const-string v2, "isGO"

    .line 38
    .line 39
    const-string v3, "p2p_freq"

    .line 40
    .line 41
    const-string v4, "grp_created"

    .line 42
    .line 43
    const-string v5, "iface"

    .line 44
    .line 45
    const-string v6, "0"

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "1"

    .line 57
    .line 58
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    move-object v6, v1

    .line 83
    :cond_2
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 108
    .line 109
    invoke-static {v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "fg_pkg"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v1, "reason"

    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const-string p2, "type"

    .line 132
    .line 133
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 137
    .line 138
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiD2dSaLoggingHandler(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string p1, "P2P"

    .line 143
    .line 144
    const-string p2, "p2p_conn_failed"

    .line 145
    .line 146
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method private sendClientIpUpdateBroadcast(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sending client ip update broadcast "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "com.samsung.android.wifi.p2p.CLIENT_IP_UPDATED"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/high16 v1, 0x4000000

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "wifiP2pDevice"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 42
    .line 43
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 2

    .line 1
    const-string v0, "discovery change broadcast "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v0, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/high16 v0, 0x4000000

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v0, "discoveryState"

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private sendScreenSharingStatusBroadcast(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "sending screen sharing status broadcast "

    .line 2
    .line 3
    const-string v1, ", ssStatus:"

    .line 4
    .line 5
    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "com.samsung.android.wifi.p2p.SCREEN_SHARING_STATUS_RECEIVED"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, 0x4000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "device_address"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p1, "ss_status"

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 41
    .line 42
    const-string p2, "android.permission.NEARBY_WIFI_DEVICES"

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private smTransition(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "State: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " -> "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto :goto_0

    .line 12
    :pswitch_1
    const-string v0, "channel="

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_2
    const-string v0, "set="

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    const-string v0, "capability="

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x2300a
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const p0, 0x24020

    .line 2
    .line 3
    .line 4
    if-eq p1, p0, :cond_1

    .line 5
    .line 6
    const p0, 0x24031

    .line 7
    .line 8
    .line 9
    if-eq p1, p0, :cond_0

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch p1, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    packed-switch p1, :pswitch_data_2

    .line 18
    .line 19
    .line 20
    packed-switch p1, :pswitch_data_3

    .line 21
    .line 22
    .line 23
    packed-switch p1, :pswitch_data_4

    .line 24
    .line 25
    .line 26
    packed-switch p1, :pswitch_data_5

    .line 27
    .line 28
    .line 29
    packed-switch p1, :pswitch_data_6

    .line 30
    .line 31
    .line 32
    packed-switch p1, :pswitch_data_7

    .line 33
    .line 34
    .line 35
    const-string p0, "what:"

    .line 36
    .line 37
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_0
    const-string p0, "SemWifiP2pMonitor.P2P_SCREEN_SHARING_STATUS_EVENT:"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_1
    const-string p0, "SemWifiP2pMonitor.P2P_CLIENT_IP_UPDATED_EVENT:"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_2
    const-string p0, "SemWifiP2pMonitor.P2P_BIGDATA_GROUP_OWNER_INTENT_EVENT"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_3
    const-string p0, "SemWifiP2pMonitor.P2P_BIGDATA_CONNECTION_RESULT_EVENT"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_4
    const-string p0, "SemWifiP2pMonitor.P2P_BIGDATA_DISCONNECT_EVENT"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_5
    const-string p0, "SemWifiP2pMonitor.AP_STA_POSSIBLE_PSK_MISMATCH"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_6
    const-string p0, "SemWifiP2pMonitor.AP_STA_CONNECTED_EVENT"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_7
    const-string p0, "SemWifiP2pMonitor.AP_STA_DISCONNECTED_EVENT"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_8
    const-string p0, "SemWifiP2pMonitor.P2P_PERSISTENT_PSK_FAIL_EVENT"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_9
    const-string p0, "SemWifiP2pMonitor.P2P_PROV_DISC_FAILURE_EVENT"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_a
    const-string p0, "SemWifiP2pMonitor.P2P_GROUP_REMOVED_EVENT"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_b
    const-string p0, "SemWifiP2pMonitor.P2P_GROUP_STARTED_EVENT"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_c
    const-string p0, "SemWifiP2pMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_d
    const-string p0, "SemWifiP2pMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_e
    const-string p0, "SemWifiP2pMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_f
    const-string p0, "SemWifiP2pMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_10
    const-string p0, "SemWifiP2pMonitor.P2P_GO_NEGOTIATION_REQUEST_EVENT"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_11
    const-string p0, "SemWifiP2pMonitor.P2P_DEVICE_LOST_EVENT"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_12
    const-string p0, "SemWifiP2pMonitor.P2P_DEVICE_FOUND_EVENT"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_13
    const-string p0, "SemWifiP2pMonitor.SUP_DISCONNECTION_EVENT"

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_14
    const-string p0, "SemWifiP2pMonitor.SUP_CONNECTION_EVENT"

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_15
    const-string p0, "CMD_SET_SAMSUNG_ACCOUNT"

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_16
    const-string p0, "CMD_DISCOVER_PEERS"

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_17
    const-string p0, "CMD_REMOVE_P2P_CLIENT"

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_18
    const-string p0, "CMD_SET_LISTEN_OFFLOADING"

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_19
    const-string p0, "CMD_SET_SCREEN_SHARING"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_1a
    const-string p0, "CMD_SET_MICROSOFT_MICE"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_1b
    const-string p0, "GROUP_REMOVED_EVENT"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_1c
    const-string p0, "GROUP_STARTED_EVENT"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_1d
    const-string p0, "EVENT_WIFI_P2P_DISABLED"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_1e
    const-string p0, "EVENT_WIFI_P2P_ENABLED"

    .line 133
    .line 134
    return-object p0

    .line 135
    :cond_0
    const-string p0, "SemWifiP2pMonitor.P2P_GOPS_EVENT"

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_1
    const-string p0, "SemWifiP2pMonitor.P2P_INVITATION_RESULT_EVENT"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_data_0
    .packed-switch 0x23001
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :pswitch_data_1
    .packed-switch 0x2300a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_2
    .packed-switch 0x24001
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :pswitch_data_3
    .packed-switch 0x24015
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :pswitch_data_4
    .packed-switch 0x24019
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :pswitch_data_5
    .packed-switch 0x24027
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :pswitch_data_6
    .packed-switch 0x24050
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :pswitch_data_7
    .packed-switch 0x2405a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logSmMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, " cmd = "

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p2, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " "

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p2, p2, Landroid/os/Message;->what:I

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "SemWifiP2pService"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "SemWifiP2pService"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :sswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :sswitch_data_0
    .sparse-switch
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24015 -> :sswitch_0
        0x24016 -> :sswitch_0
    .end sparse-switch
.end method

.method public registerForWifiMonitorEvents()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 4
    .line 5
    const v2, 0x2402a

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 18
    .line 19
    const v2, 0x24029

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 32
    .line 33
    const v2, 0x24015

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 46
    .line 47
    const v2, 0x24016

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 60
    .line 61
    const v2, 0x24017

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 74
    .line 75
    const v2, 0x2401d

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 88
    .line 89
    const v2, 0x2401e

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 102
    .line 103
    const v2, 0x24021

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 116
    .line 117
    const v2, 0x24001

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 130
    .line 131
    const v2, 0x24002

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 144
    .line 145
    const v2, 0x24027

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 158
    .line 159
    const v2, 0x24031

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 172
    .line 173
    const v2, 0x2401c

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 186
    .line 187
    const v2, 0x2401a

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 200
    .line 201
    const v2, 0x24020

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 212
    .line 213
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 214
    .line 215
    const v2, 0x24050

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 226
    .line 227
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 228
    .line 229
    const v2, 0x24051

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 240
    .line 241
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 242
    .line 243
    const v2, 0x24052

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 254
    .line 255
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 256
    .line 257
    const v2, 0x24028

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 268
    .line 269
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 270
    .line 271
    const v2, 0x2405a

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 282
    .line 283
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 284
    .line 285
    const v2, 0x2405b

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 296
    .line 297
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->startMonitoring(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method
