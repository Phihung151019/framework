.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getApMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabledWithDualBand()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const-string p0, "wlan2"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getMHSMacFromInterface(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getMHSMacFromInterface()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public getCurrentNetworkScore()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosScores()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosNoInternetStatus()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x2

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    move p0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p0, v1

    .line 34
    :goto_0
    aget v1, v0, v1

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    aget v3, v0, v3

    .line 38
    .line 39
    aget v0, v0, v2

    .line 40
    .line 41
    filled-new-array {p0, v1, v3, v0}, [I

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    const-string p0, "SemWifiService"

    .line 47
    .line 48
    const-string v0, "getCurrentNetworkScore - invalid score data"

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
