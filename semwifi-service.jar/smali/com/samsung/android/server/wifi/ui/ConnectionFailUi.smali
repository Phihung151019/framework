.class public Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final ASSOCIATION_REJECT_STATUS_CODE_KT_GIGA_IPTV_CONNECTION_FAIL:I = 0x11

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field static final KT_GIGA_IPTV_SSID_PREFIX:Ljava/lang/String; = "KT_GiGA_5G_IPTV_"

.field static final KT_NETWORK_REJECTED_KT_HOME_AP_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.NETWORK_REJECTED_KT_HOME_AP"

.field private static sInstance:Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;


# instance fields
.field private final context:Landroid/content/Context;

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final isEnable:Z

.field private final scanPool:Lcom/samsung/android/server/wifi/util/ScanPool;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->scanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isKtPadDevice()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->isEnable:Z

    .line 23
    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->sInstance:Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->sInstance:Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->sInstance:Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method private isKtGigaIptvNetwork(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "KT_GiGA_5G_IPTV_"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private sendKtPadTvBroadcast(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.net.wifi.NETWORK_REJECTED_KT_HOME_AP"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x4000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "reason"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p2, "networkId"

    .line 19
    .line 20
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->context:Landroid/content/Context;

    .line 24
    .line 25
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private showKtPadTvConnectionFailToast(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->scanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/IeParser;->parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "ktGigaIptvStaCount"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const v3, 0x1150010

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public checkAndSendConnectionFailEventToKtIptvApp(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->isEnable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->isKtGigaIptvNetwork(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 v0, 0x11

    .line 18
    .line 19
    if-ne p3, v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->showKtPadTvConnectionFailToast(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 25
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/ui/ConnectionFailUi;->sendKtPadTvBroadcast(II)V

    .line 27
    .line 28
    .line 29
    :cond_3
    :goto_0
    return-void
.end method
