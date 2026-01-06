.class Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

.field private final wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;


# direct methods
.method public static synthetic $r8$lambda$7j42utAmP75iqqYrlxLkmC2FwRs(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->lambda$processMessage$2(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$XNV7bDZreOznDOTxr1kN9ZhY8ZY(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->lambda$processMessage$1(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$i5dJt1XFNeQlgLvx3dKK3zrbZos(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const v0, 0x2006f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic lambda$processMessage$1(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$processMessage$2(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmOperationalMode(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeAllNetworks(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 26
    .line 27
    const-string v2, "Failed to remove networks on entering connect mode"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 72
    .line 73
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWsecInfo(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 84
    .line 85
    const-string v2, "Failed to set safe Wi-Fi mode"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsWiFi7Supported(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mcheckAndEnable80211be(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->setupWifiCond(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 142
    .line 143
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->start(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanResultUpdatedListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$menableB2bNetworks(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 183
    .line 184
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 201
    .line 202
    .line 203
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_4

    .line 210
    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 218
    .line 219
    .line 220
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_5

    .line 227
    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->handleWifiStateChanged(I)V

    .line 235
    .line 236
    .line 237
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 238
    .line 239
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 250
    .line 251
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->handleWifiEnabled()V

    .line 260
    .line 261
    .line 262
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 263
    .line 264
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->updateWifiVersions()Z

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmOperationalMode(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->stop(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeAllNetworks(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 41
    .line 42
    const-string v1, "Failed to remove networks on exiting connect mode"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->unregisterListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x2

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 119
    .line 120
    .line 121
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->handleWifiStateChanged(I)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->tearDown()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanResultUpdatedListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->unregisterScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->disableTracking()V

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 172
    .line 173
    const-string v0, "Leaving ConnectMode state"

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v3, 0xc

    .line 8
    .line 9
    const/16 v4, 0xb

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const-string v6, "any"

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    const-string v8, "SemClientModeImpl"

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, -0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x1

    .line 21
    sparse-switch v2, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_11

    .line 25
    .line 26
    :sswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroid/os/Bundle;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 37
    .line 38
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->onDriverEventReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_10

    .line 46
    .line 47
    :sswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 56
    .line 57
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->beaconAbort(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :sswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Landroid/os/Bundle;

    .line 69
    .line 70
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 77
    .line 78
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->beaconInterval(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_10

    .line 86
    .line 87
    :sswitch_3
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 96
    .line 97
    const-string v3, "ConnectModeState: Network added, clear targetNetworkId "

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 103
    .line 104
    iput v10, v2, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 105
    .line 106
    invoke-static {v2, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_39

    .line 120
    .line 121
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->disableTracking()V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_10

    .line 131
    .line 132
    :sswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_39

    .line 141
    .line 142
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 143
    .line 144
    const-string v4, "NETWORK_NOT_FOUND_EVENT ssid="

    .line 145
    .line 146
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 154
    .line 155
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmUserConnectionSaLogging(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->reportNetworkNotFound(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_10

    .line 163
    .line 164
    :sswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    .line 166
    if-eqz v2, :cond_1

    .line 167
    .line 168
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 169
    .line 170
    check-cast v2, Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 176
    .line 177
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 182
    .line 183
    invoke-static {v3, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 191
    .line 192
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 201
    .line 202
    .line 203
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 204
    .line 205
    invoke-static {v2, v12}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msetConnectionSpeedTime(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_10

    .line 209
    .line 210
    :sswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v2, Ljava/lang/String;

    .line 213
    .line 214
    if-eqz v2, :cond_2

    .line 215
    .line 216
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 217
    .line 218
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    iput-object v2, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 223
    .line 224
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 225
    .line 226
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 231
    .line 232
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyAssociated(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_11

    .line 240
    .line 241
    :sswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v2, Ljava/lang/String;

    .line 244
    .line 245
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 246
    .line 247
    if-lez v3, :cond_3

    .line 248
    .line 249
    move v3, v12

    .line 250
    goto :goto_0

    .line 251
    :cond_3
    move v3, v11

    .line 252
    :goto_0
    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 253
    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v10, "Association Rejection event: bssid="

    .line 257
    .line 258
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 262
    .line 263
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-virtual {v10, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v10, " reason code="

    .line 275
    .line 276
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v10, " timedOut="

    .line 283
    .line 284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    if-eqz v2, :cond_5

    .line 298
    .line 299
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_4

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 307
    .line 308
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_6

    .line 317
    .line 318
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 319
    .line 320
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 325
    .line 326
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :cond_6
    :goto_2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 331
    .line 332
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    if-nez v3, :cond_7

    .line 337
    .line 338
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 339
    .line 340
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 345
    .line 346
    invoke-static {v6, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 354
    .line 355
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-static {v3, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 360
    .line 361
    .line 362
    :cond_7
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 363
    .line 364
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    if-eqz v3, :cond_b

    .line 369
    .line 370
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 371
    .line 372
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 377
    .line 378
    const/16 v6, 0x8

    .line 379
    .line 380
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_9

    .line 385
    .line 386
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 387
    .line 388
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/util/WifiUtils;->maybeWrongPassword(IZ)Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_9

    .line 405
    .line 406
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 407
    .line 408
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 417
    .line 418
    iget-object v6, v6, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_8

    .line 425
    .line 426
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 427
    .line 428
    iget v6, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 429
    .line 430
    invoke-static {v7, v6, v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    move v11, v12

    .line 434
    :cond_8
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 435
    .line 436
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    iput-object v6, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    .line 445
    .line 446
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 447
    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string v8, "association rejected SAE network : "

    .line 451
    .line 452
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 456
    .line 457
    iget-object v8, v8, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    :cond_9
    if-eqz v11, :cond_a

    .line 470
    .line 471
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 472
    .line 473
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 478
    .line 479
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-virtual {v3, v5, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 488
    .line 489
    .line 490
    goto :goto_3

    .line 491
    :cond_a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 492
    .line 493
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 498
    .line 499
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    invoke-virtual {v3, v6, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 508
    .line 509
    .line 510
    :goto_3
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 511
    .line 512
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 517
    .line 518
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->getInstance(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 527
    .line 528
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 533
    .line 534
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    invoke-virtual {v3, v5, v6, v4}, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->checkAndSendConnectionFailEventToKtIptvApp(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 539
    .line 540
    .line 541
    :cond_b
    if-nez v11, :cond_c

    .line 542
    .line 543
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 544
    .line 545
    add-int/lit16 v5, v4, 0x2710

    .line 546
    .line 547
    iget v6, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 548
    .line 549
    invoke-static {v5, v6, v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    :cond_c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 553
    .line 554
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 559
    .line 560
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    invoke-static {v5, v2, v4, v6}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForAssocReject(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    const/16 v4, 0xe

    .line 569
    .line 570
    invoke-static {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 574
    .line 575
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    if-eqz v2, :cond_39

    .line 584
    .line 585
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 586
    .line 587
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->notifyConnectionFailed()V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_10

    .line 599
    .line 600
    :sswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v2, Ljava/lang/String;

    .line 603
    .line 604
    iget v8, v1, Landroid/os/Message;->arg1:I

    .line 605
    .line 606
    iget v9, v1, Landroid/os/Message;->arg2:I

    .line 607
    .line 608
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 609
    .line 610
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    if-eqz v11, :cond_d

    .line 615
    .line 616
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 617
    .line 618
    new-instance v13, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v14, "AUTHENTICATION_FAILURE_EVENT: reasonCode= "

    .line 621
    .line 622
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string v14, ", errorCode="

    .line 629
    .line 630
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v13

    .line 640
    invoke-virtual {v11, v13}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_d
    const v11, 0x13953

    .line 644
    .line 645
    .line 646
    if-ne v9, v11, :cond_f

    .line 647
    .line 648
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 649
    .line 650
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 651
    .line 652
    .line 653
    move-result-object v9

    .line 654
    if-eqz v9, :cond_f

    .line 655
    .line 656
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 657
    .line 658
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 659
    .line 660
    .line 661
    move-result-object v9

    .line 662
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    if-nez v9, :cond_e

    .line 667
    .line 668
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 669
    .line 670
    const-string v3, "errorCode is 80211 but targetWifiConfig is not EAP."

    .line 671
    .line 672
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_10

    .line 676
    .line 677
    :cond_e
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 678
    .line 679
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 680
    .line 681
    .line 682
    move-result-object v9

    .line 683
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 684
    .line 685
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 686
    .line 687
    .line 688
    move-result-object v11

    .line 689
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v11

    .line 693
    invoke-virtual {v9, v11}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 694
    .line 695
    .line 696
    move-result-object v9

    .line 697
    if-eqz v9, :cond_f

    .line 698
    .line 699
    iget v11, v9, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 700
    .line 701
    if-eqz v11, :cond_f

    .line 702
    .line 703
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 704
    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    .line 706
    .line 707
    const-string v4, "errorCode is 80211 but targetWifiConfig is already disabled with "

    .line 708
    .line 709
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    iget v4, v9, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 713
    .line 714
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    goto/16 :goto_10

    .line 725
    .line 726
    :cond_f
    if-nez v8, :cond_10

    .line 727
    .line 728
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 729
    .line 730
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 735
    .line 736
    .line 737
    move-result v9

    .line 738
    if-eqz v9, :cond_10

    .line 739
    .line 740
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 741
    .line 742
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 743
    .line 744
    .line 745
    move-result-object v9

    .line 746
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    .line 747
    .line 748
    .line 749
    :cond_10
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 750
    .line 751
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 752
    .line 753
    .line 754
    move-result-object v9

    .line 755
    if-eqz v9, :cond_13

    .line 756
    .line 757
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 758
    .line 759
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    invoke-static {v9, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misEapMethodServerCertUsed(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)Z

    .line 764
    .line 765
    .line 766
    move-result v9

    .line 767
    if-eqz v9, :cond_11

    .line 768
    .line 769
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 770
    .line 771
    iget-boolean v11, v9, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    .line 772
    .line 773
    if-eqz v11, :cond_11

    .line 774
    .line 775
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 776
    .line 777
    .line 778
    move-result v11

    .line 779
    invoke-static {v9, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misTlsDomainMismatch(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)Z

    .line 780
    .line 781
    .line 782
    move-result v9

    .line 783
    if-nez v9, :cond_11

    .line 784
    .line 785
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 786
    .line 787
    const-string v7, "set DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    .line 788
    .line 789
    invoke-virtual {v3, v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 793
    .line 794
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 799
    .line 800
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v7

    .line 808
    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 809
    .line 810
    .line 811
    goto :goto_4

    .line 812
    :cond_11
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 813
    .line 814
    iget-boolean v9, v4, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithUmtsAuthTokenNumber:Z

    .line 815
    .line 816
    if-eqz v9, :cond_12

    .line 817
    .line 818
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    .line 823
    .line 824
    .line 825
    move-result v4

    .line 826
    if-eqz v4, :cond_12

    .line 827
    .line 828
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 829
    .line 830
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 831
    .line 832
    .line 833
    move-result-object v4

    .line 834
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 835
    .line 836
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    if-eqz v4, :cond_12

    .line 841
    .line 842
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 843
    .line 844
    const-string v7, "set DISABLED_AUTHENTICATION_UMTS_AUTN_ERROR"

    .line 845
    .line 846
    invoke-virtual {v4, v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 850
    .line 851
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 856
    .line 857
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 858
    .line 859
    .line 860
    move-result-object v7

    .line 861
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v7

    .line 865
    invoke-virtual {v4, v7, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 866
    .line 867
    .line 868
    goto :goto_4

    .line 869
    :cond_12
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 870
    .line 871
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 876
    .line 877
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 886
    .line 887
    .line 888
    :cond_13
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 889
    .line 890
    .line 891
    move-result v3

    .line 892
    if-eqz v3, :cond_14

    .line 893
    .line 894
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 895
    .line 896
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 901
    .line 902
    .line 903
    move-result v3

    .line 904
    if-nez v3, :cond_14

    .line 905
    .line 906
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 907
    .line 908
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    if-nez v3, :cond_14

    .line 917
    .line 918
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 919
    .line 920
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    :cond_14
    if-ne v8, v5, :cond_16

    .line 925
    .line 926
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 927
    .line 928
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mshouldSuggestEapTofu(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    if-eqz v3, :cond_16

    .line 933
    .line 934
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 935
    .line 936
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misTlsDomainMismatch(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-eqz v3, :cond_15

    .line 945
    .line 946
    const/4 v3, 0x5

    .line 947
    :goto_5
    move v8, v3

    .line 948
    goto :goto_6

    .line 949
    :cond_15
    const/4 v3, 0x4

    .line 950
    goto :goto_5

    .line 951
    :goto_6
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 952
    .line 953
    const-string v4, "Switch reasonCode= "

    .line 954
    .line 955
    const-string v5, ", because TLS cert error "

    .line 956
    .line 957
    invoke-static {v4, v8, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    move-result-object v4

    .line 961
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 962
    .line 963
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    .line 964
    .line 965
    .line 966
    move-result v5

    .line 967
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    const-string v5, " ("

    .line 971
    .line 972
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 976
    .line 977
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReasonString(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    const-string v6, ")"

    .line 982
    .line 983
    invoke-static {v4, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 991
    .line 992
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mclearTlsCertErrorData(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 993
    .line 994
    .line 995
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 996
    .line 997
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    if-eqz v3, :cond_16

    .line 1002
    .line 1003
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1004
    .line 1005
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1010
    .line 1011
    if-eq v3, v10, :cond_16

    .line 1012
    .line 1013
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1014
    .line 1015
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    const-string v5, "Disable network : "

    .line 1018
    .line 1019
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1023
    .line 1024
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v5

    .line 1028
    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1029
    .line 1030
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v4

    .line 1037
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1041
    .line 1042
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1047
    .line 1048
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v4

    .line 1052
    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1053
    .line 1054
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 1055
    .line 1056
    .line 1057
    :cond_16
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1058
    .line 1059
    iget v4, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1060
    .line 1061
    invoke-static {v8, v4, v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(IILcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1065
    .line 1066
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v4

    .line 1070
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1071
    .line 1072
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    invoke-static {v4, v2, v8, v5}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForAuthFail(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v2

    .line 1080
    const/16 v4, 0xf

    .line 1081
    .line 1082
    invoke-static {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1083
    .line 1084
    .line 1085
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1086
    .line 1087
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    if-eqz v2, :cond_39

    .line 1096
    .line 1097
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1098
    .line 1099
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v2

    .line 1103
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->notifyConnectionFailed()V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_10

    .line 1111
    .line 1112
    :sswitch_9
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1113
    .line 1114
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleSupplicantStateChange(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1119
    .line 1120
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v3

    .line 1124
    if-eqz v3, :cond_17

    .line 1125
    .line 1126
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1127
    .line 1128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    const-string v6, "SUPPLICANT_STATE_CHANGE_EVENT: state= "

    .line 1131
    .line 1132
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v5

    .line 1142
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    :cond_17
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1146
    .line 1147
    iget v5, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1148
    .line 1149
    if-ne v5, v10, :cond_1b

    .line 1150
    .line 1151
    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v3

    .line 1155
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1156
    .line 1157
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    if-eq v3, v5, :cond_1b

    .line 1162
    .line 1163
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1164
    .line 1165
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misSupplicantConnecting(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/SupplicantState;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v3

    .line 1169
    if-eqz v3, :cond_1b

    .line 1170
    .line 1171
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1172
    .line 1173
    check-cast v3, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;

    .line 1174
    .line 1175
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1176
    .line 1177
    iget-object v6, v3, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->BSSID:Ljava/lang/String;

    .line 1178
    .line 1179
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1183
    .line 1184
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v5

    .line 1188
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1189
    .line 1190
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v6

    .line 1194
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v5

    .line 1198
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v5

    .line 1202
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v6

    .line 1206
    if-eqz v6, :cond_19

    .line 1207
    .line 1208
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v6

    .line 1212
    check-cast v6, Ljava/lang/String;

    .line 1213
    .line 1214
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1215
    .line 1216
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v7

    .line 1220
    invoke-virtual {v7, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v6

    .line 1224
    if-eqz v6, :cond_18

    .line 1225
    .line 1226
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1227
    .line 1228
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1229
    .line 1230
    iput v7, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1231
    .line 1232
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1233
    .line 1234
    .line 1235
    :cond_19
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1236
    .line 1237
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v5

    .line 1241
    if-eqz v5, :cond_1a

    .line 1242
    .line 1243
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1244
    .line 1245
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v6

    .line 1249
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    const-string v8, "SUPPLICANT_STATE_CHANGE_EVENT: target: "

    .line 1252
    .line 1253
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1257
    .line 1258
    iget v8, v8, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1259
    .line 1260
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    const-string v8, " bssid: "

    .line 1264
    .line 1265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1269
    .line 1270
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v8

    .line 1274
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    const-string v8, " supplicantStateResult:"

    .line 1278
    .line 1279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v3

    .line 1289
    invoke-virtual {v6, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v3

    .line 1293
    invoke-virtual {v5, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    :cond_1a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1297
    .line 1298
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v13

    .line 1302
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1303
    .line 1304
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v14

    .line 1308
    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    .line 1309
    .line 1310
    .line 1311
    move-result v15

    .line 1312
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1313
    .line 1314
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v16

    .line 1318
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1319
    .line 1320
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1325
    .line 1326
    .line 1327
    move-result v17

    .line 1328
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1329
    .line 1330
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v5

    .line 1334
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1335
    .line 1336
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v6

    .line 1340
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/util/ScanPool;->getFrequency(Ljava/lang/String;)I

    .line 1341
    .line 1342
    .line 1343
    move-result v18

    .line 1344
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1345
    .line 1346
    iget v6, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1347
    .line 1348
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v20

    .line 1352
    move/from16 v19, v6

    .line 1353
    .line 1354
    invoke-static/range {v13 .. v20}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForTryToConnect(Ljava/lang/String;Ljava/lang/String;IZIIILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v5

    .line 1358
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1359
    .line 1360
    .line 1361
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1362
    .line 1363
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mclearTlsCertErrorData(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1364
    .line 1365
    .line 1366
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1367
    .line 1368
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsEapMethodConverted(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1369
    .line 1370
    .line 1371
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1372
    .line 1373
    iput-boolean v11, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithUmtsAuthTokenNumber:Z

    .line 1374
    .line 1375
    invoke-static {v3, v12}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msetConnectionSpeedTime(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 1376
    .line 1377
    .line 1378
    :cond_1b
    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    .line 1379
    .line 1380
    if-ne v2, v3, :cond_1d

    .line 1381
    .line 1382
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1383
    .line 1384
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v3

    .line 1388
    if-eqz v3, :cond_1c

    .line 1389
    .line 1390
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1391
    .line 1392
    const-string v4, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    .line 1393
    .line 1394
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    :cond_1c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1398
    .line 1399
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mretryConnectionForB2bNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1400
    .line 1401
    .line 1402
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1403
    .line 1404
    iput v10, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1405
    .line 1406
    invoke-static {v3, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1407
    .line 1408
    .line 1409
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1410
    .line 1411
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1412
    .line 1413
    .line 1414
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1415
    .line 1416
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v4

    .line 1420
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1421
    .line 1422
    .line 1423
    :cond_1d
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 1424
    .line 1425
    if-ne v2, v3, :cond_39

    .line 1426
    .line 1427
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1428
    .line 1429
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v2

    .line 1433
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1434
    .line 1435
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v3

    .line 1439
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyL2Connected(Ljava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    goto/16 :goto_10

    .line 1443
    .line 1444
    :sswitch_a
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1445
    .line 1446
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v2

    .line 1450
    if-eqz v2, :cond_1e

    .line 1451
    .line 1452
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1453
    .line 1454
    const-string v3, "ConnectModeState: Network connection lost "

    .line 1455
    .line 1456
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1457
    .line 1458
    .line 1459
    :cond_1e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1460
    .line 1461
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1462
    .line 1463
    .line 1464
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 1465
    .line 1466
    const/16 v3, 0x4d

    .line 1467
    .line 1468
    if-ne v2, v3, :cond_20

    .line 1469
    .line 1470
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1471
    .line 1472
    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v3

    .line 1476
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1477
    .line 1478
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v4

    .line 1482
    if-ne v3, v4, :cond_1f

    .line 1483
    .line 1484
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1485
    .line 1486
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v3

    .line 1490
    iget-object v3, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1491
    .line 1492
    goto :goto_7

    .line 1493
    :cond_1f
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1494
    .line 1495
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v3

    .line 1499
    :goto_7
    if-eqz v3, :cond_20

    .line 1500
    .line 1501
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1502
    .line 1503
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v4

    .line 1507
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3

    .line 1511
    invoke-virtual {v4, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 1512
    .line 1513
    .line 1514
    :cond_20
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1515
    .line 1516
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v3

    .line 1520
    if-eqz v3, :cond_21

    .line 1521
    .line 1522
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1523
    .line 1524
    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v3

    .line 1528
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1529
    .line 1530
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v4

    .line 1534
    if-eq v3, v4, :cond_21

    .line 1535
    .line 1536
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1537
    .line 1538
    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v3

    .line 1542
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1543
    .line 1544
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v4

    .line 1548
    if-eq v3, v4, :cond_21

    .line 1549
    .line 1550
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1551
    .line 1552
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v4

    .line 1556
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1557
    .line 1558
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v5

    .line 1562
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1563
    .line 1564
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1565
    .line 1566
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v7

    .line 1570
    invoke-static {v4, v5, v6, v2, v7}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForL2ConnectFail(Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v2

    .line 1574
    const/16 v4, 0xd

    .line 1575
    .line 1576
    invoke-static {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1577
    .line 1578
    .line 1579
    :cond_21
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1580
    .line 1581
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1586
    .line 1587
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v3

    .line 1591
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyDisconnect(Ljava/lang/String;)V

    .line 1592
    .line 1593
    .line 1594
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1595
    .line 1596
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v3

    .line 1600
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1601
    .line 1602
    .line 1603
    goto/16 :goto_10

    .line 1604
    .line 1605
    :sswitch_b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1606
    .line 1607
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v2

    .line 1611
    if-eqz v2, :cond_22

    .line 1612
    .line 1613
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1614
    .line 1615
    const-string v4, "Network connection established"

    .line 1616
    .line 1617
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    :cond_22
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1621
    .line 1622
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v2

    .line 1626
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1627
    .line 1628
    invoke-static {v4, v12}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v4

    .line 1632
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1633
    .line 1634
    .line 1635
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1636
    .line 1637
    check-cast v2, Ljava/lang/String;

    .line 1638
    .line 1639
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1640
    .line 1641
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v4

    .line 1645
    iget-object v4, v4, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1646
    .line 1647
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v4

    .line 1651
    if-nez v4, :cond_23

    .line 1652
    .line 1653
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1654
    .line 1655
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v5

    .line 1659
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1660
    .line 1661
    const-string v7, "target bssid is different, prev. "

    .line 1662
    .line 1663
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1667
    .line 1668
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v7

    .line 1672
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableBssid()Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v7

    .line 1676
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    const-string v7, ", new "

    .line 1680
    .line 1681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v6

    .line 1691
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v5

    .line 1695
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$000(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1696
    .line 1697
    .line 1698
    :cond_23
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1699
    .line 1700
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v4

    .line 1704
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1705
    .line 1706
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v5

    .line 1710
    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->setCurrentBssid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    .line 1712
    .line 1713
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1714
    .line 1715
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v4

    .line 1719
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    .line 1720
    .line 1721
    .line 1722
    move-result v4

    .line 1723
    if-eqz v4, :cond_24

    .line 1724
    .line 1725
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1726
    .line 1727
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v4

    .line 1731
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1732
    .line 1733
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v5

    .line 1737
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1738
    .line 1739
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v6

    .line 1743
    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1744
    .line 1745
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v5

    .line 1749
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1750
    .line 1751
    .line 1752
    goto :goto_8

    .line 1753
    :cond_24
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1754
    .line 1755
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v4

    .line 1759
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1760
    .line 1761
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v6

    .line 1765
    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1766
    .line 1767
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v5

    .line 1771
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1772
    .line 1773
    .line 1774
    :goto_8
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1775
    .line 1776
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v4

    .line 1780
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    .line 1781
    .line 1782
    .line 1783
    move-result v4

    .line 1784
    if-eqz v4, :cond_25

    .line 1785
    .line 1786
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1787
    .line 1788
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v4

    .line 1792
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1793
    .line 1794
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v5

    .line 1798
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getNetworkId()I

    .line 1799
    .line 1800
    .line 1801
    move-result v5

    .line 1802
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearDisableReason(I)V

    .line 1803
    .line 1804
    .line 1805
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1806
    .line 1807
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v4

    .line 1811
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1812
    .line 1813
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v5

    .line 1817
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1818
    .line 1819
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v6

    .line 1823
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v6

    .line 1827
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v5

    .line 1831
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 1832
    .line 1833
    .line 1834
    :cond_25
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1835
    .line 1836
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v4

    .line 1840
    if-eqz v4, :cond_26

    .line 1841
    .line 1842
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1843
    .line 1844
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1845
    .line 1846
    const-string v6, "ConnectMode: NETWORK_CONNECTION_EVENT, wifiInfo networkId="

    .line 1847
    .line 1848
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1849
    .line 1850
    .line 1851
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1852
    .line 1853
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v6

    .line 1857
    iget v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 1858
    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1860
    .line 1861
    .line 1862
    const-string v6, ", mLastSemWifiConfiguration="

    .line 1863
    .line 1864
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    .line 1866
    .line 1867
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1868
    .line 1869
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v6

    .line 1873
    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1874
    .line 1875
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v5

    .line 1882
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    :cond_26
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1886
    .line 1887
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v4

    .line 1891
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getLastWifiConfig()Landroid/net/wifi/WifiConfiguration;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v4

    .line 1895
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1896
    .line 1897
    invoke-static {v5, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misBssidAllowNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)Z

    .line 1898
    .line 1899
    .line 1900
    move-result v5

    .line 1901
    if-eqz v5, :cond_27

    .line 1902
    .line 1903
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1904
    .line 1905
    invoke-static {v5, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mcheckAndUpdateAllowedBssidNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 1906
    .line 1907
    .line 1908
    :cond_27
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1909
    .line 1910
    iput-object v9, v2, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    .line 1911
    .line 1912
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v4

    .line 1916
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1917
    .line 1918
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v5

    .line 1922
    iget v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 1923
    .line 1924
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1925
    .line 1926
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v6

    .line 1930
    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1931
    .line 1932
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1933
    .line 1934
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v7

    .line 1938
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1939
    .line 1940
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v8

    .line 1944
    iget-object v8, v8, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1945
    .line 1946
    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/util/ScanPool;->getFrequency(Ljava/lang/String;)I

    .line 1947
    .line 1948
    .line 1949
    move-result v7

    .line 1950
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1951
    .line 1952
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v8

    .line 1956
    iget-object v8, v8, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1957
    .line 1958
    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForL2Connected(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v4

    .line 1962
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1963
    .line 1964
    .line 1965
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1966
    .line 1967
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v3

    .line 1971
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1972
    .line 1973
    .line 1974
    goto/16 :goto_10

    .line 1975
    .line 1976
    :sswitch_c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1977
    .line 1978
    check-cast v2, Ljava/lang/String;

    .line 1979
    .line 1980
    const-string v3, " "

    .line 1981
    .line 1982
    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v2

    .line 1986
    move v4, v11

    .line 1987
    :goto_9
    array-length v5, v2

    .line 1988
    if-ge v4, v5, :cond_2c

    .line 1989
    .line 1990
    aget-object v5, v2, v4

    .line 1991
    .line 1992
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    .line 1993
    .line 1994
    .line 1995
    move-result v5

    .line 1996
    const/16 v6, 0x2b

    .line 1997
    .line 1998
    if-ne v5, v6, :cond_2a

    .line 1999
    .line 2000
    aget-object v5, v2, v4

    .line 2001
    .line 2002
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v5

    .line 2006
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v6

    .line 2010
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2011
    .line 2012
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v7

    .line 2025
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2026
    .line 2027
    .line 2028
    move-result v6

    .line 2029
    const-string v7, ""

    .line 2030
    .line 2031
    if-eqz v6, :cond_28

    .line 2032
    .line 2033
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v6

    .line 2037
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2038
    .line 2039
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2040
    .line 2041
    .line 2042
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    .line 2044
    .line 2045
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v5

    .line 2052
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v5

    .line 2056
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfputmDisabledCountry(Ljava/lang/String;)V

    .line 2057
    .line 2058
    .line 2059
    goto/16 :goto_a

    .line 2060
    .line 2061
    :cond_28
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v6

    .line 2065
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2066
    .line 2067
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v9

    .line 2077
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2078
    .line 2079
    .line 2080
    move-result v6

    .line 2081
    if-eqz v6, :cond_29

    .line 2082
    .line 2083
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v6

    .line 2087
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2088
    .line 2089
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2090
    .line 2091
    .line 2092
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    .line 2094
    .line 2095
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v5

    .line 2099
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v5

    .line 2103
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfputmDisabledCountry(Ljava/lang/String;)V

    .line 2104
    .line 2105
    .line 2106
    goto :goto_a

    .line 2107
    :cond_29
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v6

    .line 2111
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2112
    .line 2113
    .line 2114
    move-result v6

    .line 2115
    if-eqz v6, :cond_2b

    .line 2116
    .line 2117
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v6

    .line 2121
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v5

    .line 2125
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfputmDisabledCountry(Ljava/lang/String;)V

    .line 2126
    .line 2127
    .line 2128
    goto :goto_a

    .line 2129
    :cond_2a
    aget-object v5, v2, v4

    .line 2130
    .line 2131
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    .line 2132
    .line 2133
    .line 2134
    move-result v5

    .line 2135
    const/16 v6, 0x2d

    .line 2136
    .line 2137
    if-ne v5, v6, :cond_2b

    .line 2138
    .line 2139
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v5

    .line 2143
    aget-object v6, v2, v4

    .line 2144
    .line 2145
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v6

    .line 2149
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2150
    .line 2151
    .line 2152
    move-result v5

    .line 2153
    if-nez v5, :cond_2b

    .line 2154
    .line 2155
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2156
    .line 2157
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2158
    .line 2159
    .line 2160
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v6

    .line 2164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    .line 2166
    .line 2167
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    .line 2169
    .line 2170
    aget-object v6, v2, v4

    .line 2171
    .line 2172
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v6

    .line 2176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    .line 2178
    .line 2179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v5

    .line 2183
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfputmDisabledCountry(Ljava/lang/String;)V

    .line 2184
    .line 2185
    .line 2186
    :cond_2b
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 2187
    .line 2188
    goto/16 :goto_9

    .line 2189
    .line 2190
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2191
    .line 2192
    const-string v3, "Disabled Country: "

    .line 2193
    .line 2194
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2195
    .line 2196
    .line 2197
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v3

    .line 2201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v2

    .line 2208
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .line 2210
    .line 2211
    goto/16 :goto_10

    .line 2212
    .line 2213
    :sswitch_d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2214
    .line 2215
    check-cast v2, [I

    .line 2216
    .line 2217
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2218
    .line 2219
    aget v2, v2, v11

    .line 2220
    .line 2221
    if-ne v2, v12, :cond_2d

    .line 2222
    .line 2223
    goto :goto_b

    .line 2224
    :cond_2d
    move v11, v12

    .line 2225
    :goto_b
    invoke-static {v3, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmScpmWifi7Disabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 2226
    .line 2227
    .line 2228
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2229
    .line 2230
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScpmWifi7Disabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 2231
    .line 2232
    .line 2233
    move-result v2

    .line 2234
    if-eqz v2, :cond_2e

    .line 2235
    .line 2236
    const-string v2, "Disable"

    .line 2237
    .line 2238
    goto :goto_c

    .line 2239
    :cond_2e
    const-string v2, "Enable"

    .line 2240
    .line 2241
    :goto_c
    const-string v3, "Wi-Fi 7 "

    .line 2242
    .line 2243
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v2

    .line 2247
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    .line 2249
    .line 2250
    goto/16 :goto_10

    .line 2251
    .line 2252
    :sswitch_e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2253
    .line 2254
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 2255
    .line 2256
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleAdvancedLogStateChanged(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 2257
    .line 2258
    .line 2259
    goto/16 :goto_10

    .line 2260
    .line 2261
    :sswitch_f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2262
    .line 2263
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v2

    .line 2267
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2268
    .line 2269
    .line 2270
    move-result v2

    .line 2271
    if-nez v2, :cond_2f

    .line 2272
    .line 2273
    goto/16 :goto_11

    .line 2274
    .line 2275
    :cond_2f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2276
    .line 2277
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isConnected()Z

    .line 2278
    .line 2279
    .line 2280
    move-result v2

    .line 2281
    if-nez v2, :cond_31

    .line 2282
    .line 2283
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2284
    .line 2285
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v2

    .line 2289
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScannedConfigKeys()Ljava/util/List;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v2

    .line 2293
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2294
    .line 2295
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v3

    .line 2299
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v3

    .line 2303
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2304
    .line 2305
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v4

    .line 2309
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isSupported()Z

    .line 2310
    .line 2311
    .line 2312
    move-result v4

    .line 2313
    if-eqz v4, :cond_30

    .line 2314
    .line 2315
    new-instance v4, Ljava/util/HashSet;

    .line 2316
    .line 2317
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2318
    .line 2319
    .line 2320
    new-instance v5, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;

    .line 2321
    .line 2322
    const/4 v6, 0x1

    .line 2323
    invoke-direct {v5, v6, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 2324
    .line 2325
    .line 2326
    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2327
    .line 2328
    .line 2329
    new-instance v5, Ljava/util/HashSet;

    .line 2330
    .line 2331
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2332
    .line 2333
    .line 2334
    invoke-interface {v5, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2335
    .line 2336
    .line 2337
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2338
    .line 2339
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v4

    .line 2343
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handleScanResults(Ljava/util/Set;)V

    .line 2344
    .line 2345
    .line 2346
    :cond_30
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2347
    .line 2348
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v4

    .line 2352
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking()Z

    .line 2353
    .line 2354
    .line 2355
    move-result v4

    .line 2356
    if-eqz v4, :cond_31

    .line 2357
    .line 2358
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v3

    .line 2362
    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda7;

    .line 2363
    .line 2364
    const/4 v5, 0x1

    .line 2365
    invoke-direct {v4, v5, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    .line 2366
    .line 2367
    .line 2368
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 2369
    .line 2370
    .line 2371
    move-result v2

    .line 2372
    if-nez v2, :cond_31

    .line 2373
    .line 2374
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2375
    .line 2376
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v2

    .line 2380
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->showPickerDialogIfNecessary()V

    .line 2381
    .line 2382
    .line 2383
    :cond_31
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2384
    .line 2385
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v2

    .line 2389
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->checkAndRecoveryNetwork()V

    .line 2390
    .line 2391
    .line 2392
    goto/16 :goto_10

    .line 2393
    .line 2394
    :sswitch_10
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2395
    .line 2396
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v2

    .line 2400
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2401
    .line 2402
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v3

    .line 2406
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2407
    .line 2408
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setDtimInSuspendMode(Ljava/lang/String;I)Z

    .line 2409
    .line 2410
    .line 2411
    goto/16 :goto_10

    .line 2412
    .line 2413
    :sswitch_11
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2414
    .line 2415
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v2

    .line 2419
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2420
    .line 2421
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v3

    .line 2425
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2426
    .line 2427
    if-ne v4, v12, :cond_32

    .line 2428
    .line 2429
    move v11, v12

    .line 2430
    :cond_32
    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z

    .line 2431
    .line 2432
    .line 2433
    goto/16 :goto_10

    .line 2434
    .line 2435
    :sswitch_12
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2436
    .line 2437
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2438
    .line 2439
    .line 2440
    move-result-object v3

    .line 2441
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2442
    .line 2443
    .line 2444
    move-result v3

    .line 2445
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msetAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 2446
    .line 2447
    .line 2448
    goto/16 :goto_10

    .line 2449
    .line 2450
    :sswitch_13
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2451
    .line 2452
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 2453
    .line 2454
    .line 2455
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2456
    .line 2457
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v3

    .line 2461
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 2462
    .line 2463
    .line 2464
    goto/16 :goto_10

    .line 2465
    .line 2466
    :sswitch_14
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2467
    .line 2468
    const-string v3, "already started client mode"

    .line 2469
    .line 2470
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 2471
    .line 2472
    .line 2473
    goto/16 :goto_10

    .line 2474
    .line 2475
    :sswitch_15
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2476
    .line 2477
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsWiFi7Supported(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 2478
    .line 2479
    .line 2480
    move-result v2

    .line 2481
    if-eqz v2, :cond_3a

    .line 2482
    .line 2483
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2484
    .line 2485
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isConnected()Z

    .line 2486
    .line 2487
    .line 2488
    move-result v2

    .line 2489
    if-nez v2, :cond_33

    .line 2490
    .line 2491
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2492
    .line 2493
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v3

    .line 2497
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mcheckAndEnable80211be(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 2498
    .line 2499
    .line 2500
    goto/16 :goto_11

    .line 2501
    .line 2502
    :cond_33
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2503
    .line 2504
    invoke-static {v2, v12}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsWifi7PendingCommand(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 2505
    .line 2506
    .line 2507
    goto/16 :goto_11

    .line 2508
    .line 2509
    :sswitch_16
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2510
    .line 2511
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsWiFi7Supported(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 2512
    .line 2513
    .line 2514
    move-result v2

    .line 2515
    if-eqz v2, :cond_37

    .line 2516
    .line 2517
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetmDisabledCountry()Ljava/lang/String;

    .line 2518
    .line 2519
    .line 2520
    move-result-object v2

    .line 2521
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2522
    .line 2523
    .line 2524
    move-result v2

    .line 2525
    if-nez v2, :cond_37

    .line 2526
    .line 2527
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2528
    .line 2529
    check-cast v2, Ljava/lang/String;

    .line 2530
    .line 2531
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2532
    .line 2533
    .line 2534
    move-result v3

    .line 2535
    if-nez v3, :cond_34

    .line 2536
    .line 2537
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2538
    .line 2539
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v2

    .line 2543
    goto :goto_d

    .line 2544
    :cond_34
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2545
    .line 2546
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2547
    .line 2548
    .line 2549
    move-result-object v2

    .line 2550
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v2

    .line 2554
    :goto_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2555
    .line 2556
    .line 2557
    move-result v3

    .line 2558
    if-nez v3, :cond_37

    .line 2559
    .line 2560
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2561
    .line 2562
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2563
    .line 2564
    .line 2565
    move-result-object v3

    .line 2566
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2567
    .line 2568
    .line 2569
    move-result v3

    .line 2570
    if-nez v3, :cond_37

    .line 2571
    .line 2572
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2573
    .line 2574
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 2575
    .line 2576
    .line 2577
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2578
    .line 2579
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isConnected()Z

    .line 2580
    .line 2581
    .line 2582
    move-result v2

    .line 2583
    if-nez v2, :cond_35

    .line 2584
    .line 2585
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2586
    .line 2587
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2588
    .line 2589
    .line 2590
    move-result-object v3

    .line 2591
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mcheckAndEnable80211be(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 2592
    .line 2593
    .line 2594
    goto :goto_f

    .line 2595
    :cond_35
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2596
    .line 2597
    invoke-static {v2, v12}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsWifi7PendingCommand(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 2598
    .line 2599
    .line 2600
    goto :goto_f

    .line 2601
    :sswitch_17
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2602
    .line 2603
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v2

    .line 2607
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    .line 2608
    .line 2609
    .line 2610
    move-result v2

    .line 2611
    if-eqz v2, :cond_3a

    .line 2612
    .line 2613
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2614
    .line 2615
    if-ne v2, v12, :cond_36

    .line 2616
    .line 2617
    move v2, v12

    .line 2618
    goto :goto_e

    .line 2619
    :cond_36
    move v2, v11

    .line 2620
    :goto_e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2621
    .line 2622
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v3

    .line 2626
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2627
    .line 2628
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v4

    .line 2632
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWsecInfo(Ljava/lang/String;Z)Z

    .line 2633
    .line 2634
    .line 2635
    move-result v2

    .line 2636
    if-nez v2, :cond_3a

    .line 2637
    .line 2638
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2639
    .line 2640
    const-string v3, "Failed to set safe Wi-Fi mode"

    .line 2641
    .line 2642
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 2643
    .line 2644
    .line 2645
    goto :goto_11

    .line 2646
    :cond_37
    :goto_f
    :sswitch_18
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2647
    .line 2648
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v2

    .line 2652
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2653
    .line 2654
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v3

    .line 2658
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->update(Ljava/lang/String;)V

    .line 2659
    .line 2660
    .line 2661
    goto :goto_10

    .line 2662
    :sswitch_19
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2663
    .line 2664
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2665
    .line 2666
    const-string v4, "Trying to connect network again. (b2b policy). networkId="

    .line 2667
    .line 2668
    invoke-static {v2, v4}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 2669
    .line 2670
    .line 2671
    move-result-object v4

    .line 2672
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$100(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 2673
    .line 2674
    .line 2675
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2676
    .line 2677
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v3

    .line 2681
    invoke-virtual {v3, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 2682
    .line 2683
    .line 2684
    goto :goto_10

    .line 2685
    :sswitch_1a
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2686
    .line 2687
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v2

    .line 2691
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->disableRandomMac()V

    .line 2692
    .line 2693
    .line 2694
    goto :goto_10

    .line 2695
    :sswitch_1b
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2696
    .line 2697
    if-ne v2, v12, :cond_38

    .line 2698
    .line 2699
    move v11, v12

    .line 2700
    :cond_38
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2701
    .line 2702
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 2703
    .line 2704
    .line 2705
    move-result v2

    .line 2706
    if-eqz v2, :cond_39

    .line 2707
    .line 2708
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2709
    .line 2710
    const-string v3, "resetting EAP-SIM/AKA/AKA\' networks since SIM was changed. simPresent: "

    .line 2711
    .line 2712
    invoke-static {v3, v11}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2713
    .line 2714
    .line 2715
    move-result-object v3

    .line 2716
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 2717
    .line 2718
    .line 2719
    :cond_39
    :goto_10
    move v11, v12

    .line 2720
    :cond_3a
    :goto_11
    if-ne v11, v12, :cond_3b

    .line 2721
    .line 2722
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2723
    .line 2724
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 2725
    .line 2726
    .line 2727
    :cond_3b
    return v11

    .line 2728
    nop

    .line 2729
    :sswitch_data_0
    .sparse-switch
        0x20065 -> :sswitch_1b
        0x2006a -> :sswitch_1a
        0x2006b -> :sswitch_19
        0x2006d -> :sswitch_18
        0x2006e -> :sswitch_18
        0x2006f -> :sswitch_17
        0x20070 -> :sswitch_16
        0x20071 -> :sswitch_15
        0x20072 -> :sswitch_15
        0x20088 -> :sswitch_14
        0x20089 -> :sswitch_13
        0x20137 -> :sswitch_12
        0x201f4 -> :sswitch_11
        0x201f5 -> :sswitch_10
        0x201f6 -> :sswitch_f
        0x2020a -> :sswitch_e
        0x2021c -> :sswitch_d
        0x2021d -> :sswitch_c
        0x24003 -> :sswitch_b
        0x24004 -> :sswitch_a
        0x24006 -> :sswitch_9
        0x24007 -> :sswitch_8
        0x2402b -> :sswitch_7
        0x2402d -> :sswitch_6
        0x2402e -> :sswitch_5
        0x2402f -> :sswitch_4
        0x24052 -> :sswitch_3
        0x2406a -> :sswitch_2
        0x2406b -> :sswitch_1
        0x2406c -> :sswitch_0
    .end sparse-switch
.end method
