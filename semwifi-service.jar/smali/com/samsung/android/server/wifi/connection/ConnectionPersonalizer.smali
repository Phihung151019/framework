.class public Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;,
        Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;
    }
.end annotation


# static fields
.field private static final CONNECTION_PERSONALIZER_INTENT_CHANGE_OPTION:Ljava/lang/String; = "com.samsung.android.ConnectionPersonalizer.CHANGE_OPTION"

.field private static final CONNECTION_PERSONALIZER_INTENT_EXTRA_CONFIG_KEY:Ljava/lang/String; = "ConfigKey"

.field private static final CONNECTION_PERSONALIZER_INTENT_EXTRA_OPTION_COMMAND:Ljava/lang/String; = "OptionCommand"

.field private static final DETECTOR_MARGIN_TIME_MS:I = 0x1f4

.field private static final EVENT_BEACON_LOSS_DISCONNECTED:I = 0x270f

.field private static final EVENT_BOOT_COMPLETED:I = 0x2

.field private static final EVENT_CHANGE_BTM_OPTION:I = 0x6

.field private static final EVENT_CONNECTION_FAILED:I = 0x1

.field private static final EVENT_DISCONNECTED:I = 0x0

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x3

.field private static final EVENT_RESET_W24H:I = 0x5

.field private static final EVENT_WIFI_ENABLED:I = 0x4

.field private static final OPTION_COMMAND_DISABLE_BTM:Ljava/lang/String; = "DisableBTM"

.field public static final TAG:Ljava/lang/String; = "Conn.Personalizer"

.field private static final VER:Ljava/lang/String; = "1.1.3"


# instance fields
.field private final mBeaconLossDisconnectionAnalyzer:Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;

.field private mBeaconLossDisconnectionHandler:Landroid/os/Handler;

.field private final mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

.field private final mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

.field private final mContext:Landroid/content/Context;

.field private final mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private final mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

.field private mIsBootComplete:Z

.field private final mIssueBigdataManager:Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;

.field private final mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

.field private final mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

.field private final mIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

.field private final mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

.field private mPrimaryInterfaceName:Ljava/lang/String;

.field private final mRoamLogProcessor:Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private mScpmBtmdisableEnabled:Z

.field private mScpmLoggingEnabled:Z

.field private final mSecProductFeatureValue:I

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;


