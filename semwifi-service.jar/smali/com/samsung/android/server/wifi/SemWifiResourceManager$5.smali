.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private handleAwareResourceChanged(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareCountDataPath(Lcom/samsung/android/server/wifi/SemWifiResourceManager;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mcheckAndGetAwareManager(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/aware/WifiAwareManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v2, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/net/wifi/aware/AwareResources;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sub-int/2addr v0, p1

    .line 40
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareCountDataPath(Lcom/samsung/android/server/wifi/SemWifiResourceManager;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareCountDataPath(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-lez p1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    const-string p1, "aware"

    .line 53
    .line 54
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->logStatus(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mcheckAndRegisterWifiTrafficPollerCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private handleP2pConnectionChanged(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "networkInfo"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/NetworkInfo;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmIsP2pConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-string v0, "p2p"

    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->logStatus(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mcheckAndRegisterWifiTrafficPollerCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private handleWifiApStateChanged(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "wifi_state"

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmIsMobileHotspotEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsMobileHotspotEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-string v0, "SoftAp"

    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->logStatus(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mcheckAndRegisterWifiTrafficPollerCallbackForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private logStatus(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p0, " "

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string p1, "enabled"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "disabled"

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SemWifiResourceManager"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->handleWifiApStateChanged(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->handleP2pConnectionChanged(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string v0, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$5;->handleAwareResourceChanged(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method
