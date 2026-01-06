.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiScanningModeEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private addOrUpdateNetwork(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iput p1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v2, 0x3e8

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method private isKTHomeNetworkConnected()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/IeParser;->parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "hasKttHomeVsd"

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_1
    const-string p0, "AutoWifiController"

    .line 84
    .line 85
    const-string v0, "WifiConfiguration is null"

    .line 86
    .line 87
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method private sendBroadcastAutoWifiScanState(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "autoWifiScanAvailable"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 20
    .line 21
    const-string v1, "android.permission.NETWORK_SETTINGS"

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private updateAutoWifiScorePolicies()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiScorePolicies()[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->updateAutoWifiScorePolicies([I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiMaxCellCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private updateScoreForCurrentNetwork(ZLandroid/util/Pair;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "skip to update network score, it is not a target network "

    .line 3
    .line 4
    const-string v2, "AutoWifiController"

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :cond_1
    move v6, v0

    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    const/4 v4, 0x1

    .line 62
    move v8, p3

    .line 63
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->calculateNetworkScore(ZLjava/lang/String;IZZ)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isKTTVendor()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->isKTHomeNetworkConnected()Landroid/util/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    const-string p1, "This is KT Home AP"

    .line 99
    .line 100
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->isKTHomeNetworkConnected()Landroid/util/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 121
    .line 122
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->setNetworkAsPersistentFavoriteNetwork(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_4
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_5

    .line 135
    .line 136
    const-string p0, "skip to update network score, config is null"

    .line 137
    .line 138
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_5
    return-void

    .line 142
    :cond_6
    move v8, p3

    .line 143
    if-nez p2, :cond_7

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 151
    .line 152
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_7
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 168
    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    :cond_8
    move v6, v0

    .line 178
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide p2

    .line 188
    invoke-static {p1, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmLastConnectedDuration(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->calculateNetworkScore(ZLjava/lang/String;IZZ)V

    .line 211
    .line 212
    .line 213
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->sendBroadcastAutoWifiScanState(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworkListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->start(Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 32
    .line 33
    const/16 v2, 0x68

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceStateListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->start(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public exit()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->sendBroadcastAutoWifiScanState(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateAutoWifiScorePolicies()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->calculateNetworkScore(ZLjava/lang/String;IZZ)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->stop()V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 73
    .line 74
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stop()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    if-eq v0, v2, :cond_b

    .line 7
    .line 8
    const/16 v3, 0x68

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v3, :cond_6

    .line 12
    .line 13
    const/16 v2, 0x6a

    .line 14
    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0x67

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 25
    .line 26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    const-string p0, "AutoWifiController"

    .line 43
    .line 44
    const-string p1, "ignore updating network score, unsaved network"

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_0
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 51
    .line 52
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->addOrUpdateNetwork(II)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-boolean v0, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v3, -0x1

    .line 84
    if-ne v0, v3, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiStartTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .line 94
    cmp-long v0, v3, v5

    .line 95
    .line 96
    if-lez v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    sub-long/2addr v5, v3

    .line 109
    const-wide/32 v3, 0xea60

    .line 110
    .line 111
    .line 112
    div-long/2addr v5, v3

    .line 113
    long-to-int v0, v5

    .line 114
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 115
    .line 116
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 117
    .line 118
    .line 119
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_a

    .line 148
    .line 149
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 152
    .line 153
    .line 154
    return v1

    .line 155
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->clearHistory(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 183
    .line 184
    .line 185
    return v4

    .line 186
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 187
    .line 188
    if-nez p1, :cond_a

    .line 189
    .line 190
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 191
    .line 192
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mcheckPoorNetworkConnection(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_a

    .line 202
    .line 203
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 204
    .line 205
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_3

    .line 210
    .line 211
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateAutoWifiScorePolicies()V

    .line 212
    .line 213
    .line 214
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 215
    .line 216
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->notifyWifiOffByUser()V

    .line 221
    .line 222
    .line 223
    return v1

    .line 224
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 225
    .line 226
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStoppedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 231
    .line 232
    .line 233
    return v1

    .line 234
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 235
    .line 236
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 240
    .line 241
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 246
    .line 247
    .line 248
    return v1

    .line 249
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 250
    .line 251
    if-nez p1, :cond_a

    .line 252
    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 254
    .line 255
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 260
    .line 261
    .line 262
    return v1

    .line 263
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 264
    .line 265
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 269
    .line 270
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isTracking()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_5

    .line 279
    .line 280
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 281
    .line 282
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->unregisterListener()V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 290
    .line 291
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 296
    .line 297
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 302
    .line 303
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 304
    .line 305
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    .line 306
    .line 307
    .line 308
    :cond_5
    :goto_0
    return v4

    .line 309
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 310
    .line 311
    if-ne p1, v1, :cond_7

    .line 312
    .line 313
    move v4, v1

    .line 314
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 315
    .line 316
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetTargetConfig(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;)Landroid/util/Pair;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 325
    .line 326
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 331
    .line 332
    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 341
    .line 342
    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_8

    .line 347
    .line 348
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateAutoWifiScorePolicies()V

    .line 349
    .line 350
    .line 351
    :cond_8
    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->updateScoreForCurrentNetwork(ZLandroid/util/Pair;Z)V

    .line 352
    .line 353
    .line 354
    if-eqz p1, :cond_9

    .line 355
    .line 356
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 357
    .line 358
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->getNetworkType()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-lez p1, :cond_9

    .line 367
    .line 368
    if-eqz v4, :cond_9

    .line 369
    .line 370
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 371
    .line 372
    const-wide/16 v5, 0x1388

    .line 373
    .line 374
    invoke-virtual {p1, v2, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 375
    .line 376
    .line 377
    :cond_9
    if-nez v4, :cond_a

    .line 378
    .line 379
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 380
    .line 381
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$000(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 382
    .line 383
    .line 384
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 385
    .line 386
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuring()V

    .line 391
    .line 392
    .line 393
    :cond_a
    return v1

    .line 394
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 401
    .line 402
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->measureNetworkLocation(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    return v1

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