# direct methods
.method public static synthetic $r8$lambda$AEve05_cESZ9Rsz1uh1drM0tW64(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->lambda$new$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$PPiAPHoFJuM8_CCL-_2P2qRGyao(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->lambda$sendBufferedRoamingBigdataEvents$1(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionBigdataManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBootComplete(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIsBootComplete:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBootComplete(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIsBootComplete:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mrunDetector(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->runDetector(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendBufferedBigdata(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->sendBufferedBigdata()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIsBootComplete:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmLoggingEnabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmBtmdisableEnabled:Z

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiRouterInfoCollector()Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iput-object v5, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 27
    .line 28
    iput p4, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mSecProductFeatureValue:I

    .line 29
    .line 30
    new-instance v1, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 40
    .line 41
    new-instance v2, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;-><init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 51
    .line 52
    new-instance v7, Lcom/samsung/android/server/wifi/connection/Logger;

    .line 53
    .line 54
    const-string v2, "ConnectionPersonalizer (v1.1.3), SPF="

    .line 55
    .line 56
    const-string v3, " history:"

    .line 57
    .line 58
    invoke-static {v2, p4, v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v7, v2}, Lcom/samsung/android/server/wifi/connection/Logger;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object v7, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iput-object v6, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 72
    .line 73
    new-instance v2, Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;

    .line 74
    .line 75
    invoke-direct {v2, v1, v6, v7}, Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;-><init>(Landroid/os/Handler;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/connection/Logger;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueBigdataManager:Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;

    .line 79
    .line 80
    new-instance v1, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getConnPersonalizerIntentFilter()Landroid/content/IntentFilter;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/4 v3, 0x2

    .line 90
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    if-le p4, v0, :cond_0

    .line 94
    .line 95
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

    .line 101
    .line 102
    new-instance v1, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/connection/Logger;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 116
    .line 117
    new-instance v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    move-object v3, p1

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/connection/Logger;)V

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 128
    .line 129
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 130
    .line 131
    invoke-direct {p1, v1, v0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 135
    .line 136
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->setConnectionIssueResolver(Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    move-object v3, p1

    .line 141
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

    .line 143
    .line 144
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConfigManager:Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 149
    .line 150
    :goto_0
    new-instance p1, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;

    .line 151
    .line 152
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mRoamLogProcessor:Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;

    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    if-eqz p3, :cond_1

    .line 168
    .line 169
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$$ExternalSyntheticLambda1;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p3, v0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 175
    .line 176
    .line 177
    :cond_1
    new-instance p3, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$$ExternalSyntheticLambda2;

    .line 178
    .line 179
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->registerListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 190
    .line 191
    instance-of p1, v3, Landroid/net/wifi/WifiContext;

    .line 192
    .line 193
    if-eqz p1, :cond_2

    .line 194
    .line 195
    move-object p1, v3

    .line 196
    check-cast p1, Landroid/net/wifi/WifiContext;

    .line 197
    .line 198
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_2
    new-instance p1, Landroid/net/wifi/WifiContext;

    .line 202
    .line 203
    invoke-direct {p1, v3}, Landroid/net/wifi/WifiContext;-><init>(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    :goto_1
    new-instance p1, Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;

    .line 209
    .line 210
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mBeaconLossDisconnectionAnalyzer:Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;

    .line 214
    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string p1, "ConnectionPersonalizer initialized: ver=1.1.3, SPF="

    .line 218
    .line 219
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-string p1, "Conn.Personalizer"

    .line 230
    .line 231
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method private determineBeaconLossDisconnection(Lcom/samsung/android/server/wifi/connection/LogManager;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mBeaconLossDisconnectionHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mBeaconLossDisconnectionAnalyzer:Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;->analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget v0, p1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "determineBeaconLossDisconnection: DISCONN bssid="

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " rssi="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Conn.Personalizer"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mBeaconLossDisconnectionHandler:Landroid/os/Handler;

    .line 57
    .line 58
    iget v0, p1, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 62
    .line 63
    const/16 v2, 0x270f

    .line 64
    .line 65
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method private getConnPersonalizerIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.android.ConnectionPersonalizer.CHANGE_OPTION"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method private getTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 p0, 0x20

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-gez p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private synthetic lambda$sendBufferedRoamingBigdataEvents$1(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 2
    .line 3
    iget v0, p1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->id:I

    .line 4
    .line 5
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingCACR;->sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;ILjava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private makeConfigKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p2, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, "NONE"

    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string p0, "OWE"

    .line 12
    .line 13
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_2
    const-string p0, "SUITE_B_192"

    .line 19
    .line 20
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_3
    const-string p0, "SAE"

    .line 26
    .line 27
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_4
    const-string p0, "WPA_PSK"

    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_5
    const-string p0, "WPA_EAP"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0xfac01
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private parseAkm(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string p0, " "

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length p1, p0

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_1

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    const-string v3, "akm="

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x4

    .line 27
    if-le v3, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return p0

    .line 42
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Failed to parse akm: "

    .line 45
    .line 46
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "Conn.Personalizer"

    .line 57
    .line 58
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v0

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v0
.end method

.method private runDetector(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmLoggingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->detect()Lcom/samsung/android/server/wifi/connection/Issue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->getLastLogSet()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->parseAkm(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->makeConfigKey(Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiRouterInfoCollector:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/Issue;->isNone()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v4, ""

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v0, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->getLastLogSet()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/connection/LogSet;->getLastLogLine()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getTimeString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :goto_0
    if-nez p1, :cond_2

    .line 78
    .line 79
    iget-object v5, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mConnectionBigdataManager:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 80
    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmBtmdisableEnabled:Z

    .line 84
    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->setBigdataInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    if-nez p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->getLogManager()Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->determineBeaconLossDisconnection(Lcom/samsung/android/server/wifi/connection/LogManager;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    if-nez v2, :cond_4

    .line 102
    .line 103
    move-object v2, v4

    .line 104
    :cond_4
    const-string p1, "ISSUE_DETECTOR CONFIG_KEY="

    .line 105
    .line 106
    const-string v4, " ISSUE_ID="

    .line 107
    .line 108
    invoke-static {p1, v1, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget v4, v0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v4, " ROUTER_INFO="

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v5, " OUI="

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v6, v0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v6, " ADJ_RSSI="

    .line 136
    .line 137
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v6, v0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 141
    .line 142
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v6, " LAST_LOG_TIME="

    .line 146
    .line 147
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v3, "Conn.Personalizer"

    .line 158
    .line 159
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v7, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 163
    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v9, "---- [FRAMEWORK] "

    .line 167
    .line 168
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/Issue;->isNone()Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-nez v7, :cond_5

    .line 186
    .line 187
    iput-object v2, v0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueBigdataManager:Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;->addIssue(Lcom/samsung/android/server/wifi/connection/Issue;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mSecProductFeatureValue:I

    .line 202
    .line 203
    const/4 v2, 0x1

    .line 204
    if-le p1, v2, :cond_5

    .line 205
    .line 206
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueHistoryManager:Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;

    .line 207
    .line 208
    if-eqz p1, :cond_5

    .line 209
    .line 210
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueHistoryManager;->addNewIssue(Ljava/lang/String;Lcom/samsung/android/server/wifi/connection/Issue;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_5

    .line 215
    .line 216
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmBtmdisableEnabled:Z

    .line 217
    .line 218
    if-eqz p1, :cond_5

    .line 219
    .line 220
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 221
    .line 222
    if-eqz p1, :cond_5

    .line 223
    .line 224
    iget v0, v0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 225
    .line 226
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->runIssueResolver(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->detectDetailed()Lcom/samsung/android/server/wifi/connection/Issue;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/Issue;->isNone()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_6

    .line 240
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v1, "ISSUE_DETECTOR_DETAILED ISSUE_ID="

    .line 244
    .line 245
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget v1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueBigdataManager:Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;

    .line 309
    .line 310
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;->addIssue(Lcom/samsung/android/server/wifi/connection/Issue;)V

    .line 311
    .line 312
    .line 313
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mRoamLogProcessor:Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;

    .line 314
    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueDetector:Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueDetector;->getLogManager()Lcom/samsung/android/server/wifi/connection/LogManager;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->processLog(Lcom/samsung/android/server/wifi/connection/LogManager;)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method private sendBufferedBigdata()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mIssueBigdataManager:Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/IssueBigdataManager;->sendEvent()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->sendBufferedRoamingBigdataEvents()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private sendBufferedRoamingBigdataEvents()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BIGDATA: sendEvent: customized_roaming, "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    move v3, v1

    .line 11
    :goto_0
    const/4 v4, 0x5

    .line 12
    if-ge v2, v4, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mRoamLogProcessor:Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;

    .line 15
    .line 16
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->getBigdataEvents(I)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    add-int/2addr v3, v5

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    const-string v5, "ID="

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, "("

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, ") "

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    move v6, v1

    .line 61
    :goto_1
    if-ge v6, v5, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    check-cast v7, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 70
    .line 71
    iget-object v8, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 72
    .line 73
    new-instance v9, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-direct {v9, p0, v7}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mRoamLogProcessor:Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->clearAllEvents()V

    .line 88
    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    const-string v1, "no data, so not uploaded"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_3
    const-string v1, "Conn.Personalizer"

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public changeBtmOption(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x6

    .line 5
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Clog;->enableVerboseLogging(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getLogger()Lcom/samsung/android/server/wifi/connection/Logger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleLazyBootCompleted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public handleWifiEnabled()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public notifyConnectionFailed()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-wide/16 v1, 0x1f4

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public notifyDisconnected()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-wide/16 v1, 0x1f4

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public registerBeaconLossDisconnectionHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mBeaconLossDisconnectionHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public resetWifiConnectionW24hStats()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mHandler:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnMainHandler;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateDefaultConnectionRssiThreshold()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f05008e

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f05008f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v2, 0x7f050050

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "updateDefaultConnectionRssiThreshold: "

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "Conn.Personalizer"

    .line 81
    .line 82
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionRssiThreshold(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public updateScpmState()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "updateScpmState: logging="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportConnectionPersonalizerLogging()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", btm="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportConnectionPersonalizerBtmdisable()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "Conn.Personalizer"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportConnectionPersonalizerLogging()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmLoggingEnabled:Z

    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportConnectionPersonalizerBtmdisable()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmBtmdisableEnabled:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmLoggingEnabled:Z

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->mScpmBtmdisableEnabled:Z

    .line 71
    .line 72
    return-void
.end method
