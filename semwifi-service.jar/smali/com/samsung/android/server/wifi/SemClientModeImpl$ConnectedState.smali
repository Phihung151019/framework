.class Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method public static synthetic $r8$lambda$ZbrmhI8fTw9zSW-n7OJB2Esva38(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->lambda$exit$0()V

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private checkAndUpdateHiddenNetwork()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getLastWifiConfig()Landroid/net/wifi/WifiConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->isHiddenSsid(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "current "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " network maybe hidden."

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "SemClientModeImpl"

    .line 55
    .line 56
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method private synthetic lambda$exit$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->checkProvisioningAfterWifiDisconnected()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private updateBigDataApInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0xb

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0xc

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getBssid()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOceHlp(Landroid/net/wifi/ScanResult;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/16 v1, 0x11

    .line 77
    .line 78
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 47
    .line 48
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v0, v2, v3}, Lcom/samsung/android/server/wifi/ClientModeImplStateListener;->onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/util/Set;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->setManagedConfigKeys(Ljava/util/Set;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->checkAndUpdateHiddenNetwork()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getNetworkType()Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;Lcom/samsung/android/server/wifi/diagnostics/NetworkType;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "entering ConnectedState networkType="

    .line 118
    .line 119
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 123
    .line 124
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 139
    .line 140
    const/4 v2, -0x1

    .line 141
    iput v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    const/4 v2, 0x3

    .line 158
    if-eqz v0, :cond_1

    .line 159
    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 188
    .line 189
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getBssid()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForCcx(Landroid/net/wifi/ScanResult;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->enableExtendedFeature(Z)V

    .line 214
    .line 215
    .line 216
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_2

    .line 223
    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 231
    .line 232
    .line 233
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->handleWifiStateChanged(I)V

    .line 248
    .line 249
    .line 250
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->startTimerDuringConnection(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 260
    .line 261
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 266
    .line 267
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForConnectTransition(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const/4 v3, 0x2

    .line 280
    invoke-static {v0, v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 281
    .line 282
    .line 283
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->updateBigDataApInfo()V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 287
    .line 288
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_4

    .line 297
    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 299
    .line 300
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 305
    .line 306
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 311
    .line 312
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableSsid()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->applyWiFiB2BPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_4

    .line 325
    .line 326
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 327
    .line 328
    const-string v2, "applyB2BPolicy - Apply"

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 334
    .line 335
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 343
    .line 344
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 349
    .line 350
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->notifyWifiConnection(Ljava/lang/String;Z)V

    .line 355
    .line 356
    .line 357
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 358
    .line 359
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 364
    .line 365
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 370
    .line 371
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 380
    .line 381
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getFrequency()I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 393
    .line 394
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    if-eqz v0, :cond_5

    .line 403
    .line 404
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 405
    .line 406
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateConnectedDuration(Landroid/net/wifi/WifiInfo;)V

    .line 411
    .line 412
    .line 413
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 414
    .line 415
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmUserConnectionSaLogging(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 420
    .line 421
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->reportNetworkConnect(Landroid/net/wifi/WifiInfo;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 431
    .line 432
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 437
    .line 438
    if-eqz v0, :cond_6

    .line 439
    .line 440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 441
    .line 442
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 447
    .line 448
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 449
    .line 450
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 451
    .line 452
    const-string v3, "entering ConnectedState, creatorName="

    .line 453
    .line 454
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v2, "com.google.android.projection.gearhead"

    .line 462
    .line 463
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_6

    .line 468
    .line 469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 470
    .line 471
    const-string v2, "L2Connected: Android Auto AP, set Roam Triagger to -95"

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setNCHOModeEnabled(Z)Z

    .line 479
    .line 480
    .line 481
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 482
    .line 483
    const/16 v0, -0x5f

    .line 484
    .line 485
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setRoamTrigger(I)Z

    .line 486
    .line 487
    .line 488
    :cond_6
    return-void
.end method

.method public exit()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v1, "Leaving Connected state"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->clearWiFiB2BPolicy(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x4

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->handleWifiStateChanged(I)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsWiFi7Supported(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v1, 0x0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsWifi7PendingCommand(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCountryCode(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mcheckAndEnable80211be(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 136
    .line 137
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsWifi7PendingCommand(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 138
    .line 139
    .line 140
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 147
    .line 148
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 153
    .line 154
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const-string v5, "wifi_on"

    .line 159
    .line 160
    invoke-virtual {v3, v4, v5, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/4 v4, 0x1

    .line 165
    if-ne v3, v4, :cond_4

    .line 166
    .line 167
    move v3, v4

    .line 168
    goto :goto_0

    .line 169
    :cond_4
    move v3, v1

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 171
    .line 172
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 177
    .line 178
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 187
    .line 188
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_5

    .line 197
    .line 198
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 199
    .line 200
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    iget-object v7, v7, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 205
    .line 206
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    goto :goto_1

    .line 215
    :cond_5
    sget-object v7, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    .line 216
    .line 217
    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    :goto_1
    invoke-static {v2, v3, v5, v6, v7}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForDisconnectTransition(Ljava/lang/String;ZZII)Landroid/os/Bundle;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 226
    .line 227
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->iwhIntendedDisconnection()Z

    .line 239
    .line 240
    .line 241
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_2

    .line 243
    :catch_0
    const-string v0, "IwhInfservice"

    .line 244
    .line 245
    const-string v2, "Get SemwifiIntelligentConnectManager fail"

    .line 246
    .line 247
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move v0, v1

    .line 251
    :goto_2
    const-string v2, "ro.csc.sales_code"

    .line 252
    .line 253
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    const-string v3, "VZW"

    .line 258
    .line 259
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_6

    .line 264
    .line 265
    if-nez v0, :cond_6

    .line 266
    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 274
    .line 275
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showDisconnectToast(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 283
    .line 284
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 289
    .line 290
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 291
    .line 292
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 297
    .line 298
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_7

    .line 312
    .line 313
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 314
    .line 315
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 320
    .line 321
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 326
    .line 327
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-interface {v0, v2, v3}, Lcom/samsung/android/server/wifi/ClientModeImplStateListener;->onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 332
    .line 333
    .line 334
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 335
    .line 336
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 341
    .line 342
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->notifyWifiConnection(Ljava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 350
    .line 351
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 356
    .line 357
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const/4 v2, 0x3

    .line 362
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 366
    .line 367
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    if-eqz v0, :cond_8

    .line 376
    .line 377
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 378
    .line 379
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->notifyDisconnected()V

    .line 388
    .line 389
    .line 390
    :cond_8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17

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
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    sparse-switch v2, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->leakyApDetectionEvent()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->onScheduledPmTorndown(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 66
    .line 67
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 72
    .line 73
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onChannelSwitchCompleted(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v3, 0x6

    .line 91
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->handleWifiStateChanged(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_3
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 107
    .line 108
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 113
    .line 114
    int-to-byte v5, v5

    .line 115
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onTwtNotificationForReady(Ljava/lang/String;B)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :pswitch_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 131
    .line 132
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 137
    .line 138
    int-to-byte v5, v5

    .line 139
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 140
    .line 141
    int-to-byte v6, v6

    .line 142
    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onTwtTorndown(Ljava/lang/String;BB)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Landroid/os/Bundle;

    .line 150
    .line 151
    const-string v3, "setup_id"

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    const-string v3, "status"

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    const-string v3, "reason"

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    const-string v3, "negotiation_type"

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    const-string v3, "flow_type"

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    const-string v3, "triggered"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    const-string v3, "target_wake_time"

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v13

    .line 193
    const-string v3, "wake_duration"

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    const-string v3, "wake_interval"

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v16

    .line 205
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 206
    .line 207
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 216
    .line 217
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual/range {v5 .. v16}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onNegotiationCompleted(Ljava/lang/String;BBBBBBJII)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :sswitch_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 227
    .line 228
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 229
    .line 230
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    if-eqz v3, :cond_2

    .line 235
    .line 236
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 237
    .line 238
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->tdlsRequestEvent(I)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :sswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 248
    .line 249
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 250
    .line 251
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 252
    .line 253
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    if-eqz v5, :cond_2

    .line 258
    .line 259
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 260
    .line 261
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v5, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->bwSwitchedEvent(II)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :sswitch_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 271
    .line 272
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 281
    .line 282
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 287
    .line 288
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyRoaming(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    if-eqz v2, :cond_3

    .line 296
    .line 297
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 298
    .line 299
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    iget-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v8, Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    const-string v9, "dongle"

    .line 316
    .line 317
    invoke-static {v6, v9, v7, v8, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForRoamingEnter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    const/4 v6, 0x3

    .line 322
    invoke-static {v5, v6, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :sswitch_3
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 328
    .line 329
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_3

    .line 334
    .line 335
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 336
    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v6, "NETWORK_DISCONNECTION_EVENT in connected state reason="

    .line 340
    .line 341
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 345
    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :sswitch_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 359
    .line 360
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    iget v2, v2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 365
    .line 366
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 367
    .line 368
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 373
    .line 374
    invoke-static {v5, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 379
    .line 380
    .line 381
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 382
    .line 383
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-eqz v3, :cond_1

    .line 392
    .line 393
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 394
    .line 395
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    iget v3, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 400
    .line 401
    if-eq v3, v2, :cond_0

    .line 402
    .line 403
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 404
    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v6, "primary network changed, update networkId="

    .line 408
    .line 409
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 413
    .line 414
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    iget v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 419
    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v6, ", prev="

    .line 424
    .line 425
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$300(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 439
    .line 440
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 445
    .line 446
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 451
    .line 452
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 457
    .line 458
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 463
    .line 464
    .line 465
    :cond_1
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->updateBigDataApInfo()V

    .line 466
    .line 467
    .line 468
    goto :goto_0

    .line 469
    :sswitch_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 470
    .line 471
    const/4 v3, -0x5

    .line 472
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 473
    .line 474
    .line 475
    goto :goto_0

    .line 476
    :sswitch_6
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 477
    .line 478
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_2

    .line 487
    .line 488
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 489
    .line 490
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 495
    .line 496
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 501
    .line 502
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableSsid()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->applyWiFiB2BPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-eqz v2, :cond_2

    .line 515
    .line 516
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 517
    .line 518
    const-string v3, "applyB2BPolicy - Updated"

    .line 519
    .line 520
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    :cond_2
    :goto_0
    move v3, v4

    .line 524
    :cond_3
    :goto_1
    if-ne v3, v4, :cond_4

    .line 525
    .line 526
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 527
    .line 528
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 529
    .line 530
    .line 531
    :cond_4
    return v3

    .line 532
    nop

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x2006c -> :sswitch_6
        0x2008a -> :sswitch_5
        0x2008d -> :sswitch_4
        0x24004 -> :sswitch_3
        0x2402d -> :sswitch_2
        0x24074 -> :sswitch_1
        0x24076 -> :sswitch_0
    .end sparse-switch

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :pswitch_data_0
    .packed-switch 0x2406d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
